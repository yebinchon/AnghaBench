; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_asllisting.c_LsAmlListingWalk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_asllisting.c_LsAmlListingWalk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64 }

@OP_IS_RESOURCE_DATA = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@ASL_FILE_ASM_INCLUDE_OUTPUT = common dso_local global i64 0, align 8
@ASL_FILE_C_INCLUDE_OUTPUT = common dso_local global i64 0, align 8
@ASL_FILE_AML_OUTPUT = common dso_local global i32 0, align 4
@ASL_MSG_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i64, i8*)* @LsAmlListingWalk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LsAmlListingWalk(%struct.TYPE_6__* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = call i32 @ACPI_TO_INTEGER(i8* %11)
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %10, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %15 = load i64, i64* %10, align 8
  %16 = call i32 @LsWriteNodeToListing(%struct.TYPE_6__* %14, i64 %15)
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @OP_IS_RESOURCE_DATA, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* @AE_OK, align 4
  store i32 %25, i32* %4, align 4
  br label %62

26:                                               ; preds = %3
  %27 = load i64, i64* %10, align 8
  %28 = load i64, i64* @ASL_FILE_ASM_INCLUDE_OUTPUT, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* @ASL_FILE_C_INCLUDE_OUTPUT, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30, %26
  %35 = load i32, i32* @AE_OK, align 4
  store i32 %35, i32* %4, align 4
  br label %62

36:                                               ; preds = %30
  store i64 0, i64* %9, align 8
  br label %37

37:                                               ; preds = %57, %36
  %38 = load i64, i64* %9, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp slt i64 %38, %42
  br i1 %43, label %44, label %60

44:                                               ; preds = %37
  %45 = load i32, i32* @ASL_FILE_AML_OUTPUT, align 4
  %46 = call i32 @FlReadFile(i32 %45, i32* %8, i32 1)
  %47 = call i64 @ACPI_FAILURE(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load i32, i32* @ASL_FILE_AML_OUTPUT, align 4
  %51 = load i32, i32* @ASL_MSG_READ, align 4
  %52 = call i32 @FlFileError(i32 %50, i32 %51)
  %53 = call i32 (...) @AslAbort()
  br label %54

54:                                               ; preds = %49, %44
  %55 = load i64, i64* %10, align 8
  %56 = call i32 @LsWriteListingHexBytes(i32* %8, i32 1, i64 %55)
  br label %57

57:                                               ; preds = %54
  %58 = load i64, i64* %9, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %9, align 8
  br label %37

60:                                               ; preds = %37
  %61 = load i32, i32* @AE_OK, align 4
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %60, %34, %24
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @ACPI_TO_INTEGER(i8*) #1

declare dso_local i32 @LsWriteNodeToListing(%struct.TYPE_6__*, i64) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @FlReadFile(i32, i32*, i32) #1

declare dso_local i32 @FlFileError(i32, i32) #1

declare dso_local i32 @AslAbort(...) #1

declare dso_local i32 @LsWriteListingHexBytes(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
