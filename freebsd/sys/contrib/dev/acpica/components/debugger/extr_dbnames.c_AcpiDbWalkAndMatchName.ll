; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/debugger/extr_dbnames.c_AcpiDbWalkAndMatchName.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/debugger/extr_dbnames.c_AcpiDbWalkAndMatchName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8* }

@AE_OK = common dso_local global i32 0, align 4
@ACPI_ALLOCATE_LOCAL_BUFFER = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Could Not get pathname for object %p\0A\00", align 1
@ACPI_OWNER_ID_MAX = common dso_local global i32 0, align 4
@ACPI_UINT32_MAX = common dso_local global i32 0, align 4
@ACPI_DISPLAY_SUMMARY = common dso_local global i32 0, align 4
@ACPI_DISPLAY_SHORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%32s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i8**)* @AcpiDbWalkAndMatchName to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AcpiDbWalkAndMatchName(i8* %0, i32 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_10__, align 8
  %14 = alloca %struct.TYPE_8__, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %15 = load i8*, i8** %8, align 8
  store i8* %15, i8** %11, align 8
  store i32 0, i32* %12, align 4
  br label %16

16:                                               ; preds = %48, %4
  %17 = load i32, i32* %12, align 4
  %18 = icmp slt i32 %17, 4
  br i1 %18, label %19, label %51

19:                                               ; preds = %16
  %20 = load i8*, i8** %11, align 8
  %21 = load i32, i32* %12, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 63
  br i1 %26, label %27, label %47

27:                                               ; preds = %19
  %28 = load i8*, i8** %11, align 8
  %29 = load i32, i32* %12, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = load i8*, i8** %6, align 8
  %35 = bitcast i8* %34 to %struct.TYPE_9__*
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %33, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %27
  %46 = load i32, i32* @AE_OK, align 4
  store i32 %46, i32* %5, align 4
  br label %85

47:                                               ; preds = %27, %19
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %12, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %12, align 4
  br label %16

51:                                               ; preds = %16
  %52 = load i32, i32* @ACPI_ALLOCATE_LOCAL_BUFFER, align 4
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  store i32 %52, i32* %53, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = load i32, i32* @TRUE, align 4
  %56 = call i32 @AcpiNsHandleToPathname(i8* %54, %struct.TYPE_10__* %13, i32 %55)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = call i64 @ACPI_FAILURE(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %51
  %61 = load i8*, i8** %6, align 8
  %62 = call i32 @AcpiOsPrintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %61)
  br label %83

63:                                               ; preds = %51
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 3
  store i64 0, i64* %64, align 8
  %65 = load i32, i32* @ACPI_OWNER_ID_MAX, align 4
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 2
  store i32 %65, i32* %66, align 8
  %67 = load i32, i32* @ACPI_UINT32_MAX, align 4
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  store i32 %67, i32* %68, align 4
  %69 = load i32, i32* @ACPI_DISPLAY_SUMMARY, align 4
  %70 = load i32, i32* @ACPI_DISPLAY_SHORT, align 4
  %71 = or i32 %69, %70
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  store i32 %71, i32* %72, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to i8*
  %76 = call i32 @AcpiOsPrintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %75)
  %77 = load i8*, i8** %6, align 8
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @AcpiNsDumpOneObject(i8* %77, i32 %78, %struct.TYPE_8__* %14, i32* null)
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @ACPI_FREE(i64 %81)
  br label %83

83:                                               ; preds = %63, %60
  %84 = load i32, i32* @AE_OK, align 4
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %83, %45
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i32 @AcpiNsHandleToPathname(i8*, %struct.TYPE_10__*, i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @AcpiOsPrintf(i8*, i8*) #1

declare dso_local i32 @AcpiNsDumpOneObject(i8*, i32, %struct.TYPE_8__*, i32*) #1

declare dso_local i32 @ACPI_FREE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
