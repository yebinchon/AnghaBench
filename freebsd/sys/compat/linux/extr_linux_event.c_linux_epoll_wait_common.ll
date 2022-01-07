; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_event.c_linux_epoll_wait_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_event.c_linux_epoll_wait_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i64*, i32, i32, i32 }
%struct.epoll_event = type { i32 }
%struct.epoll_copyout_args = type { i32, i64, i32, %struct.epoll_event* }
%struct.kevent_copyops = type { i32*, i32, %struct.epoll_copyout_args* }
%struct.timespec = type { i32, i32 }
%struct.file = type { i64 }

@epoll_kev_copyout = common dso_local global i32 0, align 4
@LINUX_MAX_EVENTS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CAP_KQUEUE_EVENT = common dso_local global i32 0, align 4
@DTYPE_KQUEUE = common dso_local global i64 0, align 8
@SIG_SETMASK = common dso_local global i32 0, align 4
@TDP_OLDMASK = common dso_local global i32 0, align 4
@TDF_ASTPENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, i32, %struct.epoll_event*, i32, i32, i32*)* @linux_epoll_wait_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linux_epoll_wait_common(%struct.thread* %0, i32 %1, %struct.epoll_event* %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.thread*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.epoll_event*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.epoll_copyout_args, align 8
  %15 = alloca %struct.kevent_copyops, align 8
  %16 = alloca %struct.timespec, align 4
  %17 = alloca %struct.timespec*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.file*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.epoll_event* %2, %struct.epoll_event** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %22 = getelementptr inbounds %struct.kevent_copyops, %struct.kevent_copyops* %15, i32 0, i32 0
  %23 = bitcast %struct.epoll_copyout_args* %14 to i32*
  store i32* %23, i32** %22, align 8
  %24 = getelementptr inbounds %struct.kevent_copyops, %struct.kevent_copyops* %15, i32 0, i32 1
  %25 = load i32, i32* @epoll_kev_copyout, align 4
  store i32 %25, i32* %24, align 8
  %26 = getelementptr inbounds %struct.kevent_copyops, %struct.kevent_copyops* %15, i32 0, i32 2
  store %struct.epoll_copyout_args* null, %struct.epoll_copyout_args** %26, align 8
  %27 = load i32, i32* %11, align 4
  %28 = icmp sle i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %6
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @LINUX_MAX_EVENTS, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29, %6
  %34 = load i32, i32* @EINVAL, align 4
  store i32 %34, i32* %7, align 4
  br label %143

35:                                               ; preds = %29
  %36 = load %struct.thread*, %struct.thread** %8, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @CAP_KQUEUE_EVENT, align 4
  %39 = call i32 @cap_rights_init(i32* %18, i32 %38)
  %40 = call i32 @fget(%struct.thread* %36, i32 %37, i32 %39, %struct.file** %19)
  store i32 %40, i32* %21, align 4
  %41 = load i32, i32* %21, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load i32, i32* %21, align 4
  store i32 %44, i32* %7, align 4
  br label %143

45:                                               ; preds = %35
  %46 = load %struct.file*, %struct.file** %19, align 8
  %47 = getelementptr inbounds %struct.file, %struct.file* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @DTYPE_KQUEUE, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* @EINVAL, align 4
  store i32 %52, i32* %21, align 4
  br label %138

53:                                               ; preds = %45
  %54 = load i32*, i32** %13, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %79

56:                                               ; preds = %53
  %57 = load %struct.thread*, %struct.thread** %8, align 8
  %58 = load i32, i32* @SIG_SETMASK, align 4
  %59 = load i32*, i32** %13, align 8
  %60 = call i32 @kern_sigprocmask(%struct.thread* %57, i32 %58, i32* %59, i32* %20, i32 0)
  store i32 %60, i32* %21, align 4
  %61 = load i32, i32* %21, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %138

64:                                               ; preds = %56
  %65 = load i32, i32* @TDP_OLDMASK, align 4
  %66 = load %struct.thread*, %struct.thread** %8, align 8
  %67 = getelementptr inbounds %struct.thread, %struct.thread* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 8
  %70 = load %struct.thread*, %struct.thread** %8, align 8
  %71 = call i32 @thread_lock(%struct.thread* %70)
  %72 = load i32, i32* @TDF_ASTPENDING, align 4
  %73 = load %struct.thread*, %struct.thread** %8, align 8
  %74 = getelementptr inbounds %struct.thread, %struct.thread* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  %77 = load %struct.thread*, %struct.thread** %8, align 8
  %78 = call i32 @thread_unlock(%struct.thread* %77)
  br label %79

79:                                               ; preds = %64, %53
  %80 = load %struct.epoll_event*, %struct.epoll_event** %10, align 8
  %81 = getelementptr inbounds %struct.epoll_copyout_args, %struct.epoll_copyout_args* %14, i32 0, i32 3
  store %struct.epoll_event* %80, %struct.epoll_event** %81, align 8
  %82 = load %struct.thread*, %struct.thread** %8, align 8
  %83 = getelementptr inbounds %struct.thread, %struct.thread* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = getelementptr inbounds %struct.epoll_copyout_args, %struct.epoll_copyout_args* %14, i32 0, i32 2
  store i32 %84, i32* %85, align 8
  %86 = getelementptr inbounds %struct.epoll_copyout_args, %struct.epoll_copyout_args* %14, i32 0, i32 1
  store i64 0, i64* %86, align 8
  %87 = getelementptr inbounds %struct.epoll_copyout_args, %struct.epoll_copyout_args* %14, i32 0, i32 0
  store i32 0, i32* %87, align 8
  %88 = load i32, i32* %12, align 4
  %89 = icmp ne i32 %88, -1
  br i1 %89, label %90, label %103

90:                                               ; preds = %79
  %91 = load i32, i32* %12, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = load i32, i32* @EINVAL, align 4
  store i32 %94, i32* %21, align 4
  br label %130

95:                                               ; preds = %90
  %96 = load i32, i32* %12, align 4
  %97 = sdiv i32 %96, 1000
  %98 = getelementptr inbounds %struct.timespec, %struct.timespec* %16, i32 0, i32 0
  store i32 %97, i32* %98, align 4
  %99 = load i32, i32* %12, align 4
  %100 = srem i32 %99, 1000
  %101 = mul nsw i32 %100, 1000000
  %102 = getelementptr inbounds %struct.timespec, %struct.timespec* %16, i32 0, i32 1
  store i32 %101, i32* %102, align 4
  store %struct.timespec* %16, %struct.timespec** %17, align 8
  br label %104

103:                                              ; preds = %79
  store %struct.timespec* null, %struct.timespec** %17, align 8
  br label %104

104:                                              ; preds = %103, %95
  %105 = load %struct.thread*, %struct.thread** %8, align 8
  %106 = load %struct.file*, %struct.file** %19, align 8
  %107 = load i32, i32* %11, align 4
  %108 = load %struct.timespec*, %struct.timespec** %17, align 8
  %109 = call i32 @kern_kevent_fp(%struct.thread* %105, %struct.file* %106, i32 0, i32 %107, %struct.kevent_copyops* %15, %struct.timespec* %108)
  store i32 %109, i32* %21, align 4
  %110 = load i32, i32* %21, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %104
  %113 = getelementptr inbounds %struct.epoll_copyout_args, %struct.epoll_copyout_args* %14, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.epoll_copyout_args, %struct.epoll_copyout_args* %14, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  store i32 %118, i32* %21, align 4
  br label %119

119:                                              ; preds = %116, %112, %104
  %120 = load i32, i32* %21, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %119
  %123 = getelementptr inbounds %struct.epoll_copyout_args, %struct.epoll_copyout_args* %14, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.thread*, %struct.thread** %8, align 8
  %126 = getelementptr inbounds %struct.thread, %struct.thread* %125, i32 0, i32 0
  %127 = load i64*, i64** %126, align 8
  %128 = getelementptr inbounds i64, i64* %127, i64 0
  store i64 %124, i64* %128, align 8
  br label %129

129:                                              ; preds = %122, %119
  br label %130

130:                                              ; preds = %129, %93
  %131 = load i32*, i32** %13, align 8
  %132 = icmp ne i32* %131, null
  br i1 %132, label %133, label %137

133:                                              ; preds = %130
  %134 = load %struct.thread*, %struct.thread** %8, align 8
  %135 = load i32, i32* @SIG_SETMASK, align 4
  %136 = call i32 @kern_sigprocmask(%struct.thread* %134, i32 %135, i32* %20, i32* null, i32 0)
  store i32 %136, i32* %21, align 4
  br label %137

137:                                              ; preds = %133, %130
  br label %138

138:                                              ; preds = %137, %63, %51
  %139 = load %struct.file*, %struct.file** %19, align 8
  %140 = load %struct.thread*, %struct.thread** %8, align 8
  %141 = call i32 @fdrop(%struct.file* %139, %struct.thread* %140)
  %142 = load i32, i32* %21, align 4
  store i32 %142, i32* %7, align 4
  br label %143

143:                                              ; preds = %138, %43, %33
  %144 = load i32, i32* %7, align 4
  ret i32 %144
}

declare dso_local i32 @fget(%struct.thread*, i32, i32, %struct.file**) #1

declare dso_local i32 @cap_rights_init(i32*, i32) #1

declare dso_local i32 @kern_sigprocmask(%struct.thread*, i32, i32*, i32*, i32) #1

declare dso_local i32 @thread_lock(%struct.thread*) #1

declare dso_local i32 @thread_unlock(%struct.thread*) #1

declare dso_local i32 @kern_kevent_fp(%struct.thread*, %struct.file*, i32, i32, %struct.kevent_copyops*, %struct.timespec*) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
