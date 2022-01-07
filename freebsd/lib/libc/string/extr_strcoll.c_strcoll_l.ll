; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/string/extr_strcoll.c_strcoll_l.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/string/extr_strcoll.c_strcoll_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64* }
%struct.xlocale_collate = type { i64 }

@XLC_COLLATE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @strcoll_l(i8* %0, i8* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.xlocale_collate*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  %20 = call i32 @memset(i32* %15, i32 0, i32 4)
  %21 = call i32 @memset(i32* %16, i32 0, i32 4)
  %22 = load i8*, i8** %5, align 8
  store i8* %22, i8** %13, align 8
  %23 = load i8*, i8** %6, align 8
  store i8* %23, i8** %14, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %25 = call i32 @FIX_LOCALE(%struct.TYPE_6__* %24)
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = load i64, i64* @XLC_COLLATE, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.xlocale_collate*
  store %struct.xlocale_collate* %32, %struct.xlocale_collate** %19, align 8
  %33 = load %struct.xlocale_collate*, %struct.xlocale_collate** %19, align 8
  %34 = getelementptr inbounds %struct.xlocale_collate, %struct.xlocale_collate* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %3
  br label %84

38:                                               ; preds = %3
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @strlen(i8* %39)
  %41 = add nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %17, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 @strlen(i8* %43)
  %45 = add nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  store i64 %46, i64* %18, align 8
  %47 = load i64, i64* %17, align 8
  %48 = mul i64 %47, 4
  %49 = call i32* @malloc(i64 %48)
  store i32* %49, i32** %9, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %38
  br label %84

52:                                               ; preds = %38
  %53 = load i32*, i32** %9, align 8
  store i32* %53, i32** %11, align 8
  %54 = load i64, i64* %18, align 8
  %55 = mul i64 %54, 4
  %56 = call i32* @malloc(i64 %55)
  store i32* %56, i32** %10, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %84

59:                                               ; preds = %52
  %60 = load i32*, i32** %10, align 8
  store i32* %60, i32** %12, align 8
  %61 = load i32*, i32** %11, align 8
  %62 = load i64, i64* %17, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %64 = call i64 @mbsrtowcs_l(i32* %61, i8** %13, i64 %62, i32* %15, %struct.TYPE_6__* %63)
  %65 = icmp eq i64 %64, -1
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  br label %84

67:                                               ; preds = %59
  %68 = load i32*, i32** %12, align 8
  %69 = load i64, i64* %18, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %71 = call i64 @mbsrtowcs_l(i32* %68, i8** %14, i64 %69, i32* %16, %struct.TYPE_6__* %70)
  %72 = icmp eq i64 %71, -1
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %84

74:                                               ; preds = %67
  %75 = load i32*, i32** %11, align 8
  %76 = load i32*, i32** %12, align 8
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %78 = call i32 @wcscoll_l(i32* %75, i32* %76, %struct.TYPE_6__* %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32*, i32** %9, align 8
  %80 = call i32 @free(i32* %79)
  %81 = load i32*, i32** %10, align 8
  %82 = call i32 @free(i32* %81)
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %4, align 4
  br label %92

84:                                               ; preds = %73, %66, %58, %51, %37
  %85 = load i32*, i32** %9, align 8
  %86 = call i32 @free(i32* %85)
  %87 = load i32*, i32** %10, align 8
  %88 = call i32 @free(i32* %87)
  %89 = load i8*, i8** %5, align 8
  %90 = load i8*, i8** %6, align 8
  %91 = call i32 @strcmp(i8* %89, i8* %90)
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %84, %74
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @FIX_LOCALE(%struct.TYPE_6__*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i64 @mbsrtowcs_l(i32*, i8**, i64, i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @wcscoll_l(i32*, i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
