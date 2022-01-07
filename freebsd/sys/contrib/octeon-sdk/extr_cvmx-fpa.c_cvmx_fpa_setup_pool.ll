; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-fpa.c_cvmx_fpa_setup_pool.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-fpa.c_cvmx_fpa_setup_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8*, i64, i64 }

@.str = private unnamed_addr constant [50 x i8] c"ERROR: cvmx_fpa_setup_pool: NULL buffer pointer!\0A\00", align 1
@CVMX_FPA_NUM_POOLS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"ERROR: cvmx_fpa_setup_pool: Illegal pool!\0A\00", align 1
@CVMX_FPA_MIN_BLOCK_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [51 x i8] c"ERROR: cvmx_fpa_setup_pool: Block size too small.\0A\00", align 1
@CVMX_FPA_ALIGNMENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [58 x i8] c"ERROR: cvmx_fpa_setup_pool: Buffer not aligned properly.\0A\00", align 1
@cvmx_fpa_pool_info = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_fpa_setup_pool(i64 %0, i8* %1, i8* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store i64 %0, i64* %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %5
  %16 = call i32 @cvmx_dprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %73

17:                                               ; preds = %5
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @CVMX_FPA_NUM_POOLS, align 8
  %20 = icmp sge i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = call i32 @cvmx_dprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %73

23:                                               ; preds = %17
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* @CVMX_FPA_MIN_BLOCK_SIZE, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = call i32 @cvmx_dprintf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %73

29:                                               ; preds = %23
  %30 = load i8*, i8** %9, align 8
  %31 = ptrtoint i8* %30 to i64
  %32 = load i32, i32* @CVMX_FPA_ALIGNMENT, align 4
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = and i64 %31, %34
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = call i32 @cvmx_dprintf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %73

39:                                               ; preds = %29
  %40 = load i8*, i8** %8, align 8
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_fpa_pool_info, align 8
  %42 = load i64, i64* %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i8* %40, i8** %44, align 8
  %45 = load i64, i64* %10, align 8
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_fpa_pool_info, align 8
  %47 = load i64, i64* %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 3
  store i64 %45, i64* %49, align 8
  %50 = load i64, i64* %11, align 8
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_fpa_pool_info, align 8
  %52 = load i64, i64* %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  store i64 %50, i64* %54, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_fpa_pool_info, align 8
  %57 = load i64, i64* %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  store i8* %55, i8** %59, align 8
  %60 = load i8*, i8** %9, align 8
  store i8* %60, i8** %12, align 8
  br label %61

61:                                               ; preds = %65, %39
  %62 = load i64, i64* %11, align 8
  %63 = add nsw i64 %62, -1
  store i64 %63, i64* %11, align 8
  %64 = icmp ne i64 %62, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %61
  %66 = load i8*, i8** %12, align 8
  %67 = load i64, i64* %7, align 8
  %68 = call i32 @cvmx_fpa_free(i8* %66, i64 %67, i32 0)
  %69 = load i64, i64* %10, align 8
  %70 = load i8*, i8** %12, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 %69
  store i8* %71, i8** %12, align 8
  br label %61

72:                                               ; preds = %61
  store i32 0, i32* %6, align 4
  br label %73

73:                                               ; preds = %72, %37, %27, %21, %15
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local i32 @cvmx_dprintf(i8*) #1

declare dso_local i32 @cvmx_fpa_free(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
