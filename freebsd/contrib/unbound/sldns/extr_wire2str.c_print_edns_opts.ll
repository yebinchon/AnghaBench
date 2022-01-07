; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_wire2str.c_print_edns_opts.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_wire2str.c_print_edns_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c" ; malformed: \00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c" ; malformed \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" ; \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i64*, i32*, i64)* @print_edns_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_edns_opts(i8** %0, i64* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i8** %0, i8*** %6, align 8
  store i64* %1, i64** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %83, %4
  %14 = load i64, i64* %9, align 8
  %15 = icmp ugt i64 %14, 0
  br i1 %15, label %16, label %107

16:                                               ; preds = %13
  %17 = load i64, i64* %9, align 8
  %18 = icmp ult i64 %17, 4
  br i1 %18, label %19, label %37

19:                                               ; preds = %16
  %20 = load i8**, i8*** %6, align 8
  %21 = load i64*, i64** %7, align 8
  %22 = call i64 @sldns_str_print(i8** %20, i64* %21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %12, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %24, %22
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %12, align 4
  %27 = load i8**, i8*** %6, align 8
  %28 = load i64*, i64** %7, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = load i64, i64* %9, align 8
  %31 = call i64 @print_hex_buf(i8** %27, i64* %28, i32* %29, i64 %30)
  %32 = load i32, i32* %12, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  store i32 %36, i32* %5, align 4
  br label %109

37:                                               ; preds = %16
  %38 = load i32*, i32** %8, align 8
  %39 = call i64 @sldns_read_uint16(i32* %38)
  store i64 %39, i64* %10, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  %42 = call i64 @sldns_read_uint16(i32* %41)
  store i64 %42, i64* %11, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 4
  store i32* %44, i32** %8, align 8
  %45 = load i64, i64* %9, align 8
  %46 = sub i64 %45, 4
  store i64 %46, i64* %9, align 8
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* %11, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %50, label %83

50:                                               ; preds = %37
  %51 = load i8**, i8*** %6, align 8
  %52 = load i64*, i64** %7, align 8
  %53 = call i64 @sldns_str_print(i8** %51, i64* %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, %53
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %12, align 4
  %58 = load i8**, i8*** %6, align 8
  %59 = load i64*, i64** %7, align 8
  %60 = load i64, i64* %10, align 8
  %61 = call i64 @sldns_wire2str_edns_option_code_print(i8** %58, i64* %59, i64 %60)
  %62 = load i32, i32* %12, align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %63, %61
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %12, align 4
  %66 = load i8**, i8*** %6, align 8
  %67 = load i64*, i64** %7, align 8
  %68 = call i64 @sldns_str_print(i8** %66, i64* %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %70, %68
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %12, align 4
  %73 = load i8**, i8*** %6, align 8
  %74 = load i64*, i64** %7, align 8
  %75 = load i32*, i32** %8, align 8
  %76 = load i64, i64* %9, align 8
  %77 = call i64 @print_hex_buf(i8** %73, i64* %74, i32* %75, i64 %76)
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %79, %77
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  store i32 %82, i32* %5, align 4
  br label %109

83:                                               ; preds = %37
  %84 = load i8**, i8*** %6, align 8
  %85 = load i64*, i64** %7, align 8
  %86 = call i64 @sldns_str_print(i8** %84, i64* %85, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %87 = load i32, i32* %12, align 4
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %88, %86
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %12, align 4
  %91 = load i8**, i8*** %6, align 8
  %92 = load i64*, i64** %7, align 8
  %93 = load i64, i64* %10, align 8
  %94 = load i32*, i32** %8, align 8
  %95 = load i64, i64* %11, align 8
  %96 = call i64 @sldns_wire2str_edns_option_print(i8** %91, i64* %92, i64 %93, i32* %94, i64 %95)
  %97 = load i32, i32* %12, align 4
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %98, %96
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %12, align 4
  %101 = load i64, i64* %11, align 8
  %102 = load i32*, i32** %8, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 %101
  store i32* %103, i32** %8, align 8
  %104 = load i64, i64* %11, align 8
  %105 = load i64, i64* %9, align 8
  %106 = sub i64 %105, %104
  store i64 %106, i64* %9, align 8
  br label %13

107:                                              ; preds = %13
  %108 = load i32, i32* %12, align 4
  store i32 %108, i32* %5, align 4
  br label %109

109:                                              ; preds = %107, %50, %19
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local i64 @sldns_str_print(i8**, i64*, i8*) #1

declare dso_local i64 @print_hex_buf(i8**, i64*, i32*, i64) #1

declare dso_local i64 @sldns_read_uint16(i32*) #1

declare dso_local i64 @sldns_wire2str_edns_option_code_print(i8**, i64*, i64) #1

declare dso_local i64 @sldns_wire2str_edns_option_print(i8**, i64*, i64, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
