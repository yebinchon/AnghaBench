; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_signal.c_linux_rt_sigaction.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_signal.c_linux_rt_sigaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_rt_sigaction_args = type { i32, i32*, i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_rt_sigaction(%struct.thread* %0, %struct.linux_rt_sigaction_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_rt_sigaction_args*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_rt_sigaction_args* %1, %struct.linux_rt_sigaction_args** %5, align 8
  %9 = load %struct.linux_rt_sigaction_args*, %struct.linux_rt_sigaction_args** %5, align 8
  %10 = getelementptr inbounds %struct.linux_rt_sigaction_args, %struct.linux_rt_sigaction_args* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sext i32 %11 to i64
  %13 = icmp ne i64 %12, 4
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %3, align 4
  br label %67

16:                                               ; preds = %2
  %17 = load %struct.linux_rt_sigaction_args*, %struct.linux_rt_sigaction_args** %5, align 8
  %18 = getelementptr inbounds %struct.linux_rt_sigaction_args, %struct.linux_rt_sigaction_args* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %16
  %22 = load %struct.linux_rt_sigaction_args*, %struct.linux_rt_sigaction_args** %5, align 8
  %23 = getelementptr inbounds %struct.linux_rt_sigaction_args, %struct.linux_rt_sigaction_args* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @copyin(i32* %24, i32* %6, i32 4)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %3, align 4
  br label %67

30:                                               ; preds = %21
  br label %31

31:                                               ; preds = %30, %16
  %32 = load %struct.thread*, %struct.thread** %4, align 8
  %33 = load %struct.linux_rt_sigaction_args*, %struct.linux_rt_sigaction_args** %5, align 8
  %34 = getelementptr inbounds %struct.linux_rt_sigaction_args, %struct.linux_rt_sigaction_args* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.linux_rt_sigaction_args*, %struct.linux_rt_sigaction_args** %5, align 8
  %37 = getelementptr inbounds %struct.linux_rt_sigaction_args, %struct.linux_rt_sigaction_args* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  br label %42

41:                                               ; preds = %31
  br label %42

42:                                               ; preds = %41, %40
  %43 = phi i32* [ %6, %40 ], [ null, %41 ]
  %44 = load %struct.linux_rt_sigaction_args*, %struct.linux_rt_sigaction_args** %5, align 8
  %45 = getelementptr inbounds %struct.linux_rt_sigaction_args, %struct.linux_rt_sigaction_args* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %50

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %49, %48
  %51 = phi i32* [ %7, %48 ], [ null, %49 ]
  %52 = call i32 @linux_do_sigaction(%struct.thread* %32, i32 %35, i32* %43, i32* %51)
  store i32 %52, i32* %8, align 4
  %53 = load %struct.linux_rt_sigaction_args*, %struct.linux_rt_sigaction_args** %5, align 8
  %54 = getelementptr inbounds %struct.linux_rt_sigaction_args, %struct.linux_rt_sigaction_args* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %65

57:                                               ; preds = %50
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %57
  %61 = load %struct.linux_rt_sigaction_args*, %struct.linux_rt_sigaction_args** %5, align 8
  %62 = getelementptr inbounds %struct.linux_rt_sigaction_args, %struct.linux_rt_sigaction_args* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @copyout(i32* %7, i32* %63, i32 4)
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %60, %57, %50
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %65, %28, %14
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @copyin(i32*, i32*, i32) #1

declare dso_local i32 @linux_do_sigaction(%struct.thread*, i32, i32*, i32*) #1

declare dso_local i32 @copyout(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
