; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/BM/extr_bm_portal.c_BM_PORTAL_Config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/BM/extr_bm_portal.c_BM_PORTAL_Config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bm_portal = type { i32, i32, %struct.bm_portal*, i32, %struct.TYPE_6__*, i32, %struct.TYPE_5__, %struct.bm_portal* }
%struct.TYPE_5__ = type { i8*, i8* }
%struct.TYPE_6__ = type { %struct.TYPE_6__*, i32, i64, i32, i32 }

@E_INVALID_HANDLE = common dso_local global i32 0, align 4
@MAJOR = common dso_local global i32 0, align 4
@E_NO_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Bm Portal obj!!!\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Low bm portal obj!!!\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Bm Portal driver parameters\00", align 1
@DEFAULT_memAttr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bm_portal* @BM_PORTAL_Config(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.bm_portal*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.bm_portal*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %6 = load i32, i32* @E_INVALID_HANDLE, align 4
  %7 = call i32 @SANITY_CHECK_RETURN_VALUE(%struct.TYPE_6__* %5, i32 %6, i32* null)
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = load i32, i32* @E_INVALID_HANDLE, align 4
  %12 = call i32 @SANITY_CHECK_RETURN_VALUE(%struct.TYPE_6__* %10, i32 %11, i32* null)
  %13 = call i64 @XX_Malloc(i32 64)
  %14 = inttoptr i64 %13 to %struct.bm_portal*
  store %struct.bm_portal* %14, %struct.bm_portal** %4, align 8
  %15 = load %struct.bm_portal*, %struct.bm_portal** %4, align 8
  %16 = icmp ne %struct.bm_portal* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @MAJOR, align 4
  %19 = load i32, i32* @E_NO_MEMORY, align 4
  %20 = call i32 @REPORT_ERROR(i32 %18, i32 %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store %struct.bm_portal* null, %struct.bm_portal** %2, align 8
  br label %111

21:                                               ; preds = %1
  %22 = load %struct.bm_portal*, %struct.bm_portal** %4, align 8
  %23 = call i32 @memset(%struct.bm_portal* %22, i32 0, i32 64)
  %24 = call i64 @XX_Malloc(i32 64)
  %25 = inttoptr i64 %24 to %struct.bm_portal*
  %26 = load %struct.bm_portal*, %struct.bm_portal** %4, align 8
  %27 = getelementptr inbounds %struct.bm_portal, %struct.bm_portal* %26, i32 0, i32 7
  store %struct.bm_portal* %25, %struct.bm_portal** %27, align 8
  %28 = load %struct.bm_portal*, %struct.bm_portal** %4, align 8
  %29 = getelementptr inbounds %struct.bm_portal, %struct.bm_portal* %28, i32 0, i32 7
  %30 = load %struct.bm_portal*, %struct.bm_portal** %29, align 8
  %31 = icmp ne %struct.bm_portal* %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %21
  %33 = load %struct.bm_portal*, %struct.bm_portal** %4, align 8
  %34 = call i32 @XX_Free(%struct.bm_portal* %33)
  %35 = load i32, i32* @MAJOR, align 4
  %36 = load i32, i32* @E_NO_MEMORY, align 4
  %37 = call i32 @REPORT_ERROR(i32 %35, i32 %36, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store %struct.bm_portal* null, %struct.bm_portal** %2, align 8
  br label %111

38:                                               ; preds = %21
  %39 = load %struct.bm_portal*, %struct.bm_portal** %4, align 8
  %40 = getelementptr inbounds %struct.bm_portal, %struct.bm_portal* %39, i32 0, i32 7
  %41 = load %struct.bm_portal*, %struct.bm_portal** %40, align 8
  %42 = call i32 @memset(%struct.bm_portal* %41, i32 0, i32 64)
  %43 = call i64 @XX_Malloc(i32 64)
  %44 = inttoptr i64 %43 to %struct.bm_portal*
  %45 = load %struct.bm_portal*, %struct.bm_portal** %4, align 8
  %46 = getelementptr inbounds %struct.bm_portal, %struct.bm_portal* %45, i32 0, i32 2
  store %struct.bm_portal* %44, %struct.bm_portal** %46, align 8
  %47 = load %struct.bm_portal*, %struct.bm_portal** %4, align 8
  %48 = getelementptr inbounds %struct.bm_portal, %struct.bm_portal* %47, i32 0, i32 2
  %49 = load %struct.bm_portal*, %struct.bm_portal** %48, align 8
  %50 = icmp ne %struct.bm_portal* %49, null
  br i1 %50, label %61, label %51

51:                                               ; preds = %38
  %52 = load %struct.bm_portal*, %struct.bm_portal** %4, align 8
  %53 = call i32 @XX_Free(%struct.bm_portal* %52)
  %54 = load %struct.bm_portal*, %struct.bm_portal** %4, align 8
  %55 = getelementptr inbounds %struct.bm_portal, %struct.bm_portal* %54, i32 0, i32 7
  %56 = load %struct.bm_portal*, %struct.bm_portal** %55, align 8
  %57 = call i32 @XX_Free(%struct.bm_portal* %56)
  %58 = load i32, i32* @MAJOR, align 4
  %59 = load i32, i32* @E_NO_MEMORY, align 4
  %60 = call i32 @REPORT_ERROR(i32 %58, i32 %59, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  store %struct.bm_portal* null, %struct.bm_portal** %2, align 8
  br label %111

61:                                               ; preds = %38
  %62 = load %struct.bm_portal*, %struct.bm_portal** %4, align 8
  %63 = getelementptr inbounds %struct.bm_portal, %struct.bm_portal* %62, i32 0, i32 2
  %64 = load %struct.bm_portal*, %struct.bm_portal** %63, align 8
  %65 = call i32 @memset(%struct.bm_portal* %64, i32 0, i32 64)
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = call i8* @UINT_TO_PTR(i32 %68)
  %70 = load %struct.bm_portal*, %struct.bm_portal** %4, align 8
  %71 = getelementptr inbounds %struct.bm_portal, %struct.bm_portal* %70, i32 0, i32 7
  %72 = load %struct.bm_portal*, %struct.bm_portal** %71, align 8
  %73 = getelementptr inbounds %struct.bm_portal, %struct.bm_portal* %72, i32 0, i32 6
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  store i8* %69, i8** %74, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = call i8* @UINT_TO_PTR(i32 %77)
  %79 = load %struct.bm_portal*, %struct.bm_portal** %4, align 8
  %80 = getelementptr inbounds %struct.bm_portal, %struct.bm_portal* %79, i32 0, i32 7
  %81 = load %struct.bm_portal*, %struct.bm_portal** %80, align 8
  %82 = getelementptr inbounds %struct.bm_portal, %struct.bm_portal* %81, i32 0, i32 6
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  store i8* %78, i8** %83, align 8
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = trunc i64 %86 to i32
  %88 = load %struct.bm_portal*, %struct.bm_portal** %4, align 8
  %89 = getelementptr inbounds %struct.bm_portal, %struct.bm_portal* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.bm_portal*, %struct.bm_portal** %4, align 8
  %94 = getelementptr inbounds %struct.bm_portal, %struct.bm_portal* %93, i32 0, i32 5
  store i32 %92, i32* %94, align 8
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = load %struct.bm_portal*, %struct.bm_portal** %4, align 8
  %99 = getelementptr inbounds %struct.bm_portal, %struct.bm_portal* %98, i32 0, i32 4
  store %struct.TYPE_6__* %97, %struct.TYPE_6__** %99, align 8
  %100 = load i32, i32* @DEFAULT_memAttr, align 4
  %101 = load %struct.bm_portal*, %struct.bm_portal** %4, align 8
  %102 = getelementptr inbounds %struct.bm_portal, %struct.bm_portal* %101, i32 0, i32 2
  %103 = load %struct.bm_portal*, %struct.bm_portal** %102, align 8
  %104 = getelementptr inbounds %struct.bm_portal, %struct.bm_portal* %103, i32 0, i32 3
  store i32 %100, i32* %104, align 8
  %105 = load %struct.bm_portal*, %struct.bm_portal** %4, align 8
  %106 = getelementptr inbounds %struct.bm_portal, %struct.bm_portal* %105, i32 0, i32 2
  %107 = load %struct.bm_portal*, %struct.bm_portal** %106, align 8
  %108 = getelementptr inbounds %struct.bm_portal, %struct.bm_portal* %107, i32 0, i32 1
  %109 = call i32 @bman_depletion_fill(i32* %108)
  %110 = load %struct.bm_portal*, %struct.bm_portal** %4, align 8
  store %struct.bm_portal* %110, %struct.bm_portal** %2, align 8
  br label %111

111:                                              ; preds = %61, %51, %32, %17
  %112 = load %struct.bm_portal*, %struct.bm_portal** %2, align 8
  ret %struct.bm_portal* %112
}

declare dso_local i32 @SANITY_CHECK_RETURN_VALUE(%struct.TYPE_6__*, i32, i32*) #1

declare dso_local i64 @XX_Malloc(i32) #1

declare dso_local i32 @REPORT_ERROR(i32, i32, i8*) #1

declare dso_local i32 @memset(%struct.bm_portal*, i32, i32) #1

declare dso_local i32 @XX_Free(%struct.bm_portal*) #1

declare dso_local i8* @UINT_TO_PTR(i32) #1

declare dso_local i32 @bman_depletion_fill(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
