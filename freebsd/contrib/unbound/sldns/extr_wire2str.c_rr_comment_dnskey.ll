; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_wire2str.c_rr_comment_dnskey.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_wire2str.c_rr_comment_dnskey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c" ;{\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"id = %u\00", align 1
@LDNS_KEY_ZONE_KEY = common dso_local global i32 0, align 4
@LDNS_KEY_SEP_KEY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c" (ksk)\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c" (zsk)\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"size = %db\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i64*, i64*, i64, i64)* @rr_comment_dnskey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rr_comment_dnskey(i8** %0, i64* %1, i64* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8** %0, i8*** %7, align 8
  store i64* %1, i64** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 0, i32* %15, align 4
  %16 = load i64, i64* %10, align 8
  %17 = load i64, i64* %11, align 8
  %18 = add i64 %17, 10
  %19 = icmp ult i64 %16, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %123

21:                                               ; preds = %5
  %22 = load i64*, i64** %9, align 8
  %23 = load i64, i64* %11, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = getelementptr inbounds i64, i64* %24, i64 8
  %26 = call i64 @sldns_read_uint16(i64* %25)
  store i64 %26, i64* %12, align 8
  %27 = load i64, i64* %10, align 8
  %28 = load i64, i64* %11, align 8
  %29 = add i64 %28, 10
  %30 = load i64, i64* %12, align 8
  %31 = add i64 %29, %30
  %32 = icmp ult i64 %27, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  br label %123

34:                                               ; preds = %21
  %35 = load i64*, i64** %9, align 8
  %36 = load i64, i64* %11, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = getelementptr inbounds i64, i64* %37, i64 10
  store i64* %38, i64** %13, align 8
  %39 = load i64*, i64** %13, align 8
  %40 = call i64 @sldns_read_uint16(i64* %39)
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %14, align 4
  %42 = load i8**, i8*** %7, align 8
  %43 = load i64*, i64** %8, align 8
  %44 = call i64 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %42, i64* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* %15, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %15, align 4
  %49 = load i8**, i8*** %7, align 8
  %50 = load i64*, i64** %8, align 8
  %51 = load i64*, i64** %13, align 8
  %52 = load i64, i64* %12, align 8
  %53 = call i32 @sldns_calc_keytag_raw(i64* %51, i64 %52)
  %54 = call i64 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %49, i64* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %15, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %56, %54
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %15, align 4
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* @LDNS_KEY_ZONE_KEY, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %85

63:                                               ; preds = %34
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* @LDNS_KEY_SEP_KEY, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %63
  %69 = load i8**, i8*** %7, align 8
  %70 = load i64*, i64** %8, align 8
  %71 = call i64 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %69, i64* %70, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %72 = load i32, i32* %15, align 4
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %73, %71
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %15, align 4
  br label %84

76:                                               ; preds = %63
  %77 = load i8**, i8*** %7, align 8
  %78 = load i64*, i64** %8, align 8
  %79 = call i64 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %77, i64* %78, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %80 = load i32, i32* %15, align 4
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %81, %79
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %15, align 4
  br label %84

84:                                               ; preds = %76, %68
  br label %85

85:                                               ; preds = %84, %34
  %86 = load i64, i64* %12, align 8
  %87 = icmp ugt i64 %86, 4
  br i1 %87, label %88, label %114

88:                                               ; preds = %85
  %89 = load i8**, i8*** %7, align 8
  %90 = load i64*, i64** %8, align 8
  %91 = call i64 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %89, i64* %90, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %92 = load i32, i32* %15, align 4
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %93, %91
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %15, align 4
  %96 = load i8**, i8*** %7, align 8
  %97 = load i64*, i64** %8, align 8
  %98 = load i64*, i64** %13, align 8
  %99 = bitcast i64* %98 to i8*
  %100 = getelementptr inbounds i8, i8* %99, i64 4
  %101 = load i64, i64* %12, align 8
  %102 = sub i64 %101, 4
  %103 = load i64*, i64** %13, align 8
  %104 = getelementptr inbounds i64, i64* %103, i64 3
  %105 = load i64, i64* %104, align 8
  %106 = trunc i64 %105 to i32
  %107 = call i64 @sldns_rr_dnskey_key_size_raw(i8* %100, i64 %102, i32 %106)
  %108 = trunc i64 %107 to i32
  %109 = call i64 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %96, i64* %97, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* %15, align 4
  %111 = sext i32 %110 to i64
  %112 = add nsw i64 %111, %109
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %15, align 4
  br label %114

114:                                              ; preds = %88, %85
  %115 = load i8**, i8*** %7, align 8
  %116 = load i64*, i64** %8, align 8
  %117 = call i64 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %115, i64* %116, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %118 = load i32, i32* %15, align 4
  %119 = sext i32 %118 to i64
  %120 = add nsw i64 %119, %117
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %15, align 4
  %122 = load i32, i32* %15, align 4
  store i32 %122, i32* %6, align 4
  br label %123

123:                                              ; preds = %114, %33, %20
  %124 = load i32, i32* %6, align 4
  ret i32 %124
}

declare dso_local i64 @sldns_read_uint16(i64*) #1

declare dso_local i64 @sldns_str_print(i8**, i64*, i8*, ...) #1

declare dso_local i32 @sldns_calc_keytag_raw(i64*, i64) #1

declare dso_local i64 @sldns_rr_dnskey_key_size_raw(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
