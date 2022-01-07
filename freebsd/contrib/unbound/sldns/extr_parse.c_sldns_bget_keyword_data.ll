; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_parse.c_sldns_bget_keyword_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_parse.c_sldns_bget_keyword_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_MAX_KEYWORDLEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sldns_bget_keyword_data(i32* %0, i8* %1, i8* %2, i8* %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = call i64 @strlen(i8* %16)
  %18 = load i64, i64* @LDNS_MAX_KEYWORDLEN, align 8
  %19 = icmp sge i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %60

21:                                               ; preds = %6
  %22 = load i64, i64* @LDNS_MAX_KEYWORDLEN, align 8
  %23 = call i64 @malloc(i64 %22)
  %24 = inttoptr i64 %23 to i8*
  store i8* %24, i8** %14, align 8
  %25 = load i8*, i8** %14, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  store i32 -1, i32* %7, align 4
  br label %60

28:                                               ; preds = %21
  %29 = load i32*, i32** %8, align 8
  %30 = load i8*, i8** %14, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = load i64, i64* %13, align 8
  %33 = call i32 @sldns_bget_token(i32* %29, i8* %30, i8* %31, i64 %32)
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %15, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %28
  %37 = load i32, i32* %15, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %42

39:                                               ; preds = %36, %28
  %40 = load i8*, i8** %14, align 8
  %41 = call i32 @free(i8* %40)
  store i32 -1, i32* %7, align 4
  br label %60

42:                                               ; preds = %36
  %43 = load i8*, i8** %14, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = call i64 @strlen(i8* %45)
  %47 = call i64 @strncmp(i8* %43, i8* %44, i64 %46)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %42
  %50 = load i8*, i8** %14, align 8
  %51 = call i32 @free(i8* %50)
  %52 = load i32*, i32** %8, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = load i8*, i8** %12, align 8
  %55 = call i32 @sldns_bget_token(i32* %52, i8* %53, i8* %54, i64 0)
  store i32 %55, i32* %15, align 4
  %56 = load i32, i32* %15, align 4
  store i32 %56, i32* %7, align 4
  br label %60

57:                                               ; preds = %42
  %58 = load i8*, i8** %14, align 8
  %59 = call i32 @free(i8* %58)
  store i32 -1, i32* %7, align 4
  br label %60

60:                                               ; preds = %57, %49, %39, %27, %20
  %61 = load i32, i32* %7, align 4
  ret i32 %61
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @sldns_bget_token(i32*, i8*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
