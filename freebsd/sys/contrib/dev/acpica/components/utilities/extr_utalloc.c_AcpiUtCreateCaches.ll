; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/utilities/extr_utalloc.c_AcpiUtCreateCaches.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/utilities/extr_utalloc.c_AcpiUtCreateCaches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"Acpi-Namespace\00", align 1
@ACPI_MAX_NAMESPACE_CACHE_DEPTH = common dso_local global i32 0, align 4
@AcpiGbl_NamespaceCache = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"Acpi-State\00", align 1
@ACPI_MAX_STATE_CACHE_DEPTH = common dso_local global i32 0, align 4
@AcpiGbl_StateCache = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"Acpi-Parse\00", align 1
@ACPI_MAX_PARSE_CACHE_DEPTH = common dso_local global i32 0, align 4
@AcpiGbl_PsNodeCache = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"Acpi-ParseExt\00", align 1
@ACPI_MAX_EXTPARSE_CACHE_DEPTH = common dso_local global i32 0, align 4
@AcpiGbl_PsNodeExtCache = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"Acpi-Operand\00", align 1
@ACPI_MAX_OBJECT_CACHE_DEPTH = common dso_local global i32 0, align 4
@AcpiGbl_OperandCache = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@ACPI_MAX_COMMENT_CACHE_DEPTH = common dso_local global i32 0, align 4
@AcpiGbl_CommentAddrCache = common dso_local global i32 0, align 4
@AcpiGbl_FileCache = common dso_local global i32 0, align 4
@AcpiGbl_GlobalList = common dso_local global i32 0, align 4
@AcpiGbl_NsNodeList = common dso_local global i32 0, align 4
@AcpiGbl_RegCommentCache = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiUtCreateCaches() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @ACPI_MAX_NAMESPACE_CACHE_DEPTH, align 4
  %4 = call i32 @AcpiOsCreateCache(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 4, i32 %3, i32* @AcpiGbl_NamespaceCache)
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i64 @ACPI_FAILURE(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = load i32, i32* %2, align 4
  store i32 %9, i32* %1, align 4
  br label %44

10:                                               ; preds = %0
  %11 = load i32, i32* @ACPI_MAX_STATE_CACHE_DEPTH, align 4
  %12 = call i32 @AcpiOsCreateCache(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 4, i32 %11, i32* @AcpiGbl_StateCache)
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = call i64 @ACPI_FAILURE(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = load i32, i32* %2, align 4
  store i32 %17, i32* %1, align 4
  br label %44

18:                                               ; preds = %10
  %19 = load i32, i32* @ACPI_MAX_PARSE_CACHE_DEPTH, align 4
  %20 = call i32 @AcpiOsCreateCache(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 4, i32 %19, i32* @AcpiGbl_PsNodeCache)
  store i32 %20, i32* %2, align 4
  %21 = load i32, i32* %2, align 4
  %22 = call i64 @ACPI_FAILURE(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* %2, align 4
  store i32 %25, i32* %1, align 4
  br label %44

26:                                               ; preds = %18
  %27 = load i32, i32* @ACPI_MAX_EXTPARSE_CACHE_DEPTH, align 4
  %28 = call i32 @AcpiOsCreateCache(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 4, i32 %27, i32* @AcpiGbl_PsNodeExtCache)
  store i32 %28, i32* %2, align 4
  %29 = load i32, i32* %2, align 4
  %30 = call i64 @ACPI_FAILURE(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* %2, align 4
  store i32 %33, i32* %1, align 4
  br label %44

34:                                               ; preds = %26
  %35 = load i32, i32* @ACPI_MAX_OBJECT_CACHE_DEPTH, align 4
  %36 = call i32 @AcpiOsCreateCache(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 4, i32 %35, i32* @AcpiGbl_OperandCache)
  store i32 %36, i32* %2, align 4
  %37 = load i32, i32* %2, align 4
  %38 = call i64 @ACPI_FAILURE(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* %2, align 4
  store i32 %41, i32* %1, align 4
  br label %44

42:                                               ; preds = %34
  %43 = load i32, i32* @AE_OK, align 4
  store i32 %43, i32* %1, align 4
  br label %44

44:                                               ; preds = %42, %40, %32, %24, %16, %8
  %45 = load i32, i32* %1, align 4
  ret i32 %45
}

declare dso_local i32 @AcpiOsCreateCache(i8*, i32, i32, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
