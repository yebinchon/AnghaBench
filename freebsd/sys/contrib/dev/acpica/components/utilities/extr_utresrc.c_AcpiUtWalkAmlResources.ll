; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/utilities/extr_utresrc.c_AcpiUtWalkAmlResources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/utilities/extr_utresrc.c_AcpiUtWalkAmlResources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.AcpiUtWalkAmlResources.EndTag = private unnamed_addr constant [2 x i32] [i32 121, i32 0], align 4
@UtWalkAmlResources = common dso_local global i32 0, align 4
@AE_AML_NO_RESOURCE_END_TAG = common dso_local global i32 0, align 4
@ACPI_RESOURCE_NAME_END_TAG = common dso_local global i64 0, align 8
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiUtWalkAmlResources(i32* %0, i32* %1, i32 %2, i32 (i32*, i32, i32, i32, i8**)* %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32 (i32*, i32, i32, i32, i8**)*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [2 x i32], align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 (i32*, i32, i32, i32, i8**)* %3, i32 (i32*, i32, i32, i32, i8**)** %10, align 8
  store i8** %4, i8*** %11, align 8
  store i32 0, i32* %16, align 4
  %18 = bitcast [2 x i32]* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 bitcast ([2 x i32]* @__const.AcpiUtWalkAmlResources.EndTag to i8*), i64 8, i1 false)
  %19 = load i32, i32* @UtWalkAmlResources, align 4
  %20 = call i32 @ACPI_FUNCTION_TRACE(i32 %19)
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = icmp ult i64 %22, 4
  br i1 %23, label %24, label %27

24:                                               ; preds = %5
  %25 = load i32, i32* @AE_AML_NO_RESOURCE_END_TAG, align 4
  %26 = call i32 @return_ACPI_STATUS(i32 %25)
  br label %27

27:                                               ; preds = %24, %5
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32* %31, i32** %13, align 8
  br label %32

32:                                               ; preds = %89, %27
  %33 = load i32*, i32** %8, align 8
  %34 = load i32*, i32** %13, align 8
  %35 = icmp ult i32* %33, %34
  br i1 %35, label %36, label %97

36:                                               ; preds = %32
  %37 = load i32*, i32** %7, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = call i32 @AcpiUtValidateResource(i32* %37, i32* %38, i32* %14)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = call i64 @ACPI_FAILURE(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @return_ACPI_STATUS(i32 %44)
  br label %46

46:                                               ; preds = %43, %36
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @AcpiUtGetDescriptorLength(i32* %47)
  store i32 %48, i32* %15, align 4
  %49 = load i32 (i32*, i32, i32, i32, i8**)*, i32 (i32*, i32, i32, i32, i8**)** %10, align 8
  %50 = icmp ne i32 (i32*, i32, i32, i32, i8**)* %49, null
  br i1 %50, label %51, label %66

51:                                               ; preds = %46
  %52 = load i32 (i32*, i32, i32, i32, i8**)*, i32 (i32*, i32, i32, i32, i8**)** %10, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* %16, align 4
  %56 = load i32, i32* %14, align 4
  %57 = load i8**, i8*** %11, align 8
  %58 = call i32 %52(i32* %53, i32 %54, i32 %55, i32 %56, i8** %57)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = call i64 @ACPI_FAILURE(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %51
  %63 = load i32, i32* %12, align 4
  %64 = call i32 @return_ACPI_STATUS(i32 %63)
  br label %65

65:                                               ; preds = %62, %51
  br label %66

66:                                               ; preds = %65, %46
  %67 = load i32*, i32** %8, align 8
  %68 = call i64 @AcpiUtGetResourceType(i32* %67)
  %69 = load i64, i64* @ACPI_RESOURCE_NAME_END_TAG, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %89

71:                                               ; preds = %66
  %72 = load i32*, i32** %8, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32*, i32** %13, align 8
  %75 = icmp uge i32* %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load i32, i32* @AE_AML_NO_RESOURCE_END_TAG, align 4
  %78 = call i32 @return_ACPI_STATUS(i32 %77)
  br label %79

79:                                               ; preds = %76, %71
  %80 = load i32 (i32*, i32, i32, i32, i8**)*, i32 (i32*, i32, i32, i32, i8**)** %10, align 8
  %81 = icmp ne i32 (i32*, i32, i32, i32, i8**)* %80, null
  br i1 %81, label %86, label %82

82:                                               ; preds = %79
  %83 = load i32*, i32** %8, align 8
  %84 = bitcast i32* %83 to i8*
  %85 = load i8**, i8*** %11, align 8
  store i8* %84, i8** %85, align 8
  br label %86

86:                                               ; preds = %82, %79
  %87 = load i32, i32* @AE_OK, align 4
  %88 = call i32 @return_ACPI_STATUS(i32 %87)
  br label %89

89:                                               ; preds = %86, %66
  %90 = load i32, i32* %15, align 4
  %91 = load i32*, i32** %8, align 8
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  store i32* %93, i32** %8, align 8
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* %16, align 4
  %96 = add nsw i32 %95, %94
  store i32 %96, i32* %16, align 4
  br label %32

97:                                               ; preds = %32
  %98 = load i32 (i32*, i32, i32, i32, i8**)*, i32 (i32*, i32, i32, i32, i8**)** %10, align 8
  %99 = icmp ne i32 (i32*, i32, i32, i32, i8**)* %98, null
  br i1 %99, label %100, label %117

100:                                              ; preds = %97
  %101 = load i32*, i32** %7, align 8
  %102 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %103 = call i32 @AcpiUtValidateResource(i32* %101, i32* %102, i32* %14)
  %104 = load i32 (i32*, i32, i32, i32, i8**)*, i32 (i32*, i32, i32, i32, i8**)** %10, align 8
  %105 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %106 = load i32, i32* %16, align 4
  %107 = load i32, i32* %14, align 4
  %108 = load i8**, i8*** %11, align 8
  %109 = call i32 %104(i32* %105, i32 2, i32 %106, i32 %107, i8** %108)
  store i32 %109, i32* %12, align 4
  %110 = load i32, i32* %12, align 4
  %111 = call i64 @ACPI_FAILURE(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %100
  %114 = load i32, i32* %12, align 4
  %115 = call i32 @return_ACPI_STATUS(i32 %114)
  br label %116

116:                                              ; preds = %113, %100
  br label %117

117:                                              ; preds = %116, %97
  %118 = load i32, i32* @AE_AML_NO_RESOURCE_END_TAG, align 4
  %119 = call i32 @return_ACPI_STATUS(i32 %118)
  %120 = load i32, i32* %6, align 4
  ret i32 %120
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #2

declare dso_local i32 @return_ACPI_STATUS(i32) #2

declare dso_local i32 @AcpiUtValidateResource(i32*, i32*, i32*) #2

declare dso_local i64 @ACPI_FAILURE(i32) #2

declare dso_local i32 @AcpiUtGetDescriptorLength(i32*) #2

declare dso_local i64 @AcpiUtGetResourceType(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
