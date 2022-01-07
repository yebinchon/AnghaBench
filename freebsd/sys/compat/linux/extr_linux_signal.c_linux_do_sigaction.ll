; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_signal.c_linux_do_sigaction.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_signal.c_linux_do_sigaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.sigaction = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_do_sigaction(%struct.thread* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.sigaction, align 4
  %11 = alloca %struct.sigaction, align 4
  %12 = alloca %struct.sigaction*, align 8
  %13 = alloca %struct.sigaction*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @LINUX_SIG_VALID(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %5, align 4
  br label %55

21:                                               ; preds = %4
  %22 = load i32*, i32** %9, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  br label %26

25:                                               ; preds = %21
  br label %26

26:                                               ; preds = %25, %24
  %27 = phi %struct.sigaction* [ %11, %24 ], [ null, %25 ]
  store %struct.sigaction* %27, %struct.sigaction** %13, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  store %struct.sigaction* %10, %struct.sigaction** %12, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = load %struct.sigaction*, %struct.sigaction** %12, align 8
  %33 = call i32 @linux_to_bsd_sigaction(i32* %31, %struct.sigaction* %32)
  br label %35

34:                                               ; preds = %26
  store %struct.sigaction* null, %struct.sigaction** %12, align 8
  br label %35

35:                                               ; preds = %34, %30
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @linux_to_bsd_signal(i32 %36)
  store i32 %37, i32* %15, align 4
  %38 = load %struct.thread*, %struct.thread** %6, align 8
  %39 = load i32, i32* %15, align 4
  %40 = load %struct.sigaction*, %struct.sigaction** %12, align 8
  %41 = load %struct.sigaction*, %struct.sigaction** %13, align 8
  %42 = call i32 @kern_sigaction(%struct.thread* %38, i32 %39, %struct.sigaction* %40, %struct.sigaction* %41, i32 0)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %14, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %35
  %46 = load i32, i32* %14, align 4
  store i32 %46, i32* %5, align 4
  br label %55

47:                                               ; preds = %35
  %48 = load i32*, i32** %9, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load %struct.sigaction*, %struct.sigaction** %13, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = call i32 @bsd_to_linux_sigaction(%struct.sigaction* %51, i32* %52)
  br label %54

54:                                               ; preds = %50, %47
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %54, %45, %19
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @LINUX_SIG_VALID(i32) #1

declare dso_local i32 @linux_to_bsd_sigaction(i32*, %struct.sigaction*) #1

declare dso_local i32 @linux_to_bsd_signal(i32) #1

declare dso_local i32 @kern_sigaction(%struct.thread*, i32, %struct.sigaction*, %struct.sigaction*, i32) #1

declare dso_local i32 @bsd_to_linux_sigaction(%struct.sigaction*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
