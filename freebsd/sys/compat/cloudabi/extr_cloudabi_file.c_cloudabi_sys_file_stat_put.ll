; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_file.c_cloudabi_sys_file_stat_put.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_file.c_cloudabi_sys_file_stat_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.cloudabi_sys_file_stat_put_args = type { i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.timespec = type { i32 }

@CLOUDABI_FILESTAT_ATIM = common dso_local global i32 0, align 4
@CLOUDABI_FILESTAT_ATIM_NOW = common dso_local global i32 0, align 4
@CLOUDABI_FILESTAT_MTIM = common dso_local global i32 0, align 4
@CLOUDABI_FILESTAT_MTIM_NOW = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@CLOUDABI_LOOKUP_SYMLINK_FOLLOW = common dso_local global i32 0, align 4
@AT_SYMLINK_NOFOLLOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cloudabi_sys_file_stat_put(%struct.thread* %0, %struct.cloudabi_sys_file_stat_put_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.cloudabi_sys_file_stat_put_args*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [2 x %struct.timespec], align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.cloudabi_sys_file_stat_put_args* %1, %struct.cloudabi_sys_file_stat_put_args** %5, align 8
  %10 = load %struct.cloudabi_sys_file_stat_put_args*, %struct.cloudabi_sys_file_stat_put_args** %5, align 8
  %11 = getelementptr inbounds %struct.cloudabi_sys_file_stat_put_args, %struct.cloudabi_sys_file_stat_put_args* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @CLOUDABI_FILESTAT_ATIM, align 4
  %14 = load i32, i32* @CLOUDABI_FILESTAT_ATIM_NOW, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @CLOUDABI_FILESTAT_MTIM, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @CLOUDABI_FILESTAT_MTIM_NOW, align 4
  %19 = or i32 %17, %18
  %20 = xor i32 %19, -1
  %21 = and i32 %12, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %3, align 4
  br label %77

25:                                               ; preds = %2
  %26 = load %struct.cloudabi_sys_file_stat_put_args*, %struct.cloudabi_sys_file_stat_put_args** %5, align 8
  %27 = getelementptr inbounds %struct.cloudabi_sys_file_stat_put_args, %struct.cloudabi_sys_file_stat_put_args* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @copyin(i32 %28, i32* %6, i32 4)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %3, align 4
  br label %77

34:                                               ; preds = %25
  %35 = load %struct.cloudabi_sys_file_stat_put_args*, %struct.cloudabi_sys_file_stat_put_args** %5, align 8
  %36 = getelementptr inbounds %struct.cloudabi_sys_file_stat_put_args, %struct.cloudabi_sys_file_stat_put_args* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.cloudabi_sys_file_stat_put_args*, %struct.cloudabi_sys_file_stat_put_args** %5, align 8
  %39 = getelementptr inbounds %struct.cloudabi_sys_file_stat_put_args, %struct.cloudabi_sys_file_stat_put_args* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @copyin_path(i32 %37, i32 %40, i8** %8)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %3, align 4
  br label %77

46:                                               ; preds = %34
  %47 = load %struct.cloudabi_sys_file_stat_put_args*, %struct.cloudabi_sys_file_stat_put_args** %5, align 8
  %48 = getelementptr inbounds %struct.cloudabi_sys_file_stat_put_args, %struct.cloudabi_sys_file_stat_put_args* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %7, i64 0, i64 0
  %51 = call i32 @convert_utimens_arguments(i32* %6, i32 %49, %struct.timespec* %50)
  %52 = load %struct.thread*, %struct.thread** %4, align 8
  %53 = load %struct.cloudabi_sys_file_stat_put_args*, %struct.cloudabi_sys_file_stat_put_args** %5, align 8
  %54 = getelementptr inbounds %struct.cloudabi_sys_file_stat_put_args, %struct.cloudabi_sys_file_stat_put_args* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i8*, i8** %8, align 8
  %58 = load i32, i32* @UIO_SYSSPACE, align 4
  %59 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %7, i64 0, i64 0
  %60 = load i32, i32* @UIO_SYSSPACE, align 4
  %61 = load %struct.cloudabi_sys_file_stat_put_args*, %struct.cloudabi_sys_file_stat_put_args** %5, align 8
  %62 = getelementptr inbounds %struct.cloudabi_sys_file_stat_put_args, %struct.cloudabi_sys_file_stat_put_args* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @CLOUDABI_LOOKUP_SYMLINK_FOLLOW, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %46
  br label %71

69:                                               ; preds = %46
  %70 = load i32, i32* @AT_SYMLINK_NOFOLLOW, align 4
  br label %71

71:                                               ; preds = %69, %68
  %72 = phi i32 [ 0, %68 ], [ %70, %69 ]
  %73 = call i32 @kern_utimensat(%struct.thread* %52, i32 %56, i8* %57, i32 %58, %struct.timespec* %59, i32 %60, i32 %72)
  store i32 %73, i32* %9, align 4
  %74 = load i8*, i8** %8, align 8
  %75 = call i32 @cloudabi_freestr(i8* %74)
  %76 = load i32, i32* %9, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %71, %44, %32, %23
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @copyin(i32, i32*, i32) #1

declare dso_local i32 @copyin_path(i32, i32, i8**) #1

declare dso_local i32 @convert_utimens_arguments(i32*, i32, %struct.timespec*) #1

declare dso_local i32 @kern_utimensat(%struct.thread*, i32, i8*, i32, %struct.timespec*, i32, i32) #1

declare dso_local i32 @cloudabi_freestr(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
