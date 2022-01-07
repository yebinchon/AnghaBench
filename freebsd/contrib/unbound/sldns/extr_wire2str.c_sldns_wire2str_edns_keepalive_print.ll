; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_wire2str.c_sldns_wire2str_edns_keepalive_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_wire2str.c_sldns_wire2str_edns_keepalive_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"malformed keepalive \00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"no timeout value (only valid for client option) \00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"timeout value in units of 100ms %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i64*, i32*, i64)* @sldns_wire2str_edns_keepalive_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sldns_wire2str_edns_keepalive_print(i8** %0, i64* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i8** %0, i8*** %6, align 8
  store i64* %1, i64** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %12 = load i64, i64* %9, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %35, label %14

14:                                               ; preds = %4
  %15 = load i64, i64* %9, align 8
  %16 = icmp eq i64 %15, 2
  br i1 %16, label %35, label %17

17:                                               ; preds = %14
  %18 = load i8**, i8*** %6, align 8
  %19 = load i64*, i64** %7, align 8
  %20 = call i64 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %18, i64* %19, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* %10, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %22, %20
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %10, align 4
  %25 = load i8**, i8*** %6, align 8
  %26 = load i64*, i64** %7, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = load i64, i64* %9, align 8
  %29 = call i64 @print_hex_buf(i8** %25, i64* %26, i32* %27, i64 %28)
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %31, %29
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %5, align 4
  br label %60

35:                                               ; preds = %14, %4
  %36 = load i64, i64* %9, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load i8**, i8*** %6, align 8
  %40 = load i64*, i64** %7, align 8
  %41 = call i64 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %39, i64* %40, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %43, %41
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %10, align 4
  br label %58

46:                                               ; preds = %35
  %47 = load i32*, i32** %8, align 8
  %48 = call i64 @sldns_read_uint16(i32* %47)
  store i64 %48, i64* %11, align 8
  %49 = load i8**, i8*** %6, align 8
  %50 = load i64*, i64** %7, align 8
  %51 = load i64, i64* %11, align 8
  %52 = trunc i64 %51 to i32
  %53 = call i64 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %49, i64* %50, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, %53
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %46, %38
  %59 = load i32, i32* %10, align 4
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %58, %17
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i64 @sldns_str_print(i8**, i64*, i8*, ...) #1

declare dso_local i64 @print_hex_buf(i8**, i64*, i32*, i64) #1

declare dso_local i64 @sldns_read_uint16(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
