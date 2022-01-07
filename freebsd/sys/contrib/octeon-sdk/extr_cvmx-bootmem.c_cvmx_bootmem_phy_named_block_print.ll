; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-bootmem.c_cvmx_bootmem_phy_named_block_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-bootmem.c_cvmx_bootmem_phy_named_block_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@named_block_num_blocks = common dso_local global i32 0, align 4
@named_block_name_len = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"List of currently allocated named bootmem blocks:\0A\00", align 1
@size = common dso_local global i32 0, align 4
@base_addr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"Name: %s, address: 0x%08llx, size: 0x%08llx, index: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"No named bootmem blocks exist.\0A\00", align 1
@cvmx_bootmem_desc_addr = common dso_local global i64 0, align 8
@named_block_array_addr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cvmx_bootmem_phy_named_block_print() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @CVMX_BOOTMEM_DESC_GET_FIELD(i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* @named_block_num_blocks, align 4
  %14 = call i32 @CVMX_BOOTMEM_DESC_GET_FIELD(i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* @named_block_name_len, align 4
  %16 = call i32 @CVMX_BOOTMEM_DESC_GET_FIELD(i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %3, align 4
  store i32 %17, i32* %6, align 4
  %18 = call i64 @__cvmx_bootmem_check_version(i32 3)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %0
  br label %64

21:                                               ; preds = %0
  %22 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %23

23:                                               ; preds = %56, %21
  %24 = load i32, i32* %1, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %59

27:                                               ; preds = %23
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @size, align 4
  %30 = call i32 @CVMX_BOOTMEM_NAMED_GET_FIELD(i32 %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %27
  %34 = load i32, i32* %5, align 4
  %35 = zext i32 %34 to i64
  %36 = call i8* @llvm.stacksave()
  store i8* %36, i8** %8, align 8
  %37 = alloca i8, i64 %35, align 16
  store i64 %35, i64* %9, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @base_addr, align 4
  %40 = call i32 @CVMX_BOOTMEM_NAMED_GET_FIELD(i32 %38, i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @CVMX_BOOTMEM_NAMED_GET_NAME(i32 %41, i8* %37, i32 %42)
  %44 = load i32, i32* %2, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %2, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %1, align 4
  %49 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i8* %37, i32 %46, i32 %47, i32 %48)
  %50 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %50)
  br label %51

51:                                               ; preds = %33, %27
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = add i64 %53, 4
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %51
  %57 = load i32, i32* %1, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %1, align 4
  br label %23

59:                                               ; preds = %23
  %60 = load i32, i32* %2, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %59
  %63 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %64

64:                                               ; preds = %20, %62, %59
  ret void
}

declare dso_local i32 @CVMX_BOOTMEM_DESC_GET_FIELD(i32) #1

declare dso_local i64 @__cvmx_bootmem_check_version(i32) #1

declare dso_local i32 @cvmx_dprintf(i8*, ...) #1

declare dso_local i32 @CVMX_BOOTMEM_NAMED_GET_FIELD(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @CVMX_BOOTMEM_NAMED_GET_NAME(i32, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
