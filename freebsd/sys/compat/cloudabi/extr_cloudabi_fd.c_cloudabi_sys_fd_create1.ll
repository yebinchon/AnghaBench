; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_fd.c_cloudabi_sys_fd_create1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_fd.c_cloudabi_sys_fd_create1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.cloudabi_sys_fd_create1_args = type { i32 }
%struct.filecaps = type { i32 }

@CAP_FSTAT = common dso_local global i32 0, align 4
@CAP_FTRUNCATE = common dso_local global i32 0, align 4
@CAP_MMAP_RWX = common dso_local global i32 0, align 4
@SHM_ANON = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@F_SEAL_SEAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cloudabi_sys_fd_create1(%struct.thread* %0, %struct.cloudabi_sys_fd_create1_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.cloudabi_sys_fd_create1_args*, align 8
  %6 = alloca %struct.filecaps, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.cloudabi_sys_fd_create1_args* %1, %struct.cloudabi_sys_fd_create1_args** %5, align 8
  %7 = bitcast %struct.filecaps* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 4, i1 false)
  %8 = load %struct.cloudabi_sys_fd_create1_args*, %struct.cloudabi_sys_fd_create1_args** %5, align 8
  %9 = getelementptr inbounds %struct.cloudabi_sys_fd_create1_args, %struct.cloudabi_sys_fd_create1_args* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %24 [
    i32 128, label %11
  ]

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.filecaps, %struct.filecaps* %6, i32 0, i32 0
  %13 = load i32, i32* @CAP_FSTAT, align 4
  %14 = load i32, i32* @CAP_FTRUNCATE, align 4
  %15 = load i32, i32* @CAP_MMAP_RWX, align 4
  %16 = call i32 @cap_rights_init(i32* %12, i32 %13, i32 %14, i32 %15)
  %17 = load %struct.thread*, %struct.thread** %4, align 8
  %18 = load i32, i32* @SHM_ANON, align 4
  %19 = load i32, i32* @O_RDWR, align 4
  %20 = load i32, i32* @O_CLOEXEC, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @F_SEAL_SEAL, align 4
  %23 = call i32 @kern_shm_open(%struct.thread* %17, i32 %18, i32 %21, i32 0, %struct.filecaps* %6, i32 %22)
  store i32 %23, i32* %3, align 4
  br label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %24, %11
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cap_rights_init(i32*, i32, i32, i32) #2

declare dso_local i32 @kern_shm_open(%struct.thread*, i32, i32, i32, %struct.filecaps*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
