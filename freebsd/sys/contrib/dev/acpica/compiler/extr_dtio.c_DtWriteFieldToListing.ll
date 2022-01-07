; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_dtio.c_DtWriteFieldToListing.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_dtio.c_DtWriteFieldToListing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i64, i32 }

@AslGbl_ListingFlag = common dso_local global i32 0, align 4
@ASL_FILE_LISTING_OUTPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"Input:  \00", align 1
@ASL_FILE_INPUT = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"Parsed: %*s : %.64s\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"...Additional data, length 0x%X\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DtWriteFieldToListing(i8* %0, %struct.TYPE_3__* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @AslGbl_ListingFlag, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %12 = icmp ne %struct.TYPE_3__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %10, %3
  br label %70

14:                                               ; preds = %10
  %15 = load i32, i32* @ASL_FILE_LISTING_OUTPUT, align 4
  %16 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ASL_FILE_INPUT, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @FlSeekFile(i32 %17, i32 %20)
  br label %22

22:                                               ; preds = %34, %14
  %23 = load i32, i32* @ASL_FILE_INPUT, align 4
  %24 = call i64 @FlReadFile(i32 %23, i8* %7, i32 1)
  %25 = load i64, i64* @AE_OK, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load i32, i32* @ASL_FILE_LISTING_OUTPUT, align 4
  %29 = call i32 @FlWriteFile(i32 %28, i8* %7, i32 1)
  %30 = load i8, i8* %7, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 10
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %35

34:                                               ; preds = %27
  br label %22

35:                                               ; preds = %33, %22
  %36 = load i32, i32* @ASL_FILE_LISTING_OUTPUT, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = sub nsw i64 %39, 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %36, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %40, i32 %43, i32 %46)
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @strlen(i32 %50)
  %52 = icmp sgt i32 %51, 64
  br i1 %52, label %53, label %60

53:                                               ; preds = %35
  %54 = load i32, i32* @ASL_FILE_LISTING_OUTPUT, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @strlen(i32 %57)
  %59 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %54, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %53, %35
  %61 = load i32, i32* @ASL_FILE_LISTING_OUTPUT, align 4
  %62 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %63 = load i32, i32* @ASL_FILE_LISTING_OUTPUT, align 4
  %64 = load i8*, i8** %4, align 8
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @DtDumpBuffer(i32 %63, i8* %64, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %60, %13
  ret void
}

declare dso_local i32 @FlPrintFile(i32, i8*, ...) #1

declare dso_local i32 @FlSeekFile(i32, i32) #1

declare dso_local i64 @FlReadFile(i32, i8*, i32) #1

declare dso_local i32 @FlWriteFile(i32, i8*, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @DtDumpBuffer(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
