; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openpam/lib/libpam/extr_openpam_straddch.c_openpam_straddch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openpam/lib/libpam/extr_openpam_straddch.c_openpam_straddch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MIN_STR_SIZE = common dso_local global i64 0, align 8
@PAM_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"malloc(): %m\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"realloc(): %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @openpam_straddch(i8** %0, i64* %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store i8** %0, i8*** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i8**, i8*** %6, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %30

15:                                               ; preds = %4
  %16 = load i64, i64* @MIN_STR_SIZE, align 8
  store i64 %16, i64* %10, align 8
  %17 = load i64, i64* %10, align 8
  %18 = call i8* @malloc(i64 %17)
  store i8* %18, i8** %11, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load i32, i32* @PAM_LOG_ERROR, align 4
  %22 = call i32 @openpam_log(i32 %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ENOMEM, align 4
  store i32 %23, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %79

24:                                               ; preds = %15
  %25 = load i8*, i8** %11, align 8
  %26 = load i8**, i8*** %6, align 8
  store i8* %25, i8** %26, align 8
  %27 = load i64, i64* %10, align 8
  %28 = load i64*, i64** %7, align 8
  store i64 %27, i64* %28, align 8
  %29 = load i64*, i64** %8, align 8
  store i64 0, i64* %29, align 8
  br label %59

30:                                               ; preds = %4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %58

33:                                               ; preds = %30
  %34 = load i64*, i64** %8, align 8
  %35 = load i64, i64* %34, align 8
  %36 = add i64 %35, 1
  %37 = load i64*, i64** %7, align 8
  %38 = load i64, i64* %37, align 8
  %39 = icmp uge i64 %36, %38
  br i1 %39, label %40, label %58

40:                                               ; preds = %33
  %41 = load i64*, i64** %7, align 8
  %42 = load i64, i64* %41, align 8
  %43 = mul i64 %42, 2
  store i64 %43, i64* %10, align 8
  %44 = load i8**, i8*** %6, align 8
  %45 = load i8*, i8** %44, align 8
  %46 = load i64, i64* %10, align 8
  %47 = call i8* @realloc(i8* %45, i64 %46)
  store i8* %47, i8** %11, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %40
  %50 = load i32, i32* @PAM_LOG_ERROR, align 4
  %51 = call i32 @openpam_log(i32 %50, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* @ENOMEM, align 4
  store i32 %52, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %79

53:                                               ; preds = %40
  %54 = load i64, i64* %10, align 8
  %55 = load i64*, i64** %7, align 8
  store i64 %54, i64* %55, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = load i8**, i8*** %6, align 8
  store i8* %56, i8** %57, align 8
  br label %58

58:                                               ; preds = %53, %33, %30
  br label %59

59:                                               ; preds = %58, %24
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %59
  %63 = load i32, i32* %9, align 4
  %64 = trunc i32 %63 to i8
  %65 = load i8**, i8*** %6, align 8
  %66 = load i8*, i8** %65, align 8
  %67 = load i64*, i64** %8, align 8
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  store i8 %64, i8* %69, align 1
  %70 = load i64*, i64** %8, align 8
  %71 = load i64, i64* %70, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %70, align 8
  br label %73

73:                                               ; preds = %62, %59
  %74 = load i8**, i8*** %6, align 8
  %75 = load i8*, i8** %74, align 8
  %76 = load i64*, i64** %8, align 8
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  store i8 0, i8* %78, align 1
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %73, %49, %20
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @openpam_log(i32, i8*) #1

declare dso_local i8* @realloc(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
