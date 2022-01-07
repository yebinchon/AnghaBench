; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_asllisting.c_LsDoListings.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_asllisting.c_LsDoListings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AslGbl_C_OutputFlag = common dso_local global i64 0, align 8
@ASL_FILE_C_SOURCE_OUTPUT = common dso_local global i32 0, align 4
@AslGbl_ListingFlag = common dso_local global i64 0, align 8
@ASL_FILE_LISTING_OUTPUT = common dso_local global i32 0, align 4
@AslGbl_AsmOutputFlag = common dso_local global i64 0, align 8
@ASL_FILE_ASM_SOURCE_OUTPUT = common dso_local global i32 0, align 4
@AslGbl_C_IncludeOutputFlag = common dso_local global i64 0, align 8
@ASL_FILE_C_INCLUDE_OUTPUT = common dso_local global i32 0, align 4
@AslGbl_AsmIncludeOutputFlag = common dso_local global i64 0, align 8
@ASL_FILE_ASM_INCLUDE_OUTPUT = common dso_local global i32 0, align 4
@AslGbl_C_OffsetTableFlag = common dso_local global i64 0, align 8
@ASL_FILE_C_OFFSET_OUTPUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LsDoListings() #0 {
  %1 = load i64, i64* @AslGbl_C_OutputFlag, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load i32, i32* @ASL_FILE_C_SOURCE_OUTPUT, align 4
  %5 = call i32 @LsGenerateListing(i32 %4)
  br label %6

6:                                                ; preds = %3, %0
  %7 = load i64, i64* @AslGbl_ListingFlag, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load i32, i32* @ASL_FILE_LISTING_OUTPUT, align 4
  %11 = call i32 @LsGenerateListing(i32 %10)
  br label %12

12:                                               ; preds = %9, %6
  %13 = load i64, i64* @AslGbl_AsmOutputFlag, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32, i32* @ASL_FILE_ASM_SOURCE_OUTPUT, align 4
  %17 = call i32 @LsGenerateListing(i32 %16)
  br label %18

18:                                               ; preds = %15, %12
  %19 = load i64, i64* @AslGbl_C_IncludeOutputFlag, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* @ASL_FILE_C_INCLUDE_OUTPUT, align 4
  %23 = call i32 @LsGenerateListing(i32 %22)
  br label %24

24:                                               ; preds = %21, %18
  %25 = load i64, i64* @AslGbl_AsmIncludeOutputFlag, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* @ASL_FILE_ASM_INCLUDE_OUTPUT, align 4
  %29 = call i32 @LsGenerateListing(i32 %28)
  br label %30

30:                                               ; preds = %27, %24
  %31 = load i64, i64* @AslGbl_C_OffsetTableFlag, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* @ASL_FILE_C_OFFSET_OUTPUT, align 4
  %35 = call i32 @LsGenerateListing(i32 %34)
  br label %36

36:                                               ; preds = %33, %30
  ret void
}

declare dso_local i32 @LsGenerateListing(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
