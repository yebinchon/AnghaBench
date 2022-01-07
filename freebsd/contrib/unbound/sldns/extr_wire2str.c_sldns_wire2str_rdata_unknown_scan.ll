; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_wire2str.c_sldns_wire2str_rdata_unknown_scan.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_wire2str.c_sldns_wire2str_rdata_unknown_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"\\# %u\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sldns_wire2str_rdata_unknown_scan(i32** %0, i64* %1, i8** %2, i64* %3) #0 {
  %5 = alloca i32**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  store i32** %0, i32*** %5, align 8
  store i64* %1, i64** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i64* %3, i64** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load i8**, i8*** %7, align 8
  %11 = load i64*, i64** %8, align 8
  %12 = load i64*, i64** %6, align 8
  %13 = load i64, i64* %12, align 8
  %14 = trunc i64 %13 to i32
  %15 = call i64 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %10, i64* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %17, %15
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %9, align 4
  %20 = load i64*, i64** %6, align 8
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %4
  %24 = load i8**, i8*** %7, align 8
  %25 = load i64*, i64** %8, align 8
  %26 = call i64 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %24, i64* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %28, %26
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %9, align 4
  br label %31

31:                                               ; preds = %23, %4
  %32 = load i8**, i8*** %7, align 8
  %33 = load i64*, i64** %8, align 8
  %34 = load i32**, i32*** %5, align 8
  %35 = load i32*, i32** %34, align 8
  %36 = load i64*, i64** %6, align 8
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @print_hex_buf(i8** %32, i64* %33, i32* %35, i64 %37)
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %9, align 4
  %43 = load i64*, i64** %6, align 8
  %44 = load i64, i64* %43, align 8
  %45 = load i32**, i32*** %5, align 8
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 %44
  store i32* %47, i32** %45, align 8
  %48 = load i64*, i64** %6, align 8
  store i64 0, i64* %48, align 8
  %49 = load i32, i32* %9, align 4
  ret i32 %49
}

declare dso_local i64 @sldns_str_print(i8**, i64*, i8*, ...) #1

declare dso_local i64 @print_hex_buf(i8**, i64*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
