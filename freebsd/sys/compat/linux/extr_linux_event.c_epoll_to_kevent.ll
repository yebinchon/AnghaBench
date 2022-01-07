; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_event.c_epoll_to_kevent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_event.c_epoll_to_kevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.proc* }
%struct.proc = type { i32 }
%struct.file = type { i32 }
%struct.epoll_event = type { i32 }
%struct.kevent = type { i32 }
%struct.linux_pemuldata = type { i32, i32* }

@LINUX_EPOLLONESHOT = common dso_local global i32 0, align 4
@EV_ONESHOT = common dso_local global i32 0, align 4
@LINUX_EPOLLET = common dso_local global i32 0, align 4
@EV_CLEAR = common dso_local global i32 0, align 4
@LINUX_EPOLLERR = common dso_local global i32 0, align 4
@EV_ERROR = common dso_local global i32 0, align 4
@LINUX_EPOLLRDHUP = common dso_local global i32 0, align 4
@EV_EOF = common dso_local global i32 0, align 4
@LINUX_EPOLL_EVRD = common dso_local global i32 0, align 4
@EVFILT_READ = common dso_local global i32 0, align 4
@LINUX_EPOLL_EVWR = common dso_local global i32 0, align 4
@EVFILT_WRITE = common dso_local global i32 0, align 4
@LINUX_EPOLL_EVSUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"epoll proc emuldata not found.\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"epoll proc epolldata not found.\0A\00", align 1
@LINUX_XUNSUP_EPOLL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"epoll_ctl unsupported flags: 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.file*, i32, %struct.epoll_event*, i32*, %struct.kevent*, i32*)* @epoll_to_kevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @epoll_to_kevent(%struct.thread* %0, %struct.file* %1, i32 %2, %struct.epoll_event* %3, i32* %4, %struct.kevent* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.thread*, align 8
  %10 = alloca %struct.file*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.epoll_event*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.kevent*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.linux_pemuldata*, align 8
  %18 = alloca %struct.proc*, align 8
  store %struct.thread* %0, %struct.thread** %9, align 8
  store %struct.file* %1, %struct.file** %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.epoll_event* %3, %struct.epoll_event** %12, align 8
  store i32* %4, i32** %13, align 8
  store %struct.kevent* %5, %struct.kevent** %14, align 8
  store i32* %6, i32** %15, align 8
  %19 = load %struct.epoll_event*, %struct.epoll_event** %12, align 8
  %20 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %16, align 4
  %22 = load i32, i32* %16, align 4
  %23 = load i32, i32* @LINUX_EPOLLONESHOT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %7
  %27 = load i32, i32* @EV_ONESHOT, align 4
  %28 = load i32*, i32** %13, align 8
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %27
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %26, %7
  %32 = load i32, i32* %16, align 4
  %33 = load i32, i32* @LINUX_EPOLLET, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load i32, i32* @EV_CLEAR, align 4
  %38 = load i32*, i32** %13, align 8
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %37
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %36, %31
  %42 = load i32, i32* %16, align 4
  %43 = load i32, i32* @LINUX_EPOLLERR, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load i32, i32* @EV_ERROR, align 4
  %48 = load i32*, i32** %13, align 8
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %47
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %46, %41
  %52 = load i32, i32* %16, align 4
  %53 = load i32, i32* @LINUX_EPOLLRDHUP, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load i32, i32* @EV_EOF, align 4
  %58 = load i32*, i32** %13, align 8
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %57
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %56, %51
  %62 = load i32, i32* %16, align 4
  %63 = load i32, i32* @LINUX_EPOLL_EVRD, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %61
  %67 = load %struct.kevent*, %struct.kevent** %14, align 8
  %68 = getelementptr inbounds %struct.kevent, %struct.kevent* %67, i32 1
  store %struct.kevent* %68, %struct.kevent** %14, align 8
  %69 = ptrtoint %struct.kevent* %67 to i32
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* @EVFILT_READ, align 4
  %72 = load i32*, i32** %13, align 8
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @EV_SET(i32 %69, i32 %70, i32 %71, i32 %73, i32 0, i32 0, i32 0)
  %75 = load i32*, i32** %15, align 8
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %66, %61
  %79 = load i32, i32* %16, align 4
  %80 = load i32, i32* @LINUX_EPOLL_EVWR, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %95

83:                                               ; preds = %78
  %84 = load %struct.kevent*, %struct.kevent** %14, align 8
  %85 = getelementptr inbounds %struct.kevent, %struct.kevent* %84, i32 1
  store %struct.kevent* %85, %struct.kevent** %14, align 8
  %86 = ptrtoint %struct.kevent* %84 to i32
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* @EVFILT_WRITE, align 4
  %89 = load i32*, i32** %13, align 8
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @EV_SET(i32 %86, i32 %87, i32 %88, i32 %90, i32 0, i32 0, i32 0)
  %92 = load i32*, i32** %15, align 8
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %83, %78
  %96 = load i32, i32* %16, align 4
  %97 = load i32, i32* @LINUX_EPOLL_EVSUP, align 4
  %98 = xor i32 %97, -1
  %99 = and i32 %96, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %141

101:                                              ; preds = %95
  %102 = load %struct.thread*, %struct.thread** %9, align 8
  %103 = getelementptr inbounds %struct.thread, %struct.thread* %102, i32 0, i32 0
  %104 = load %struct.proc*, %struct.proc** %103, align 8
  store %struct.proc* %104, %struct.proc** %18, align 8
  %105 = load %struct.proc*, %struct.proc** %18, align 8
  %106 = call %struct.linux_pemuldata* @pem_find(%struct.proc* %105)
  store %struct.linux_pemuldata* %106, %struct.linux_pemuldata** %17, align 8
  %107 = load %struct.linux_pemuldata*, %struct.linux_pemuldata** %17, align 8
  %108 = icmp ne %struct.linux_pemuldata* %107, null
  %109 = zext i1 %108 to i32
  %110 = call i32 @KASSERT(i32 %109, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %111 = load %struct.linux_pemuldata*, %struct.linux_pemuldata** %17, align 8
  %112 = getelementptr inbounds %struct.linux_pemuldata, %struct.linux_pemuldata* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = icmp ne i32* %113, null
  %115 = zext i1 %114 to i32
  %116 = call i32 @KASSERT(i32 %115, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %117 = load %struct.linux_pemuldata*, %struct.linux_pemuldata** %17, align 8
  %118 = call i32 @LINUX_PEM_XLOCK(%struct.linux_pemuldata* %117)
  %119 = load %struct.linux_pemuldata*, %struct.linux_pemuldata** %17, align 8
  %120 = getelementptr inbounds %struct.linux_pemuldata, %struct.linux_pemuldata* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @LINUX_XUNSUP_EPOLL, align 4
  %123 = and i32 %121, %122
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %136

125:                                              ; preds = %101
  %126 = load i32, i32* @LINUX_XUNSUP_EPOLL, align 4
  %127 = load %struct.linux_pemuldata*, %struct.linux_pemuldata** %17, align 8
  %128 = getelementptr inbounds %struct.linux_pemuldata, %struct.linux_pemuldata* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = or i32 %129, %126
  store i32 %130, i32* %128, align 8
  %131 = load %struct.linux_pemuldata*, %struct.linux_pemuldata** %17, align 8
  %132 = call i32 @LINUX_PEM_XUNLOCK(%struct.linux_pemuldata* %131)
  %133 = load %struct.thread*, %struct.thread** %9, align 8
  %134 = load i32, i32* %16, align 4
  %135 = call i32 @linux_msg(%struct.thread* %133, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %134)
  br label %139

136:                                              ; preds = %101
  %137 = load %struct.linux_pemuldata*, %struct.linux_pemuldata** %17, align 8
  %138 = call i32 @LINUX_PEM_XUNLOCK(%struct.linux_pemuldata* %137)
  br label %139

139:                                              ; preds = %136, %125
  %140 = load i32, i32* @EINVAL, align 4
  store i32 %140, i32* %8, align 4
  br label %142

141:                                              ; preds = %95
  store i32 0, i32* %8, align 4
  br label %142

142:                                              ; preds = %141, %139
  %143 = load i32, i32* %8, align 4
  ret i32 %143
}

declare dso_local i32 @EV_SET(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.linux_pemuldata* @pem_find(%struct.proc*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @LINUX_PEM_XLOCK(%struct.linux_pemuldata*) #1

declare dso_local i32 @LINUX_PEM_XUNLOCK(%struct.linux_pemuldata*) #1

declare dso_local i32 @linux_msg(%struct.thread*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
