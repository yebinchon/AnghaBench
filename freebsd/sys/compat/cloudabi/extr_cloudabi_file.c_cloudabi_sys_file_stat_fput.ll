; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_file.c_cloudabi_sys_file_stat_fput.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_file.c_cloudabi_sys_file_stat_fput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.cloudabi_sys_file_stat_fput_args = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.timespec = type { i32 }

@CLOUDABI_FILESTAT_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CLOUDABI_FILESTAT_ATIM = common dso_local global i32 0, align 4
@CLOUDABI_FILESTAT_ATIM_NOW = common dso_local global i32 0, align 4
@CLOUDABI_FILESTAT_MTIM = common dso_local global i32 0, align 4
@CLOUDABI_FILESTAT_MTIM_NOW = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cloudabi_sys_file_stat_fput(%struct.thread* %0, %struct.cloudabi_sys_file_stat_fput_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.cloudabi_sys_file_stat_fput_args*, align 8
  %6 = alloca %struct.TYPE_4__, align 4
  %7 = alloca [2 x %struct.timespec], align 4
  %8 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.cloudabi_sys_file_stat_fput_args* %1, %struct.cloudabi_sys_file_stat_fput_args** %5, align 8
  %9 = load %struct.cloudabi_sys_file_stat_fput_args*, %struct.cloudabi_sys_file_stat_fput_args** %5, align 8
  %10 = getelementptr inbounds %struct.cloudabi_sys_file_stat_fput_args, %struct.cloudabi_sys_file_stat_fput_args* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @copyin(i32 %11, %struct.TYPE_4__* %6, i32 4)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %3, align 4
  br label %87

17:                                               ; preds = %2
  %18 = load %struct.cloudabi_sys_file_stat_fput_args*, %struct.cloudabi_sys_file_stat_fput_args** %5, align 8
  %19 = getelementptr inbounds %struct.cloudabi_sys_file_stat_fput_args, %struct.cloudabi_sys_file_stat_fput_args* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @CLOUDABI_FILESTAT_SIZE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %17
  %25 = load %struct.cloudabi_sys_file_stat_fput_args*, %struct.cloudabi_sys_file_stat_fput_args** %5, align 8
  %26 = getelementptr inbounds %struct.cloudabi_sys_file_stat_fput_args, %struct.cloudabi_sys_file_stat_fput_args* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @CLOUDABI_FILESTAT_SIZE, align 4
  %29 = xor i32 %28, -1
  %30 = and i32 %27, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i32, i32* @EINVAL, align 4
  store i32 %33, i32* %3, align 4
  br label %87

34:                                               ; preds = %24
  %35 = load %struct.thread*, %struct.thread** %4, align 8
  %36 = load %struct.cloudabi_sys_file_stat_fput_args*, %struct.cloudabi_sys_file_stat_fput_args** %5, align 8
  %37 = getelementptr inbounds %struct.cloudabi_sys_file_stat_fput_args, %struct.cloudabi_sys_file_stat_fput_args* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @kern_ftruncate(%struct.thread* %35, i32 %38, i32 %40)
  store i32 %41, i32* %3, align 4
  br label %87

42:                                               ; preds = %17
  %43 = load %struct.cloudabi_sys_file_stat_fput_args*, %struct.cloudabi_sys_file_stat_fput_args** %5, align 8
  %44 = getelementptr inbounds %struct.cloudabi_sys_file_stat_fput_args, %struct.cloudabi_sys_file_stat_fput_args* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @CLOUDABI_FILESTAT_ATIM, align 4
  %47 = load i32, i32* @CLOUDABI_FILESTAT_ATIM_NOW, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @CLOUDABI_FILESTAT_MTIM, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @CLOUDABI_FILESTAT_MTIM_NOW, align 4
  %52 = or i32 %50, %51
  %53 = and i32 %45, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %84

55:                                               ; preds = %42
  %56 = load %struct.cloudabi_sys_file_stat_fput_args*, %struct.cloudabi_sys_file_stat_fput_args** %5, align 8
  %57 = getelementptr inbounds %struct.cloudabi_sys_file_stat_fput_args, %struct.cloudabi_sys_file_stat_fput_args* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @CLOUDABI_FILESTAT_ATIM, align 4
  %60 = load i32, i32* @CLOUDABI_FILESTAT_ATIM_NOW, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @CLOUDABI_FILESTAT_MTIM, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @CLOUDABI_FILESTAT_MTIM_NOW, align 4
  %65 = or i32 %63, %64
  %66 = xor i32 %65, -1
  %67 = and i32 %58, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %55
  %70 = load i32, i32* @EINVAL, align 4
  store i32 %70, i32* %3, align 4
  br label %87

71:                                               ; preds = %55
  %72 = load %struct.cloudabi_sys_file_stat_fput_args*, %struct.cloudabi_sys_file_stat_fput_args** %5, align 8
  %73 = getelementptr inbounds %struct.cloudabi_sys_file_stat_fput_args, %struct.cloudabi_sys_file_stat_fput_args* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %7, i64 0, i64 0
  %76 = call i32 @convert_utimens_arguments(%struct.TYPE_4__* %6, i32 %74, %struct.timespec* %75)
  %77 = load %struct.thread*, %struct.thread** %4, align 8
  %78 = load %struct.cloudabi_sys_file_stat_fput_args*, %struct.cloudabi_sys_file_stat_fput_args** %5, align 8
  %79 = getelementptr inbounds %struct.cloudabi_sys_file_stat_fput_args, %struct.cloudabi_sys_file_stat_fput_args* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %7, i64 0, i64 0
  %82 = load i32, i32* @UIO_SYSSPACE, align 4
  %83 = call i32 @kern_futimens(%struct.thread* %77, i32 %80, %struct.timespec* %81, i32 %82)
  store i32 %83, i32* %3, align 4
  br label %87

84:                                               ; preds = %42
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* @EINVAL, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %85, %71, %69, %34, %32, %15
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @copyin(i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @kern_ftruncate(%struct.thread*, i32, i32) #1

declare dso_local i32 @convert_utimens_arguments(%struct.TYPE_4__*, i32, %struct.timespec*) #1

declare dso_local i32 @kern_futimens(%struct.thread*, i32, %struct.timespec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
