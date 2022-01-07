; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_asllisting.c_LsGenerateListing.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_asllisting.c_LsGenerateListing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@ASL_WALK_VISIT_DOWNWARD = common dso_local global i64 0, align 8
@ASL_WALK_VISIT_DB_SEPARATELY = common dso_local global i64 0, align 8
@ASL_FILE_SOURCE_OUTPUT = common dso_local global i32 0, align 4
@ASL_FILE_AML_OUTPUT = common dso_local global i32 0, align 4
@AslGbl_SourceLine = common dso_local global i64 0, align 8
@AslGbl_CurrentHexColumn = common dso_local global i64 0, align 8
@AslGbl_Files = common dso_local global %struct.TYPE_2__* null, align 8
@ASL_FILE_INPUT = common dso_local global i64 0, align 8
@ASL_FILE_C_OFFSET_OUTPUT = common dso_local global i64 0, align 8
@AslGbl_CurrentAmlOffset = common dso_local global i64 0, align 8
@AslGbl_CurrentDB = common dso_local global i32 0, align 4
@LsAmlOffsetWalk = common dso_local global i32 0, align 4
@LsAmlListingWalk = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @LsGenerateListing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LsGenerateListing(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* @ASL_WALK_VISIT_DOWNWARD, align 8
  %5 = load i64, i64* @ASL_WALK_VISIT_DB_SEPARATELY, align 8
  %6 = or i64 %4, %5
  store i64 %6, i64* %3, align 8
  %7 = load i32, i32* @ASL_FILE_SOURCE_OUTPUT, align 4
  %8 = call i32 @FlSeekFile(i32 %7, i32 0)
  %9 = load i32, i32* @ASL_FILE_AML_OUTPUT, align 4
  %10 = call i32 @FlSeekFile(i32 %9, i32 0)
  store i64 0, i64* @AslGbl_SourceLine, align 8
  store i64 0, i64* @AslGbl_CurrentHexColumn, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @AslGbl_Files, align 8
  %12 = load i64, i64* @ASL_FILE_INPUT, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @LsPushNode(i32 %15)
  %17 = load i64, i64* %2, align 8
  %18 = load i64, i64* @ASL_FILE_C_OFFSET_OUTPUT, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %1
  store i64 0, i64* @AslGbl_CurrentAmlOffset, align 8
  %21 = load i64, i64* %2, align 8
  %22 = call i32 @LsDoOffsetTableHeader(i64 %21)
  %23 = load i32, i32* @AslGbl_CurrentDB, align 4
  %24 = load i64, i64* %3, align 8
  %25 = load i32, i32* @LsAmlOffsetWalk, align 4
  %26 = load i64, i64* %2, align 8
  %27 = call i64 @ACPI_TO_POINTER(i64 %26)
  %28 = inttoptr i64 %27 to i8*
  %29 = call i32 @TrWalkParseTree(i32 %23, i64 %24, i32 %25, i32* null, i8* %28)
  %30 = load i64, i64* %2, align 8
  %31 = call i32 @LsDoOffsetTableFooter(i64 %30)
  br label %42

32:                                               ; preds = %1
  %33 = load i32, i32* @AslGbl_CurrentDB, align 4
  %34 = load i64, i64* %3, align 8
  %35 = load i32, i32* @LsAmlListingWalk, align 4
  %36 = load i64, i64* %2, align 8
  %37 = call i64 @ACPI_TO_POINTER(i64 %36)
  %38 = inttoptr i64 %37 to i8*
  %39 = call i32 @TrWalkParseTree(i32 %33, i64 %34, i32 %35, i32* null, i8* %38)
  %40 = load i64, i64* %2, align 8
  %41 = call i32 @LsFinishSourceListing(i64 %40)
  br label %42

42:                                               ; preds = %32, %20
  ret void
}

declare dso_local i32 @FlSeekFile(i32, i32) #1

declare dso_local i32 @LsPushNode(i32) #1

declare dso_local i32 @LsDoOffsetTableHeader(i64) #1

declare dso_local i32 @TrWalkParseTree(i32, i64, i32, i32*, i8*) #1

declare dso_local i64 @ACPI_TO_POINTER(i64) #1

declare dso_local i32 @LsDoOffsetTableFooter(i64) #1

declare dso_local i32 @LsFinishSourceListing(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
