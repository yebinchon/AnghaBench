; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_wire2str.c_sldns_wire2str_edns_ul_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_wire2str.c_sldns_wire2str_edns_ul_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"malformed UL \00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"lease %lu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sldns_wire2str_edns_ul_print(i8** %0, i64* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8** %0, i8*** %6, align 8
  store i64* %1, i64** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %11, align 4
  %12 = load i64, i64* %9, align 8
  %13 = icmp ne i64 %12, 4
  br i1 %13, label %14, label %32

14:                                               ; preds = %4
  %15 = load i8**, i8*** %6, align 8
  %16 = load i64*, i64** %7, align 8
  %17 = call i64 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %15, i64* %16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %11, align 4
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %19, %17
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %11, align 4
  %22 = load i8**, i8*** %6, align 8
  %23 = load i64*, i64** %7, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = load i64, i64* %9, align 8
  %26 = call i64 @print_hex_buf(i8** %22, i64* %23, i32* %24, i64 %25)
  %27 = load i32, i32* %11, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %28, %26
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %5, align 4
  br label %44

32:                                               ; preds = %4
  %33 = load i32*, i32** %8, align 8
  %34 = call i64 @sldns_read_uint32(i32* %33)
  store i64 %34, i64* %10, align 8
  %35 = load i8**, i8*** %6, align 8
  %36 = load i64*, i64** %7, align 8
  %37 = load i64, i64* %10, align 8
  %38 = call i64 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %35, i64* %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %37)
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %32, %14
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i64 @sldns_str_print(i8**, i64*, i8*, ...) #1

declare dso_local i64 @print_hex_buf(i8**, i64*, i32*, i64) #1

declare dso_local i64 @sldns_read_uint32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
