; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_der_put.c_der_put_length_and_tag.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_der_put.c_der_put_length_and_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @der_put_length_and_tag(i8* %0, i64 %1, i64 %2, i32 %3, i32 %4, i32 %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i64* %6, i64** %15, align 8
  store i64 0, i64* %16, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = load i64, i64* %10, align 8
  %21 = load i64, i64* %11, align 8
  %22 = call i32 @der_put_length(i8* %19, i64 %20, i64 %21, i64* %17)
  store i32 %22, i32* %18, align 4
  %23 = load i32, i32* %18, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %7
  %26 = load i32, i32* %18, align 4
  store i32 %26, i32* %8, align 4
  br label %54

27:                                               ; preds = %7
  %28 = load i64, i64* %17, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = sub i64 0, %28
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  store i8* %31, i8** %9, align 8
  %32 = load i64, i64* %17, align 8
  %33 = load i64, i64* %10, align 8
  %34 = sub i64 %33, %32
  store i64 %34, i64* %10, align 8
  %35 = load i64, i64* %17, align 8
  %36 = load i64, i64* %16, align 8
  %37 = add i64 %36, %35
  store i64 %37, i64* %16, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = load i64, i64* %10, align 8
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %14, align 4
  %43 = call i32 @der_put_tag(i8* %38, i64 %39, i32 %40, i32 %41, i32 %42, i64* %17)
  store i32 %43, i32* %18, align 4
  %44 = load i32, i32* %18, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %27
  %47 = load i32, i32* %18, align 4
  store i32 %47, i32* %8, align 4
  br label %54

48:                                               ; preds = %27
  %49 = load i64, i64* %17, align 8
  %50 = load i64, i64* %16, align 8
  %51 = add i64 %50, %49
  store i64 %51, i64* %16, align 8
  %52 = load i64, i64* %16, align 8
  %53 = load i64*, i64** %15, align 8
  store i64 %52, i64* %53, align 8
  store i32 0, i32* %8, align 4
  br label %54

54:                                               ; preds = %48, %46, %25
  %55 = load i32, i32* %8, align 4
  ret i32 %55
}

declare dso_local i32 @der_put_length(i8*, i64, i64, i64*) #1

declare dso_local i32 @der_put_tag(i8*, i64, i32, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
