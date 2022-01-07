; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_event.c_linux_epoll_pwait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_event.c_linux_epoll_pwait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_epoll_pwait_args = type { i32, i32, i32, i32, i32, i32* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_epoll_pwait(%struct.thread* %0, %struct.linux_epoll_pwait_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_epoll_pwait_args*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_epoll_pwait_args* %1, %struct.linux_epoll_pwait_args** %5, align 8
  %10 = load %struct.linux_epoll_pwait_args*, %struct.linux_epoll_pwait_args** %5, align 8
  %11 = getelementptr inbounds %struct.linux_epoll_pwait_args, %struct.linux_epoll_pwait_args* %10, i32 0, i32 5
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %33

14:                                               ; preds = %2
  %15 = load %struct.linux_epoll_pwait_args*, %struct.linux_epoll_pwait_args** %5, align 8
  %16 = getelementptr inbounds %struct.linux_epoll_pwait_args, %struct.linux_epoll_pwait_args* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = icmp ne i64 %18, 4
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %3, align 4
  br label %50

22:                                               ; preds = %14
  %23 = load %struct.linux_epoll_pwait_args*, %struct.linux_epoll_pwait_args** %5, align 8
  %24 = getelementptr inbounds %struct.linux_epoll_pwait_args, %struct.linux_epoll_pwait_args* %23, i32 0, i32 5
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @copyin(i32* %25, i32* %8, i32 4)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %3, align 4
  br label %50

31:                                               ; preds = %22
  %32 = call i32 @linux_to_bsd_sigset(i32* %8, i32* %6)
  store i32* %6, i32** %7, align 8
  br label %34

33:                                               ; preds = %2
  store i32* null, i32** %7, align 8
  br label %34

34:                                               ; preds = %33, %31
  %35 = load %struct.thread*, %struct.thread** %4, align 8
  %36 = load %struct.linux_epoll_pwait_args*, %struct.linux_epoll_pwait_args** %5, align 8
  %37 = getelementptr inbounds %struct.linux_epoll_pwait_args, %struct.linux_epoll_pwait_args* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.linux_epoll_pwait_args*, %struct.linux_epoll_pwait_args** %5, align 8
  %40 = getelementptr inbounds %struct.linux_epoll_pwait_args, %struct.linux_epoll_pwait_args* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.linux_epoll_pwait_args*, %struct.linux_epoll_pwait_args** %5, align 8
  %43 = getelementptr inbounds %struct.linux_epoll_pwait_args, %struct.linux_epoll_pwait_args* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.linux_epoll_pwait_args*, %struct.linux_epoll_pwait_args** %5, align 8
  %46 = getelementptr inbounds %struct.linux_epoll_pwait_args, %struct.linux_epoll_pwait_args* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @linux_epoll_wait_common(%struct.thread* %35, i32 %38, i32 %41, i32 %44, i32 %47, i32* %48)
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %34, %29, %20
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @copyin(i32*, i32*, i32) #1

declare dso_local i32 @linux_to_bsd_sigset(i32*, i32*) #1

declare dso_local i32 @linux_epoll_wait_common(%struct.thread*, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
