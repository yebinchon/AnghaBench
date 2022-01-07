; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_asllisting.c_LsFinishSourceListing.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_asllisting.c_LsFinishSourceListing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ASL_FILE_ASM_INCLUDE_OUTPUT = common dso_local global i64 0, align 8
@ASL_FILE_C_INCLUDE_OUTPUT = common dso_local global i64 0, align 8
@AslGbl_CurrentAmlOffset = common dso_local global i64 0, align 8
@ASL_FILE_C_SOURCE_OUTPUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"    /*\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"\0A     */\0A    };\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@ASL_FILE_LISTING_OUTPUT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"\0A\0ASummary of errors and warnings\0A\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @LsFinishSourceListing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LsFinishSourceListing(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = load i64, i64* @ASL_FILE_ASM_INCLUDE_OUTPUT, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load i64, i64* %2, align 8
  %8 = load i64, i64* @ASL_FILE_C_INCLUDE_OUTPUT, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %6, %1
  br label %51

11:                                               ; preds = %6
  %12 = load i64, i64* %2, align 8
  %13 = call i32 @LsFlushListingBuffer(i64 %12)
  store i64 0, i64* @AslGbl_CurrentAmlOffset, align 8
  %14 = load i64, i64* %2, align 8
  %15 = load i64, i64* @ASL_FILE_C_SOURCE_OUTPUT, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load i64, i64* %2, align 8
  %19 = call i32 @FlPrintFile(i64 %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %11
  br label %21

21:                                               ; preds = %25, %20
  %22 = load i64, i64* %2, align 8
  %23 = call i64 @LsWriteOneSourceLine(i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %21

26:                                               ; preds = %21
  %27 = load i64, i64* %2, align 8
  %28 = load i64, i64* @ASL_FILE_C_SOURCE_OUTPUT, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i64, i64* %2, align 8
  %32 = call i32 @FlPrintFile(i64 %31, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30, %26
  %34 = load i64, i64* %2, align 8
  %35 = call i32 @FlPrintFile(i64 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i64, i64* %2, align 8
  %37 = load i64, i64* @ASL_FILE_LISTING_OUTPUT, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %33
  %40 = load i64, i64* %2, align 8
  %41 = call i32 @FlPrintFile(i64 %40, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %42 = load i64, i64* %2, align 8
  %43 = call i32 @AePrintErrorLog(i64 %42)
  %44 = load i64, i64* %2, align 8
  %45 = call i32 @FlPrintFile(i64 %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i64, i64* %2, align 8
  %47 = load i32, i32* @TRUE, align 4
  %48 = call i32 @UtDisplayOneSummary(i64 %46, i32 %47)
  %49 = load i64, i64* %2, align 8
  %50 = call i32 @FlPrintFile(i64 %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %51

51:                                               ; preds = %10, %39, %33
  ret void
}

declare dso_local i32 @LsFlushListingBuffer(i64) #1

declare dso_local i32 @FlPrintFile(i64, i8*) #1

declare dso_local i64 @LsWriteOneSourceLine(i64) #1

declare dso_local i32 @AePrintErrorLog(i64) #1

declare dso_local i32 @UtDisplayOneSummary(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
