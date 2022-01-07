; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_signal.c_linux_rt_sigtimedwait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_signal.c_linux_rt_sigtimedwait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32* }
%struct.linux_rt_sigtimedwait_args = type { i32, i32, i64, i64 }
%struct.TYPE_8__ = type { i64, i64 }
%struct.timeval = type { i64, i32 }
%struct.timespec = type { i32 }
%struct.TYPE_9__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_rt_sigtimedwait(%struct.thread* %0, %struct.linux_rt_sigtimedwait_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_rt_sigtimedwait_args*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__, align 8
  %9 = alloca %struct.timeval, align 8
  %10 = alloca %struct.timespec, align 4
  %11 = alloca %struct.timespec*, align 8
  %12 = alloca %struct.TYPE_8__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_9__, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_rt_sigtimedwait_args* %1, %struct.linux_rt_sigtimedwait_args** %5, align 8
  %16 = load %struct.linux_rt_sigtimedwait_args*, %struct.linux_rt_sigtimedwait_args** %5, align 8
  %17 = getelementptr inbounds %struct.linux_rt_sigtimedwait_args, %struct.linux_rt_sigtimedwait_args* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = icmp ne i64 %19, 16
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %3, align 4
  br label %121

23:                                               ; preds = %2
  %24 = load %struct.linux_rt_sigtimedwait_args*, %struct.linux_rt_sigtimedwait_args** %5, align 8
  %25 = getelementptr inbounds %struct.linux_rt_sigtimedwait_args, %struct.linux_rt_sigtimedwait_args* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @copyin(i64 %26, %struct.TYPE_8__* %12, i32 16)
  store i32 %27, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %121

31:                                               ; preds = %23
  %32 = call i32 @linux_to_bsd_sigset(%struct.TYPE_8__* %12, i32* %13)
  store %struct.timespec* null, %struct.timespec** %11, align 8
  %33 = load %struct.linux_rt_sigtimedwait_args*, %struct.linux_rt_sigtimedwait_args** %5, align 8
  %34 = getelementptr inbounds %struct.linux_rt_sigtimedwait_args, %struct.linux_rt_sigtimedwait_args* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %85

37:                                               ; preds = %31
  %38 = load %struct.linux_rt_sigtimedwait_args*, %struct.linux_rt_sigtimedwait_args** %5, align 8
  %39 = getelementptr inbounds %struct.linux_rt_sigtimedwait_args, %struct.linux_rt_sigtimedwait_args* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @copyin(i64 %40, %struct.TYPE_8__* %8, i32 16)
  store i32 %41, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %3, align 4
  br label %121

45:                                               ; preds = %37
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  store i64 %47, i64* %48, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  store i32 %51, i32* %52, align 8
  %53 = call i64 @itimerfix(%struct.timeval* %9)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %83

55:                                               ; preds = %45
  %56 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = sdiv i32 %57, 1000000
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, %59
  store i64 %62, i64* %60, align 8
  %63 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = srem i32 %64, 1000000
  store i32 %65, i32* %63, align 8
  %66 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %55
  %70 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = sub nsw i64 %71, 1
  store i64 %72, i64* %70, align 8
  %73 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, 1000000
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %69, %55
  %77 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp slt i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = call i32 @timevalclear(%struct.timeval* %9)
  br label %82

82:                                               ; preds = %80, %76
  br label %83

83:                                               ; preds = %82, %45
  %84 = call i32 @TIMEVAL_TO_TIMESPEC(%struct.timeval* %9, %struct.timespec* %10)
  store %struct.timespec* %10, %struct.timespec** %11, align 8
  br label %85

85:                                               ; preds = %83, %31
  %86 = load %struct.thread*, %struct.thread** %4, align 8
  %87 = load i32, i32* %13, align 4
  %88 = load %struct.timespec*, %struct.timespec** %11, align 8
  %89 = call i32 @kern_sigtimedwait(%struct.thread* %86, i32 %87, %struct.TYPE_9__* %15, %struct.timespec* %88)
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %85
  %93 = load i32, i32* %6, align 4
  store i32 %93, i32* %3, align 4
  br label %121

94:                                               ; preds = %85
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @bsd_to_linux_signal(i32 %96)
  store i32 %97, i32* %7, align 4
  %98 = load %struct.linux_rt_sigtimedwait_args*, %struct.linux_rt_sigtimedwait_args** %5, align 8
  %99 = getelementptr inbounds %struct.linux_rt_sigtimedwait_args, %struct.linux_rt_sigtimedwait_args* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %94
  %103 = call i32 @memset(i32* %14, i32 0, i32 4)
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @ksiginfo_to_lsiginfo(%struct.TYPE_9__* %15, i32* %14, i32 %104)
  %106 = load %struct.linux_rt_sigtimedwait_args*, %struct.linux_rt_sigtimedwait_args** %5, align 8
  %107 = getelementptr inbounds %struct.linux_rt_sigtimedwait_args, %struct.linux_rt_sigtimedwait_args* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @copyout(i32* %14, i32 %108, i32 4)
  store i32 %109, i32* %6, align 4
  br label %110

110:                                              ; preds = %102, %94
  %111 = load i32, i32* %6, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %110
  %114 = load i32, i32* %7, align 4
  %115 = load %struct.thread*, %struct.thread** %4, align 8
  %116 = getelementptr inbounds %struct.thread, %struct.thread* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  store i32 %114, i32* %118, align 4
  br label %119

119:                                              ; preds = %113, %110
  %120 = load i32, i32* %6, align 4
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %119, %92, %43, %29, %21
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @copyin(i64, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @linux_to_bsd_sigset(%struct.TYPE_8__*, i32*) #1

declare dso_local i64 @itimerfix(%struct.timeval*) #1

declare dso_local i32 @timevalclear(%struct.timeval*) #1

declare dso_local i32 @TIMEVAL_TO_TIMESPEC(%struct.timeval*, %struct.timespec*) #1

declare dso_local i32 @kern_sigtimedwait(%struct.thread*, i32, %struct.TYPE_9__*, %struct.timespec*) #1

declare dso_local i32 @bsd_to_linux_signal(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ksiginfo_to_lsiginfo(%struct.TYPE_9__*, i32*, i32) #1

declare dso_local i32 @copyout(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
