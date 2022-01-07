; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_emul.c_linux_common_execve.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_emul.c_linux_common_execve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32*, %struct.proc* }
%struct.proc = type { i32* }
%struct.image_args = type { i32 }
%struct.linux_pemuldata = type { %struct.linux_pemuldata* }
%struct.epoll_emuldata = type { %struct.epoll_emuldata* }
%struct.vmspace = type { i32 }
%struct.linux_emuldata = type { %struct.linux_emuldata* }

@EJUSTRETURN = common dso_local global i32 0, align 4
@SV_ABI_LINUX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"proc_exec: thread emuldata not found.\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"proc_exec: proc pemuldata not found.\0A\00", align 1
@M_EPOLL = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_LINUX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_common_execve(%struct.thread* %0, %struct.image_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.image_args*, align 8
  %6 = alloca %struct.linux_pemuldata*, align 8
  %7 = alloca %struct.epoll_emuldata*, align 8
  %8 = alloca %struct.vmspace*, align 8
  %9 = alloca %struct.linux_emuldata*, align 8
  %10 = alloca %struct.proc*, align 8
  %11 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.image_args* %1, %struct.image_args** %5, align 8
  %12 = load %struct.thread*, %struct.thread** %4, align 8
  %13 = getelementptr inbounds %struct.thread, %struct.thread* %12, i32 0, i32 1
  %14 = load %struct.proc*, %struct.proc** %13, align 8
  store %struct.proc* %14, %struct.proc** %10, align 8
  %15 = load %struct.thread*, %struct.thread** %4, align 8
  %16 = call i32 @pre_execve(%struct.thread* %15, %struct.vmspace** %8)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %11, align 4
  store i32 %20, i32* %3, align 4
  br label %85

21:                                               ; preds = %2
  %22 = load %struct.thread*, %struct.thread** %4, align 8
  %23 = load %struct.image_args*, %struct.image_args** %5, align 8
  %24 = call i32 @kern_execve(%struct.thread* %22, %struct.image_args* %23, i32* null)
  store i32 %24, i32* %11, align 4
  %25 = load %struct.thread*, %struct.thread** %4, align 8
  %26 = load i32, i32* %11, align 4
  %27 = load %struct.vmspace*, %struct.vmspace** %8, align 8
  %28 = call i32 @post_execve(%struct.thread* %25, i32 %26, %struct.vmspace* %27)
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @EJUSTRETURN, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = load i32, i32* %11, align 4
  store i32 %33, i32* %3, align 4
  br label %85

34:                                               ; preds = %21
  %35 = call i64 (...) @SV_CURPROC_ABI()
  %36 = load i64, i64* @SV_ABI_LINUX, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %83

38:                                               ; preds = %34
  %39 = load %struct.proc*, %struct.proc** %10, align 8
  %40 = call i32 @PROC_LOCK(%struct.proc* %39)
  %41 = load %struct.thread*, %struct.thread** %4, align 8
  %42 = call %struct.linux_pemuldata* @em_find(%struct.thread* %41)
  %43 = bitcast %struct.linux_pemuldata* %42 to %struct.linux_emuldata*
  store %struct.linux_emuldata* %43, %struct.linux_emuldata** %9, align 8
  %44 = load %struct.linux_emuldata*, %struct.linux_emuldata** %9, align 8
  %45 = icmp ne %struct.linux_emuldata* %44, null
  %46 = zext i1 %45 to i32
  %47 = call i32 @KASSERT(i32 %46, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %48 = load %struct.thread*, %struct.thread** %4, align 8
  %49 = getelementptr inbounds %struct.thread, %struct.thread* %48, i32 0, i32 0
  store i32* null, i32** %49, align 8
  %50 = load %struct.proc*, %struct.proc** %10, align 8
  %51 = call %struct.linux_pemuldata* @pem_find(%struct.proc* %50)
  store %struct.linux_pemuldata* %51, %struct.linux_pemuldata** %6, align 8
  %52 = load %struct.linux_pemuldata*, %struct.linux_pemuldata** %6, align 8
  %53 = icmp ne %struct.linux_pemuldata* %52, null
  %54 = zext i1 %53 to i32
  %55 = call i32 @KASSERT(i32 %54, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %56 = load %struct.proc*, %struct.proc** %10, align 8
  %57 = getelementptr inbounds %struct.proc, %struct.proc* %56, i32 0, i32 0
  store i32* null, i32** %57, align 8
  %58 = load %struct.proc*, %struct.proc** %10, align 8
  %59 = call i32 @PROC_UNLOCK(%struct.proc* %58)
  %60 = load %struct.linux_pemuldata*, %struct.linux_pemuldata** %6, align 8
  %61 = getelementptr inbounds %struct.linux_pemuldata, %struct.linux_pemuldata* %60, i32 0, i32 0
  %62 = load %struct.linux_pemuldata*, %struct.linux_pemuldata** %61, align 8
  %63 = icmp ne %struct.linux_pemuldata* %62, null
  br i1 %63, label %64, label %75

64:                                               ; preds = %38
  %65 = load %struct.linux_pemuldata*, %struct.linux_pemuldata** %6, align 8
  %66 = getelementptr inbounds %struct.linux_pemuldata, %struct.linux_pemuldata* %65, i32 0, i32 0
  %67 = load %struct.linux_pemuldata*, %struct.linux_pemuldata** %66, align 8
  %68 = bitcast %struct.linux_pemuldata* %67 to %struct.epoll_emuldata*
  store %struct.epoll_emuldata* %68, %struct.epoll_emuldata** %7, align 8
  %69 = load %struct.linux_pemuldata*, %struct.linux_pemuldata** %6, align 8
  %70 = getelementptr inbounds %struct.linux_pemuldata, %struct.linux_pemuldata* %69, i32 0, i32 0
  store %struct.linux_pemuldata* null, %struct.linux_pemuldata** %70, align 8
  %71 = load %struct.epoll_emuldata*, %struct.epoll_emuldata** %7, align 8
  %72 = bitcast %struct.epoll_emuldata* %71 to %struct.linux_pemuldata*
  %73 = load i32, i32* @M_EPOLL, align 4
  %74 = call i32 @free(%struct.linux_pemuldata* %72, i32 %73)
  br label %75

75:                                               ; preds = %64, %38
  %76 = load %struct.linux_emuldata*, %struct.linux_emuldata** %9, align 8
  %77 = bitcast %struct.linux_emuldata* %76 to %struct.linux_pemuldata*
  %78 = load i32, i32* @M_TEMP, align 4
  %79 = call i32 @free(%struct.linux_pemuldata* %77, i32 %78)
  %80 = load %struct.linux_pemuldata*, %struct.linux_pemuldata** %6, align 8
  %81 = load i32, i32* @M_LINUX, align 4
  %82 = call i32 @free(%struct.linux_pemuldata* %80, i32 %81)
  br label %83

83:                                               ; preds = %75, %34
  %84 = load i32, i32* @EJUSTRETURN, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %83, %32, %19
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @pre_execve(%struct.thread*, %struct.vmspace**) #1

declare dso_local i32 @kern_execve(%struct.thread*, %struct.image_args*, i32*) #1

declare dso_local i32 @post_execve(%struct.thread*, i32, %struct.vmspace*) #1

declare dso_local i64 @SV_CURPROC_ABI(...) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local %struct.linux_pemuldata* @em_find(%struct.thread*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.linux_pemuldata* @pem_find(%struct.proc*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @free(%struct.linux_pemuldata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
