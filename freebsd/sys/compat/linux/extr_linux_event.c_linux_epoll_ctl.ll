; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_event.c_linux_epoll_ctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_event.c_linux_epoll_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_epoll_ctl_args = type { i32, i32, i32, i32 }
%struct.file = type { i64 }
%struct.epoll_copyin_args = type { %struct.kevent* }
%struct.kevent = type { i32 }
%struct.kevent_copyops = type { i32, i32*, %struct.epoll_copyin_args* }
%struct.epoll_event = type { i32 }

@epoll_kev_copyin = common dso_local global i32 0, align 4
@CAP_KQUEUE_CHANGE = common dso_local global i32 0, align 4
@DTYPE_KQUEUE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@CAP_POLL_EVENT = common dso_local global i32 0, align 4
@EV_ADD = common dso_local global i32 0, align 4
@EV_ENABLE = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_epoll_ctl(%struct.thread* %0, %struct.linux_epoll_ctl_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_epoll_ctl_args*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.epoll_copyin_args, align 8
  %9 = alloca [2 x %struct.kevent], align 4
  %10 = alloca %struct.kevent_copyops, align 8
  %11 = alloca %struct.epoll_event, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_epoll_ctl_args* %1, %struct.linux_epoll_ctl_args** %5, align 8
  %16 = getelementptr inbounds %struct.kevent_copyops, %struct.kevent_copyops* %10, i32 0, i32 0
  %17 = ptrtoint %struct.epoll_copyin_args* %8 to i32
  store i32 %17, i32* %16, align 8
  %18 = getelementptr inbounds %struct.kevent_copyops, %struct.kevent_copyops* %10, i32 0, i32 1
  store i32* null, i32** %18, align 8
  %19 = getelementptr inbounds %struct.kevent_copyops, %struct.kevent_copyops* %10, i32 0, i32 2
  %20 = load i32, i32* @epoll_kev_copyin, align 4
  %21 = sext i32 %20 to i64
  %22 = inttoptr i64 %21 to %struct.epoll_copyin_args*
  store %struct.epoll_copyin_args* %22, %struct.epoll_copyin_args** %19, align 8
  store i32 0, i32* %14, align 4
  %23 = load %struct.linux_epoll_ctl_args*, %struct.linux_epoll_ctl_args** %5, align 8
  %24 = getelementptr inbounds %struct.linux_epoll_ctl_args, %struct.linux_epoll_ctl_args* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 129
  br i1 %26, label %27, label %37

27:                                               ; preds = %2
  %28 = load %struct.linux_epoll_ctl_args*, %struct.linux_epoll_ctl_args** %5, align 8
  %29 = getelementptr inbounds %struct.linux_epoll_ctl_args, %struct.linux_epoll_ctl_args* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @copyin(i32 %30, %struct.epoll_event* %11, i32 4)
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* %15, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* %15, align 4
  store i32 %35, i32* %3, align 4
  br label %166

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %36, %2
  %38 = load %struct.thread*, %struct.thread** %4, align 8
  %39 = load %struct.linux_epoll_ctl_args*, %struct.linux_epoll_ctl_args** %5, align 8
  %40 = getelementptr inbounds %struct.linux_epoll_ctl_args, %struct.linux_epoll_ctl_args* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @CAP_KQUEUE_CHANGE, align 4
  %43 = call i32 @cap_rights_init(i32* %12, i32 %42)
  %44 = call i32 @fget(%struct.thread* %38, i32 %41, i32 %43, %struct.file** %6)
  store i32 %44, i32* %15, align 4
  %45 = load i32, i32* %15, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %37
  %48 = load i32, i32* %15, align 4
  store i32 %48, i32* %3, align 4
  br label %166

49:                                               ; preds = %37
  %50 = load %struct.file*, %struct.file** %6, align 8
  %51 = getelementptr inbounds %struct.file, %struct.file* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @DTYPE_KQUEUE, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* @EINVAL, align 4
  store i32 %56, i32* %15, align 4
  br label %161

57:                                               ; preds = %49
  %58 = load %struct.thread*, %struct.thread** %4, align 8
  %59 = load %struct.linux_epoll_ctl_args*, %struct.linux_epoll_ctl_args** %5, align 8
  %60 = getelementptr inbounds %struct.linux_epoll_ctl_args, %struct.linux_epoll_ctl_args* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @CAP_POLL_EVENT, align 4
  %63 = call i32 @cap_rights_init(i32* %12, i32 %62)
  %64 = call i32 @fget(%struct.thread* %58, i32 %61, i32 %63, %struct.file** %7)
  store i32 %64, i32* %15, align 4
  %65 = load i32, i32* %15, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  br label %161

68:                                               ; preds = %57
  %69 = load %struct.file*, %struct.file** %6, align 8
  %70 = load %struct.file*, %struct.file** %7, align 8
  %71 = icmp eq %struct.file* %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i32, i32* @EINVAL, align 4
  store i32 %73, i32* %15, align 4
  br label %157

74:                                               ; preds = %68
  %75 = getelementptr inbounds [2 x %struct.kevent], [2 x %struct.kevent]* %9, i64 0, i64 0
  %76 = getelementptr inbounds %struct.epoll_copyin_args, %struct.epoll_copyin_args* %8, i32 0, i32 0
  store %struct.kevent* %75, %struct.kevent** %76, align 8
  %77 = load %struct.linux_epoll_ctl_args*, %struct.linux_epoll_ctl_args** %5, align 8
  %78 = getelementptr inbounds %struct.linux_epoll_ctl_args, %struct.linux_epoll_ctl_args* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 129
  br i1 %80, label %81, label %96

81:                                               ; preds = %74
  %82 = load i32, i32* @EV_ADD, align 4
  %83 = load i32, i32* @EV_ENABLE, align 4
  %84 = or i32 %82, %83
  store i32 %84, i32* %13, align 4
  %85 = load %struct.thread*, %struct.thread** %4, align 8
  %86 = load %struct.file*, %struct.file** %6, align 8
  %87 = load %struct.linux_epoll_ctl_args*, %struct.linux_epoll_ctl_args** %5, align 8
  %88 = getelementptr inbounds %struct.linux_epoll_ctl_args, %struct.linux_epoll_ctl_args* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds [2 x %struct.kevent], [2 x %struct.kevent]* %9, i64 0, i64 0
  %91 = call i32 @epoll_to_kevent(%struct.thread* %85, %struct.file* %86, i32 %89, %struct.epoll_event* %11, i32* %13, %struct.kevent* %90, i32* %14)
  store i32 %91, i32* %15, align 4
  %92 = load i32, i32* %15, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %81
  br label %157

95:                                               ; preds = %81
  br label %96

96:                                               ; preds = %95, %74
  %97 = load %struct.linux_epoll_ctl_args*, %struct.linux_epoll_ctl_args** %5, align 8
  %98 = getelementptr inbounds %struct.linux_epoll_ctl_args, %struct.linux_epoll_ctl_args* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  switch i32 %99, label %143 [
    i32 128, label %100
    i32 130, label %111
    i32 129, label %136
  ]

100:                                              ; preds = %96
  %101 = load %struct.thread*, %struct.thread** %4, align 8
  %102 = load %struct.file*, %struct.file** %6, align 8
  %103 = load %struct.linux_epoll_ctl_args*, %struct.linux_epoll_ctl_args** %5, align 8
  %104 = getelementptr inbounds %struct.linux_epoll_ctl_args, %struct.linux_epoll_ctl_args* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @epoll_delete_all_events(%struct.thread* %101, %struct.file* %102, i32 %105)
  store i32 %106, i32* %15, align 4
  %107 = load i32, i32* %15, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %100
  br label %157

110:                                              ; preds = %100
  br label %145

111:                                              ; preds = %96
  %112 = load i32, i32* @EV_ADD, align 4
  %113 = xor i32 %112, -1
  %114 = getelementptr inbounds [2 x %struct.kevent], [2 x %struct.kevent]* %9, i64 0, i64 0
  %115 = getelementptr inbounds %struct.kevent, %struct.kevent* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = and i32 %116, %113
  store i32 %117, i32* %115, align 4
  %118 = load %struct.linux_epoll_ctl_args*, %struct.linux_epoll_ctl_args** %5, align 8
  %119 = getelementptr inbounds %struct.linux_epoll_ctl_args, %struct.linux_epoll_ctl_args* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = getelementptr inbounds [2 x %struct.kevent], [2 x %struct.kevent]* %9, i64 0, i64 0
  %122 = load %struct.thread*, %struct.thread** %4, align 8
  %123 = load i32, i32* @M_WAITOK, align 4
  %124 = call i32 @kqfd_register(i32 %120, %struct.kevent* %121, %struct.thread* %122, i32 %123)
  store i32 %124, i32* %15, align 4
  %125 = load i32, i32* %15, align 4
  %126 = load i32, i32* @ENOENT, align 4
  %127 = icmp ne i32 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %111
  %129 = load i32, i32* @EEXIST, align 4
  store i32 %129, i32* %15, align 4
  br label %157

130:                                              ; preds = %111
  store i32 0, i32* %15, align 4
  %131 = load i32, i32* @EV_ADD, align 4
  %132 = getelementptr inbounds [2 x %struct.kevent], [2 x %struct.kevent]* %9, i64 0, i64 0
  %133 = getelementptr inbounds %struct.kevent, %struct.kevent* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = or i32 %134, %131
  store i32 %135, i32* %133, align 4
  br label %145

136:                                              ; preds = %96
  %137 = load %struct.thread*, %struct.thread** %4, align 8
  %138 = load %struct.file*, %struct.file** %6, align 8
  %139 = load %struct.linux_epoll_ctl_args*, %struct.linux_epoll_ctl_args** %5, align 8
  %140 = getelementptr inbounds %struct.linux_epoll_ctl_args, %struct.linux_epoll_ctl_args* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @epoll_delete_all_events(%struct.thread* %137, %struct.file* %138, i32 %141)
  store i32 %142, i32* %15, align 4
  br label %157

143:                                              ; preds = %96
  %144 = load i32, i32* @EINVAL, align 4
  store i32 %144, i32* %15, align 4
  br label %157

145:                                              ; preds = %130, %110
  %146 = load %struct.thread*, %struct.thread** %4, align 8
  %147 = load %struct.linux_epoll_ctl_args*, %struct.linux_epoll_ctl_args** %5, align 8
  %148 = getelementptr inbounds %struct.linux_epoll_ctl_args, %struct.linux_epoll_ctl_args* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %11, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @epoll_fd_install(%struct.thread* %146, i32 %149, i32 %151)
  %153 = load %struct.thread*, %struct.thread** %4, align 8
  %154 = load %struct.file*, %struct.file** %6, align 8
  %155 = load i32, i32* %14, align 4
  %156 = call i32 @kern_kevent_fp(%struct.thread* %153, %struct.file* %154, i32 %155, i32 0, %struct.kevent_copyops* %10, i32* null)
  store i32 %156, i32* %15, align 4
  br label %157

157:                                              ; preds = %145, %143, %136, %128, %109, %94, %72
  %158 = load %struct.file*, %struct.file** %7, align 8
  %159 = load %struct.thread*, %struct.thread** %4, align 8
  %160 = call i32 @fdrop(%struct.file* %158, %struct.thread* %159)
  br label %161

161:                                              ; preds = %157, %67, %55
  %162 = load %struct.file*, %struct.file** %6, align 8
  %163 = load %struct.thread*, %struct.thread** %4, align 8
  %164 = call i32 @fdrop(%struct.file* %162, %struct.thread* %163)
  %165 = load i32, i32* %15, align 4
  store i32 %165, i32* %3, align 4
  br label %166

166:                                              ; preds = %161, %47, %34
  %167 = load i32, i32* %3, align 4
  ret i32 %167
}

declare dso_local i32 @copyin(i32, %struct.epoll_event*, i32) #1

declare dso_local i32 @fget(%struct.thread*, i32, i32, %struct.file**) #1

declare dso_local i32 @cap_rights_init(i32*, i32) #1

declare dso_local i32 @epoll_to_kevent(%struct.thread*, %struct.file*, i32, %struct.epoll_event*, i32*, %struct.kevent*, i32*) #1

declare dso_local i32 @epoll_delete_all_events(%struct.thread*, %struct.file*, i32) #1

declare dso_local i32 @kqfd_register(i32, %struct.kevent*, %struct.thread*, i32) #1

declare dso_local i32 @epoll_fd_install(%struct.thread*, i32, i32) #1

declare dso_local i32 @kern_kevent_fp(%struct.thread*, %struct.file*, i32, i32, %struct.kevent_copyops*, i32*) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
