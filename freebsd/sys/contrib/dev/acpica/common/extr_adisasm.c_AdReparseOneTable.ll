; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/common/extr_adisasm.c_AdReparseOneTable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/common/extr_adisasm.c_AdReparseOneTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32*, i32*, i32*, i32*, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_7__* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"\0AFound %u external control methods, reparsing with new information\0A\00", align 1
@AcpiGbl_ParseOpRoot = common dso_local global i32* null, align 8
@AcpiGbl_RootNode = common dso_local global i32* null, align 8
@ACPI_ROOT_NAME = common dso_local global i32 0, align 4
@AcpiGbl_RootNodeStruct = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@ACPI_DESC_TYPE_NAMED = common dso_local global i32 0, align 4
@ACPI_TYPE_DEVICE = common dso_local global i32 0, align 4
@AcpiGbl_CommentAddrListHead = common dso_local global %struct.TYPE_7__* null, align 8
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Could not parse ACPI tables, %s\0A\00", align 1
@AslCompilerdebug = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [49 x i8] c"/**** After second load and resource conversion\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"*****/\0A\00", align 1
@AE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @AdReparseOneTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AdReparseOneTable(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @stderr, align 4
  %11 = call i32 (...) @AcpiDmGetUnresolvedExternalMethodCount()
  %12 = call i32 @fprintf(i32 %10, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32*, i32** @AcpiGbl_ParseOpRoot, align 8
  %14 = call i32 @AcpiPsDeleteParseTree(i32* %13)
  store i32* null, i32** @AcpiGbl_ParseOpRoot, align 8
  %15 = load i32*, i32** @AcpiGbl_RootNode, align 8
  %16 = call i32 @AcpiNsDeleteNamespaceSubtree(i32* %15)
  store i32* null, i32** @AcpiGbl_RootNode, align 8
  %17 = load i32, i32* @ACPI_ROOT_NAME, align 4
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @AcpiGbl_RootNodeStruct, i32 0, i32 7, i32 0), align 8
  %18 = load i32, i32* @ACPI_DESC_TYPE_NAMED, align 4
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @AcpiGbl_RootNodeStruct, i32 0, i32 6), align 4
  %19 = load i32, i32* @ACPI_TYPE_DEVICE, align 4
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @AcpiGbl_RootNodeStruct, i32 0, i32 5), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @AcpiGbl_RootNodeStruct, i32 0, i32 4), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @AcpiGbl_RootNodeStruct, i32 0, i32 3), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @AcpiGbl_RootNodeStruct, i32 0, i32 2), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @AcpiGbl_RootNodeStruct, i32 0, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @AcpiGbl_RootNodeStruct, i32 0, i32 0), align 8
  %20 = call i32 (...) @AcpiNsRootInitialize()
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i64 @ACPI_FAILURE(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %4, align 4
  br label %76

26:                                               ; preds = %3
  %27 = call i32 (...) @AcpiDmAddExternalListToNamespace()
  br label %28

28:                                               ; preds = %31, %26
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** @AcpiGbl_CommentAddrListHead, align 8
  %30 = icmp ne %struct.TYPE_7__* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** @AcpiGbl_CommentAddrListHead, align 8
  store %struct.TYPE_7__* %32, %struct.TYPE_7__** %9, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** @AcpiGbl_CommentAddrListHead, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  store %struct.TYPE_7__* %35, %struct.TYPE_7__** @AcpiGbl_CommentAddrListHead, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %37 = call i32 @AcpiOsFree(%struct.TYPE_7__* %36)
  br label %28

38:                                               ; preds = %28
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* @FALSE, align 4
  %41 = load i32, i32* @FALSE, align 4
  %42 = call i32 @AdParseTable(i32* %39, i32* null, i32 %40, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i64 @ACPI_FAILURE(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %38
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @AcpiFormatException(i32 %47)
  %49 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %4, align 4
  br label %76

51:                                               ; preds = %38
  %52 = load i32*, i32** @AcpiGbl_ParseOpRoot, align 8
  %53 = load i32*, i32** @AcpiGbl_RootNode, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @AcpiDmFinishNamespaceLoad(i32* %52, i32* %53, i32 %54)
  %56 = load i32*, i32** @AcpiGbl_ParseOpRoot, align 8
  %57 = load i32*, i32** @AcpiGbl_RootNode, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @AcpiDmCrossReferenceNamespace(i32* %56, i32* %57, i32 %58)
  %60 = load i64, i64* @AslCompilerdebug, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %51
  %63 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %64 = load i32*, i32** %6, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load i32*, i32** %6, align 8
  %68 = call i32 @NsSetupNamespaceListing(i32* %67)
  %69 = call i32 (...) @NsDisplayNamespace()
  br label %70

70:                                               ; preds = %66, %62
  %71 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %72 = load i32*, i32** @AcpiGbl_ParseOpRoot, align 8
  %73 = call i32 @AcpiDmDumpTree(i32* %72)
  br label %74

74:                                               ; preds = %70, %51
  %75 = load i32, i32* @AE_OK, align 4
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %74, %46, %24
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @AcpiDmGetUnresolvedExternalMethodCount(...) #1

declare dso_local i32 @AcpiPsDeleteParseTree(i32*) #1

declare dso_local i32 @AcpiNsDeleteNamespaceSubtree(i32*) #1

declare dso_local i32 @AcpiNsRootInitialize(...) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @AcpiDmAddExternalListToNamespace(...) #1

declare dso_local i32 @AcpiOsFree(%struct.TYPE_7__*) #1

declare dso_local i32 @AdParseTable(i32*, i32*, i32, i32) #1

declare dso_local i32 @AcpiOsPrintf(i8*, ...) #1

declare dso_local i32 @AcpiFormatException(i32) #1

declare dso_local i32 @AcpiDmFinishNamespaceLoad(i32*, i32*, i32) #1

declare dso_local i32 @AcpiDmCrossReferenceNamespace(i32*, i32*, i32) #1

declare dso_local i32 @NsSetupNamespaceListing(i32*) #1

declare dso_local i32 @NsDisplayNamespace(...) #1

declare dso_local i32 @AcpiDmDumpTree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
