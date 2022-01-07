; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_misc.c_linux_ppoll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_misc.c_linux_ppoll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i64* }
%struct.linux_ppoll_args = type { i32, i32*, i32, i32, i32* }
%struct.timespec = type { i64 }
%struct.l_timespec = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_ppoll(%struct.thread* %0, %struct.linux_ppoll_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_ppoll_args*, align 8
  %6 = alloca %struct.timespec, align 8
  %7 = alloca %struct.timespec, align 8
  %8 = alloca %struct.l_timespec, align 4
  %9 = alloca %struct.timespec, align 8
  %10 = alloca %struct.timespec*, align 8
  %11 = alloca %struct.l_timespec, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_ppoll_args* %1, %struct.linux_ppoll_args** %5, align 8
  %15 = load %struct.linux_ppoll_args*, %struct.linux_ppoll_args** %5, align 8
  %16 = getelementptr inbounds %struct.linux_ppoll_args, %struct.linux_ppoll_args* %15, i32 0, i32 4
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %38

19:                                               ; preds = %2
  %20 = load %struct.linux_ppoll_args*, %struct.linux_ppoll_args** %5, align 8
  %21 = getelementptr inbounds %struct.linux_ppoll_args, %struct.linux_ppoll_args* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = icmp ne i64 %23, 4
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %3, align 4
  br label %111

27:                                               ; preds = %19
  %28 = load %struct.linux_ppoll_args*, %struct.linux_ppoll_args** %5, align 8
  %29 = getelementptr inbounds %struct.linux_ppoll_args, %struct.linux_ppoll_args* %28, i32 0, i32 4
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @copyin(i32* %30, %struct.l_timespec* %11, i32 4)
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* %14, align 4
  store i32 %35, i32* %3, align 4
  br label %111

36:                                               ; preds = %27
  %37 = call i32 @linux_to_bsd_sigset(%struct.l_timespec* %11, i32* %13)
  store i32* %13, i32** %12, align 8
  br label %39

38:                                               ; preds = %2
  store i32* null, i32** %12, align 8
  br label %39

39:                                               ; preds = %38, %36
  %40 = load %struct.linux_ppoll_args*, %struct.linux_ppoll_args** %5, align 8
  %41 = getelementptr inbounds %struct.linux_ppoll_args, %struct.linux_ppoll_args* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %61

44:                                               ; preds = %39
  %45 = load %struct.linux_ppoll_args*, %struct.linux_ppoll_args** %5, align 8
  %46 = getelementptr inbounds %struct.linux_ppoll_args, %struct.linux_ppoll_args* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @copyin(i32* %47, %struct.l_timespec* %8, i32 4)
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %14, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* %14, align 4
  store i32 %52, i32* %3, align 4
  br label %111

53:                                               ; preds = %44
  %54 = call i32 @linux_to_native_timespec(%struct.timespec* %9, %struct.l_timespec* %8)
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i32, i32* %14, align 4
  store i32 %58, i32* %3, align 4
  br label %111

59:                                               ; preds = %53
  %60 = call i32 @nanotime(%struct.timespec* %6)
  store %struct.timespec* %9, %struct.timespec** %10, align 8
  br label %62

61:                                               ; preds = %39
  store %struct.timespec* null, %struct.timespec** %10, align 8
  br label %62

62:                                               ; preds = %61, %59
  %63 = load %struct.thread*, %struct.thread** %4, align 8
  %64 = load %struct.linux_ppoll_args*, %struct.linux_ppoll_args** %5, align 8
  %65 = getelementptr inbounds %struct.linux_ppoll_args, %struct.linux_ppoll_args* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.linux_ppoll_args*, %struct.linux_ppoll_args** %5, align 8
  %68 = getelementptr inbounds %struct.linux_ppoll_args, %struct.linux_ppoll_args* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.timespec*, %struct.timespec** %10, align 8
  %71 = load i32*, i32** %12, align 8
  %72 = call i32 @kern_poll(%struct.thread* %63, i32 %66, i32 %69, %struct.timespec* %70, i32* %71)
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %14, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %109

75:                                               ; preds = %62
  %76 = load %struct.linux_ppoll_args*, %struct.linux_ppoll_args** %5, align 8
  %77 = getelementptr inbounds %struct.linux_ppoll_args, %struct.linux_ppoll_args* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %109

80:                                               ; preds = %75
  %81 = load %struct.thread*, %struct.thread** %4, align 8
  %82 = getelementptr inbounds %struct.thread, %struct.thread* %81, i32 0, i32 0
  %83 = load i64*, i64** %82, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %80
  %88 = call i32 @nanotime(%struct.timespec* %7)
  %89 = call i32 @timespecsub(%struct.timespec* %7, %struct.timespec* %6, %struct.timespec* %7)
  %90 = call i32 @timespecsub(%struct.timespec* %9, %struct.timespec* %7, %struct.timespec* %9)
  %91 = getelementptr inbounds %struct.timespec, %struct.timespec* %9, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp slt i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %87
  %95 = call i32 @timespecclear(%struct.timespec* %9)
  br label %96

96:                                               ; preds = %94, %87
  br label %99

97:                                               ; preds = %80
  %98 = call i32 @timespecclear(%struct.timespec* %9)
  br label %99

99:                                               ; preds = %97, %96
  %100 = call i32 @native_to_linux_timespec(%struct.l_timespec* %8, %struct.timespec* %9)
  store i32 %100, i32* %14, align 4
  %101 = load i32, i32* %14, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %99
  %104 = load %struct.linux_ppoll_args*, %struct.linux_ppoll_args** %5, align 8
  %105 = getelementptr inbounds %struct.linux_ppoll_args, %struct.linux_ppoll_args* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = call i32 @copyout(%struct.l_timespec* %8, i32* %106, i32 4)
  store i32 %107, i32* %14, align 4
  br label %108

108:                                              ; preds = %103, %99
  br label %109

109:                                              ; preds = %108, %75, %62
  %110 = load i32, i32* %14, align 4
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %109, %57, %51, %34, %25
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @copyin(i32*, %struct.l_timespec*, i32) #1

declare dso_local i32 @linux_to_bsd_sigset(%struct.l_timespec*, i32*) #1

declare dso_local i32 @linux_to_native_timespec(%struct.timespec*, %struct.l_timespec*) #1

declare dso_local i32 @nanotime(%struct.timespec*) #1

declare dso_local i32 @kern_poll(%struct.thread*, i32, i32, %struct.timespec*, i32*) #1

declare dso_local i32 @timespecsub(%struct.timespec*, %struct.timespec*, %struct.timespec*) #1

declare dso_local i32 @timespecclear(%struct.timespec*) #1

declare dso_local i32 @native_to_linux_timespec(%struct.l_timespec*, %struct.timespec*) #1

declare dso_local i32 @copyout(%struct.l_timespec*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
