; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslrestype2s.c_RsGetVendorData.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslrestype2s.c_RsGetVendorData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__, %struct.TYPE_11__* }
%struct.TYPE_9__ = type { i64 }

@ACPI_UINT32_MAX = common dso_local global i64 0, align 8
@PARSEOP_DEFAULT_ARG = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@ASL_ERROR = common dso_local global i32 0, align 4
@ASL_MSG_SYNTAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ACPI_RESTAG_VENDORDATA = common dso_local global i32 0, align 4
@ASL_MSG_BUFFER_LENGTH = common dso_local global i32 0, align 4
@ASL_MSG_LIST_LENGTH_LONG = common dso_local global i32 0, align 4
@ASL_REMARK = common dso_local global i32 0, align 4
@ASL_MSG_LIST_LENGTH_SHORT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i64*, i64)* @RsGetVendorData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @RsGetVendorData(%struct.TYPE_11__* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i64, i64* @ACPI_UINT32_MAX, align 8
  store i64 %11, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PARSEOP_DEFAULT_ARG, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %4, align 4
  br label %121

20:                                               ; preds = %3
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  store %struct.TYPE_11__* %24, %struct.TYPE_11__** %8, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %26 = icmp ne %struct.TYPE_11__* %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %20
  %28 = load i32, i32* @ASL_ERROR, align 4
  %29 = load i32, i32* @ASL_MSG_SYNTAX, align 4
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %31 = call i32 @AslError(i32 %28, i32 %29, %struct.TYPE_11__* %30, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @FALSE, align 4
  store i32 %32, i32* %4, align 4
  br label %121

33:                                               ; preds = %20
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @PARSEOP_DEFAULT_ARG, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %33
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %9, align 8
  br label %46

46:                                               ; preds = %40, %33
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %48 = load i32, i32* @ACPI_RESTAG_VENDORDATA, align 4
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @RsCreateByteField(%struct.TYPE_11__* %47, i32 %48, i64 %49)
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %52 = call %struct.TYPE_11__* @RsCompleteNodeAndGetNext(%struct.TYPE_11__* %51)
  store %struct.TYPE_11__* %52, %struct.TYPE_11__** %8, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @PARSEOP_DEFAULT_ARG, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %77

59:                                               ; preds = %46
  br label %60

60:                                               ; preds = %63, %59
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %62 = icmp ne %struct.TYPE_11__* %61, null
  br i1 %62, label %63, label %76

63:                                               ; preds = %60
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64*, i64** %6, align 8
  store i64 %68, i64* %69, align 8
  %70 = load i64*, i64** %6, align 8
  %71 = getelementptr inbounds i64, i64* %70, i32 1
  store i64* %71, i64** %6, align 8
  %72 = load i64, i64* %10, align 8
  %73 = add nsw i64 %72, 1
  store i64 %73, i64* %10, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %75 = call %struct.TYPE_11__* @RsCompleteNodeAndGetNext(%struct.TYPE_11__* %74)
  store %struct.TYPE_11__* %75, %struct.TYPE_11__** %8, align 8
  br label %60

76:                                               ; preds = %60
  br label %77

77:                                               ; preds = %76, %46
  %78 = load i64, i64* %9, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %77
  %81 = load i64, i64* %9, align 8
  %82 = load i64, i64* @ACPI_UINT32_MAX, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %93

84:                                               ; preds = %80
  %85 = load i64, i64* %10, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %84, %77
  %88 = load i32, i32* @ASL_ERROR, align 4
  %89 = load i32, i32* @ASL_MSG_BUFFER_LENGTH, align 4
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %91 = call i32 @AslError(i32 %88, i32 %89, %struct.TYPE_11__* %90, i8* null)
  %92 = load i32, i32* @FALSE, align 4
  store i32 %92, i32* %4, align 4
  br label %121

93:                                               ; preds = %84, %80
  %94 = load i64, i64* %9, align 8
  %95 = load i64, i64* @ACPI_UINT32_MAX, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %119

97:                                               ; preds = %93
  %98 = load i64, i64* %10, align 8
  %99 = load i64, i64* %9, align 8
  %100 = icmp sgt i64 %98, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %97
  %102 = load i32, i32* @ASL_ERROR, align 4
  %103 = load i32, i32* @ASL_MSG_LIST_LENGTH_LONG, align 4
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %105 = call i32 @AslError(i32 %102, i32 %103, %struct.TYPE_11__* %104, i8* null)
  %106 = load i32, i32* @FALSE, align 4
  store i32 %106, i32* %4, align 4
  br label %121

107:                                              ; preds = %97
  %108 = load i64, i64* %10, align 8
  %109 = load i64, i64* %9, align 8
  %110 = icmp slt i64 %108, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %107
  %112 = load i32, i32* @ASL_REMARK, align 4
  %113 = load i32, i32* @ASL_MSG_LIST_LENGTH_SHORT, align 4
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %115 = call i32 @AslError(i32 %112, i32 %113, %struct.TYPE_11__* %114, i8* null)
  %116 = load i32, i32* @FALSE, align 4
  store i32 %116, i32* %4, align 4
  br label %121

117:                                              ; preds = %107
  br label %118

118:                                              ; preds = %117
  br label %119

119:                                              ; preds = %118, %93
  %120 = load i32, i32* @TRUE, align 4
  store i32 %120, i32* %4, align 4
  br label %121

121:                                              ; preds = %119, %111, %101, %87, %27, %18
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local i32 @AslError(i32, i32, %struct.TYPE_11__*, i8*) #1

declare dso_local i32 @RsCreateByteField(%struct.TYPE_11__*, i32, i64) #1

declare dso_local %struct.TYPE_11__* @RsCompleteNodeAndGetNext(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
