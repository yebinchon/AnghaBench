; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/linux32/extr_linux32_machdep.c_linux_getrusage.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/linux32/extr_linux32_machdep.c_linux_getrusage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_getrusage_args = type { i32*, i32 }
%struct.rusage = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_getrusage(%struct.thread* %0, %struct.linux_getrusage_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_getrusage_args*, align 8
  %6 = alloca %struct.rusage, align 4
  %7 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_getrusage_args* %1, %struct.linux_getrusage_args** %5, align 8
  %8 = load %struct.thread*, %struct.thread** %4, align 8
  %9 = load %struct.linux_getrusage_args*, %struct.linux_getrusage_args** %5, align 8
  %10 = getelementptr inbounds %struct.linux_getrusage_args, %struct.linux_getrusage_args* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @kern_getrusage(%struct.thread* %8, i32 %11, %struct.rusage* %6)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %29

17:                                               ; preds = %2
  %18 = load %struct.linux_getrusage_args*, %struct.linux_getrusage_args** %5, align 8
  %19 = getelementptr inbounds %struct.linux_getrusage_args, %struct.linux_getrusage_args* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.linux_getrusage_args*, %struct.linux_getrusage_args** %5, align 8
  %24 = getelementptr inbounds %struct.linux_getrusage_args, %struct.linux_getrusage_args* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @linux_copyout_rusage(%struct.rusage* %6, i32* %25)
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %22, %17
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %27, %15
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @kern_getrusage(%struct.thread*, i32, %struct.rusage*) #1

declare dso_local i32 @linux_copyout_rusage(%struct.rusage*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
