; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_event.c_epoll_fd_install.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_event.c_epoll_fd_install.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.proc* }
%struct.proc = type { i32 }
%struct.linux_pemuldata = type { %struct.epoll_emuldata* }
%struct.epoll_emuldata = type { i32, i32* }

@.str = private unnamed_addr constant [32 x i8] c"epoll proc emuldata not found.\0A\00", align 1
@M_EPOLL = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thread*, i32, i32)* @epoll_fd_install to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @epoll_fd_install(%struct.thread* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.thread*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.linux_pemuldata*, align 8
  %8 = alloca %struct.epoll_emuldata*, align 8
  %9 = alloca %struct.proc*, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.thread*, %struct.thread** %4, align 8
  %11 = getelementptr inbounds %struct.thread, %struct.thread* %10, i32 0, i32 0
  %12 = load %struct.proc*, %struct.proc** %11, align 8
  store %struct.proc* %12, %struct.proc** %9, align 8
  %13 = load %struct.proc*, %struct.proc** %9, align 8
  %14 = call %struct.linux_pemuldata* @pem_find(%struct.proc* %13)
  store %struct.linux_pemuldata* %14, %struct.linux_pemuldata** %7, align 8
  %15 = load %struct.linux_pemuldata*, %struct.linux_pemuldata** %7, align 8
  %16 = icmp ne %struct.linux_pemuldata* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @KASSERT(i32 %17, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.linux_pemuldata*, %struct.linux_pemuldata** %7, align 8
  %20 = call i32 @LINUX_PEM_XLOCK(%struct.linux_pemuldata* %19)
  %21 = load %struct.linux_pemuldata*, %struct.linux_pemuldata** %7, align 8
  %22 = getelementptr inbounds %struct.linux_pemuldata, %struct.linux_pemuldata* %21, i32 0, i32 0
  %23 = load %struct.epoll_emuldata*, %struct.epoll_emuldata** %22, align 8
  %24 = icmp eq %struct.epoll_emuldata* %23, null
  br i1 %24, label %25, label %37

25:                                               ; preds = %3
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @EPOLL_SIZE(i32 %26)
  %28 = load i32, i32* @M_EPOLL, align 4
  %29 = load i32, i32* @M_WAITOK, align 4
  %30 = call %struct.epoll_emuldata* @malloc(i32 %27, i32 %28, i32 %29)
  store %struct.epoll_emuldata* %30, %struct.epoll_emuldata** %8, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.epoll_emuldata*, %struct.epoll_emuldata** %8, align 8
  %33 = getelementptr inbounds %struct.epoll_emuldata, %struct.epoll_emuldata* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.epoll_emuldata*, %struct.epoll_emuldata** %8, align 8
  %35 = load %struct.linux_pemuldata*, %struct.linux_pemuldata** %7, align 8
  %36 = getelementptr inbounds %struct.linux_pemuldata, %struct.linux_pemuldata* %35, i32 0, i32 0
  store %struct.epoll_emuldata* %34, %struct.epoll_emuldata** %36, align 8
  br label %60

37:                                               ; preds = %3
  %38 = load %struct.linux_pemuldata*, %struct.linux_pemuldata** %7, align 8
  %39 = getelementptr inbounds %struct.linux_pemuldata, %struct.linux_pemuldata* %38, i32 0, i32 0
  %40 = load %struct.epoll_emuldata*, %struct.epoll_emuldata** %39, align 8
  store %struct.epoll_emuldata* %40, %struct.epoll_emuldata** %8, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.epoll_emuldata*, %struct.epoll_emuldata** %8, align 8
  %43 = getelementptr inbounds %struct.epoll_emuldata, %struct.epoll_emuldata* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp sgt i32 %41, %44
  br i1 %45, label %46, label %59

46:                                               ; preds = %37
  %47 = load %struct.epoll_emuldata*, %struct.epoll_emuldata** %8, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @EPOLL_SIZE(i32 %48)
  %50 = load i32, i32* @M_EPOLL, align 4
  %51 = load i32, i32* @M_WAITOK, align 4
  %52 = call %struct.epoll_emuldata* @realloc(%struct.epoll_emuldata* %47, i32 %49, i32 %50, i32 %51)
  store %struct.epoll_emuldata* %52, %struct.epoll_emuldata** %8, align 8
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.epoll_emuldata*, %struct.epoll_emuldata** %8, align 8
  %55 = getelementptr inbounds %struct.epoll_emuldata, %struct.epoll_emuldata* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.epoll_emuldata*, %struct.epoll_emuldata** %8, align 8
  %57 = load %struct.linux_pemuldata*, %struct.linux_pemuldata** %7, align 8
  %58 = getelementptr inbounds %struct.linux_pemuldata, %struct.linux_pemuldata* %57, i32 0, i32 0
  store %struct.epoll_emuldata* %56, %struct.epoll_emuldata** %58, align 8
  br label %59

59:                                               ; preds = %46, %37
  br label %60

60:                                               ; preds = %59, %25
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.epoll_emuldata*, %struct.epoll_emuldata** %8, align 8
  %63 = getelementptr inbounds %struct.epoll_emuldata, %struct.epoll_emuldata* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32 %61, i32* %67, align 4
  %68 = load %struct.linux_pemuldata*, %struct.linux_pemuldata** %7, align 8
  %69 = call i32 @LINUX_PEM_XUNLOCK(%struct.linux_pemuldata* %68)
  ret void
}

declare dso_local %struct.linux_pemuldata* @pem_find(%struct.proc*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @LINUX_PEM_XLOCK(%struct.linux_pemuldata*) #1

declare dso_local %struct.epoll_emuldata* @malloc(i32, i32, i32) #1

declare dso_local i32 @EPOLL_SIZE(i32) #1

declare dso_local %struct.epoll_emuldata* @realloc(%struct.epoll_emuldata*, i32, i32, i32) #1

declare dso_local i32 @LINUX_PEM_XUNLOCK(%struct.linux_pemuldata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
