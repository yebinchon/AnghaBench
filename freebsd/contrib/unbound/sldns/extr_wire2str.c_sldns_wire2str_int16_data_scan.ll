; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_wire2str.c_sldns_wire2str_int16_data_scan.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_wire2str.c_sldns_wire2str_int16_data_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%u \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sldns_wire2str_int16_data_scan(i32** %0, i64* %1, i8** %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32** %0, i32*** %6, align 8
  store i64* %1, i64** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = load i64*, i64** %7, align 8
  %13 = load i64, i64* %12, align 8
  %14 = icmp ult i64 %13, 2
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %56

16:                                               ; preds = %4
  %17 = load i32**, i32*** %6, align 8
  %18 = load i32*, i32** %17, align 8
  %19 = call i64 @sldns_read_uint16(i32* %18)
  store i64 %19, i64* %11, align 8
  %20 = load i64*, i64** %7, align 8
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %11, align 8
  %23 = add i64 2, %22
  %24 = icmp ult i64 %21, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  store i32 -1, i32* %5, align 4
  br label %56

26:                                               ; preds = %16
  %27 = load i32**, i32*** %6, align 8
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  store i32* %29, i32** %27, align 8
  %30 = load i64*, i64** %7, align 8
  %31 = load i64, i64* %30, align 8
  %32 = sub i64 %31, 2
  store i64 %32, i64* %30, align 8
  %33 = load i64, i64* %11, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %26
  %36 = load i8**, i8*** %8, align 8
  %37 = load i64*, i64** %9, align 8
  %38 = call i32 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %36, i64* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %38, i32* %5, align 4
  br label %56

39:                                               ; preds = %26
  %40 = load i8**, i8*** %8, align 8
  %41 = load i64*, i64** %9, align 8
  %42 = load i64, i64* %11, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i32 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %40, i64* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32**, i32*** %6, align 8
  %46 = load i64*, i64** %7, align 8
  %47 = load i8**, i8*** %8, align 8
  %48 = load i64*, i64** %9, align 8
  %49 = load i64, i64* %11, align 8
  %50 = call i64 @sldns_wire2str_b64_scan_num(i32** %45, i64* %46, i8** %47, i64* %48, i64 %49)
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %39, %35, %25, %15
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i64 @sldns_read_uint16(i32*) #1

declare dso_local i32 @sldns_str_print(i8**, i64*, i8*, ...) #1

declare dso_local i64 @sldns_wire2str_b64_scan_num(i32**, i64*, i8**, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
