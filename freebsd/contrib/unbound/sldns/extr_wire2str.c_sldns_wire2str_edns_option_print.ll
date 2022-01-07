; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_wire2str.c_sldns_wire2str_edns_option_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_wire2str.c_sldns_wire2str_edns_option_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c": \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sldns_wire2str_edns_option_print(i8** %0, i64* %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i8**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8** %0, i8*** %6, align 8
  store i64* %1, i64** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %12 = load i8**, i8*** %6, align 8
  %13 = load i64*, i64** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call i64 @sldns_wire2str_edns_option_code_print(i8** %12, i64* %13, i32 %14)
  %16 = load i32, i32* %11, align 4
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %17, %15
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %11, align 4
  %20 = load i8**, i8*** %6, align 8
  %21 = load i64*, i64** %7, align 8
  %22 = call i64 @sldns_str_print(i8** %20, i64* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %11, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %24, %22
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %8, align 4
  switch i32 %27, label %100 [
    i32 132, label %28
    i32 128, label %36
    i32 130, label %44
    i32 135, label %52
    i32 134, label %60
    i32 131, label %68
    i32 136, label %76
    i32 133, label %84
    i32 129, label %92
  ]

28:                                               ; preds = %5
  %29 = load i8**, i8*** %6, align 8
  %30 = load i64*, i64** %7, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = load i64, i64* %10, align 8
  %33 = call i32 @sldns_wire2str_edns_llq_print(i8** %29, i64* %30, i32* %31, i64 %32)
  %34 = load i32, i32* %11, align 4
  %35 = add nsw i32 %34, %33
  store i32 %35, i32* %11, align 4
  br label %108

36:                                               ; preds = %5
  %37 = load i8**, i8*** %6, align 8
  %38 = load i64*, i64** %7, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = load i64, i64* %10, align 8
  %41 = call i32 @sldns_wire2str_edns_ul_print(i8** %37, i64* %38, i32* %39, i64 %40)
  %42 = load i32, i32* %11, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %11, align 4
  br label %108

44:                                               ; preds = %5
  %45 = load i8**, i8*** %6, align 8
  %46 = load i64*, i64** %7, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = load i64, i64* %10, align 8
  %49 = call i32 @sldns_wire2str_edns_nsid_print(i8** %45, i64* %46, i32* %47, i64 %48)
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %50, %49
  store i32 %51, i32* %11, align 4
  br label %108

52:                                               ; preds = %5
  %53 = load i8**, i8*** %6, align 8
  %54 = load i64*, i64** %7, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = load i64, i64* %10, align 8
  %57 = call i32 @sldns_wire2str_edns_dau_print(i8** %53, i64* %54, i32* %55, i64 %56)
  %58 = load i32, i32* %11, align 4
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* %11, align 4
  br label %108

60:                                               ; preds = %5
  %61 = load i8**, i8*** %6, align 8
  %62 = load i64*, i64** %7, align 8
  %63 = load i32*, i32** %9, align 8
  %64 = load i64, i64* %10, align 8
  %65 = call i32 @sldns_wire2str_edns_dhu_print(i8** %61, i64* %62, i32* %63, i64 %64)
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* %11, align 4
  br label %108

68:                                               ; preds = %5
  %69 = load i8**, i8*** %6, align 8
  %70 = load i64*, i64** %7, align 8
  %71 = load i32*, i32** %9, align 8
  %72 = load i64, i64* %10, align 8
  %73 = call i32 @sldns_wire2str_edns_n3u_print(i8** %69, i64* %70, i32* %71, i64 %72)
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* %11, align 4
  br label %108

76:                                               ; preds = %5
  %77 = load i8**, i8*** %6, align 8
  %78 = load i64*, i64** %7, align 8
  %79 = load i32*, i32** %9, align 8
  %80 = load i64, i64* %10, align 8
  %81 = call i32 @sldns_wire2str_edns_subnet_print(i8** %77, i64* %78, i32* %79, i64 %80)
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %82, %81
  store i32 %83, i32* %11, align 4
  br label %108

84:                                               ; preds = %5
  %85 = load i8**, i8*** %6, align 8
  %86 = load i64*, i64** %7, align 8
  %87 = load i32*, i32** %9, align 8
  %88 = load i64, i64* %10, align 8
  %89 = call i32 @sldns_wire2str_edns_keepalive_print(i8** %85, i64* %86, i32* %87, i64 %88)
  %90 = load i32, i32* %11, align 4
  %91 = add nsw i32 %90, %89
  store i32 %91, i32* %11, align 4
  br label %108

92:                                               ; preds = %5
  %93 = load i8**, i8*** %6, align 8
  %94 = load i64*, i64** %7, align 8
  %95 = load i32*, i32** %9, align 8
  %96 = load i64, i64* %10, align 8
  %97 = call i32 @print_hex_buf(i8** %93, i64* %94, i32* %95, i64 %96)
  %98 = load i32, i32* %11, align 4
  %99 = add nsw i32 %98, %97
  store i32 %99, i32* %11, align 4
  br label %108

100:                                              ; preds = %5
  %101 = load i8**, i8*** %6, align 8
  %102 = load i64*, i64** %7, align 8
  %103 = load i32*, i32** %9, align 8
  %104 = load i64, i64* %10, align 8
  %105 = call i32 @print_hex_buf(i8** %101, i64* %102, i32* %103, i64 %104)
  %106 = load i32, i32* %11, align 4
  %107 = add nsw i32 %106, %105
  store i32 %107, i32* %11, align 4
  br label %108

108:                                              ; preds = %100, %92, %84, %76, %68, %60, %52, %44, %36, %28
  %109 = load i32, i32* %11, align 4
  ret i32 %109
}

declare dso_local i64 @sldns_wire2str_edns_option_code_print(i8**, i64*, i32) #1

declare dso_local i64 @sldns_str_print(i8**, i64*, i8*) #1

declare dso_local i32 @sldns_wire2str_edns_llq_print(i8**, i64*, i32*, i64) #1

declare dso_local i32 @sldns_wire2str_edns_ul_print(i8**, i64*, i32*, i64) #1

declare dso_local i32 @sldns_wire2str_edns_nsid_print(i8**, i64*, i32*, i64) #1

declare dso_local i32 @sldns_wire2str_edns_dau_print(i8**, i64*, i32*, i64) #1

declare dso_local i32 @sldns_wire2str_edns_dhu_print(i8**, i64*, i32*, i64) #1

declare dso_local i32 @sldns_wire2str_edns_n3u_print(i8**, i64*, i32*, i64) #1

declare dso_local i32 @sldns_wire2str_edns_subnet_print(i8**, i64*, i32*, i64) #1

declare dso_local i32 @sldns_wire2str_edns_keepalive_print(i8**, i64*, i32*, i64) #1

declare dso_local i32 @print_hex_buf(i8**, i64*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
