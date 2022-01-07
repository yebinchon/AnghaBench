; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_event.c_epoll_delete_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_event.c_epoll_delete_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.file = type { i32 }
%struct.epoll_copyin_args = type { %struct.kevent* }
%struct.kevent = type { i32 }
%struct.kevent_copyops = type { i32, i32*, %struct.epoll_copyin_args* }

@epoll_kev_copyin = common dso_local global i32 0, align 4
@EV_DELETE = common dso_local global i32 0, align 4
@EV_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.file*, i32, i32)* @epoll_delete_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @epoll_delete_event(%struct.thread* %0, %struct.file* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.epoll_copyin_args, align 8
  %10 = alloca %struct.kevent, align 4
  %11 = alloca %struct.kevent_copyops, align 8
  store %struct.thread* %0, %struct.thread** %5, align 8
  store %struct.file* %1, %struct.file** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = getelementptr inbounds %struct.kevent_copyops, %struct.kevent_copyops* %11, i32 0, i32 0
  %13 = ptrtoint %struct.epoll_copyin_args* %9 to i32
  store i32 %13, i32* %12, align 8
  %14 = getelementptr inbounds %struct.kevent_copyops, %struct.kevent_copyops* %11, i32 0, i32 1
  store i32* null, i32** %14, align 8
  %15 = getelementptr inbounds %struct.kevent_copyops, %struct.kevent_copyops* %11, i32 0, i32 2
  %16 = load i32, i32* @epoll_kev_copyin, align 4
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to %struct.epoll_copyin_args*
  store %struct.epoll_copyin_args* %18, %struct.epoll_copyin_args** %15, align 8
  %19 = getelementptr inbounds %struct.epoll_copyin_args, %struct.epoll_copyin_args* %9, i32 0, i32 0
  store %struct.kevent* %10, %struct.kevent** %19, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @EV_DELETE, align 4
  %23 = load i32, i32* @EV_DISABLE, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @EV_SET(%struct.kevent* %10, i32 %20, i32 %21, i32 %24, i32 0, i32 0, i32 0)
  %26 = load %struct.thread*, %struct.thread** %5, align 8
  %27 = load %struct.file*, %struct.file** %6, align 8
  %28 = call i32 @kern_kevent_fp(%struct.thread* %26, %struct.file* %27, i32 1, i32 0, %struct.kevent_copyops* %11, i32* null)
  ret i32 %28
}

declare dso_local i32 @EV_SET(%struct.kevent*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @kern_kevent_fp(%struct.thread*, %struct.file*, i32, i32, %struct.kevent_copyops*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
