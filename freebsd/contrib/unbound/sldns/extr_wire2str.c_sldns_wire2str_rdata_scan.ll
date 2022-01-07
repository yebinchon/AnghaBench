; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_wire2str.c_sldns_wire2str_rdata_scan.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_wire2str.c_sldns_wire2str_rdata_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sldns_wire2str_rdata_scan(i32** %0, i64* %1, i8** %2, i64* %3, i32 %4, i32* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  store i32** %0, i32*** %9, align 8
  store i64* %1, i64** %10, align 8
  store i8** %2, i8*** %11, align 8
  store i64* %3, i64** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i64 %6, i64* %15, align 8
  %26 = load i32**, i32*** %9, align 8
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %16, align 8
  %28 = load i8**, i8*** %11, align 8
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %17, align 8
  %30 = load i64*, i64** %10, align 8
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %18, align 8
  %32 = load i64*, i64** %12, align 8
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %19, align 8
  store i32 0, i32* %23, align 4
  %34 = load i32, i32* %13, align 4
  %35 = call i32* @sldns_rr_descript(i32 %34)
  store i32* %35, i32** %25, align 8
  %36 = load i32*, i32** %25, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %7
  %39 = load i32**, i32*** %9, align 8
  %40 = load i64*, i64** %10, align 8
  %41 = load i8**, i8*** %11, align 8
  %42 = load i64*, i64** %12, align 8
  %43 = call i32 @sldns_wire2str_rdata_unknown_scan(i32** %39, i64* %40, i8** %41, i64* %42)
  store i32 %43, i32* %8, align 4
  br label %116

44:                                               ; preds = %7
  %45 = load i32*, i32** %25, align 8
  %46 = call i64 @sldns_rr_descriptor_maximum(i32* %45)
  store i64 %46, i64* %21, align 8
  store i64 0, i64* %20, align 8
  br label %47

47:                                               ; preds = %106, %44
  %48 = load i64, i64* %20, align 8
  %49 = load i64, i64* %21, align 8
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %51, label %109

51:                                               ; preds = %47
  %52 = load i64*, i64** %10, align 8
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %51
  %56 = load i64, i64* %20, align 8
  %57 = load i32*, i32** %25, align 8
  %58 = call i64 @sldns_rr_descriptor_minimum(i32* %57)
  %59 = icmp ult i64 %56, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %88

61:                                               ; preds = %55
  br label %109

62:                                               ; preds = %51
  %63 = load i32*, i32** %25, align 8
  %64 = load i64, i64* %20, align 8
  %65 = call i32 @sldns_rr_descriptor_field_type(i32* %63, i64 %64)
  store i32 %65, i32* %22, align 4
  %66 = load i64, i64* %20, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %62
  %69 = load i8**, i8*** %11, align 8
  %70 = load i64*, i64** %12, align 8
  %71 = call i64 @sldns_str_print(i8** %69, i64* %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %72 = load i32, i32* %23, align 4
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %73, %71
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %23, align 4
  br label %76

76:                                               ; preds = %68, %62
  %77 = load i32**, i32*** %9, align 8
  %78 = load i64*, i64** %10, align 8
  %79 = load i8**, i8*** %11, align 8
  %80 = load i64*, i64** %12, align 8
  %81 = load i32, i32* %22, align 4
  %82 = load i32*, i32** %14, align 8
  %83 = load i64, i64* %15, align 8
  %84 = call i32 @sldns_wire2str_rdf_scan(i32** %77, i64* %78, i8** %79, i64* %80, i32 %81, i32* %82, i64 %83)
  store i32 %84, i32* %24, align 4
  %85 = load i32, i32* %24, align 4
  %86 = icmp eq i32 %85, -1
  br i1 %86, label %87, label %102

87:                                               ; preds = %76
  br label %88

88:                                               ; preds = %113, %87, %60
  %89 = load i32*, i32** %16, align 8
  %90 = load i32**, i32*** %9, align 8
  store i32* %89, i32** %90, align 8
  %91 = load i8*, i8** %17, align 8
  %92 = load i8**, i8*** %11, align 8
  store i8* %91, i8** %92, align 8
  %93 = load i64, i64* %18, align 8
  %94 = load i64*, i64** %10, align 8
  store i64 %93, i64* %94, align 8
  %95 = load i64, i64* %19, align 8
  %96 = load i64*, i64** %12, align 8
  store i64 %95, i64* %96, align 8
  %97 = load i32**, i32*** %9, align 8
  %98 = load i64*, i64** %10, align 8
  %99 = load i8**, i8*** %11, align 8
  %100 = load i64*, i64** %12, align 8
  %101 = call i32 @sldns_wire2str_rdata_unknown_scan(i32** %97, i64* %98, i8** %99, i64* %100)
  store i32 %101, i32* %8, align 4
  br label %116

102:                                              ; preds = %76
  %103 = load i32, i32* %24, align 4
  %104 = load i32, i32* %23, align 4
  %105 = add nsw i32 %104, %103
  store i32 %105, i32* %23, align 4
  br label %106

106:                                              ; preds = %102
  %107 = load i64, i64* %20, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %20, align 8
  br label %47

109:                                              ; preds = %61, %47
  %110 = load i64*, i64** %10, align 8
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %109
  br label %88

114:                                              ; preds = %109
  %115 = load i32, i32* %23, align 4
  store i32 %115, i32* %8, align 4
  br label %116

116:                                              ; preds = %114, %88, %38
  %117 = load i32, i32* %8, align 4
  ret i32 %117
}

declare dso_local i32* @sldns_rr_descript(i32) #1

declare dso_local i32 @sldns_wire2str_rdata_unknown_scan(i32**, i64*, i8**, i64*) #1

declare dso_local i64 @sldns_rr_descriptor_maximum(i32*) #1

declare dso_local i64 @sldns_rr_descriptor_minimum(i32*) #1

declare dso_local i32 @sldns_rr_descriptor_field_type(i32*, i64) #1

declare dso_local i64 @sldns_str_print(i8**, i64*, i8*) #1

declare dso_local i32 @sldns_wire2str_rdf_scan(i32**, i64*, i8**, i64*, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
