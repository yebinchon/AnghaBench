; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_event.c_linux_timerfd_settime.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_event.c_linux_timerfd_settime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_timerfd_settime_args = type { i32, i32*, i32, i32 }
%struct.l_itimerspec = type { i32 }
%struct.itimerspec = type { %struct.timespec, i32 }
%struct.timespec = type { i32 }
%struct.timerfd = type { i32, i32, i32, %struct.itimerspec }
%struct.timeval = type { i32 }
%struct.file = type { i64, %struct.timerfd* }

@LINUX_TFD_SETTIME_FLAGS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@cap_write_rights = common dso_local global i32 0, align 4
@DTYPE_LINUXTFD = common dso_local global i64 0, align 8
@LINUX_TFD_TIMER_ABSTIME = common dso_local global i32 0, align 4
@linux_timerfd_expire = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_timerfd_settime(%struct.thread* %0, %struct.linux_timerfd_settime_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_timerfd_settime_args*, align 8
  %6 = alloca %struct.l_itimerspec, align 4
  %7 = alloca %struct.itimerspec, align 4
  %8 = alloca %struct.itimerspec, align 4
  %9 = alloca %struct.timespec, align 4
  %10 = alloca %struct.timespec, align 4
  %11 = alloca %struct.timerfd*, align 8
  %12 = alloca %struct.timeval, align 4
  %13 = alloca %struct.file*, align 8
  %14 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_timerfd_settime_args* %1, %struct.linux_timerfd_settime_args** %5, align 8
  %15 = load %struct.linux_timerfd_settime_args*, %struct.linux_timerfd_settime_args** %5, align 8
  %16 = getelementptr inbounds %struct.linux_timerfd_settime_args, %struct.linux_timerfd_settime_args* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @LINUX_TFD_SETTIME_FLAGS, align 4
  %19 = xor i32 %18, -1
  %20 = and i32 %17, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* %3, align 4
  br label %151

24:                                               ; preds = %2
  %25 = load %struct.linux_timerfd_settime_args*, %struct.linux_timerfd_settime_args** %5, align 8
  %26 = getelementptr inbounds %struct.linux_timerfd_settime_args, %struct.linux_timerfd_settime_args* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @copyin(i32 %27, %struct.l_itimerspec* %6, i32 4)
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %14, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* %14, align 4
  store i32 %32, i32* %3, align 4
  br label %151

33:                                               ; preds = %24
  %34 = call i32 @linux_to_native_itimerspec(%struct.itimerspec* %7, %struct.l_itimerspec* %6)
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* %14, align 4
  store i32 %38, i32* %3, align 4
  br label %151

39:                                               ; preds = %33
  %40 = load %struct.thread*, %struct.thread** %4, align 8
  %41 = load %struct.linux_timerfd_settime_args*, %struct.linux_timerfd_settime_args** %5, align 8
  %42 = getelementptr inbounds %struct.linux_timerfd_settime_args, %struct.linux_timerfd_settime_args* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @fget(%struct.thread* %40, i32 %43, i32* @cap_write_rights, %struct.file** %13)
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %14, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* %14, align 4
  store i32 %48, i32* %3, align 4
  br label %151

49:                                               ; preds = %39
  %50 = load %struct.file*, %struct.file** %13, align 8
  %51 = getelementptr inbounds %struct.file, %struct.file* %50, i32 0, i32 1
  %52 = load %struct.timerfd*, %struct.timerfd** %51, align 8
  store %struct.timerfd* %52, %struct.timerfd** %11, align 8
  %53 = load %struct.file*, %struct.file** %13, align 8
  %54 = getelementptr inbounds %struct.file, %struct.file* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @DTYPE_LINUXTFD, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %61, label %58

58:                                               ; preds = %49
  %59 = load %struct.timerfd*, %struct.timerfd** %11, align 8
  %60 = icmp eq %struct.timerfd* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %58, %49
  %62 = load i32, i32* @EINVAL, align 4
  store i32 %62, i32* %14, align 4
  br label %146

63:                                               ; preds = %58
  %64 = load %struct.timerfd*, %struct.timerfd** %11, align 8
  %65 = getelementptr inbounds %struct.timerfd, %struct.timerfd* %64, i32 0, i32 1
  %66 = call i32 @mtx_lock(i32* %65)
  %67 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %7, i32 0, i32 0
  %68 = call i64 @timespecisset(%struct.timespec* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %7, i32 0, i32 1
  %72 = call i32 @timespecclear(i32* %71)
  br label %73

73:                                               ; preds = %70, %63
  %74 = load %struct.linux_timerfd_settime_args*, %struct.linux_timerfd_settime_args** %5, align 8
  %75 = getelementptr inbounds %struct.linux_timerfd_settime_args, %struct.linux_timerfd_settime_args* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load %struct.timerfd*, %struct.timerfd** %11, align 8
  %80 = call i32 @linux_timerfd_curval(%struct.timerfd* %79, %struct.itimerspec* %8)
  br label %81

81:                                               ; preds = %78, %73
  %82 = load %struct.timerfd*, %struct.timerfd** %11, align 8
  %83 = getelementptr inbounds %struct.timerfd, %struct.timerfd* %82, i32 0, i32 3
  %84 = bitcast %struct.itimerspec* %83 to i8*
  %85 = bitcast %struct.itimerspec* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %84, i8* align 4 %85, i64 8, i1 false)
  %86 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %7, i32 0, i32 0
  %87 = call i64 @timespecisset(%struct.timespec* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %121

89:                                               ; preds = %81
  %90 = load %struct.timerfd*, %struct.timerfd** %11, align 8
  %91 = call i32 @linux_timerfd_clocktime(%struct.timerfd* %90, %struct.timespec* %9)
  %92 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %7, i32 0, i32 0
  %93 = bitcast %struct.timespec* %10 to i8*
  %94 = bitcast %struct.timespec* %92 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %93, i8* align 4 %94, i64 4, i1 false)
  %95 = load %struct.linux_timerfd_settime_args*, %struct.linux_timerfd_settime_args** %5, align 8
  %96 = getelementptr inbounds %struct.linux_timerfd_settime_args, %struct.linux_timerfd_settime_args* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @LINUX_TFD_TIMER_ABSTIME, align 4
  %99 = and i32 %97, %98
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %89
  %102 = load %struct.timerfd*, %struct.timerfd** %11, align 8
  %103 = getelementptr inbounds %struct.timerfd, %struct.timerfd* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %103, i32 0, i32 0
  %105 = load %struct.timerfd*, %struct.timerfd** %11, align 8
  %106 = getelementptr inbounds %struct.timerfd, %struct.timerfd* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %106, i32 0, i32 0
  %108 = call i32 @timespecadd(%struct.timespec* %104, %struct.timespec* %9, %struct.timespec* %107)
  br label %111

109:                                              ; preds = %89
  %110 = call i32 @timespecsub(%struct.timespec* %10, %struct.timespec* %9, %struct.timespec* %10)
  br label %111

111:                                              ; preds = %109, %101
  %112 = call i32 @TIMESPEC_TO_TIMEVAL(%struct.timeval* %12, %struct.timespec* %10)
  %113 = load %struct.timerfd*, %struct.timerfd** %11, align 8
  %114 = getelementptr inbounds %struct.timerfd, %struct.timerfd* %113, i32 0, i32 2
  %115 = call i32 @tvtohz(%struct.timeval* %12)
  %116 = load i32, i32* @linux_timerfd_expire, align 4
  %117 = load %struct.timerfd*, %struct.timerfd** %11, align 8
  %118 = call i32 @callout_reset(i32* %114, i32 %115, i32 %116, %struct.timerfd* %117)
  %119 = load %struct.timerfd*, %struct.timerfd** %11, align 8
  %120 = getelementptr inbounds %struct.timerfd, %struct.timerfd* %119, i32 0, i32 0
  store i32 0, i32* %120, align 4
  br label %127

121:                                              ; preds = %81
  %122 = load %struct.timerfd*, %struct.timerfd** %11, align 8
  %123 = getelementptr inbounds %struct.timerfd, %struct.timerfd* %122, i32 0, i32 0
  store i32 1, i32* %123, align 4
  %124 = load %struct.timerfd*, %struct.timerfd** %11, align 8
  %125 = getelementptr inbounds %struct.timerfd, %struct.timerfd* %124, i32 0, i32 2
  %126 = call i32 @callout_stop(i32* %125)
  br label %127

127:                                              ; preds = %121, %111
  %128 = load %struct.timerfd*, %struct.timerfd** %11, align 8
  %129 = getelementptr inbounds %struct.timerfd, %struct.timerfd* %128, i32 0, i32 1
  %130 = call i32 @mtx_unlock(i32* %129)
  %131 = load %struct.linux_timerfd_settime_args*, %struct.linux_timerfd_settime_args** %5, align 8
  %132 = getelementptr inbounds %struct.linux_timerfd_settime_args, %struct.linux_timerfd_settime_args* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = icmp ne i32* %133, null
  br i1 %134, label %135, label %145

135:                                              ; preds = %127
  %136 = call i32 @native_to_linux_itimerspec(%struct.l_itimerspec* %6, %struct.itimerspec* %8)
  store i32 %136, i32* %14, align 4
  %137 = load i32, i32* %14, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %135
  %140 = load %struct.linux_timerfd_settime_args*, %struct.linux_timerfd_settime_args** %5, align 8
  %141 = getelementptr inbounds %struct.linux_timerfd_settime_args, %struct.linux_timerfd_settime_args* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = call i32 @copyout(%struct.l_itimerspec* %6, i32* %142, i32 4)
  store i32 %143, i32* %14, align 4
  br label %144

144:                                              ; preds = %139, %135
  br label %145

145:                                              ; preds = %144, %127
  br label %146

146:                                              ; preds = %145, %61
  %147 = load %struct.file*, %struct.file** %13, align 8
  %148 = load %struct.thread*, %struct.thread** %4, align 8
  %149 = call i32 @fdrop(%struct.file* %147, %struct.thread* %148)
  %150 = load i32, i32* %14, align 4
  store i32 %150, i32* %3, align 4
  br label %151

151:                                              ; preds = %146, %47, %37, %31, %22
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i32 @copyin(i32, %struct.l_itimerspec*, i32) #1

declare dso_local i32 @linux_to_native_itimerspec(%struct.itimerspec*, %struct.l_itimerspec*) #1

declare dso_local i32 @fget(%struct.thread*, i32, i32*, %struct.file**) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @timespecisset(%struct.timespec*) #1

declare dso_local i32 @timespecclear(i32*) #1

declare dso_local i32 @linux_timerfd_curval(%struct.timerfd*, %struct.itimerspec*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @linux_timerfd_clocktime(%struct.timerfd*, %struct.timespec*) #1

declare dso_local i32 @timespecadd(%struct.timespec*, %struct.timespec*, %struct.timespec*) #1

declare dso_local i32 @timespecsub(%struct.timespec*, %struct.timespec*, %struct.timespec*) #1

declare dso_local i32 @TIMESPEC_TO_TIMEVAL(%struct.timeval*, %struct.timespec*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.timerfd*) #1

declare dso_local i32 @tvtohz(%struct.timeval*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @native_to_linux_itimerspec(%struct.l_itimerspec*, %struct.itimerspec*) #1

declare dso_local i32 @copyout(%struct.l_itimerspec*, i32*, i32) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
