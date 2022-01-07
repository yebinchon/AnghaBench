; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-bootmem.c_cvmx_bootmem_phy_mem_list_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-bootmem.c_cvmx_bootmem_phy_mem_list_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [55 x i8] c"ERROR: no memory for cvmx_bootmem descriptor provided\0A\00", align 1
@OCTEON_MAX_PHY_MEM_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [68 x i8] c"ERROR: requested memory size too large, truncating to maximum size\0A\00", align 1
@cvmx_bootmem_desc_addr = common dso_local global i64 0, align 8
@lock = common dso_local global i32 0, align 4
@flags = common dso_local global i32 0, align 4
@head_addr = common dso_local global i32 0, align 4
@major_version = common dso_local global i32 0, align 4
@CVMX_BOOTMEM_DESC_MAJ_VER = common dso_local global i32 0, align 4
@minor_version = common dso_local global i32 0, align 4
@CVMX_BOOTMEM_DESC_MIN_VER = common dso_local global i32 0, align 4
@app_data_addr = common dso_local global i32 0, align 4
@app_data_size = common dso_local global i32 0, align 4
@OCTEON_DDR0_BASE = common dso_local global i64 0, align 8
@OCTEON_DDR0_SIZE = common dso_local global i64 0, align 8
@OCTEON_DDR1_SIZE = common dso_local global i64 0, align 8
@OCTEON_DDR1_BASE = common dso_local global i64 0, align 8
@OCTEON_DDR2_BASE = common dso_local global i64 0, align 8
@named_block_name_len = common dso_local global i32 0, align 4
@CVMX_BOOTMEM_NAME_LEN = common dso_local global i32 0, align 4
@named_block_num_blocks = common dso_local global i32 0, align 4
@CVMX_BOOTMEM_NUM_NAMED_BLOCKS = common dso_local global i32 0, align 4
@named_block_array_addr = common dso_local global i32 0, align 4
@CVMX_BOOTMEM_FLAG_END_ALLOC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [64 x i8] c"FATAL ERROR: unable to allocate memory for bootmem descriptor!\0A\00", align 1
@base_addr = common dso_local global i32 0, align 4
@size = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_bootmem_phy_mem_list_init(i64 %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  %14 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %130

15:                                               ; preds = %3
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @OCTEON_MAX_PHY_MEM_SIZE, align 8
  %18 = icmp sgt i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i64, i64* @OCTEON_MAX_PHY_MEM_SIZE, align 8
  store i64 %20, i64* %5, align 8
  %21 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19, %15
  %23 = load i64, i64* @cvmx_bootmem_desc_addr, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 1, i32* %4, align 4
  br label %130

26:                                               ; preds = %22
  %27 = load i32*, i32** %7, align 8
  %28 = call i64 @cvmx_ptr_to_phys(i32* %27)
  %29 = call i32 @cvmx_bootmem_init(i64 %28)
  %30 = load i32, i32* @lock, align 4
  %31 = call i32 @CVMX_BOOTMEM_DESC_SET_FIELD(i32 %30, i32 0)
  %32 = load i32, i32* @flags, align 4
  %33 = call i32 @CVMX_BOOTMEM_DESC_SET_FIELD(i32 %32, i32 0)
  %34 = load i32, i32* @head_addr, align 4
  %35 = call i32 @CVMX_BOOTMEM_DESC_SET_FIELD(i32 %34, i32 0)
  %36 = load i32, i32* @major_version, align 4
  %37 = load i32, i32* @CVMX_BOOTMEM_DESC_MAJ_VER, align 4
  %38 = call i32 @CVMX_BOOTMEM_DESC_SET_FIELD(i32 %36, i32 %37)
  %39 = load i32, i32* @minor_version, align 4
  %40 = load i32, i32* @CVMX_BOOTMEM_DESC_MIN_VER, align 4
  %41 = call i32 @CVMX_BOOTMEM_DESC_SET_FIELD(i32 %39, i32 %40)
  %42 = load i32, i32* @app_data_addr, align 4
  %43 = call i32 @CVMX_BOOTMEM_DESC_SET_FIELD(i32 %42, i32 0)
  %44 = load i32, i32* @app_data_size, align 4
  %45 = call i32 @CVMX_BOOTMEM_DESC_SET_FIELD(i32 %44, i32 0)
  %46 = load i64, i64* @OCTEON_DDR0_BASE, align 8
  %47 = load i64, i64* %6, align 8
  %48 = add nsw i64 %46, %47
  store i64 %48, i64* %8, align 8
  %49 = load i64, i64* %5, align 8
  %50 = load i64, i64* @OCTEON_DDR0_SIZE, align 8
  %51 = icmp sle i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %26
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* %5, align 8
  %55 = load i64, i64* %6, align 8
  %56 = sub nsw i64 %54, %55
  %57 = call i32 @__cvmx_bootmem_phy_free(i64 %53, i64 %56, i32 0)
  br label %84

58:                                               ; preds = %26
  %59 = load i64, i64* %8, align 8
  %60 = load i64, i64* @OCTEON_DDR0_SIZE, align 8
  %61 = load i64, i64* %6, align 8
  %62 = sub nsw i64 %60, %61
  %63 = call i32 @__cvmx_bootmem_phy_free(i64 %59, i64 %62, i32 0)
  %64 = load i64, i64* @OCTEON_DDR0_SIZE, align 8
  %65 = load i64, i64* %5, align 8
  %66 = sub nsw i64 %65, %64
  store i64 %66, i64* %5, align 8
  %67 = load i64, i64* %5, align 8
  %68 = load i64, i64* @OCTEON_DDR1_SIZE, align 8
  %69 = icmp sgt i64 %67, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %58
  %71 = load i64, i64* @OCTEON_DDR1_BASE, align 8
  %72 = load i64, i64* @OCTEON_DDR1_SIZE, align 8
  %73 = call i32 @__cvmx_bootmem_phy_free(i64 %71, i64 %72, i32 0)
  %74 = load i64, i64* @OCTEON_DDR2_BASE, align 8
  %75 = load i64, i64* %5, align 8
  %76 = load i64, i64* @OCTEON_DDR1_SIZE, align 8
  %77 = sub nsw i64 %75, %76
  %78 = call i32 @__cvmx_bootmem_phy_free(i64 %74, i64 %77, i32 0)
  br label %83

79:                                               ; preds = %58
  %80 = load i64, i64* @OCTEON_DDR1_BASE, align 8
  %81 = load i64, i64* %5, align 8
  %82 = call i32 @__cvmx_bootmem_phy_free(i64 %80, i64 %81, i32 0)
  br label %83

83:                                               ; preds = %79, %70
  br label %84

84:                                               ; preds = %83, %52
  %85 = load i32, i32* @named_block_name_len, align 4
  %86 = load i32, i32* @CVMX_BOOTMEM_NAME_LEN, align 4
  %87 = call i32 @CVMX_BOOTMEM_DESC_SET_FIELD(i32 %85, i32 %86)
  %88 = load i32, i32* @named_block_num_blocks, align 4
  %89 = load i32, i32* @CVMX_BOOTMEM_NUM_NAMED_BLOCKS, align 4
  %90 = call i32 @CVMX_BOOTMEM_DESC_SET_FIELD(i32 %88, i32 %89)
  %91 = load i32, i32* @named_block_array_addr, align 4
  %92 = call i32 @CVMX_BOOTMEM_DESC_SET_FIELD(i32 %91, i32 0)
  %93 = load i32, i32* @CVMX_BOOTMEM_NUM_NAMED_BLOCKS, align 4
  %94 = sext i32 %93 to i64
  %95 = mul i64 %94, 4
  %96 = trunc i64 %95 to i32
  %97 = load i32, i32* @CVMX_BOOTMEM_FLAG_END_ALLOC, align 4
  %98 = call i32 @cvmx_bootmem_phy_alloc(i32 %96, i32 0, i32 268435456, i32 0, i32 %97)
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  %100 = icmp sge i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %84
  %102 = load i32, i32* @named_block_array_addr, align 4
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @CVMX_BOOTMEM_DESC_SET_FIELD(i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %101, %84
  %106 = load i32, i32* %9, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %105
  %109 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %130

110:                                              ; preds = %105
  store i32 0, i32* %10, align 4
  br label %111

111:                                              ; preds = %126, %110
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* @CVMX_BOOTMEM_NUM_NAMED_BLOCKS, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %129

115:                                              ; preds = %111
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* @base_addr, align 4
  %118 = call i32 @CVMX_BOOTMEM_NAMED_SET_FIELD(i32 %116, i32 %117, i32 0)
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* @size, align 4
  %121 = call i32 @CVMX_BOOTMEM_NAMED_SET_FIELD(i32 %119, i32 %120, i32 0)
  %122 = load i32, i32* %9, align 4
  %123 = sext i32 %122 to i64
  %124 = add i64 %123, 4
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %9, align 4
  br label %126

126:                                              ; preds = %115
  %127 = load i32, i32* %10, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %10, align 4
  br label %111

129:                                              ; preds = %111
  store i32 1, i32* %4, align 4
  br label %130

130:                                              ; preds = %129, %108, %25, %13
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i32 @cvmx_dprintf(i8*, ...) #1

declare dso_local i32 @cvmx_bootmem_init(i64) #1

declare dso_local i64 @cvmx_ptr_to_phys(i32*) #1

declare dso_local i32 @CVMX_BOOTMEM_DESC_SET_FIELD(i32, i32) #1

declare dso_local i32 @__cvmx_bootmem_phy_free(i64, i64, i32) #1

declare dso_local i32 @cvmx_bootmem_phy_alloc(i32, i32, i32, i32, i32) #1

declare dso_local i32 @CVMX_BOOTMEM_NAMED_SET_FIELD(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
