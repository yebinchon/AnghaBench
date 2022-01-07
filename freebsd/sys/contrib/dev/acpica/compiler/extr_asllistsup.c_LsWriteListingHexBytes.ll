; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_asllistsup.c_LsWriteListingHexBytes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_asllistsup.c_LsWriteListingHexBytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AslGbl_CurrentHexColumn = common dso_local global i64 0, align 8
@AslGbl_HasIncludeFiles = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%*s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%8.8X%s\00", align 1
@AslGbl_CurrentAmlOffset = common dso_local global i32 0, align 4
@ASL_LISTING_LINE_PREFIX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"    db \00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"        \00", align 1
@AslGbl_AmlBuffer = common dso_local global i32* null, align 8
@HEX_LISTING_LINE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LsWriteListingHexBytes(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %56, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %59

12:                                               ; preds = %8
  %13 = load i64, i64* @AslGbl_CurrentHexColumn, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %36

15:                                               ; preds = %12
  %16 = load i64, i64* @AslGbl_HasIncludeFiles, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32, i32* %6, align 4
  %20 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %18, %15
  %22 = load i32, i32* %6, align 4
  switch i32 %22, label %34 [
    i32 128, label %23
    i32 130, label %28
    i32 129, label %31
  ]

23:                                               ; preds = %21
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @AslGbl_CurrentAmlOffset, align 4
  %26 = load i32, i32* @ASL_LISTING_LINE_PREFIX, align 4
  %27 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %25, i32 %26)
  br label %35

28:                                               ; preds = %21
  %29 = load i32, i32* %6, align 4
  %30 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %35

31:                                               ; preds = %21
  %32 = load i32, i32* %6, align 4
  %33 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  br label %35

34:                                               ; preds = %21
  br label %59

35:                                               ; preds = %31, %28, %23
  br label %36

36:                                               ; preds = %35, %12
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** @AslGbl_AmlBuffer, align 8
  %43 = load i64, i64* @AslGbl_CurrentHexColumn, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  store i32 %41, i32* %44, align 4
  %45 = load i64, i64* @AslGbl_CurrentHexColumn, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* @AslGbl_CurrentHexColumn, align 8
  %47 = load i32, i32* @AslGbl_CurrentAmlOffset, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* @AslGbl_CurrentAmlOffset, align 4
  %49 = load i64, i64* @AslGbl_CurrentHexColumn, align 8
  %50 = load i64, i64* @HEX_LISTING_LINE_SIZE, align 8
  %51 = icmp uge i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %36
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @LsFlushListingBuffer(i32 %53)
  br label %55

55:                                               ; preds = %52, %36
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %8

59:                                               ; preds = %34, %8
  ret void
}

declare dso_local i32 @FlPrintFile(i32, i8*, ...) #1

declare dso_local i32 @LsFlushListingBuffer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
