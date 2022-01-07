; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/freebsd32/extr_freebsd32_misc.c_freebsd32_getitimer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/freebsd32/extr_freebsd32_misc.c_freebsd32_getitimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.freebsd32_getitimer_args = type { i32*, i32 }
%struct.itimerval = type { i32 }
%struct.itimerval32 = type { i32 }

@it_interval = common dso_local global i32 0, align 4
@it_value = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @freebsd32_getitimer(%struct.thread* %0, %struct.freebsd32_getitimer_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.freebsd32_getitimer_args*, align 8
  %6 = alloca %struct.itimerval, align 4
  %7 = alloca %struct.itimerval32, align 4
  %8 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.freebsd32_getitimer_args* %1, %struct.freebsd32_getitimer_args** %5, align 8
  %9 = load %struct.thread*, %struct.thread** %4, align 8
  %10 = load %struct.freebsd32_getitimer_args*, %struct.freebsd32_getitimer_args** %5, align 8
  %11 = getelementptr inbounds %struct.freebsd32_getitimer_args, %struct.freebsd32_getitimer_args* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @kern_getitimer(%struct.thread* %9, i32 %12, %struct.itimerval* %6)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load %struct.freebsd32_getitimer_args*, %struct.freebsd32_getitimer_args** %5, align 8
  %18 = getelementptr inbounds %struct.freebsd32_getitimer_args, %struct.freebsd32_getitimer_args* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %16, %2
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %3, align 4
  br label %40

23:                                               ; preds = %16
  %24 = load i32, i32* @it_interval, align 4
  %25 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %6, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.itimerval32, %struct.itimerval32* %7, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @TV_CP(i32 %26, i32 %28, i32 %24)
  %30 = load i32, i32* @it_value, align 4
  %31 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %6, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.itimerval32, %struct.itimerval32* %7, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @TV_CP(i32 %32, i32 %34, i32 %30)
  %36 = load %struct.freebsd32_getitimer_args*, %struct.freebsd32_getitimer_args** %5, align 8
  %37 = getelementptr inbounds %struct.freebsd32_getitimer_args, %struct.freebsd32_getitimer_args* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @copyout(%struct.itimerval32* %7, i32* %38, i32 4)
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %23, %21
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @kern_getitimer(%struct.thread*, i32, %struct.itimerval*) #1

declare dso_local i32 @TV_CP(i32, i32, i32) #1

declare dso_local i32 @copyout(%struct.itimerval32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
