; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_wire2str.c_sldns_rr_tcttl_scan.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_wire2str.c_sldns_rr_tcttl_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"; Error malformed 0x\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"; Error no ttl\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"; Error malformed ttl 0x\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%lu\09\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i64*, i8**, i64*)* @sldns_rr_tcttl_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sldns_rr_tcttl_scan(i32** %0, i64* %1, i8** %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i32** %0, i32*** %6, align 8
  store i64* %1, i64** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i64* %3, i64** %9, align 8
  store i32 0, i32* %10, align 4
  %14 = load i64*, i64** %7, align 8
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %15, 8
  br i1 %16, label %17, label %81

17:                                               ; preds = %4
  %18 = load i64*, i64** %7, align 8
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %19, 4
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = load i32, i32* %10, align 4
  %23 = load i32**, i32*** %6, align 8
  %24 = load i64*, i64** %7, align 8
  %25 = load i8**, i8*** %8, align 8
  %26 = load i64*, i64** %9, align 8
  %27 = call i32 @print_remainder_hex(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32** %23, i64* %24, i8** %25, i64* %26)
  %28 = add nsw i32 %22, %27
  store i32 %28, i32* %5, align 4
  br label %127

29:                                               ; preds = %17
  %30 = load i32**, i32*** %6, align 8
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @sldns_read_uint16(i32* %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32**, i32*** %6, align 8
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  %36 = call i32 @sldns_read_uint16(i32* %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32**, i32*** %6, align 8
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 4
  store i32* %39, i32** %37, align 8
  %40 = load i64*, i64** %7, align 8
  %41 = load i64, i64* %40, align 8
  %42 = sub i64 %41, 4
  store i64 %42, i64* %40, align 8
  %43 = load i8**, i8*** %8, align 8
  %44 = load i64*, i64** %9, align 8
  %45 = load i32, i32* %12, align 4
  %46 = call i64 @sldns_wire2str_class_print(i8** %43, i64* %44, i32 %45)
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %46
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %10, align 4
  %51 = load i8**, i8*** %8, align 8
  %52 = load i64*, i64** %9, align 8
  %53 = call i32 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %51, i64* %52, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %10, align 4
  %56 = load i8**, i8*** %8, align 8
  %57 = load i64*, i64** %9, align 8
  %58 = load i32, i32* %11, align 4
  %59 = call i64 @sldns_wire2str_type_print(i8** %56, i64* %57, i32 %58)
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %61, %59
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %10, align 4
  %64 = load i64*, i64** %7, align 8
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %29
  %68 = load i32, i32* %10, align 4
  %69 = load i8**, i8*** %8, align 8
  %70 = load i64*, i64** %9, align 8
  %71 = call i32 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %69, i64* %70, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %72 = add nsw i32 %68, %71
  store i32 %72, i32* %5, align 4
  br label %127

73:                                               ; preds = %29
  %74 = load i32, i32* %10, align 4
  %75 = load i32**, i32*** %6, align 8
  %76 = load i64*, i64** %7, align 8
  %77 = load i8**, i8*** %8, align 8
  %78 = load i64*, i64** %9, align 8
  %79 = call i32 @print_remainder_hex(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32** %75, i64* %76, i8** %77, i64* %78)
  %80 = add nsw i32 %74, %79
  store i32 %80, i32* %5, align 4
  br label %127

81:                                               ; preds = %4
  %82 = load i32**, i32*** %6, align 8
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @sldns_read_uint16(i32* %83)
  store i32 %84, i32* %11, align 4
  %85 = load i32**, i32*** %6, align 8
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 2
  %88 = call i32 @sldns_read_uint16(i32* %87)
  store i32 %88, i32* %12, align 4
  %89 = load i32**, i32*** %6, align 8
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 4
  %92 = call i64 @sldns_read_uint32(i32* %91)
  store i64 %92, i64* %13, align 8
  %93 = load i32**, i32*** %6, align 8
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 8
  store i32* %95, i32** %93, align 8
  %96 = load i64*, i64** %7, align 8
  %97 = load i64, i64* %96, align 8
  %98 = sub i64 %97, 8
  store i64 %98, i64* %96, align 8
  %99 = load i8**, i8*** %8, align 8
  %100 = load i64*, i64** %9, align 8
  %101 = load i64, i64* %13, align 8
  %102 = call i32 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %99, i64* %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 %101)
  %103 = load i32, i32* %10, align 4
  %104 = add nsw i32 %103, %102
  store i32 %104, i32* %10, align 4
  %105 = load i8**, i8*** %8, align 8
  %106 = load i64*, i64** %9, align 8
  %107 = load i32, i32* %12, align 4
  %108 = call i64 @sldns_wire2str_class_print(i8** %105, i64* %106, i32 %107)
  %109 = load i32, i32* %10, align 4
  %110 = sext i32 %109 to i64
  %111 = add nsw i64 %110, %108
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %10, align 4
  %113 = load i8**, i8*** %8, align 8
  %114 = load i64*, i64** %9, align 8
  %115 = call i32 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %113, i64* %114, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %116 = load i32, i32* %10, align 4
  %117 = add nsw i32 %116, %115
  store i32 %117, i32* %10, align 4
  %118 = load i8**, i8*** %8, align 8
  %119 = load i64*, i64** %9, align 8
  %120 = load i32, i32* %11, align 4
  %121 = call i64 @sldns_wire2str_type_print(i8** %118, i64* %119, i32 %120)
  %122 = load i32, i32* %10, align 4
  %123 = sext i32 %122 to i64
  %124 = add nsw i64 %123, %121
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %10, align 4
  %126 = load i32, i32* %10, align 4
  store i32 %126, i32* %5, align 4
  br label %127

127:                                              ; preds = %81, %73, %67, %21
  %128 = load i32, i32* %5, align 4
  ret i32 %128
}

declare dso_local i32 @print_remainder_hex(i8*, i32**, i64*, i8**, i64*) #1

declare dso_local i32 @sldns_read_uint16(i32*) #1

declare dso_local i64 @sldns_wire2str_class_print(i8**, i64*, i32) #1

declare dso_local i32 @sldns_str_print(i8**, i64*, i8*, ...) #1

declare dso_local i64 @sldns_wire2str_type_print(i8**, i64*, i32) #1

declare dso_local i64 @sldns_read_uint32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
