; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_cma.c_check_abi_version.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_cma.c_check_abi_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [31 x i8] c"class/misc/rdma_cm/abi_version\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"class/infiniband_ucma/abi_version\00", align 1
@abi_ver = common dso_local global i64 0, align 8
@RDMA_USER_CM_MIN_ABI_VERSION = common dso_local global i64 0, align 8
@RDMA_USER_CM_MAX_ABI_VERSION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @check_abi_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_abi_version() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [8 x i8], align 1
  %3 = call i32 (...) @ibv_get_sysfs_path()
  %4 = getelementptr inbounds [8 x i8], [8 x i8]* %2, i64 0, i64 0
  %5 = call i64 @ibv_read_sysfs_file(i32 %3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %4, i32 8)
  %6 = icmp slt i64 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %0
  %8 = call i32 (...) @ibv_get_sysfs_path()
  %9 = getelementptr inbounds [8 x i8], [8 x i8]* %2, i64 0, i64 0
  %10 = call i64 @ibv_read_sysfs_file(i32 %8, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %9, i32 8)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  store i32 0, i32* %1, align 4
  br label %25

13:                                               ; preds = %7, %0
  %14 = getelementptr inbounds [8 x i8], [8 x i8]* %2, i64 0, i64 0
  %15 = call i64 @strtol(i8* %14, i32* null, i32 10)
  store i64 %15, i64* @abi_ver, align 8
  %16 = load i64, i64* @abi_ver, align 8
  %17 = load i64, i64* @RDMA_USER_CM_MIN_ABI_VERSION, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %13
  %20 = load i64, i64* @abi_ver, align 8
  %21 = load i64, i64* @RDMA_USER_CM_MAX_ABI_VERSION, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19, %13
  store i32 -1, i32* %1, align 4
  br label %25

24:                                               ; preds = %19
  store i32 0, i32* %1, align 4
  br label %25

25:                                               ; preds = %24, %23, %12
  %26 = load i32, i32* %1, align 4
  ret i32 %26
}

declare dso_local i64 @ibv_read_sysfs_file(i32, i8*, i8*, i32) #1

declare dso_local i32 @ibv_get_sysfs_path(...) #1

declare dso_local i64 @strtol(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
