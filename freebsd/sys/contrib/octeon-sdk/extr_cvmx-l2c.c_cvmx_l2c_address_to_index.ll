; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-l2c.c_cvmx_l2c_address_to_index.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-l2c.c_cvmx_l2c_address_to_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cvmx_l2c_ctl = type { i8* }
%union.cvmx_l2c_cfg = type { i8* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@CVMX_L2C_IDX_ADDR_SHIFT = common dso_local global i32 0, align 4
@OCTEON_CN6XXX = common dso_local global i32 0, align 4
@OCTEON_CNF7XXX = common dso_local global i32 0, align 4
@CVMX_L2C_CTL = common dso_local global i32 0, align 4
@CVMX_L2C_CFG = common dso_local global i32 0, align 4
@OCTEON_CN68XX = common dso_local global i32 0, align 4
@CVMX_L2C_MEMBANK_SELECT_SIZE = common dso_local global i32 0, align 4
@CVMX_L2C_ALIAS_MASK = common dso_local global i32 0, align 4
@CVMX_L2C_TAG_ADDR_ALIAS_SHIFT = common dso_local global i32 0, align 4
@CVMX_L2C_IDX_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_l2c_address_to_index(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %union.cvmx_l2c_ctl, align 8
  %6 = alloca %union.cvmx_l2c_cfg, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @CVMX_L2C_IDX_ADDR_SHIFT, align 4
  %11 = ashr i32 %9, %10
  store i32 %11, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %12 = load i32, i32* @OCTEON_CN6XXX, align 4
  %13 = call i64 @OCTEON_IS_MODEL(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @OCTEON_CNF7XXX, align 4
  %17 = call i64 @OCTEON_IS_MODEL(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %15, %1
  %20 = load i32, i32* @CVMX_L2C_CTL, align 4
  %21 = call i8* @cvmx_read_csr(i32 %20)
  %22 = bitcast %union.cvmx_l2c_ctl* %5 to i8**
  store i8* %21, i8** %22, align 8
  %23 = bitcast %union.cvmx_l2c_ctl* %5 to %struct.TYPE_3__*
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %4, align 4
  br label %36

29:                                               ; preds = %15
  %30 = load i32, i32* @CVMX_L2C_CFG, align 4
  %31 = call i8* @cvmx_read_csr(i32 %30)
  %32 = bitcast %union.cvmx_l2c_cfg* %6 to i8**
  store i8* %31, i8** %32, align 8
  %33 = bitcast %union.cvmx_l2c_cfg* %6 to %struct.TYPE_4__*
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %29, %19
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %99

39:                                               ; preds = %36
  %40 = load i32, i32* @OCTEON_CN68XX, align 4
  %41 = call i64 @OCTEON_IS_MODEL(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %65

43:                                               ; preds = %39
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @CVMX_L2C_MEMBANK_SELECT_SIZE, align 4
  %46 = load i32, i32* @CVMX_L2C_IDX_ADDR_SHIFT, align 4
  %47 = shl i32 1, %46
  %48 = sdiv i32 %45, %47
  %49 = sdiv i32 %44, %48
  %50 = and i32 %49, 7
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %3, align 4
  %52 = call i32 (...) @cvmx_l2c_get_num_sets()
  %53 = sdiv i32 %51, %52
  %54 = and i32 %53, 1023
  %55 = load i32, i32* %3, align 4
  %56 = xor i32 %55, %54
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* %7, align 4
  %58 = and i32 %57, 3
  %59 = load i32, i32* %3, align 4
  %60 = xor i32 %59, %58
  store i32 %60, i32* %3, align 4
  %61 = load i32, i32* %7, align 4
  %62 = shl i32 %61, 2
  %63 = load i32, i32* %3, align 4
  %64 = xor i32 %63, %62
  store i32 %64, i32* %3, align 4
  br label %98

65:                                               ; preds = %39
  %66 = load i32, i32* @OCTEON_CN6XXX, align 4
  %67 = call i64 @OCTEON_IS_MODEL(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* @OCTEON_CNF7XXX, align 4
  %71 = call i64 @OCTEON_IS_MODEL(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %89

73:                                               ; preds = %69, %65
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* @CVMX_L2C_MEMBANK_SELECT_SIZE, align 4
  %76 = load i32, i32* @CVMX_L2C_IDX_ADDR_SHIFT, align 4
  %77 = shl i32 1, %76
  %78 = sdiv i32 %75, %77
  %79 = sdiv i32 %74, %78
  %80 = and i32 %79, 7
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %3, align 4
  %82 = call i32 (...) @cvmx_l2c_get_num_sets()
  %83 = sdiv i32 %81, %82
  %84 = load i32, i32* %3, align 4
  %85 = xor i32 %84, %83
  store i32 %85, i32* %3, align 4
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %3, align 4
  %88 = xor i32 %87, %86
  store i32 %88, i32* %3, align 4
  br label %97

89:                                               ; preds = %69
  %90 = load i32, i32* %2, align 4
  %91 = load i32, i32* @CVMX_L2C_ALIAS_MASK, align 4
  %92 = and i32 %90, %91
  %93 = load i32, i32* @CVMX_L2C_TAG_ADDR_ALIAS_SHIFT, align 4
  %94 = ashr i32 %92, %93
  %95 = load i32, i32* %3, align 4
  %96 = xor i32 %95, %94
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %89, %73
  br label %98

98:                                               ; preds = %97, %43
  br label %99

99:                                               ; preds = %98, %36
  %100 = load i32, i32* @CVMX_L2C_IDX_MASK, align 4
  %101 = load i32, i32* %3, align 4
  %102 = and i32 %101, %100
  store i32 %102, i32* %3, align 4
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i8* @cvmx_read_csr(i32) #1

declare dso_local i32 @cvmx_l2c_get_num_sets(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
