; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/BM/extr_bm.c_BM_Config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/BM/extr_bm.c_BM_Config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_11__*, %struct.TYPE_11__*, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@E_INVALID_HANDLE = common dso_local global i32 0, align 4
@MAJOR = common dso_local global i32 0, align 4
@E_NO_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"BM obj!!!\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Bm driver parameters\00", align 1
@NCSW_MASTER_ID = common dso_local global i32 0, align 4
@DEFAULT_exceptions = common dso_local global i32 0, align 4
@DEFAULT_fbprThreshold = common dso_local global i32 0, align 4
@MODULE_NAME_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"BM_0_%d\00", align 1
@E_INVALID_STATE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"Sprint failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @BM_Config(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %5 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %6 = load i32, i32* @E_INVALID_HANDLE, align 4
  %7 = call i32 @SANITY_CHECK_RETURN_VALUE(%struct.TYPE_12__* %5, i32 %6, i32* null)
  %8 = call i64 @XX_Malloc(i32 72)
  %9 = inttoptr i64 %8 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %9, %struct.TYPE_11__** %4, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %11 = icmp ne %struct.TYPE_11__* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @MAJOR, align 4
  %14 = load i32, i32* @E_NO_MEMORY, align 4
  %15 = call i32 @REPORT_ERROR(i32 %13, i32 %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %2, align 8
  br label %146

16:                                               ; preds = %1
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %18 = call i32 @memset(%struct.TYPE_11__* %17, i32 0, i32 72)
  %19 = call i64 @XX_Malloc(i32 72)
  %20 = inttoptr i64 %19 to %struct.TYPE_11__*
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  store %struct.TYPE_11__* %20, %struct.TYPE_11__** %22, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %26 = icmp ne %struct.TYPE_11__* %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %16
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %29 = call i32 @XX_Free(%struct.TYPE_11__* %28)
  %30 = load i32, i32* @MAJOR, align 4
  %31 = load i32, i32* @E_NO_MEMORY, align 4
  %32 = call i32 @REPORT_ERROR(i32 %30, i32 %31, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %2, align 8
  br label %146

33:                                               ; preds = %16
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %37 = call i32 @memset(%struct.TYPE_11__* %36, i32 0, i32 72)
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 9
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 13
  store i32 %45, i32* %49, align 4
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 8
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 12
  store i32 %52, i32* %56, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 7
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @UINT_TO_PTR(i32 %59)
  %61 = inttoptr i64 %60 to i32*
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 11
  store i32* %61, i32** %63, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @NCSW_MASTER_ID, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %114

69:                                               ; preds = %33
  %70 = load i32, i32* @DEFAULT_exceptions, align 4
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 10
  store i32 %70, i32* %72, align 4
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 9
  store i32 %75, i32* %77, align 8
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 8
  store i32 %80, i32* %82, align 4
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 7
  store i32 %85, i32* %87, align 8
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 6
  store i32 %90, i32* %94, align 4
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 5
  store i32 %97, i32* %101, align 8
  %102 = load i32, i32* @DEFAULT_fbprThreshold, align 4
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 4
  store i32 %102, i32* %106, align 4
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 3
  store i32 %109, i32* %113, align 8
  br label %114

114:                                              ; preds = %69, %33
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 2
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %116, align 8
  %118 = load i32, i32* @MODULE_NAME_SIZE, align 4
  %119 = call i32 @memset(%struct.TYPE_11__* %117, i32 0, i32 %118)
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 2
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %121, align 8
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @Sprint(%struct.TYPE_11__* %122, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %125)
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp slt i32 %129, 10
  %131 = zext i1 %130 to i64
  %132 = select i1 %130, i32 6, i32 7
  %133 = icmp ne i32 %126, %132
  br i1 %133, label %134, label %144

134:                                              ; preds = %114
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %136, align 8
  %138 = call i32 @XX_Free(%struct.TYPE_11__* %137)
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %140 = call i32 @XX_Free(%struct.TYPE_11__* %139)
  %141 = load i32, i32* @MAJOR, align 4
  %142 = load i32, i32* @E_INVALID_STATE, align 4
  %143 = call i32 @REPORT_ERROR(i32 %141, i32 %142, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %2, align 8
  br label %146

144:                                              ; preds = %114
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_11__* %145, %struct.TYPE_11__** %2, align 8
  br label %146

146:                                              ; preds = %144, %134, %27, %12
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  ret %struct.TYPE_11__* %147
}

declare dso_local i32 @SANITY_CHECK_RETURN_VALUE(%struct.TYPE_12__*, i32, i32*) #1

declare dso_local i64 @XX_Malloc(i32) #1

declare dso_local i32 @REPORT_ERROR(i32, i32, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @XX_Free(%struct.TYPE_11__*) #1

declare dso_local i64 @UINT_TO_PTR(i32) #1

declare dso_local i32 @Sprint(%struct.TYPE_11__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
