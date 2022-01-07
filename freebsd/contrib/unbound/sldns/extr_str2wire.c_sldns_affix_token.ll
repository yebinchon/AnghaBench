; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_str2wire.c_sldns_affix_token.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_str2wire.c_sldns_affix_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64*, i32*, i32*, i64*, i8*, i32, i64*)* @sldns_affix_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sldns_affix_token(i32* %0, i8* %1, i64* %2, i32* %3, i32* %4, i64* %5, i8* %6, i32 %7, i64* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store i32* %0, i32** %11, align 8
  store i8* %1, i8** %12, align 8
  store i64* %2, i64** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32* %4, i32** %15, align 8
  store i64* %5, i64** %16, align 8
  store i8* %6, i8** %17, align 8
  store i32 %7, i32* %18, align 4
  store i64* %8, i64** %19, align 8
  %22 = load i64*, i64** %13, align 8
  %23 = load i64, i64* %22, align 8
  %24 = load i64*, i64** %19, align 8
  %25 = load i64, i64* %24, align 8
  %26 = sub i64 %23, %25
  store i64 %26, i64* %20, align 8
  store i64 0, i64* %21, align 8
  %27 = load i64, i64* %20, align 8
  %28 = icmp ult i64 %27, 1
  br i1 %28, label %29, label %30

29:                                               ; preds = %9
  store i32 0, i32* %10, align 4
  br label %64

30:                                               ; preds = %9
  %31 = load i8*, i8** %12, align 8
  %32 = load i64*, i64** %19, align 8
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  store i8 32, i8* %34, align 1
  %35 = load i8*, i8** %12, align 8
  %36 = load i64*, i64** %19, align 8
  %37 = load i64, i64* %36, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %36, align 8
  %39 = getelementptr inbounds i8, i8* %35, i64 %38
  store i8 0, i8* %39, align 1
  %40 = load i64*, i64** %13, align 8
  %41 = load i64, i64* %40, align 8
  %42 = load i64*, i64** %19, align 8
  %43 = load i64, i64* %42, align 8
  %44 = sub i64 %41, %43
  store i64 %44, i64* %20, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = load i8*, i8** %12, align 8
  %47 = load i64*, i64** %19, align 8
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = load i64, i64* %20, align 8
  %51 = load i32*, i32** %14, align 8
  %52 = load i32*, i32** %15, align 8
  %53 = load i64*, i64** %16, align 8
  %54 = load i8*, i8** %17, align 8
  %55 = load i32, i32* %18, align 4
  %56 = call i32 @sldns_parse_rdf_token(i32* %45, i8* %49, i64 %50, i32* %51, i32* %52, i64* %53, i8* %54, i32 %55, i64* %21)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %30
  store i32 0, i32* %10, align 4
  br label %64

59:                                               ; preds = %30
  %60 = load i64, i64* %21, align 8
  %61 = load i64*, i64** %19, align 8
  %62 = load i64, i64* %61, align 8
  %63 = add i64 %62, %60
  store i64 %63, i64* %61, align 8
  store i32 1, i32* %10, align 4
  br label %64

64:                                               ; preds = %59, %58, %29
  %65 = load i32, i32* %10, align 4
  ret i32 %65
}

declare dso_local i32 @sldns_parse_rdf_token(i32*, i8*, i64, i32*, i32*, i64*, i8*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
