; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_dtexpress.c_DtDoOperator.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_dtexpress.c_DtDoOperator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ASL_ERROR = common dso_local global i32 0, align 4
@ASL_MSG_DIVIDE_BY_ZERO = common dso_local global i32 0, align 4
@AslGbl_CurrentField = common dso_local global i32 0, align 4
@ASL_MSG_INVALID_EXPRESSION = common dso_local global i32 0, align 4
@ASL_DEBUG_OUTPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"IntegerEval: (%8.8X%8.8X %s %8.8X%8.8X) = %8.8X%8.8X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DtDoOperator(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %122 [
    i32 133, label %10
    i32 138, label %13
    i32 135, label %18
    i32 145, label %22
    i32 136, label %34
    i32 147, label %46
    i32 129, label %50
    i32 130, label %54
    i32 131, label %58
    i32 141, label %62
    i32 143, label %67
    i32 140, label %72
    i32 142, label %77
    i32 144, label %82
    i32 134, label %87
    i32 146, label %92
    i32 128, label %96
    i32 132, label %100
    i32 139, label %104
    i32 137, label %113
  ]

10:                                               ; preds = %3
  %11 = load i32, i32* %7, align 4
  %12 = xor i32 %11, -1
  store i32 %12, i32* %8, align 4
  br label %126

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %8, align 4
  br label %126

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %7, align 4
  %21 = mul nsw i32 %19, %20
  store i32 %21, i32* %8, align 4
  br label %126

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* @ASL_ERROR, align 4
  %27 = load i32, i32* @ASL_MSG_DIVIDE_BY_ZERO, align 4
  %28 = load i32, i32* @AslGbl_CurrentField, align 4
  %29 = call i32 @DtError(i32 %26, i32 %27, i32 %28, i32* null)
  store i32 0, i32* %4, align 4
  br label %138

30:                                               ; preds = %22
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %7, align 4
  %33 = sdiv i32 %31, %32
  store i32 %33, i32* %8, align 4
  br label %126

34:                                               ; preds = %3
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* @ASL_ERROR, align 4
  %39 = load i32, i32* @ASL_MSG_DIVIDE_BY_ZERO, align 4
  %40 = load i32, i32* @AslGbl_CurrentField, align 4
  %41 = call i32 @DtError(i32 %38, i32 %39, i32 %40, i32* null)
  store i32 0, i32* %4, align 4
  br label %138

42:                                               ; preds = %34
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %7, align 4
  %45 = srem i32 %43, %44
  store i32 %45, i32* %8, align 4
  br label %126

46:                                               ; preds = %3
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %47, %48
  store i32 %49, i32* %8, align 4
  br label %126

50:                                               ; preds = %3
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %7, align 4
  %53 = sub nsw i32 %51, %52
  store i32 %53, i32* %8, align 4
  br label %126

54:                                               ; preds = %3
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %7, align 4
  %57 = ashr i32 %55, %56
  store i32 %57, i32* %8, align 4
  br label %126

58:                                               ; preds = %3
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %7, align 4
  %61 = shl i32 %59, %60
  store i32 %61, i32* %8, align 4
  br label %126

62:                                               ; preds = %3
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp slt i32 %63, %64
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %8, align 4
  br label %126

67:                                               ; preds = %3
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp sgt i32 %68, %69
  %71 = zext i1 %70 to i32
  store i32 %71, i32* %8, align 4
  br label %126

72:                                               ; preds = %3
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp sle i32 %73, %74
  %76 = zext i1 %75 to i32
  store i32 %76, i32* %8, align 4
  br label %126

77:                                               ; preds = %3
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp sge i32 %78, %79
  %81 = zext i1 %80 to i32
  store i32 %81, i32* %8, align 4
  br label %126

82:                                               ; preds = %3
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp eq i32 %83, %84
  %86 = zext i1 %85 to i32
  store i32 %86, i32* %8, align 4
  br label %126

87:                                               ; preds = %3
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %88, %89
  %91 = zext i1 %90 to i32
  store i32 %91, i32* %8, align 4
  br label %126

92:                                               ; preds = %3
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* %7, align 4
  %95 = and i32 %93, %94
  store i32 %95, i32* %8, align 4
  br label %126

96:                                               ; preds = %3
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* %7, align 4
  %99 = xor i32 %97, %98
  store i32 %99, i32* %8, align 4
  br label %126

100:                                              ; preds = %3
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* %7, align 4
  %103 = or i32 %101, %102
  store i32 %103, i32* %8, align 4
  br label %126

104:                                              ; preds = %3
  %105 = load i32, i32* %5, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load i32, i32* %7, align 4
  %109 = icmp ne i32 %108, 0
  br label %110

110:                                              ; preds = %107, %104
  %111 = phi i1 [ false, %104 ], [ %109, %107 ]
  %112 = zext i1 %111 to i32
  store i32 %112, i32* %8, align 4
  br label %126

113:                                              ; preds = %3
  %114 = load i32, i32* %5, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %113
  %117 = load i32, i32* %7, align 4
  %118 = icmp ne i32 %117, 0
  br label %119

119:                                              ; preds = %116, %113
  %120 = phi i1 [ true, %113 ], [ %118, %116 ]
  %121 = zext i1 %120 to i32
  store i32 %121, i32* %8, align 4
  br label %126

122:                                              ; preds = %3
  %123 = load i32, i32* @ASL_MSG_INVALID_EXPRESSION, align 4
  %124 = load i32, i32* @AslGbl_CurrentField, align 4
  %125 = call i32 @DtFatal(i32 %123, i32 %124, i32* null)
  store i32 0, i32* %4, align 4
  br label %138

126:                                              ; preds = %119, %110, %100, %96, %92, %87, %82, %77, %72, %67, %62, %58, %54, %50, %46, %42, %30, %18, %13, %10
  %127 = load i32, i32* @ASL_DEBUG_OUTPUT, align 4
  %128 = load i32, i32* %5, align 4
  %129 = call i32 @ACPI_FORMAT_UINT64(i32 %128)
  %130 = load i32, i32* %6, align 4
  %131 = call i32 @DtGetOpName(i32 %130)
  %132 = load i32, i32* %7, align 4
  %133 = call i32 @ACPI_FORMAT_UINT64(i32 %132)
  %134 = load i32, i32* %8, align 4
  %135 = call i32 @ACPI_FORMAT_UINT64(i32 %134)
  %136 = call i32 @DbgPrint(i32 %127, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %129, i32 %131, i32 %133, i32 %135)
  %137 = load i32, i32* %8, align 4
  store i32 %137, i32* %4, align 4
  br label %138

138:                                              ; preds = %126, %122, %37, %25
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local i32 @DtError(i32, i32, i32, i32*) #1

declare dso_local i32 @DtFatal(i32, i32, i32*) #1

declare dso_local i32 @DbgPrint(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ACPI_FORMAT_UINT64(i32) #1

declare dso_local i32 @DtGetOpName(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
