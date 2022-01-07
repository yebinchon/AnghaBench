; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_fd.c_cloudabi_sys_fd_stat_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_fd.c_cloudabi_sys_fd_stat_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.cloudabi_sys_fd_stat_get_args = type { i64, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }
%struct.file = type { i32 }
%struct.filecaps = type { i32 }

@O_APPEND = common dso_local global i32 0, align 4
@CLOUDABI_FDFLAG_APPEND = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@CLOUDABI_FDFLAG_NONBLOCK = common dso_local global i32 0, align 4
@O_SYNC = common dso_local global i32 0, align 4
@CLOUDABI_FDFLAG_SYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cloudabi_sys_fd_stat_get(%struct.thread* %0, %struct.cloudabi_sys_fd_stat_get_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.cloudabi_sys_fd_stat_get_args*, align 8
  %6 = alloca %struct.TYPE_3__, align 4
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.filecaps, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.cloudabi_sys_fd_stat_get_args* %1, %struct.cloudabi_sys_fd_stat_get_args** %5, align 8
  %12 = bitcast %struct.TYPE_3__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 20, i1 false)
  %13 = load %struct.thread*, %struct.thread** %4, align 8
  %14 = load %struct.cloudabi_sys_fd_stat_get_args*, %struct.cloudabi_sys_fd_stat_get_args** %5, align 8
  %15 = getelementptr inbounds %struct.cloudabi_sys_fd_stat_get_args, %struct.cloudabi_sys_fd_stat_get_args* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @cap_rights_init(i32* %8)
  %18 = call i32 @fget_cap(%struct.thread* %13, i32 %16, i32 %17, %struct.file** %7, %struct.filecaps* %9)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %3, align 4
  br label %76

23:                                               ; preds = %2
  %24 = load %struct.file*, %struct.file** %7, align 8
  %25 = getelementptr inbounds %struct.file, %struct.file* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @OFLAGS(i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load %struct.file*, %struct.file** %7, align 8
  %29 = call i32 @cloudabi_convert_filetype(%struct.file* %28)
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  store i32 %29, i32* %30, align 4
  %31 = load %struct.file*, %struct.file** %7, align 8
  %32 = load %struct.thread*, %struct.thread** %4, align 8
  %33 = call i32 @fdrop(%struct.file* %31, %struct.thread* %32)
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @O_APPEND, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %23
  %39 = load i32, i32* @CLOUDABI_FDFLAG_APPEND, align 4
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %39
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %38, %23
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @O_NONBLOCK, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load i32, i32* @CLOUDABI_FDFLAG_NONBLOCK, align 4
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %49
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %48, %43
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @O_SYNC, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load i32, i32* @CLOUDABI_FDFLAG_SYNC, align 4
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %59
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %58, %53
  %64 = getelementptr inbounds %struct.filecaps, %struct.filecaps* %9, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %69 = call i32 @convert_capabilities(i32* %64, i32 %66, i32* %67, i32* %68)
  %70 = call i32 @filecaps_free(%struct.filecaps* %9)
  %71 = load %struct.cloudabi_sys_fd_stat_get_args*, %struct.cloudabi_sys_fd_stat_get_args** %5, align 8
  %72 = getelementptr inbounds %struct.cloudabi_sys_fd_stat_get_args, %struct.cloudabi_sys_fd_stat_get_args* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to i8*
  %75 = call i32 @copyout(%struct.TYPE_3__* %6, i8* %74, i32 20)
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %63, %21
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @fget_cap(%struct.thread*, i32, i32, %struct.file**, %struct.filecaps*) #2

declare dso_local i32 @cap_rights_init(i32*) #2

declare dso_local i32 @OFLAGS(i32) #2

declare dso_local i32 @cloudabi_convert_filetype(%struct.file*) #2

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #2

declare dso_local i32 @convert_capabilities(i32*, i32, i32*, i32*) #2

declare dso_local i32 @filecaps_free(%struct.filecaps*) #2

declare dso_local i32 @copyout(%struct.TYPE_3__*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
