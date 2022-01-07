; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_proc.c_cloudabi_sys_proc_fork.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_proc.c_cloudabi_sys_proc_fork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32* }
%struct.cloudabi_sys_proc_fork_args = type { i32 }
%struct.fork_req = type { i32, i32*, %struct.filecaps* }
%struct.filecaps = type { i32 }

@CAP_FSTAT = common dso_local global i32 0, align 4
@CAP_EVENT = common dso_local global i32 0, align 4
@RFFDG = common dso_local global i32 0, align 4
@RFPROC = common dso_local global i32 0, align 4
@RFPROCDESC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cloudabi_sys_proc_fork(%struct.thread* %0, %struct.cloudabi_sys_proc_fork_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.cloudabi_sys_proc_fork_args*, align 8
  %6 = alloca %struct.fork_req, align 8
  %7 = alloca %struct.filecaps, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.cloudabi_sys_proc_fork_args* %1, %struct.cloudabi_sys_proc_fork_args** %5, align 8
  %10 = bitcast %struct.filecaps* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 4, i1 false)
  %11 = getelementptr inbounds %struct.filecaps, %struct.filecaps* %7, i32 0, i32 0
  %12 = load i32, i32* @CAP_FSTAT, align 4
  %13 = load i32, i32* @CAP_EVENT, align 4
  %14 = call i32 @cap_rights_init(i32* %11, i32 %12, i32 %13)
  %15 = call i32 @bzero(%struct.fork_req* %6, i32 24)
  %16 = load i32, i32* @RFFDG, align 4
  %17 = load i32, i32* @RFPROC, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @RFPROCDESC, align 4
  %20 = or i32 %18, %19
  %21 = getelementptr inbounds %struct.fork_req, %struct.fork_req* %6, i32 0, i32 0
  store i32 %20, i32* %21, align 8
  %22 = getelementptr inbounds %struct.fork_req, %struct.fork_req* %6, i32 0, i32 1
  store i32* %9, i32** %22, align 8
  %23 = getelementptr inbounds %struct.fork_req, %struct.fork_req* %6, i32 0, i32 2
  store %struct.filecaps* %7, %struct.filecaps** %23, align 8
  %24 = load %struct.thread*, %struct.thread** %4, align 8
  %25 = call i32 @fork1(%struct.thread* %24, %struct.fork_req* %6)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %3, align 4
  br label %36

30:                                               ; preds = %2
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.thread*, %struct.thread** %4, align 8
  %33 = getelementptr inbounds %struct.thread, %struct.thread* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  store i32 %31, i32* %35, align 4
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %30, %28
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cap_rights_init(i32*, i32, i32) #2

declare dso_local i32 @bzero(%struct.fork_req*, i32) #2

declare dso_local i32 @fork1(%struct.thread*, %struct.fork_req*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
