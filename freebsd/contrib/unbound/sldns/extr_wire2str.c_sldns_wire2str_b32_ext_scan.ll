; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_wire2str.c_sldns_wire2str_b32_ext_scan.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_wire2str.c_sldns_wire2str_b32_ext_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sldns_wire2str_b32_ext_scan(i64** %0, i64* %1, i8** %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64** %0, i64*** %6, align 8
  store i64* %1, i64** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = load i64*, i64** %7, align 8
  %13 = load i64, i64* %12, align 8
  %14 = icmp ult i64 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %78

16:                                               ; preds = %4
  %17 = load i64**, i64*** %6, align 8
  %18 = load i64*, i64** %17, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %10, align 8
  %21 = load i64*, i64** %7, align 8
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %10, align 8
  %24 = add i64 1, %23
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  store i32 -1, i32* %5, align 4
  br label %78

27:                                               ; preds = %16
  %28 = load i64, i64* %10, align 8
  %29 = call i64 @sldns_b32_ntop_calculate_size(i64 %28)
  store i64 %29, i64* %11, align 8
  %30 = load i64*, i64** %9, align 8
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %11, align 8
  %33 = add i64 %32, 1
  %34 = icmp ult i64 %31, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %27
  %36 = load i64, i64* %10, align 8
  %37 = add i64 %36, 1
  %38 = load i64**, i64*** %6, align 8
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 %37
  store i64* %40, i64** %38, align 8
  %41 = load i64, i64* %10, align 8
  %42 = add i64 %41, 1
  %43 = load i64*, i64** %7, align 8
  %44 = load i64, i64* %43, align 8
  %45 = sub i64 %44, %42
  store i64 %45, i64* %43, align 8
  %46 = load i64, i64* %11, align 8
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %5, align 4
  br label %78

48:                                               ; preds = %27
  %49 = load i64**, i64*** %6, align 8
  %50 = load i64*, i64** %49, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 1
  %52 = load i64, i64* %10, align 8
  %53 = load i8**, i8*** %8, align 8
  %54 = load i8*, i8** %53, align 8
  %55 = load i64*, i64** %9, align 8
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @sldns_b32_ntop_extended_hex(i64* %51, i64 %52, i8* %54, i64 %56)
  %58 = load i64, i64* %10, align 8
  %59 = add i64 %58, 1
  %60 = load i64**, i64*** %6, align 8
  %61 = load i64*, i64** %60, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 %59
  store i64* %62, i64** %60, align 8
  %63 = load i64, i64* %10, align 8
  %64 = add i64 %63, 1
  %65 = load i64*, i64** %7, align 8
  %66 = load i64, i64* %65, align 8
  %67 = sub i64 %66, %64
  store i64 %67, i64* %65, align 8
  %68 = load i64, i64* %11, align 8
  %69 = load i8**, i8*** %8, align 8
  %70 = load i8*, i8** %69, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 %68
  store i8* %71, i8** %69, align 8
  %72 = load i64, i64* %11, align 8
  %73 = load i64*, i64** %9, align 8
  %74 = load i64, i64* %73, align 8
  %75 = sub i64 %74, %72
  store i64 %75, i64* %73, align 8
  %76 = load i64, i64* %11, align 8
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %48, %35, %26, %15
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i64 @sldns_b32_ntop_calculate_size(i64) #1

declare dso_local i32 @sldns_b32_ntop_extended_hex(i64*, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
