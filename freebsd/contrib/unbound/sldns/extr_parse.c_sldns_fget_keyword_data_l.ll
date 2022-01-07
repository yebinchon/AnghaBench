; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_parse.c_sldns_fget_keyword_data_l.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_parse.c_sldns_fget_keyword_data_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_MAX_KEYWORDLEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sldns_fget_keyword_data_l(i32* %0, i8* %1, i8* %2, i8* %3, i8* %4, i64 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32* %6, i32** %15, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = call i64 @strlen(i8* %18)
  %20 = load i64, i64* @LDNS_MAX_KEYWORDLEN, align 8
  %21 = icmp sge i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %7
  store i32 -1, i32* %8, align 4
  br label %64

23:                                               ; preds = %7
  %24 = load i64, i64* @LDNS_MAX_KEYWORDLEN, align 8
  %25 = call i64 @malloc(i64 %24)
  %26 = inttoptr i64 %25 to i8*
  store i8* %26, i8** %16, align 8
  %27 = load i8*, i8** %16, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  store i32 -1, i32* %8, align 4
  br label %64

30:                                               ; preds = %23
  %31 = load i32*, i32** %9, align 8
  %32 = load i8*, i8** %16, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = load i64, i64* @LDNS_MAX_KEYWORDLEN, align 8
  %35 = call i32 @sldns_fget_token(i32* %31, i8* %32, i8* %33, i64 %34)
  store i32 %35, i32* %17, align 4
  %36 = load i32, i32* %17, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %30
  %39 = load i32, i32* %17, align 4
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %44

41:                                               ; preds = %38, %30
  %42 = load i8*, i8** %16, align 8
  %43 = call i32 @free(i8* %42)
  store i32 -1, i32* %8, align 4
  br label %64

44:                                               ; preds = %38
  %45 = load i8*, i8** %16, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = load i64, i64* @LDNS_MAX_KEYWORDLEN, align 8
  %48 = sub nsw i64 %47, 1
  %49 = call i64 @strncmp(i8* %45, i8* %46, i64 %48)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %44
  %52 = load i32*, i32** %9, align 8
  %53 = load i8*, i8** %12, align 8
  %54 = load i8*, i8** %13, align 8
  %55 = load i64, i64* %14, align 8
  %56 = load i32*, i32** %15, align 8
  %57 = call i32 @sldns_fget_token_l(i32* %52, i8* %53, i8* %54, i64 %55, i32* %56)
  store i32 %57, i32* %17, align 4
  %58 = load i8*, i8** %16, align 8
  %59 = call i32 @free(i8* %58)
  %60 = load i32, i32* %17, align 4
  store i32 %60, i32* %8, align 4
  br label %64

61:                                               ; preds = %44
  %62 = load i8*, i8** %16, align 8
  %63 = call i32 @free(i8* %62)
  store i32 -1, i32* %8, align 4
  br label %64

64:                                               ; preds = %61, %51, %41, %29, %22
  %65 = load i32, i32* %8, align 4
  ret i32 %65
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @sldns_fget_token(i32*, i8*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i32 @sldns_fget_token_l(i32*, i8*, i8*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
