; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslpredef.c_ApCheckObjectType.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslpredef.c_ApCheckObjectType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@AE_TYPE = common dso_local global i32 0, align 4
@ACPI_RTYPE_INTEGER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Integer\00", align 1
@ACPI_RTYPE_STRING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"String\00", align 1
@ACPI_RTYPE_BUFFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"Buffer\00", align 1
@ACPI_RTYPE_PACKAGE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"Package\00", align 1
@ACPI_NOT_PACKAGE_ELEMENT = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@ACPI_RTYPE_REFERENCE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"Reference\00", align 1
@AslGbl_StringBuffer = common dso_local global i8* null, align 8
@AslGbl_MsgBuffer = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"%4.4s: found %s, %s required\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"%4.4s: found %s at index %u, %s required\00", align 1
@ASL_ERROR = common dso_local global i32 0, align 4
@ASL_MSG_RESERVED_OPERAND_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ApCheckObjectType(i8* %0, %struct.TYPE_6__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %13 = icmp ne %struct.TYPE_6__* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* @AE_TYPE, align 4
  store i32 %15, i32* %5, align 4
  br label %78

16:                                               ; preds = %4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %37 [
    i32 128, label %21
    i32 133, label %21
    i32 132, label %21
    i32 136, label %21
    i32 130, label %23
    i32 137, label %25
    i32 131, label %27
    i32 129, label %27
    i32 135, label %29
    i32 134, label %29
  ]

21:                                               ; preds = %16, %16, %16, %16
  %22 = load i32, i32* @ACPI_RTYPE_INTEGER, align 4
  store i32 %22, i32* %10, align 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  br label %43

23:                                               ; preds = %16
  %24 = load i32, i32* @ACPI_RTYPE_STRING, align 4
  store i32 %24, i32* %10, align 4
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  br label %43

25:                                               ; preds = %16
  %26 = load i32, i32* @ACPI_RTYPE_BUFFER, align 4
  store i32 %26, i32* %10, align 4
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  br label %43

27:                                               ; preds = %16, %16
  %28 = load i32, i32* @ACPI_RTYPE_PACKAGE, align 4
  store i32 %28, i32* %10, align 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %11, align 8
  br label %43

29:                                               ; preds = %16, %16
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @ACPI_NOT_PACKAGE_ELEMENT, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @AE_OK, align 4
  store i32 %34, i32* %5, align 4
  br label %78

35:                                               ; preds = %29
  %36 = load i32, i32* @ACPI_RTYPE_REFERENCE, align 4
  store i32 %36, i32* %10, align 4
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** %11, align 8
  br label %43

37:                                               ; preds = %16
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @UtGetOpName(i32 %41)
  store i8* %42, i8** %11, align 8
  br label %51

43:                                               ; preds = %35, %27, %25, %23, %21
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %8, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* @AE_OK, align 4
  store i32 %49, i32* %5, align 4
  br label %78

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %50, %37
  %52 = load i8*, i8** @AslGbl_StringBuffer, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @AcpiUtGetExpectedReturnTypes(i8* %52, i32 %53)
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @ACPI_NOT_PACKAGE_ELEMENT, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %51
  %59 = load i32, i32* @AslGbl_MsgBuffer, align 4
  %60 = load i8*, i8** %6, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = load i8*, i8** @AslGbl_StringBuffer, align 8
  %63 = call i32 (i32, i8*, i8*, i8*, ...) @sprintf(i32 %59, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i8* %60, i8* %61, i8* %62)
  br label %71

64:                                               ; preds = %51
  %65 = load i32, i32* @AslGbl_MsgBuffer, align 4
  %66 = load i8*, i8** %6, align 8
  %67 = load i8*, i8** %11, align 8
  %68 = load i32, i32* %9, align 4
  %69 = load i8*, i8** @AslGbl_StringBuffer, align 8
  %70 = call i32 (i32, i8*, i8*, i8*, ...) @sprintf(i32 %65, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i8* %66, i8* %67, i32 %68, i8* %69)
  br label %71

71:                                               ; preds = %64, %58
  %72 = load i32, i32* @ASL_ERROR, align 4
  %73 = load i32, i32* @ASL_MSG_RESERVED_OPERAND_TYPE, align 4
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %75 = load i32, i32* @AslGbl_MsgBuffer, align 4
  %76 = call i32 @AslError(i32 %72, i32 %73, %struct.TYPE_6__* %74, i32 %75)
  %77 = load i32, i32* @AE_TYPE, align 4
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %71, %48, %33, %14
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i8* @UtGetOpName(i32) #1

declare dso_local i32 @AcpiUtGetExpectedReturnTypes(i8*, i32) #1

declare dso_local i32 @sprintf(i32, i8*, i8*, i8*, ...) #1

declare dso_local i32 @AslError(i32, i32, %struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
