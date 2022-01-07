; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_plcr.c_FmPcdPlcrGetAbsoluteIdByProfileParams.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_plcr.c_FmPcdPlcrGetAbsoluteIdByProfileParams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, i64 }

@FM_MAX_NUM_OF_PORTS = common dso_local global i64 0, align 8
@MAJOR = common dso_local global i32 0, align 4
@E_INVALID_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Invalid port handle.\00", align 1
@E_INVALID_SELECTION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Port has no allocated profiles\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Profile id is out of range\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Invalid policer profile type\00", align 1
@E_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FmPcdPlcrGetAbsoluteIdByProfileParams(i64 %0, i32 %1, i64 %2, i64 %3, i64* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64* %4, i64** %10, align 8
  %14 = load i64, i64* %6, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %11, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %12, align 8
  %19 = load i32, i32* %7, align 4
  switch i32 %19, label %113 [
    i32 129, label %20
    i32 128, label %94
  ]

20:                                               ; preds = %5
  store i64 0, i64* %13, align 8
  br label %21

21:                                               ; preds = %39, %20
  %22 = load i64, i64* %13, align 8
  %23 = load i64, i64* @FM_MAX_NUM_OF_PORTS, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %42

25:                                               ; preds = %21
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = load i64, i64* %13, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %8, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %25
  br label %42

38:                                               ; preds = %25
  br label %39

39:                                               ; preds = %38
  %40 = load i64, i64* %13, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %13, align 8
  br label %21

42:                                               ; preds = %37, %21
  %43 = load i64, i64* %13, align 8
  %44 = load i64, i64* @FM_MAX_NUM_OF_PORTS, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i32, i32* @MAJOR, align 4
  %48 = load i32, i32* @E_INVALID_STATE, align 4
  %49 = call i32 @RETURN_ERROR(i32 %47, i32 %48, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %50

50:                                               ; preds = %46, %42
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = load i64, i64* %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %50
  %62 = load i32, i32* @MAJOR, align 4
  %63 = load i32, i32* @E_INVALID_SELECTION, align 4
  %64 = call i32 @RETURN_ERROR(i32 %62, i32 %63, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %65

65:                                               ; preds = %61, %50
  %66 = load i64, i64* %9, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = load i64, i64* %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp uge i64 %66, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %65
  %78 = load i32, i32* @MAJOR, align 4
  %79 = load i32, i32* @E_INVALID_SELECTION, align 4
  %80 = call i32 @RETURN_ERROR(i32 %78, i32 %79, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %81

81:                                               ; preds = %77, %65
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = load i64, i64* %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* %9, align 8
  %92 = add i64 %90, %91
  %93 = load i64*, i64** %10, align 8
  store i64 %92, i64* %93, align 8
  br label %117

94:                                               ; preds = %5
  %95 = load i64, i64* %9, align 8
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp uge i64 %95, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %94
  %101 = load i32, i32* @MAJOR, align 4
  %102 = load i32, i32* @E_INVALID_SELECTION, align 4
  %103 = call i32 @RETURN_ERROR(i32 %101, i32 %102, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %104

104:                                              ; preds = %100, %94
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = load i64, i64* %9, align 8
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = sext i32 %110 to i64
  %112 = load i64*, i64** %10, align 8
  store i64 %111, i64* %112, align 8
  br label %117

113:                                              ; preds = %5
  %114 = load i32, i32* @MAJOR, align 4
  %115 = load i32, i32* @E_INVALID_SELECTION, align 4
  %116 = call i32 @RETURN_ERROR(i32 %114, i32 %115, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %117

117:                                              ; preds = %113, %104, %81
  %118 = load i32, i32* @E_OK, align 4
  ret i32 %118
}

declare dso_local i32 @RETURN_ERROR(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
