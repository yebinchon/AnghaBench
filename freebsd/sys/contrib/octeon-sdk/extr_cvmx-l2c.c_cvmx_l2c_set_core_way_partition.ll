; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-l2c.c_cvmx_l2c_set_core_way_partition.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-l2c.c_cvmx_l2c_set_core_way_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OCTEON_CN3XXX = common dso_local global i32 0, align 4
@OCTEON_CN5XXX = common dso_local global i32 0, align 4
@OCTEON_CN6XXX = common dso_local global i32 0, align 4
@OCTEON_CNF7XXX = common dso_local global i32 0, align 4
@CVMX_L2C_SPAR0 = common dso_local global i32 0, align 4
@CVMX_L2C_SPAR1 = common dso_local global i32 0, align 4
@CVMX_L2C_SPAR2 = common dso_local global i32 0, align 4
@CVMX_L2C_SPAR3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_l2c_set_core_way_partition(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = call i32 (...) @cvmx_l2c_get_num_assoc()
  %9 = shl i32 1, %8
  %10 = sub nsw i32 %9, 1
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %2
  %18 = load i32, i32* @OCTEON_CN3XXX, align 4
  %19 = call i64 @OCTEON_IS_MODEL(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @OCTEON_CN5XXX, align 4
  %23 = call i64 @OCTEON_IS_MODEL(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %17
  store i32 -1, i32* %3, align 4
  br label %103

26:                                               ; preds = %21, %2
  %27 = load i32, i32* %4, align 4
  %28 = call i32 (...) @cvmx_octeon_num_cores()
  %29 = icmp sge i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 -1, i32* %3, align 4
  br label %103

31:                                               ; preds = %26
  %32 = load i32, i32* @OCTEON_CN6XXX, align 4
  %33 = call i64 @OCTEON_IS_MODEL(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* @OCTEON_CNF7XXX, align 4
  %37 = call i64 @OCTEON_IS_MODEL(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %35, %31
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @CVMX_L2C_WPAR_PPX(i32 %40)
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @cvmx_write_csr(i32 %41, i32 %42)
  store i32 0, i32* %3, align 4
  br label %103

44:                                               ; preds = %35
  %45 = load i32, i32* %4, align 4
  %46 = and i32 %45, 3
  %47 = mul nsw i32 %46, 8
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %4, align 4
  %49 = and i32 %48, 12
  switch i32 %49, label %102 [
    i32 0, label %50
    i32 4, label %63
    i32 8, label %76
    i32 12, label %89
  ]

50:                                               ; preds = %44
  %51 = load i32, i32* @CVMX_L2C_SPAR0, align 4
  %52 = load i32, i32* @CVMX_L2C_SPAR0, align 4
  %53 = call i32 @cvmx_read_csr(i32 %52)
  %54 = load i32, i32* %6, align 4
  %55 = shl i32 255, %54
  %56 = xor i32 %55, -1
  %57 = and i32 %53, %56
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* %6, align 4
  %60 = shl i32 %58, %59
  %61 = or i32 %57, %60
  %62 = call i32 @cvmx_write_csr(i32 %51, i32 %61)
  br label %102

63:                                               ; preds = %44
  %64 = load i32, i32* @CVMX_L2C_SPAR1, align 4
  %65 = load i32, i32* @CVMX_L2C_SPAR1, align 4
  %66 = call i32 @cvmx_read_csr(i32 %65)
  %67 = load i32, i32* %6, align 4
  %68 = shl i32 255, %67
  %69 = xor i32 %68, -1
  %70 = and i32 %66, %69
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* %6, align 4
  %73 = shl i32 %71, %72
  %74 = or i32 %70, %73
  %75 = call i32 @cvmx_write_csr(i32 %64, i32 %74)
  br label %102

76:                                               ; preds = %44
  %77 = load i32, i32* @CVMX_L2C_SPAR2, align 4
  %78 = load i32, i32* @CVMX_L2C_SPAR2, align 4
  %79 = call i32 @cvmx_read_csr(i32 %78)
  %80 = load i32, i32* %6, align 4
  %81 = shl i32 255, %80
  %82 = xor i32 %81, -1
  %83 = and i32 %79, %82
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* %6, align 4
  %86 = shl i32 %84, %85
  %87 = or i32 %83, %86
  %88 = call i32 @cvmx_write_csr(i32 %77, i32 %87)
  br label %102

89:                                               ; preds = %44
  %90 = load i32, i32* @CVMX_L2C_SPAR3, align 4
  %91 = load i32, i32* @CVMX_L2C_SPAR3, align 4
  %92 = call i32 @cvmx_read_csr(i32 %91)
  %93 = load i32, i32* %6, align 4
  %94 = shl i32 255, %93
  %95 = xor i32 %94, -1
  %96 = and i32 %92, %95
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* %6, align 4
  %99 = shl i32 %97, %98
  %100 = or i32 %96, %99
  %101 = call i32 @cvmx_write_csr(i32 %90, i32 %100)
  br label %102

102:                                              ; preds = %44, %89, %76, %63, %50
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %102, %39, %30, %25
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @cvmx_l2c_get_num_assoc(...) #1

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i32 @cvmx_octeon_num_cores(...) #1

declare dso_local i32 @cvmx_write_csr(i32, i32) #1

declare dso_local i32 @CVMX_L2C_WPAR_PPX(i32) #1

declare dso_local i32 @cvmx_read_csr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
