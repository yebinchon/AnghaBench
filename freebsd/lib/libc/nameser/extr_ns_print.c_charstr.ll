; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/nameser/extr_ns_print.c_charstr.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/nameser/extr_ns_print.c_charstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"\0A\22\\\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8**, i64*)* @charstr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @charstr(i32* %0, i32* %1, i8** %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i64* %3, i64** %9, align 8
  %14 = load i32*, i32** %6, align 8
  store i32* %14, i32** %10, align 8
  %15 = load i64*, i64** %9, align 8
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %11, align 8
  %17 = load i8**, i8*** %8, align 8
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %12, align 8
  %19 = load i8**, i8*** %8, align 8
  %20 = load i64*, i64** %9, align 8
  %21 = call i64 @addstr(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1, i8** %19, i64* %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  br label %84

24:                                               ; preds = %4
  %25 = load i32*, i32** %6, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = icmp ult i32* %25, %26
  br i1 %27, label %28, label %70

28:                                               ; preds = %24
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %13, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %13, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32*, i32** %7, align 8
  %37 = icmp ule i32* %35, %36
  br i1 %37, label %38, label %69

38:                                               ; preds = %28
  %39 = load i32*, i32** %6, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %6, align 8
  br label %41

41:                                               ; preds = %65, %38
  %42 = load i32, i32* %13, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %13, align 4
  %44 = icmp sgt i32 %42, 0
  br i1 %44, label %45, label %68

45:                                               ; preds = %41
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %46, align 4
  %48 = call i32* @strchr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load i8**, i8*** %8, align 8
  %52 = load i64*, i64** %9, align 8
  %53 = call i64 @addstr(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1, i8** %51, i64* %52)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %84

56:                                               ; preds = %50
  br label %57

57:                                               ; preds = %56, %45
  %58 = load i32*, i32** %6, align 8
  %59 = bitcast i32* %58 to i8*
  %60 = load i8**, i8*** %8, align 8
  %61 = load i64*, i64** %9, align 8
  %62 = call i64 @addstr(i8* %59, i32 1, i8** %60, i64* %61)
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %84

65:                                               ; preds = %57
  %66 = load i32*, i32** %6, align 8
  %67 = getelementptr inbounds i32, i32* %66, i32 1
  store i32* %67, i32** %6, align 8
  br label %41

68:                                               ; preds = %41
  br label %69

69:                                               ; preds = %68, %28
  br label %70

70:                                               ; preds = %69, %24
  %71 = load i8**, i8*** %8, align 8
  %72 = load i64*, i64** %9, align 8
  %73 = call i64 @addstr(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1, i8** %71, i64* %72)
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %84

76:                                               ; preds = %70
  %77 = load i32*, i32** %6, align 8
  %78 = load i32*, i32** %10, align 8
  %79 = ptrtoint i32* %77 to i64
  %80 = ptrtoint i32* %78 to i64
  %81 = sub i64 %79, %80
  %82 = sdiv exact i64 %81, 4
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %5, align 4
  br label %90

84:                                               ; preds = %75, %64, %55, %23
  %85 = load i32, i32* @ENOSPC, align 4
  store i32 %85, i32* @errno, align 4
  %86 = load i8*, i8** %12, align 8
  %87 = load i8**, i8*** %8, align 8
  store i8* %86, i8** %87, align 8
  %88 = load i64, i64* %11, align 8
  %89 = load i64*, i64** %9, align 8
  store i64 %88, i64* %89, align 8
  store i32 -1, i32* %5, align 4
  br label %90

90:                                               ; preds = %84, %76
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i64 @addstr(i8*, i32, i8**, i64*) #1

declare dso_local i32* @strchr(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
