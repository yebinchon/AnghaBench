; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_asltransform.c_TrTransformSubtree.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_asltransform.c_TrTransformSubtree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i32, i32*, %struct.TYPE_10__, %struct.TYPE_12__*, %struct.TYPE_12__* }
%struct.TYPE_10__ = type { i8*, i32 }

@AML_RAW_DATA_BYTE = common dso_local global i64 0, align 8
@AslGbl_TempCount = common dso_local global i32 0, align 4
@PARSEOP_STRING_LITERAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@ASL_WARNING = common dso_local global i32 0, align 4
@ASL_MSG_UNLOAD = common dso_local global i32 0, align 4
@ASL_REMARK = common dso_local global i32 0, align 4
@ASL_MSG_LONG_SLEEP = common dso_local global i32 0, align 4
@ASL_MSG_LEGACY_PROCESSOR_OP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*)* @TrTransformSubtree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TrTransformSubtree(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %4 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @AML_RAW_DATA_BYTE, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %98

11:                                               ; preds = %1
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %97 [
    i32 135, label %16
    i32 130, label %19
    i32 133, label %22
    i32 134, label %23
    i32 128, label %26
    i32 129, label %67
    i32 131, label %72
    i32 132, label %88
  ]

16:                                               ; preds = %11
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %18 = call i32 @TrDoDefinitionBlock(%struct.TYPE_12__* %17)
  br label %98

19:                                               ; preds = %11
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %21 = call i32 @TrDoSwitch(%struct.TYPE_12__* %20)
  br label %98

22:                                               ; preds = %11
  store i32 0, i32* @AslGbl_TempCount, align 4
  br label %98

23:                                               ; preds = %11
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %25 = call i32 @ExDoExternal(%struct.TYPE_12__* %24)
  br label %98

26:                                               ; preds = %11
  %27 = load i32, i32* @PARSEOP_STRING_LITERAL, align 4
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  store i32 %27, i32* %30, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %32 = call i32 @UtSetParseOpName(%struct.TYPE_12__* %31)
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  store %struct.TYPE_12__* %33, %struct.TYPE_12__** %3, align 8
  br label %34

34:                                               ; preds = %57, %26
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %36 = icmp ne %struct.TYPE_12__* %35, null
  br i1 %36, label %37, label %62

37:                                               ; preds = %34
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, 133
  br i1 %42, label %43, label %57

43:                                               ; preds = %37
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 4
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %46, align 8
  store %struct.TYPE_12__* %47, %struct.TYPE_12__** %3, align 8
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  store i8* %52, i8** %56, align 8
  br label %98

57:                                               ; preds = %37
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 5
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %60, align 8
  store %struct.TYPE_12__* %61, %struct.TYPE_12__** %3, align 8
  br label %34

62:                                               ; preds = %34
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %66, align 8
  br label %98

67:                                               ; preds = %11
  %68 = load i32, i32* @ASL_WARNING, align 4
  %69 = load i32, i32* @ASL_MSG_UNLOAD, align 4
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %71 = call i32 @AslError(i32 %68, i32 %69, %struct.TYPE_12__* %70, i32* null)
  br label %98

72:                                               ; preds = %11
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 4
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = icmp sgt i32 %80, 1000
  br i1 %81, label %82, label %87

82:                                               ; preds = %72
  %83 = load i32, i32* @ASL_REMARK, align 4
  %84 = load i32, i32* @ASL_MSG_LONG_SLEEP, align 4
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %86 = call i32 @AslError(i32 %83, i32 %84, %struct.TYPE_12__* %85, i32* null)
  br label %87

87:                                               ; preds = %82, %72
  br label %98

88:                                               ; preds = %11
  %89 = load i32, i32* @ASL_WARNING, align 4
  %90 = load i32, i32* @ASL_MSG_LEGACY_PROCESSOR_OP, align 4
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = call i32 @AslError(i32 %89, i32 %90, %struct.TYPE_12__* %91, i32* %95)
  br label %98

97:                                               ; preds = %11
  br label %98

98:                                               ; preds = %10, %43, %97, %88, %87, %67, %62, %23, %22, %19, %16
  ret void
}

declare dso_local i32 @TrDoDefinitionBlock(%struct.TYPE_12__*) #1

declare dso_local i32 @TrDoSwitch(%struct.TYPE_12__*) #1

declare dso_local i32 @ExDoExternal(%struct.TYPE_12__*) #1

declare dso_local i32 @UtSetParseOpName(%struct.TYPE_12__*) #1

declare dso_local i32 @AslError(i32, i32, %struct.TYPE_12__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
