; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/common/extr_dmextern.c_AcpiDmAddOpToExternalList.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/common/extr_dmextern.c_AcpiDmAddOpToExternalList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DmAddOpToExternalList = common dso_local global i32 0, align 4
@return_VOID = common dso_local global i32 0, align 4
@AML_ROOT_PREFIX = common dso_local global i8 0, align 1
@ACPI_UINT32_MAX = common dso_local global i32 0, align 4
@AML_PARENT_PREFIX = common dso_local global i64 0, align 8
@ACPI_EXT_INTERNAL_PATH_ALLOCATED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AcpiDmAddOpToExternalList(i32* %0, i8* %1, i8 signext %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8 %2, i8* %8, align 1
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load i8*, i8** %7, align 8
  store i8* %15, i8** %12, align 8
  %16 = load i32, i32* @DmAddOpToExternalList, align 4
  %17 = call i32 @ACPI_FUNCTION_TRACE(i32 %16)
  %18 = load i8*, i8** %7, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* @return_VOID, align 4
  br label %22

22:                                               ; preds = %20, %5
  %23 = load i8*, i8** %7, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = load i8, i8* @AML_ROOT_PREFIX, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %22
  %30 = load i8*, i8** %7, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i8*, i8** %7, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %7, align 8
  br label %38

38:                                               ; preds = %35, %29, %22
  %39 = load i32, i32* @ACPI_UINT32_MAX, align 4
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 @AcpiNsExternalizeName(i32 %39, i8* %40, i32* null, i8** %11)
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %14, align 4
  %43 = call i64 @ACPI_FAILURE(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* @return_VOID, align 4
  br label %47

47:                                               ; preds = %45, %38
  %48 = load i8*, i8** %7, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = load i64, i64* @AML_PARENT_PREFIX, align 8
  %52 = trunc i64 %51 to i8
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %50, %53
  br i1 %54, label %55, label %80

55:                                               ; preds = %47
  %56 = load i32*, i32** %6, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = call i8* @AcpiDmNormalizeParentPrefix(i32* %56, i8* %57)
  store i8* %58, i8** %13, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = call i32 @ACPI_FREE(i8* %59)
  %61 = load i8*, i8** %13, align 8
  store i8* %61, i8** %11, align 8
  %62 = load i8*, i8** %13, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %55
  %65 = load i32, i32* @return_VOID, align 4
  br label %66

66:                                               ; preds = %64, %55
  %67 = load i32, i32* @ACPI_EXT_INTERNAL_PATH_ALLOCATED, align 4
  %68 = load i32, i32* %10, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %10, align 4
  %70 = load i8*, i8** %11, align 8
  %71 = call i32 @AcpiNsInternalizeName(i8* %70, i8** %12)
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %14, align 4
  %73 = call i64 @ACPI_FAILURE(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %66
  %76 = load i8*, i8** %11, align 8
  %77 = call i32 @ACPI_FREE(i8* %76)
  %78 = load i32, i32* @return_VOID, align 4
  br label %79

79:                                               ; preds = %75, %66
  br label %80

80:                                               ; preds = %79, %47
  %81 = load i8*, i8** %11, align 8
  %82 = load i8*, i8** %12, align 8
  %83 = load i8, i8* %8, align 1
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @AcpiDmCreateNewExternal(i8* %81, i8* %82, i8 signext %83, i32 %84, i32 %85)
  store i32 %86, i32* %14, align 4
  %87 = load i32, i32* %14, align 4
  %88 = call i64 @ACPI_FAILURE(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %101

90:                                               ; preds = %80
  %91 = load i8*, i8** %11, align 8
  %92 = call i32 @ACPI_FREE(i8* %91)
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* @ACPI_EXT_INTERNAL_PATH_ALLOCATED, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %90
  %98 = load i8*, i8** %12, align 8
  %99 = call i32 @ACPI_FREE(i8* %98)
  br label %100

100:                                              ; preds = %97, %90
  br label %101

101:                                              ; preds = %100, %80
  %102 = load i32, i32* @return_VOID, align 4
  ret void
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @AcpiNsExternalizeName(i32, i8*, i32*, i8**) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i8* @AcpiDmNormalizeParentPrefix(i32*, i8*) #1

declare dso_local i32 @ACPI_FREE(i8*) #1

declare dso_local i32 @AcpiNsInternalizeName(i8*, i8**) #1

declare dso_local i32 @AcpiDmCreateNewExternal(i8*, i8*, i8 signext, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
