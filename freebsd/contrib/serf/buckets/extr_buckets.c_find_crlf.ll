; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/serf/buckets/extr_buckets.c_find_crlf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/serf/buckets/extr_buckets.c_find_crlf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SERF_NEWLINE_CRLF = common dso_local global i32 0, align 4
@SERF_NEWLINE_CRLF_SPLIT = common dso_local global i32 0, align 4
@SERF_NEWLINE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i32*, i32*)* @find_crlf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_crlf(i8** %0, i32* %1, i32* %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i8**, i8*** %4, align 8
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %12, i64 %15
  store i8* %16, i8** %8, align 8
  br label %17

17:                                               ; preds = %68, %3
  %18 = load i8*, i8** %7, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = icmp ult i8* %18, %19
  br i1 %20, label %21, label %80

21:                                               ; preds = %17
  %22 = load i8*, i8** %7, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @memchr(i8* %22, i8 signext 13, i32 %24)
  store i8* %25, i8** %9, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %80

29:                                               ; preds = %21
  %30 = load i8*, i8** %9, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %9, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = icmp ult i8* %32, %33
  br i1 %34, label %35, label %58

35:                                               ; preds = %29
  %36 = load i8*, i8** %9, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 10
  br i1 %40, label %41, label %58

41:                                               ; preds = %35
  %42 = load i8*, i8** %9, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  %44 = load i8*, i8** %7, align 8
  %45 = ptrtoint i8* %43 to i64
  %46 = ptrtoint i8* %44 to i64
  %47 = sub i64 %45, %46
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = sub nsw i64 %50, %47
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %48, align 4
  %53 = load i8*, i8** %9, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  %55 = load i8**, i8*** %4, align 8
  store i8* %54, i8** %55, align 8
  %56 = load i32, i32* @SERF_NEWLINE_CRLF, align 4
  %57 = load i32*, i32** %6, align 8
  store i32 %56, i32* %57, align 4
  br label %100

58:                                               ; preds = %35, %29
  %59 = load i8*, i8** %9, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = icmp eq i8* %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  %63 = load i32*, i32** %5, align 8
  store i32 0, i32* %63, align 4
  %64 = load i8*, i8** %8, align 8
  %65 = load i8**, i8*** %4, align 8
  store i8* %64, i8** %65, align 8
  %66 = load i32, i32* @SERF_NEWLINE_CRLF_SPLIT, align 4
  %67 = load i32*, i32** %6, align 8
  store i32 %66, i32* %67, align 4
  br label %100

68:                                               ; preds = %58
  %69 = load i8*, i8** %9, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = ptrtoint i8* %69 to i64
  %72 = ptrtoint i8* %70 to i64
  %73 = sub i64 %71, %72
  %74 = load i32*, i32** %5, align 8
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = sub nsw i64 %76, %73
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %74, align 4
  %79 = load i8*, i8** %9, align 8
  store i8* %79, i8** %7, align 8
  br label %17

80:                                               ; preds = %28, %17
  %81 = load i8*, i8** %7, align 8
  %82 = load i32*, i32** %5, align 8
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %81, i64 %84
  %86 = load i8**, i8*** %4, align 8
  store i8* %85, i8** %86, align 8
  %87 = load i8**, i8*** %4, align 8
  %88 = load i8*, i8** %87, align 8
  %89 = load i8*, i8** %7, align 8
  %90 = ptrtoint i8* %88 to i64
  %91 = ptrtoint i8* %89 to i64
  %92 = sub i64 %90, %91
  %93 = load i32*, i32** %5, align 8
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = sub nsw i64 %95, %92
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %93, align 4
  %98 = load i32, i32* @SERF_NEWLINE_NONE, align 4
  %99 = load i32*, i32** %6, align 8
  store i32 %98, i32* %99, align 4
  br label %100

100:                                              ; preds = %80, %62, %41
  ret void
}

declare dso_local i8* @memchr(i8*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
