; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslfold.c_TrInstallReducedConstant.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslfold.c_TrInstallReducedConstant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { %struct.TYPE_25__, %struct.TYPE_23__ }
%struct.TYPE_25__ = type { %struct.TYPE_27__*, %struct.TYPE_27__*, %struct.TYPE_24__, i32, i32, %struct.TYPE_27__*, i32, i32, i32 }
%struct.TYPE_24__ = type { i8*, i32 }
%struct.TYPE_23__ = type { i32, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_26__, %struct.TYPE_21__, %struct.TYPE_20__, %struct.TYPE_19__ }
%struct.TYPE_26__ = type { i32, i64 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32 }

@AslGbl_TotalFolds = common dso_local global i32 0, align 4
@ASL_OPTIMIZATION = common dso_local global i32 0, align 4
@ASL_MSG_CONSTANT_FOLDED = common dso_local global i32 0, align 4
@ASL_PARSE_OUTPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Constant expression reduced to (%s) %8.8X%8.8X\0A\0A\00", align 1
@PARSEOP_STRING_LITERAL = common dso_local global i32 0, align 4
@AML_STRING_OP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Constant expression reduced to (STRING) %s\0A\0A\00", align 1
@PARSEOP_BUFFER = common dso_local global i32 0, align 4
@AML_BUFFER_OP = common dso_local global i32 0, align 4
@OP_AML_PACKAGE = common dso_local global i32 0, align 4
@PARSEOP_INTEGER = common dso_local global i32 0, align 4
@AML_DWORD_OP = common dso_local global i32 0, align 4
@PARSEOP_RAW_DATA = common dso_local global i32 0, align 4
@AML_RAW_DATA_BUFFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"Constant expression reduced to (BUFFER) length %X\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_27__*, %struct.TYPE_18__*)* @TrInstallReducedConstant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TrInstallReducedConstant(%struct.TYPE_27__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca %struct.TYPE_27__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %3, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %4, align 8
  %7 = load i32, i32* @AslGbl_TotalFolds, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* @AslGbl_TotalFolds, align 4
  %9 = load i32, i32* @ASL_OPTIMIZATION, align 4
  %10 = load i32, i32* @ASL_MSG_CONSTANT_FOLDED, align 4
  %11 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %12 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 8
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @AslError(i32 %9, i32 %10, %struct.TYPE_27__* %11, i32 %15)
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %148 [
    i32 129, label %21
    i32 128, label %40
    i32 130, label %73
  ]

21:                                               ; preds = %2
  %22 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @OpcUpdateIntegerNode(%struct.TYPE_27__* %22, i32 %26)
  %28 = load i32, i32* @ASL_PARSE_OUTPUT, align 4
  %29 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %30, i32 0, i32 8
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ACPI_FORMAT_UINT64(i32 %37)
  %39 = call i32 (i32, i8*, i32, ...) @DbgPrint(i32 %28, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %38)
  br label %149

40:                                               ; preds = %2
  %41 = load i32, i32* @PARSEOP_STRING_LITERAL, align 4
  %42 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %43, i32 0, i32 7
  store i32 %41, i32* %44, align 4
  %45 = load i32, i32* @AML_STRING_OP, align 4
  %46 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 8
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @strlen(i32 %52)
  %54 = add nsw i32 %53, 1
  %55 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %56, i32 0, i32 3
  store i32 %54, i32* %57, align 8
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 0
  store i32 %61, i32* %65, align 4
  %66 = load i32, i32* @ASL_PARSE_OUTPUT, align 4
  %67 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i32, i8*, i32, ...) @DbgPrint(i32 %66, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  br label %149

73:                                               ; preds = %2
  %74 = load i32, i32* @PARSEOP_BUFFER, align 4
  %75 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %76, i32 0, i32 7
  store i32 %74, i32* %77, align 4
  %78 = load i32, i32* @AML_BUFFER_OP, align 4
  %79 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 8
  %82 = load i32, i32* @OP_AML_PACKAGE, align 4
  %83 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %84, i32 0, i32 6
  store i32 %82, i32* %85, align 8
  %86 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %87 = call i32 @UtSetParseOpName(%struct.TYPE_27__* %86)
  %88 = load i32, i32* @PARSEOP_INTEGER, align 4
  %89 = call %struct.TYPE_27__* @TrAllocateOp(i32 %88)
  store %struct.TYPE_27__* %89, %struct.TYPE_27__** %5, align 8
  %90 = load i32, i32* @AML_DWORD_OP, align 4
  %91 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %92, i32 0, i32 4
  store i32 %90, i32* %93, align 4
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %100, i32 0, i32 1
  store i32 %97, i32* %101, align 8
  %102 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %103 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %104, i32 0, i32 1
  store %struct.TYPE_27__* %102, %struct.TYPE_27__** %105, align 8
  %106 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %107 = call i32 @OpcSetOptimalIntegerSize(%struct.TYPE_27__* %106)
  %108 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %109 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %110, i32 0, i32 5
  store %struct.TYPE_27__* %108, %struct.TYPE_27__** %111, align 8
  %112 = load i32, i32* @PARSEOP_RAW_DATA, align 4
  %113 = call %struct.TYPE_27__* @TrAllocateOp(i32 %112)
  store %struct.TYPE_27__* %113, %struct.TYPE_27__** %6, align 8
  %114 = load i32, i32* @AML_RAW_DATA_BUFFER, align 4
  %115 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %116, i32 0, i32 4
  store i32 %114, i32* %117, align 4
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %123, i32 0, i32 3
  store i32 %121, i32* %124, align 8
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = inttoptr i64 %128 to i8*
  %130 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %132, i32 0, i32 0
  store i8* %129, i8** %133, align 8
  %134 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %135 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %136, i32 0, i32 1
  store %struct.TYPE_27__* %134, %struct.TYPE_27__** %137, align 8
  %138 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %139 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %140, i32 0, i32 0
  store %struct.TYPE_27__* %138, %struct.TYPE_27__** %141, align 8
  %142 = load i32, i32* @ASL_PARSE_OUTPUT, align 4
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call i32 (i32, i8*, i32, ...) @DbgPrint(i32 %142, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %146)
  br label %149

148:                                              ; preds = %2
  br label %149

149:                                              ; preds = %148, %73, %40, %21
  ret void
}

declare dso_local i32 @AslError(i32, i32, %struct.TYPE_27__*, i32) #1

declare dso_local i32 @OpcUpdateIntegerNode(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @DbgPrint(i32, i8*, i32, ...) #1

declare dso_local i32 @ACPI_FORMAT_UINT64(i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @UtSetParseOpName(%struct.TYPE_27__*) #1

declare dso_local %struct.TYPE_27__* @TrAllocateOp(i32) #1

declare dso_local i32 @OpcSetOptimalIntegerSize(%struct.TYPE_27__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
