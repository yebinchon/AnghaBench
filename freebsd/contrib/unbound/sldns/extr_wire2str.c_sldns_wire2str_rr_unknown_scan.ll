; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_wire2str.c_sldns_wire2str_rr_unknown_scan.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_wire2str.c_sldns_wire2str_rr_unknown_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c";Error missing rdatalen\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c";Error missing rdatalen 0x\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"\\# %u \00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c";Error missing rdata\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c";Error partial rdata 0x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sldns_wire2str_rr_unknown_scan(i32** %0, i64* %1, i8** %2, i64* %3, i32* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i32** %0, i32*** %8, align 8
  store i64* %1, i64** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i64* %3, i64** %11, align 8
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  store i32 0, i32* %16, align 4
  %17 = load i32**, i32*** %8, align 8
  %18 = load i64*, i64** %9, align 8
  %19 = load i8**, i8*** %10, align 8
  %20 = load i64*, i64** %11, align 8
  %21 = load i32*, i32** %12, align 8
  %22 = load i64, i64* %13, align 8
  %23 = call i64 @sldns_wire2str_dname_scan(i32** %17, i64* %18, i8** %19, i64* %20, i32* %21, i64 %22)
  %24 = load i32, i32* %16, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %25, %23
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %16, align 4
  %28 = load i8**, i8*** %10, align 8
  %29 = load i64*, i64** %11, align 8
  %30 = call i32 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %28, i64* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* %16, align 4
  %32 = add nsw i32 %31, %30
  store i32 %32, i32* %16, align 4
  %33 = load i32**, i32*** %8, align 8
  %34 = load i64*, i64** %9, align 8
  %35 = load i8**, i8*** %10, align 8
  %36 = load i64*, i64** %11, align 8
  %37 = call i64 @sldns_rr_tcttl_scan(i32** %33, i64* %34, i8** %35, i64* %36)
  %38 = load i32, i32* %16, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %39, %37
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %16, align 4
  %42 = load i8**, i8*** %10, align 8
  %43 = load i64*, i64** %11, align 8
  %44 = call i32 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %42, i64* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* %16, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %16, align 4
  %47 = load i64*, i64** %9, align 8
  %48 = load i64, i64* %47, align 8
  %49 = icmp ult i64 %48, 2
  br i1 %49, label %50, label %75

50:                                               ; preds = %6
  %51 = load i64*, i64** %9, align 8
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = load i32, i32* %16, align 4
  %56 = load i8**, i8*** %10, align 8
  %57 = load i64*, i64** %11, align 8
  %58 = call i32 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %56, i64* %57, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %59 = add nsw i32 %55, %58
  store i32 %59, i32* %7, align 4
  br label %143

60:                                               ; preds = %50
  %61 = load i32**, i32*** %8, align 8
  %62 = load i64*, i64** %9, align 8
  %63 = load i8**, i8*** %10, align 8
  %64 = load i64*, i64** %11, align 8
  %65 = call i64 @print_remainder_hex(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32** %61, i64* %62, i8** %63, i64* %64)
  %66 = load i32, i32* %16, align 4
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %67, %65
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %16, align 4
  %70 = load i32, i32* %16, align 4
  %71 = load i8**, i8*** %10, align 8
  %72 = load i64*, i64** %11, align 8
  %73 = call i32 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %71, i64* %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %74 = add nsw i32 %70, %73
  store i32 %74, i32* %7, align 4
  br label %143

75:                                               ; preds = %6
  %76 = load i32**, i32*** %8, align 8
  %77 = load i32*, i32** %76, align 8
  %78 = call i64 @sldns_read_uint16(i32* %77)
  store i64 %78, i64* %14, align 8
  %79 = load i64, i64* %14, align 8
  store i64 %79, i64* %15, align 8
  %80 = load i32**, i32*** %8, align 8
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 2
  store i32* %82, i32** %80, align 8
  %83 = load i64*, i64** %9, align 8
  %84 = load i64, i64* %83, align 8
  %85 = sub i64 %84, 2
  store i64 %85, i64* %83, align 8
  %86 = load i64*, i64** %9, align 8
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %14, align 8
  %89 = icmp ult i64 %87, %88
  br i1 %89, label %90, label %122

90:                                               ; preds = %75
  %91 = load i8**, i8*** %10, align 8
  %92 = load i64*, i64** %11, align 8
  %93 = load i64, i64* %14, align 8
  %94 = trunc i64 %93 to i32
  %95 = call i32 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %91, i64* %92, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* %16, align 4
  %97 = add nsw i32 %96, %95
  store i32 %97, i32* %16, align 4
  %98 = load i64*, i64** %9, align 8
  %99 = load i64, i64* %98, align 8
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %90
  %102 = load i32, i32* %16, align 4
  %103 = load i8**, i8*** %10, align 8
  %104 = load i64*, i64** %11, align 8
  %105 = call i32 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %103, i64* %104, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %106 = add nsw i32 %102, %105
  store i32 %106, i32* %7, align 4
  br label %143

107:                                              ; preds = %90
  %108 = load i32**, i32*** %8, align 8
  %109 = load i64*, i64** %9, align 8
  %110 = load i8**, i8*** %10, align 8
  %111 = load i64*, i64** %11, align 8
  %112 = call i64 @print_remainder_hex(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32** %108, i64* %109, i8** %110, i64* %111)
  %113 = load i32, i32* %16, align 4
  %114 = sext i32 %113 to i64
  %115 = add nsw i64 %114, %112
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %16, align 4
  %117 = load i32, i32* %16, align 4
  %118 = load i8**, i8*** %10, align 8
  %119 = load i64*, i64** %11, align 8
  %120 = call i32 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %118, i64* %119, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %121 = add nsw i32 %117, %120
  store i32 %121, i32* %7, align 4
  br label %143

122:                                              ; preds = %75
  %123 = load i32**, i32*** %8, align 8
  %124 = load i8**, i8*** %10, align 8
  %125 = load i64*, i64** %11, align 8
  %126 = call i64 @sldns_wire2str_rdata_unknown_scan(i32** %123, i64* %14, i8** %124, i64* %125)
  %127 = load i32, i32* %16, align 4
  %128 = sext i32 %127 to i64
  %129 = add nsw i64 %128, %126
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %16, align 4
  %131 = load i64, i64* %15, align 8
  %132 = load i64, i64* %14, align 8
  %133 = sub i64 %131, %132
  %134 = load i64*, i64** %9, align 8
  %135 = load i64, i64* %134, align 8
  %136 = sub i64 %135, %133
  store i64 %136, i64* %134, align 8
  %137 = load i8**, i8*** %10, align 8
  %138 = load i64*, i64** %11, align 8
  %139 = call i32 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %137, i64* %138, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %140 = load i32, i32* %16, align 4
  %141 = add nsw i32 %140, %139
  store i32 %141, i32* %16, align 4
  %142 = load i32, i32* %16, align 4
  store i32 %142, i32* %7, align 4
  br label %143

143:                                              ; preds = %122, %107, %101, %60, %54
  %144 = load i32, i32* %7, align 4
  ret i32 %144
}

declare dso_local i64 @sldns_wire2str_dname_scan(i32**, i64*, i8**, i64*, i32*, i64) #1

declare dso_local i32 @sldns_str_print(i8**, i64*, i8*, ...) #1

declare dso_local i64 @sldns_rr_tcttl_scan(i32**, i64*, i8**, i64*) #1

declare dso_local i64 @print_remainder_hex(i8*, i32**, i64*, i8**, i64*) #1

declare dso_local i64 @sldns_read_uint16(i32*) #1

declare dso_local i64 @sldns_wire2str_rdata_unknown_scan(i32**, i64*, i8**, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
