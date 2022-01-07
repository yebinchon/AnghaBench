; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_wire2str.c_sldns_wire2str_b64_scan_num.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_wire2str.c_sldns_wire2str_b64_scan_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i64*, i8**, i64*, i64)* @sldns_wire2str_b64_scan_num to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sldns_wire2str_b64_scan_num(i32** %0, i64* %1, i8** %2, i64* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32** %0, i32*** %7, align 8
  store i64* %1, i64** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load i64, i64* %11, align 8
  %14 = call i32 @sldns_b64_ntop_calculate_size(i64 %13)
  %15 = sub nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %12, align 8
  %17 = load i64*, i64** %10, align 8
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %12, align 8
  %20 = add i64 %19, 1
  %21 = icmp ult i64 %18, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %5
  %23 = load i64, i64* %11, align 8
  %24 = load i32**, i32*** %7, align 8
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 %23
  store i32* %26, i32** %24, align 8
  %27 = load i64, i64* %11, align 8
  %28 = load i64*, i64** %8, align 8
  %29 = load i64, i64* %28, align 8
  %30 = sub i64 %29, %27
  store i64 %30, i64* %28, align 8
  %31 = load i64, i64* %12, align 8
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %6, align 4
  br label %60

33:                                               ; preds = %5
  %34 = load i32**, i32*** %7, align 8
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* %11, align 8
  %37 = load i8**, i8*** %9, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = load i64*, i64** %10, align 8
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @sldns_b64_ntop(i32* %35, i64 %36, i8* %38, i64 %40)
  %42 = load i64, i64* %11, align 8
  %43 = load i32**, i32*** %7, align 8
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 %42
  store i32* %45, i32** %43, align 8
  %46 = load i64, i64* %11, align 8
  %47 = load i64*, i64** %8, align 8
  %48 = load i64, i64* %47, align 8
  %49 = sub i64 %48, %46
  store i64 %49, i64* %47, align 8
  %50 = load i64, i64* %12, align 8
  %51 = load i8**, i8*** %9, align 8
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 %50
  store i8* %53, i8** %51, align 8
  %54 = load i64, i64* %12, align 8
  %55 = load i64*, i64** %10, align 8
  %56 = load i64, i64* %55, align 8
  %57 = sub i64 %56, %54
  store i64 %57, i64* %55, align 8
  %58 = load i64, i64* %12, align 8
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %33, %22
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local i32 @sldns_b64_ntop_calculate_size(i64) #1

declare dso_local i32 @sldns_b64_ntop(i32*, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
