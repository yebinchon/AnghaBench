; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_misc.c_linux_getitimer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_misc.c_linux_getitimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_getitimer_args = type { i32, i32 }
%struct.l_itimerval = type { i32 }
%struct.itimerval = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_getitimer(%struct.thread* %0, %struct.linux_getitimer_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_getitimer_args*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.l_itimerval, align 4
  %8 = alloca %struct.itimerval, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_getitimer_args* %1, %struct.linux_getitimer_args** %5, align 8
  %9 = load %struct.thread*, %struct.thread** %4, align 8
  %10 = load %struct.linux_getitimer_args*, %struct.linux_getitimer_args** %5, align 8
  %11 = getelementptr inbounds %struct.linux_getitimer_args, %struct.linux_getitimer_args* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @kern_getitimer(%struct.thread* %9, i32 %12, %struct.itimerval* %8)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %3, align 4
  br label %24

18:                                               ; preds = %2
  %19 = call i32 @B2L_ITIMERVAL(%struct.l_itimerval* %7, %struct.itimerval* %8)
  %20 = load %struct.linux_getitimer_args*, %struct.linux_getitimer_args** %5, align 8
  %21 = getelementptr inbounds %struct.linux_getitimer_args, %struct.linux_getitimer_args* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @copyout(%struct.l_itimerval* %7, i32 %22, i32 4)
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %18, %16
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @kern_getitimer(%struct.thread*, i32, %struct.itimerval*) #1

declare dso_local i32 @B2L_ITIMERVAL(%struct.l_itimerval*, %struct.itimerval*) #1

declare dso_local i32 @copyout(%struct.l_itimerval*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
