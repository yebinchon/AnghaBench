; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_wire2str.c_sldns_wire2str_ipseckey_scan_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_wire2str.c_sldns_wire2str_ipseckey_scan_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"%d %d %d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i64*, i8**, i64*, i32*, i64)* @sldns_wire2str_ipseckey_scan_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sldns_wire2str_ipseckey_scan_internal(i32** %0, i64* %1, i8** %2, i64* %3, i32* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32** %0, i32*** %8, align 8
  store i64* %1, i64** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i64* %3, i64** %11, align 8
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  store i32 0, i32* %17, align 4
  %18 = load i64*, i64** %9, align 8
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %19, 3
  br i1 %20, label %21, label %22

21:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %116

22:                                               ; preds = %6
  %23 = load i32**, i32*** %8, align 8
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %14, align 4
  %27 = load i32**, i32*** %8, align 8
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %15, align 4
  %31 = load i32**, i32*** %8, align 8
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %16, align 4
  %35 = load i32, i32* %15, align 4
  %36 = icmp sgt i32 %35, 3
  br i1 %36, label %37, label %38

37:                                               ; preds = %22
  store i32 -1, i32* %7, align 4
  br label %116

38:                                               ; preds = %22
  %39 = load i32**, i32*** %8, align 8
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 3
  store i32* %41, i32** %39, align 8
  %42 = load i64*, i64** %9, align 8
  %43 = load i64, i64* %42, align 8
  %44 = sub i64 %43, 3
  store i64 %44, i64* %42, align 8
  %45 = load i8**, i8*** %10, align 8
  %46 = load i64*, i64** %11, align 8
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* %15, align 4
  %49 = load i32, i32* %16, align 4
  %50 = call i64 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %45, i64* %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %48, i32 %49)
  %51 = load i32, i32* %17, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %17, align 4
  %55 = load i32, i32* %15, align 4
  switch i32 %55, label %90 [
    i32 0, label %56
    i32 1, label %64
    i32 2, label %72
    i32 3, label %80
  ]

56:                                               ; preds = %38
  %57 = load i8**, i8*** %10, align 8
  %58 = load i64*, i64** %11, align 8
  %59 = call i64 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %57, i64* %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* %17, align 4
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %61, %59
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %17, align 4
  br label %91

64:                                               ; preds = %38
  %65 = load i32**, i32*** %8, align 8
  %66 = load i64*, i64** %9, align 8
  %67 = load i8**, i8*** %10, align 8
  %68 = load i64*, i64** %11, align 8
  %69 = call i32 @sldns_wire2str_a_scan(i32** %65, i64* %66, i8** %67, i64* %68)
  %70 = load i32, i32* %17, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* %17, align 4
  br label %91

72:                                               ; preds = %38
  %73 = load i32**, i32*** %8, align 8
  %74 = load i64*, i64** %9, align 8
  %75 = load i8**, i8*** %10, align 8
  %76 = load i64*, i64** %11, align 8
  %77 = call i32 @sldns_wire2str_aaaa_scan(i32** %73, i64* %74, i8** %75, i64* %76)
  %78 = load i32, i32* %17, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %17, align 4
  br label %91

80:                                               ; preds = %38
  %81 = load i32**, i32*** %8, align 8
  %82 = load i64*, i64** %9, align 8
  %83 = load i8**, i8*** %10, align 8
  %84 = load i64*, i64** %11, align 8
  %85 = load i32*, i32** %12, align 8
  %86 = load i64, i64* %13, align 8
  %87 = call i32 @sldns_wire2str_dname_scan(i32** %81, i64* %82, i8** %83, i64* %84, i32* %85, i64 %86)
  %88 = load i32, i32* %17, align 4
  %89 = add nsw i32 %88, %87
  store i32 %89, i32* %17, align 4
  br label %91

90:                                               ; preds = %38
  store i32 -1, i32* %7, align 4
  br label %116

91:                                               ; preds = %80, %72, %64, %56
  %92 = load i64*, i64** %9, align 8
  %93 = load i64, i64* %92, align 8
  %94 = icmp ult i64 %93, 1
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  store i32 -1, i32* %7, align 4
  br label %116

96:                                               ; preds = %91
  %97 = load i8**, i8*** %10, align 8
  %98 = load i64*, i64** %11, align 8
  %99 = call i64 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %97, i64* %98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %100 = load i32, i32* %17, align 4
  %101 = sext i32 %100 to i64
  %102 = add nsw i64 %101, %99
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %17, align 4
  %104 = load i32**, i32*** %8, align 8
  %105 = load i64*, i64** %9, align 8
  %106 = load i8**, i8*** %10, align 8
  %107 = load i64*, i64** %11, align 8
  %108 = load i64*, i64** %9, align 8
  %109 = load i64, i64* %108, align 8
  %110 = call i64 @sldns_wire2str_b64_scan_num(i32** %104, i64* %105, i8** %106, i64* %107, i64 %109)
  %111 = load i32, i32* %17, align 4
  %112 = sext i32 %111 to i64
  %113 = add nsw i64 %112, %110
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %17, align 4
  %115 = load i32, i32* %17, align 4
  store i32 %115, i32* %7, align 4
  br label %116

116:                                              ; preds = %96, %95, %90, %37, %21
  %117 = load i32, i32* %7, align 4
  ret i32 %117
}

declare dso_local i64 @sldns_str_print(i8**, i64*, i8*, ...) #1

declare dso_local i32 @sldns_wire2str_a_scan(i32**, i64*, i8**, i64*) #1

declare dso_local i32 @sldns_wire2str_aaaa_scan(i32**, i64*, i8**, i64*) #1

declare dso_local i32 @sldns_wire2str_dname_scan(i32**, i64*, i8**, i64*, i32*, i64) #1

declare dso_local i64 @sldns_wire2str_b64_scan_num(i32**, i64*, i8**, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
