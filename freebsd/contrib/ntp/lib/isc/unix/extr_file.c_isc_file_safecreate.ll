; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_file.c_isc_file_safecreate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_file.c_isc_file_safecreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@ISC_R_SUCCESS = common dso_local global i64 0, align 8
@S_IFREG = common dso_local global i32 0, align 4
@ISC_R_INVALIDFILE = common dso_local global i64 0, align 8
@O_WRONLY = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@ISC_R_FILENOTFOUND = common dso_local global i64 0, align 8
@O_CREAT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @isc_file_safecreate(i8* %0, i32** %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.stat, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32** %1, i32*** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = icmp ne i8* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @REQUIRE(i32 %13)
  %15 = load i32**, i32*** %5, align 8
  %16 = icmp ne i32** %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32**, i32*** %5, align 8
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br label %21

21:                                               ; preds = %17, %2
  %22 = phi i1 [ false, %2 ], [ %20, %17 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @REQUIRE(i32 %23)
  %25 = load i8*, i8** %4, align 8
  %26 = call i64 @file_stats(i8* %25, %struct.stat* %8)
  store i64 %26, i64* %6, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* @ISC_R_SUCCESS, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @S_IFREG, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i64, i64* @ISC_R_INVALIDFILE, align 8
  store i64 %37, i64* %3, align 8
  br label %82

38:                                               ; preds = %30
  %39 = load i32, i32* @O_WRONLY, align 4
  %40 = load i32, i32* @O_TRUNC, align 4
  %41 = or i32 %39, %40
  store i32 %41, i32* %7, align 4
  br label %55

42:                                               ; preds = %21
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* @ISC_R_FILENOTFOUND, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load i32, i32* @O_WRONLY, align 4
  %48 = load i32, i32* @O_CREAT, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @O_EXCL, align 4
  %51 = or i32 %49, %50
  store i32 %51, i32* %7, align 4
  br label %54

52:                                               ; preds = %42
  %53 = load i64, i64* %6, align 8
  store i64 %53, i64* %3, align 8
  br label %82

54:                                               ; preds = %46
  br label %55

55:                                               ; preds = %54, %38
  %56 = load i8*, i8** %4, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @S_IRUSR, align 4
  %59 = load i32, i32* @S_IWUSR, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @open(i8* %56, i32 %57, i32 %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %67

64:                                               ; preds = %55
  %65 = load i32, i32* @errno, align 4
  %66 = call i64 @isc__errno2result(i32 %65)
  store i64 %66, i64* %3, align 8
  br label %82

67:                                               ; preds = %55
  %68 = load i32, i32* %10, align 4
  %69 = call i32* @fdopen(i32 %68, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %69, i32** %9, align 8
  %70 = load i32*, i32** %9, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load i32, i32* @errno, align 4
  %74 = call i64 @isc__errno2result(i32 %73)
  store i64 %74, i64* %6, align 8
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @close(i32 %75)
  %77 = load i64, i64* %6, align 8
  store i64 %77, i64* %3, align 8
  br label %82

78:                                               ; preds = %67
  %79 = load i32*, i32** %9, align 8
  %80 = load i32**, i32*** %5, align 8
  store i32* %79, i32** %80, align 8
  %81 = load i64, i64* @ISC_R_SUCCESS, align 8
  store i64 %81, i64* %3, align 8
  br label %82

82:                                               ; preds = %78, %72, %64, %52, %36
  %83 = load i64, i64* %3, align 8
  ret i64 %83
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i64 @file_stats(i8*, %struct.stat*) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i64 @isc__errno2result(i32) #1

declare dso_local i32* @fdopen(i32, i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
