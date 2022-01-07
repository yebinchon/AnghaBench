; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslopcodes.c_OpcGenerateAmlOpcode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslopcodes.c_OpcGenerateAmlOpcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_17__, i32, i32, i32 }
%struct.TYPE_17__ = type { i32 }

@ASL_PARSE_OPCODE_BASE = common dso_local global i64 0, align 8
@AslKeywordMapping = common dso_local global %struct.TYPE_16__* null, align 8
@TRUE = common dso_local global i32 0, align 4
@AslGbl_HasIncludeFiles = common dso_local global i32 0, align 4
@AcpiGbl_IntegerBitWidth = common dso_local global i32 0, align 4
@ASL_REMARK = common dso_local global i32 0, align 4
@ASL_MSG_TRUNCATION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @OpcGenerateAmlOpcode(%struct.TYPE_19__* %0) #0 {
  %2 = alloca %struct.TYPE_19__*, align 8
  %3 = alloca i64, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %2, align 8
  %4 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = sext i32 %7 to i64
  %9 = load i64, i64* @ASL_PARSE_OPCODE_BASE, align 8
  %10 = sub nsw i64 %8, %9
  store i64 %10, i64* %3, align 8
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** @AslKeywordMapping, align 8
  %12 = load i64, i64* %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 5
  store i32 %15, i32* %18, align 4
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** @AslKeywordMapping, align 8
  %20 = load i64, i64* %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 4
  store i32 %23, i32* %26, align 4
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** @AslKeywordMapping, align 8
  %28 = load i64, i64* %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %31
  store i32 %36, i32* %34, align 4
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %1
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** @AslKeywordMapping, align 8
  %45 = load i64, i64* %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 0
  store i32 %48, i32* %52, align 4
  br label %53

53:                                               ; preds = %43, %1
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  switch i32 %57, label %100 [
    i32 134, label %58
    i32 133, label %61
    i32 139, label %65
    i32 138, label %68
    i32 137, label %71
    i32 132, label %74
    i32 136, label %77
    i32 130, label %80
    i32 129, label %83
    i32 128, label %86
    i32 135, label %89
    i32 131, label %91
  ]

58:                                               ; preds = %53
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %60 = call i32 @OpcSetOptimalIntegerSize(%struct.TYPE_19__* %59)
  br label %101

61:                                               ; preds = %53
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 1
  store i32 1, i32* %64, align 4
  br label %101

65:                                               ; preds = %53
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %67 = call i32 @OpcDoAccessAs(%struct.TYPE_19__* %66)
  br label %101

68:                                               ; preds = %53
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %70 = call i32 @OpcDoConnection(%struct.TYPE_19__* %69)
  br label %101

71:                                               ; preds = %53
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %73 = call i32 @OpcDoEisaId(%struct.TYPE_19__* %72)
  br label %101

74:                                               ; preds = %53
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %76 = call i32 @OpcDoPrintf(%struct.TYPE_19__* %75)
  br label %101

77:                                               ; preds = %53
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %79 = call i32 @OpcDoFprintf(%struct.TYPE_19__* %78)
  br label %101

80:                                               ; preds = %53
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %82 = call i32 @OpcDoPld(%struct.TYPE_19__* %81)
  br label %101

83:                                               ; preds = %53
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %85 = call i32 @OpcDoUuId(%struct.TYPE_19__* %84)
  br label %101

86:                                               ; preds = %53
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %88 = call i32 @OpcDoUnicode(%struct.TYPE_19__* %87)
  br label %101

89:                                               ; preds = %53
  %90 = load i32, i32* @TRUE, align 4
  store i32 %90, i32* @AslGbl_HasIncludeFiles, align 4
  br label %101

91:                                               ; preds = %53
  %92 = load i32, i32* @AcpiGbl_IntegerBitWidth, align 4
  %93 = icmp eq i32 %92, 32
  br i1 %93, label %94, label %99

94:                                               ; preds = %91
  %95 = load i32, i32* @ASL_REMARK, align 4
  %96 = load i32, i32* @ASL_MSG_TRUNCATION, align 4
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %98 = call i32 @AslError(i32 %95, i32 %96, %struct.TYPE_19__* %97, i32* null)
  br label %99

99:                                               ; preds = %94, %91
  br label %101

100:                                              ; preds = %53
  br label %101

101:                                              ; preds = %100, %99, %89, %86, %83, %80, %77, %74, %71, %68, %65, %61, %58
  ret void
}

declare dso_local i32 @OpcSetOptimalIntegerSize(%struct.TYPE_19__*) #1

declare dso_local i32 @OpcDoAccessAs(%struct.TYPE_19__*) #1

declare dso_local i32 @OpcDoConnection(%struct.TYPE_19__*) #1

declare dso_local i32 @OpcDoEisaId(%struct.TYPE_19__*) #1

declare dso_local i32 @OpcDoPrintf(%struct.TYPE_19__*) #1

declare dso_local i32 @OpcDoFprintf(%struct.TYPE_19__*) #1

declare dso_local i32 @OpcDoPld(%struct.TYPE_19__*) #1

declare dso_local i32 @OpcDoUuId(%struct.TYPE_19__*) #1

declare dso_local i32 @OpcDoUnicode(%struct.TYPE_19__*) #1

declare dso_local i32 @AslError(i32, i32, %struct.TYPE_19__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
