; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-l2c.c_cvmx_l2c_set_big_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-l2c.c_cvmx_l2c_set_big_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@OCTEON_CN6XXX = common dso_local global i32 0, align 4
@OCTEON_CNF7XXX = common dso_local global i32 0, align 4
@OCTEON_CN63XX_PASS1_X = common dso_local global i32 0, align 4
@CVMX_L2C_MAX_MEMSZ_ALLOWED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"WARNING: Invalid memory size(%lld) requested, should be <= %lld\0A\00", align 1
@.str.1 = private unnamed_addr constant [93 x i8] c"ERROR: Invalid DRAM size (%lld) requested, refer to L2C_BIG_CTL[maxdram] for valid options.\0A\00", align 1
@CVMX_L2C_BIG_CTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cvmx_l2c_set_big_size(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @OCTEON_CN6XXX, align 4
  %10 = call i64 @OCTEON_IS_MODEL(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @OCTEON_CNF7XXX, align 4
  %14 = call i64 @OCTEON_IS_MODEL(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %77

16:                                               ; preds = %12, %2
  %17 = load i32, i32* @OCTEON_CN63XX_PASS1_X, align 4
  %18 = call i64 @OCTEON_IS_MODEL(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %77, label %20

20:                                               ; preds = %16
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @CVMX_L2C_MAX_MEMSZ_ALLOWED, align 4
  %23 = mul nsw i32 %22, 1024
  %24 = icmp sgt i32 %21, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %20
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = load i32, i32* @CVMX_L2C_MAX_MEMSZ_ALLOWED, align 4
  %29 = sext i32 %28 to i64
  %30 = mul i64 %29, 1024
  %31 = call i32 (i8*, i64, ...) @cvmx_dprintf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i64 %27, i64 %30)
  %32 = load i32, i32* @CVMX_L2C_MAX_MEMSZ_ALLOWED, align 4
  %33 = mul nsw i32 %32, 1024
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %25, %20
  %35 = load i32, i32* %3, align 4
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %46, %34
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %36
  %40 = load i32, i32* %8, align 4
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %43, %39
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %8, align 4
  %50 = ashr i32 %49, 1
  store i32 %50, i32* %8, align 4
  br label %36

51:                                               ; preds = %36
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %7, align 4
  %54 = sub nsw i32 %52, %53
  %55 = icmp ne i32 %54, 1
  br i1 %55, label %60, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* %6, align 4
  %58 = sub nsw i32 %57, 9
  %59 = icmp sle i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %56, %51
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = call i32 (i8*, i64, ...) @cvmx_dprintf(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.1, i64 0, i64 0), i64 %62)
  br label %77

64:                                               ; preds = %56
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  store i64 0, i64* %65, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sub nsw i32 %66, 9
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* %4, align 4
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* @CVMX_L2C_BIG_CTL, align 4
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @cvmx_write_csr(i32 %73, i64 %75)
  br label %77

77:                                               ; preds = %60, %64, %16, %12
  ret void
}

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i32 @cvmx_dprintf(i8*, i64, ...) #1

declare dso_local i32 @cvmx_write_csr(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
