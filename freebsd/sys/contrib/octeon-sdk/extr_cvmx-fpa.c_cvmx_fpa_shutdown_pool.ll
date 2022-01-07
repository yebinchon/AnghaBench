; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-fpa.c_cvmx_fpa_shutdown_pool.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-fpa.c_cvmx_fpa_shutdown_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8*, i32, i32 }

@cvmx_fpa_pool_info = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [70 x i8] c"ERROR: cvmx_fpa_shutdown_pool: Illegal address 0x%llx in pool %s(%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"ERROR: cvmx_fpa_shutdown_pool: Pool %s(%d) missing %d buffers\0A\00", align 1
@.str.2 = private unnamed_addr constant [69 x i8] c"ERROR: cvmx_fpa_shutdown_pool: Pool %s(%d) had %d duplicate buffers\0A\00", align 1
@.str.3 = private unnamed_addr constant [100 x i8] c"ERROR: cvmx_fpa_shutdown_pool: Pool %s(%d) started at 0x%llx, ended at 0x%llx, with a step of 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @cvmx_fpa_shutdown_pool(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_fpa_pool_info, align 8
  %12 = load i64, i64* %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_fpa_pool_info, align 8
  %17 = load i64, i64* %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = call i64 @cvmx_ptr_to_phys(i8* %20)
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_fpa_pool_info, align 8
  %24 = load i64, i64* %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = mul nsw i32 %27, %28
  %30 = sext i32 %29 to i64
  %31 = add i64 %22, %30
  store i64 %31, i64* %8, align 8
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %1, %76
  %33 = load i64, i64* %3, align 8
  %34 = call i8* @cvmx_fpa_alloc(i64 %33)
  store i8* %34, i8** %10, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  br label %77

38:                                               ; preds = %32
  %39 = load i8*, i8** %10, align 8
  %40 = call i64 @cvmx_ptr_to_phys(i8* %39)
  store i64 %40, i64* %9, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* %7, align 8
  %43 = icmp uge i64 %41, %42
  br i1 %43, label %44, label %63

44:                                               ; preds = %38
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* %8, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %63

48:                                               ; preds = %44
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* %7, align 8
  %51 = sub i64 %49, %50
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_fpa_pool_info, align 8
  %53 = load i64, i64* %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = urem i64 %51, %57
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %48
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %76

63:                                               ; preds = %48, %44, %38
  %64 = load i64, i64* %9, align 8
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_fpa_pool_info, align 8
  %66 = load i64, i64* %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load i64, i64* %3, align 8
  %71 = trunc i64 %70 to i32
  %72 = sext i32 %71 to i64
  %73 = call i32 (i8*, i64, i32, i64, ...) @cvmx_dprintf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i64 %64, i32 %69, i64 %72)
  %74 = load i32, i32* %4, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %63, %60
  br label %32

77:                                               ; preds = %37
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %95

81:                                               ; preds = %77
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_fpa_pool_info, align 8
  %83 = load i64, i64* %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = load i64, i64* %3, align 8
  %89 = trunc i64 %88 to i32
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* %5, align 4
  %92 = sub nsw i32 %90, %91
  %93 = sext i32 %92 to i64
  %94 = call i32 (i8*, i64, i32, i64, ...) @cvmx_dprintf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i64 %87, i32 %89, i64 %93)
  br label %114

95:                                               ; preds = %77
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* %6, align 4
  %98 = icmp sgt i32 %96, %97
  br i1 %98, label %99, label %113

99:                                               ; preds = %95
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_fpa_pool_info, align 8
  %101 = load i64, i64* %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = sext i32 %104 to i64
  %106 = load i64, i64* %3, align 8
  %107 = trunc i64 %106 to i32
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* %6, align 4
  %110 = sub nsw i32 %108, %109
  %111 = sext i32 %110 to i64
  %112 = call i32 (i8*, i64, i32, i64, ...) @cvmx_dprintf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0), i64 %105, i32 %107, i64 %111)
  br label %113

113:                                              ; preds = %99, %95
  br label %114

114:                                              ; preds = %113, %81
  %115 = load i32, i32* %4, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %137

117:                                              ; preds = %114
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_fpa_pool_info, align 8
  %119 = load i64, i64* %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = sext i32 %122 to i64
  %124 = load i64, i64* %3, align 8
  %125 = trunc i64 %124 to i32
  %126 = load i64, i64* %7, align 8
  %127 = load i64, i64* %8, align 8
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_fpa_pool_info, align 8
  %129 = load i64, i64* %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = call i32 (i8*, i64, i32, i64, ...) @cvmx_dprintf(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.3, i64 0, i64 0), i64 %123, i32 %125, i64 %126, i64 %127, i32 %132)
  %134 = load i32, i32* %4, align 4
  %135 = sub nsw i32 0, %134
  %136 = sext i32 %135 to i64
  store i64 %136, i64* %2, align 8
  br label %142

137:                                              ; preds = %114
  %138 = load i32, i32* %6, align 4
  %139 = load i32, i32* %5, align 4
  %140 = sub nsw i32 %138, %139
  %141 = sext i32 %140 to i64
  store i64 %141, i64* %2, align 8
  br label %142

142:                                              ; preds = %137, %117
  %143 = load i64, i64* %2, align 8
  ret i64 %143
}

declare dso_local i64 @cvmx_ptr_to_phys(i8*) #1

declare dso_local i8* @cvmx_fpa_alloc(i64) #1

declare dso_local i32 @cvmx_dprintf(i8*, i64, i32, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
