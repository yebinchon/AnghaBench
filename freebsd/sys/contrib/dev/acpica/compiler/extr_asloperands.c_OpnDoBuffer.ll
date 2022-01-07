; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_asloperands.c_OpnDoBuffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_asloperands.c_OpnDoBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i32, %struct.TYPE_10__, i32, %struct.TYPE_12__*, %struct.TYPE_12__* }
%struct.TYPE_10__ = type { i64, i32 }

@AML_RAW_DATA_BYTE = common dso_local global i32 0, align 4
@AML_RAW_DATA_BUFFER = common dso_local global i32 0, align 4
@ASL_ERROR = common dso_local global i32 0, align 4
@ASL_MSG_INVALID_OPERAND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Unknown buffer initializer opcode\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Unknown buffer initializer opcode [%s]\0A\00", align 1
@ASL_REMARK = common dso_local global i32 0, align 4
@ASL_MSG_BUFFER_LENGTH = common dso_local global i32 0, align 4
@AML_DWORD_OP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*)* @OpnDoBuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @OpnDoBuffer(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  store i64 0, i64* %5, align 8
  %6 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 5
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_12__* %9, %struct.TYPE_12__** %4, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 4
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  store %struct.TYPE_12__* %13, %struct.TYPE_12__** %3, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 131
  br i1 %18, label %19, label %26

19:                                               ; preds = %1
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 133
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %125

26:                                               ; preds = %19, %1
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  switch i64 %30, label %74 [
    i64 131, label %31
    i64 134, label %31
    i64 128, label %31
    i64 132, label %31
    i64 129, label %51
    i64 130, label %72
    i64 133, label %73
  ]

31:                                               ; preds = %26, %26, %26, %26
  br label %32

32:                                               ; preds = %35, %31
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %34 = icmp ne %struct.TYPE_12__* %33, null
  br i1 %34, label %35, label %50

35:                                               ; preds = %32
  %36 = load i32, i32* @AML_RAW_DATA_BYTE, align 4
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 3
  store i32 %36, i32* %39, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 1
  store i32 1, i32* %42, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  store i64 130, i64* %45, align 8
  %46 = load i64, i64* %5, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %5, align 8
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %49 = call %struct.TYPE_12__* @ASL_GET_PEER_NODE(%struct.TYPE_12__* %48)
  store %struct.TYPE_12__* %49, %struct.TYPE_12__** %3, align 8
  br label %32

50:                                               ; preds = %32
  br label %86

51:                                               ; preds = %26
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @strlen(i32 %56)
  %58 = add nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  store i64 %59, i64* %5, align 8
  %60 = load i32, i32* @AML_RAW_DATA_BUFFER, align 4
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 3
  store i32 %60, i32* %63, align 8
  %64 = load i64, i64* %5, align 8
  %65 = trunc i64 %64 to i32
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 1
  store i32 %65, i32* %68, align 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  store i64 130, i64* %71, align 8
  br label %86

72:                                               ; preds = %26
  br label %125

73:                                               ; preds = %26
  br label %86

74:                                               ; preds = %26
  %75 = load i32, i32* @ASL_ERROR, align 4
  %76 = load i32, i32* @ASL_MSG_INVALID_OPERAND, align 4
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %78 = call i32 @AslError(i32 %75, i32 %76, %struct.TYPE_12__* %77, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = trunc i64 %82 to i32
  %84 = call i8* @UtGetOpName(i32 %83)
  %85 = call i32 @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %84)
  br label %125

86:                                               ; preds = %73, %51, %50
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %5, align 8
  %93 = icmp sgt i64 %91, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %86
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %5, align 8
  br label %100

100:                                              ; preds = %94, %86
  %101 = load i64, i64* %5, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %100
  %104 = load i32, i32* @ASL_REMARK, align 4
  %105 = load i32, i32* @ASL_MSG_BUFFER_LENGTH, align 4
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %107 = call i32 @AslError(i32 %104, i32 %105, %struct.TYPE_12__* %106, i8* null)
  br label %108

108:                                              ; preds = %103, %100
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  store i64 131, i64* %111, align 8
  %112 = load i32, i32* @AML_DWORD_OP, align 4
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 3
  store i32 %112, i32* %115, align 8
  %116 = load i64, i64* %5, align 8
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  store i64 %116, i64* %120, align 8
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %122 = call i32 @OpcSetOptimalIntegerSize(%struct.TYPE_12__* %121)
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %124 = call i32 @UtSetParseOpName(%struct.TYPE_12__* %123)
  br label %125

125:                                              ; preds = %108, %74, %72, %25
  ret void
}

declare dso_local %struct.TYPE_12__* @ASL_GET_PEER_NODE(%struct.TYPE_12__*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @AslError(i32, i32, %struct.TYPE_12__*, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @UtGetOpName(i32) #1

declare dso_local i32 @OpcSetOptimalIntegerSize(%struct.TYPE_12__*) #1

declare dso_local i32 @UtSetParseOpName(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
