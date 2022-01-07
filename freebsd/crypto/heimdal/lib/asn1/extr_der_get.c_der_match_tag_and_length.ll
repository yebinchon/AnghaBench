; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_der_get.c_der_match_tag_and_length.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_der_get.c_der_match_tag_and_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @der_match_tag_and_length(i8* %0, i64 %1, i32 %2, i32* %3, i32 %4, i64* %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i64* %5, i64** %14, align 8
  store i64* %6, i64** %15, align 8
  store i64 0, i64* %17, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = load i64, i64* %10, align 8
  %21 = load i32, i32* %11, align 4
  %22 = load i32*, i32** %12, align 8
  %23 = load i32, i32* %13, align 4
  %24 = call i32 @der_match_tag2(i8* %19, i64 %20, i32 %21, i32* %22, i32 %23, i64* %16)
  store i32 %24, i32* %18, align 4
  %25 = load i32, i32* %18, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %7
  %28 = load i32, i32* %18, align 4
  store i32 %28, i32* %8, align 4
  br label %56

29:                                               ; preds = %7
  %30 = load i64, i64* %16, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 %30
  store i8* %32, i8** %9, align 8
  %33 = load i64, i64* %16, align 8
  %34 = load i64, i64* %10, align 8
  %35 = sub i64 %34, %33
  store i64 %35, i64* %10, align 8
  %36 = load i64, i64* %16, align 8
  %37 = load i64, i64* %17, align 8
  %38 = add i64 %37, %36
  store i64 %38, i64* %17, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = load i64, i64* %10, align 8
  %41 = load i64*, i64** %14, align 8
  %42 = call i32 @der_get_length(i8* %39, i64 %40, i64* %41, i64* %16)
  store i32 %42, i32* %18, align 4
  %43 = load i32, i32* %18, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %29
  %46 = load i32, i32* %18, align 4
  store i32 %46, i32* %8, align 4
  br label %56

47:                                               ; preds = %29
  %48 = load i64*, i64** %15, align 8
  %49 = icmp ne i64* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load i64, i64* %17, align 8
  %52 = load i64, i64* %16, align 8
  %53 = add i64 %51, %52
  %54 = load i64*, i64** %15, align 8
  store i64 %53, i64* %54, align 8
  br label %55

55:                                               ; preds = %50, %47
  store i32 0, i32* %8, align 4
  br label %56

56:                                               ; preds = %55, %45, %27
  %57 = load i32, i32* %8, align 4
  ret i32 %57
}

declare dso_local i32 @der_match_tag2(i8*, i64, i32, i32*, i32, i64*) #1

declare dso_local i32 @der_get_length(i8*, i64, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
