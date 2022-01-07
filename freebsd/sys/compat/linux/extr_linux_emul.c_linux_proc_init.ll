; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_emul.c_linux_proc_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_emul.c_linux_proc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.proc*, %struct.linux_emuldata*, i32 }
%struct.proc = type { i32, %struct.linux_pemuldata* }
%struct.linux_pemuldata = type { %struct.epoll_emuldata*, i64, i32 }
%struct.epoll_emuldata = type { i32 }
%struct.linux_emuldata = type { i32*, i32*, i32*, i64, i32 }

@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@LINUX_CLONE_THREAD = common dso_local global i32 0, align 4
@proc_init = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"thread newtd(%d)\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"fork newtd(%d)\00", align 1
@M_LINUX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"lpemlk\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"exec newtd(%d)\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"proc_init: emuldata not found in exec case.\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"proc_exit: proc emuldata not found.\0A\00", align 1
@M_EPOLL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @linux_proc_init(%struct.thread* %0, %struct.thread* %1, i32 %2) #0 {
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.thread*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.linux_emuldata*, align 8
  %8 = alloca %struct.linux_pemuldata*, align 8
  %9 = alloca %struct.epoll_emuldata*, align 8
  %10 = alloca %struct.proc*, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.thread* %1, %struct.thread** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.thread*, %struct.thread** %5, align 8
  %12 = icmp ne %struct.thread* %11, null
  br i1 %12, label %13, label %65

13:                                               ; preds = %3
  %14 = load %struct.thread*, %struct.thread** %5, align 8
  %15 = getelementptr inbounds %struct.thread, %struct.thread* %14, i32 0, i32 0
  %16 = load %struct.proc*, %struct.proc** %15, align 8
  store %struct.proc* %16, %struct.proc** %10, align 8
  %17 = load i32, i32* @M_TEMP, align 4
  %18 = load i32, i32* @M_WAITOK, align 4
  %19 = load i32, i32* @M_ZERO, align 4
  %20 = or i32 %18, %19
  %21 = call i8* @malloc(i32 40, i32 %17, i32 %20)
  %22 = bitcast i8* %21 to %struct.linux_emuldata*
  store %struct.linux_emuldata* %22, %struct.linux_emuldata** %7, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @LINUX_CLONE_THREAD, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %13
  %28 = load i32, i32* @proc_init, align 4
  %29 = load %struct.thread*, %struct.thread** %5, align 8
  %30 = getelementptr inbounds %struct.thread, %struct.thread* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @LINUX_CTR1(i32 %28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.thread*, %struct.thread** %5, align 8
  %34 = getelementptr inbounds %struct.thread, %struct.thread* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.linux_emuldata*, %struct.linux_emuldata** %7, align 8
  %37 = getelementptr inbounds %struct.linux_emuldata, %struct.linux_emuldata* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 8
  br label %61

38:                                               ; preds = %13
  %39 = load i32, i32* @proc_init, align 4
  %40 = load %struct.proc*, %struct.proc** %10, align 8
  %41 = getelementptr inbounds %struct.proc, %struct.proc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @LINUX_CTR1(i32 %39, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load %struct.proc*, %struct.proc** %10, align 8
  %45 = getelementptr inbounds %struct.proc, %struct.proc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.linux_emuldata*, %struct.linux_emuldata** %7, align 8
  %48 = getelementptr inbounds %struct.linux_emuldata, %struct.linux_emuldata* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* @M_LINUX, align 4
  %50 = load i32, i32* @M_WAITOK, align 4
  %51 = load i32, i32* @M_ZERO, align 4
  %52 = or i32 %50, %51
  %53 = call i8* @malloc(i32 24, i32 %49, i32 %52)
  %54 = bitcast i8* %53 to %struct.linux_pemuldata*
  store %struct.linux_pemuldata* %54, %struct.linux_pemuldata** %8, align 8
  %55 = load %struct.linux_pemuldata*, %struct.linux_pemuldata** %8, align 8
  %56 = getelementptr inbounds %struct.linux_pemuldata, %struct.linux_pemuldata* %55, i32 0, i32 2
  %57 = call i32 @sx_init(i32* %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %58 = load %struct.linux_pemuldata*, %struct.linux_pemuldata** %8, align 8
  %59 = load %struct.proc*, %struct.proc** %10, align 8
  %60 = getelementptr inbounds %struct.proc, %struct.proc* %59, i32 0, i32 1
  store %struct.linux_pemuldata* %58, %struct.linux_pemuldata** %60, align 8
  br label %61

61:                                               ; preds = %38, %27
  %62 = load %struct.linux_emuldata*, %struct.linux_emuldata** %7, align 8
  %63 = load %struct.thread*, %struct.thread** %5, align 8
  %64 = getelementptr inbounds %struct.thread, %struct.thread* %63, i32 0, i32 1
  store %struct.linux_emuldata* %62, %struct.linux_emuldata** %64, align 8
  br label %115

65:                                               ; preds = %3
  %66 = load %struct.thread*, %struct.thread** %4, align 8
  %67 = getelementptr inbounds %struct.thread, %struct.thread* %66, i32 0, i32 0
  %68 = load %struct.proc*, %struct.proc** %67, align 8
  store %struct.proc* %68, %struct.proc** %10, align 8
  %69 = load i32, i32* @proc_init, align 4
  %70 = load %struct.proc*, %struct.proc** %10, align 8
  %71 = getelementptr inbounds %struct.proc, %struct.proc* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @LINUX_CTR1(i32 %69, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %72)
  %74 = load %struct.thread*, %struct.thread** %4, align 8
  %75 = call %struct.linux_emuldata* @em_find(%struct.thread* %74)
  store %struct.linux_emuldata* %75, %struct.linux_emuldata** %7, align 8
  %76 = load %struct.linux_emuldata*, %struct.linux_emuldata** %7, align 8
  %77 = icmp ne %struct.linux_emuldata* %76, null
  %78 = zext i1 %77 to i32
  %79 = call i32 @KASSERT(i32 %78, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %80 = load %struct.proc*, %struct.proc** %10, align 8
  %81 = getelementptr inbounds %struct.proc, %struct.proc* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.linux_emuldata*, %struct.linux_emuldata** %7, align 8
  %84 = getelementptr inbounds %struct.linux_emuldata, %struct.linux_emuldata* %83, i32 0, i32 4
  store i32 %82, i32* %84, align 8
  %85 = load %struct.linux_emuldata*, %struct.linux_emuldata** %7, align 8
  %86 = getelementptr inbounds %struct.linux_emuldata, %struct.linux_emuldata* %85, i32 0, i32 3
  store i64 0, i64* %86, align 8
  %87 = load %struct.linux_emuldata*, %struct.linux_emuldata** %7, align 8
  %88 = getelementptr inbounds %struct.linux_emuldata, %struct.linux_emuldata* %87, i32 0, i32 2
  store i32* null, i32** %88, align 8
  %89 = load %struct.linux_emuldata*, %struct.linux_emuldata** %7, align 8
  %90 = getelementptr inbounds %struct.linux_emuldata, %struct.linux_emuldata* %89, i32 0, i32 1
  store i32* null, i32** %90, align 8
  %91 = load %struct.linux_emuldata*, %struct.linux_emuldata** %7, align 8
  %92 = getelementptr inbounds %struct.linux_emuldata, %struct.linux_emuldata* %91, i32 0, i32 0
  store i32* null, i32** %92, align 8
  %93 = load %struct.proc*, %struct.proc** %10, align 8
  %94 = call %struct.linux_pemuldata* @pem_find(%struct.proc* %93)
  store %struct.linux_pemuldata* %94, %struct.linux_pemuldata** %8, align 8
  %95 = load %struct.linux_pemuldata*, %struct.linux_pemuldata** %8, align 8
  %96 = icmp ne %struct.linux_pemuldata* %95, null
  %97 = zext i1 %96 to i32
  %98 = call i32 @KASSERT(i32 %97, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  %99 = load %struct.linux_pemuldata*, %struct.linux_pemuldata** %8, align 8
  %100 = getelementptr inbounds %struct.linux_pemuldata, %struct.linux_pemuldata* %99, i32 0, i32 1
  store i64 0, i64* %100, align 8
  %101 = load %struct.linux_pemuldata*, %struct.linux_pemuldata** %8, align 8
  %102 = getelementptr inbounds %struct.linux_pemuldata, %struct.linux_pemuldata* %101, i32 0, i32 0
  %103 = load %struct.epoll_emuldata*, %struct.epoll_emuldata** %102, align 8
  %104 = icmp ne %struct.epoll_emuldata* %103, null
  br i1 %104, label %105, label %114

105:                                              ; preds = %65
  %106 = load %struct.linux_pemuldata*, %struct.linux_pemuldata** %8, align 8
  %107 = getelementptr inbounds %struct.linux_pemuldata, %struct.linux_pemuldata* %106, i32 0, i32 0
  %108 = load %struct.epoll_emuldata*, %struct.epoll_emuldata** %107, align 8
  store %struct.epoll_emuldata* %108, %struct.epoll_emuldata** %9, align 8
  %109 = load %struct.linux_pemuldata*, %struct.linux_pemuldata** %8, align 8
  %110 = getelementptr inbounds %struct.linux_pemuldata, %struct.linux_pemuldata* %109, i32 0, i32 0
  store %struct.epoll_emuldata* null, %struct.epoll_emuldata** %110, align 8
  %111 = load %struct.epoll_emuldata*, %struct.epoll_emuldata** %9, align 8
  %112 = load i32, i32* @M_EPOLL, align 4
  %113 = call i32 @free(%struct.epoll_emuldata* %111, i32 %112)
  br label %114

114:                                              ; preds = %105, %65
  br label %115

115:                                              ; preds = %114, %61
  ret void
}

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @LINUX_CTR1(i32, i8*, i32) #1

declare dso_local i32 @sx_init(i32*, i8*) #1

declare dso_local %struct.linux_emuldata* @em_find(%struct.thread*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.linux_pemuldata* @pem_find(%struct.proc*) #1

declare dso_local i32 @free(%struct.epoll_emuldata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
