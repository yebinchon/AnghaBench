; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_str2wire.c_rrinternal_spool_hex.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_str2wire.c_rrinternal_spool_hex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_WIREPARSE_ERR_SYNTAX_RDATA = common dso_local global i32 0, align 4
@LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@LDNS_WIREPARSE_ERR_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i64, i64, i64*, i64)* @rrinternal_spool_hex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rrinternal_spool_hex(i8* %0, i32* %1, i64 %2, i64 %3, i64* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64* %4, i64** %12, align 8
  store i64 %5, i64* %13, align 8
  %15 = load i8*, i8** %8, align 8
  store i8* %15, i8** %14, align 8
  br label %16

16:                                               ; preds = %105, %25, %6
  %17 = load i8*, i8** %14, align 8
  %18 = load i8, i8* %17, align 1
  %19 = icmp ne i8 %18, 0
  br i1 %19, label %20, label %111

20:                                               ; preds = %16
  %21 = load i8*, i8** %14, align 8
  %22 = load i8, i8* %21, align 1
  %23 = call i64 @isspace(i8 zeroext %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i8*, i8** %14, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %14, align 8
  br label %16

28:                                               ; preds = %20
  %29 = load i8*, i8** %14, align 8
  %30 = load i8, i8* %29, align 1
  %31 = call i32 @isxdigit(i8 zeroext %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @LDNS_WIREPARSE_ERR_SYNTAX_RDATA, align 4
  %35 = load i8*, i8** %14, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = ptrtoint i8* %35 to i64
  %38 = ptrtoint i8* %36 to i64
  %39 = sub i64 %37, %38
  %40 = trunc i64 %39 to i32
  %41 = call i32 @RET_ERR(i32 %34, i32 %40)
  store i32 %41, i32* %7, align 4
  br label %113

42:                                               ; preds = %28
  %43 = load i64*, i64** %12, align 8
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %13, align 8
  %46 = icmp uge i64 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %42
  %48 = load i32, i32* @LDNS_WIREPARSE_ERR_SYNTAX_RDATA, align 4
  %49 = load i8*, i8** %14, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = ptrtoint i8* %49 to i64
  %52 = ptrtoint i8* %50 to i64
  %53 = sub i64 %51, %52
  %54 = trunc i64 %53 to i32
  %55 = call i32 @RET_ERR(i32 %48, i32 %54)
  store i32 %55, i32* %7, align 4
  br label %113

56:                                               ; preds = %42
  %57 = load i64, i64* %11, align 8
  %58 = load i64*, i64** %12, align 8
  %59 = load i64, i64* %58, align 8
  %60 = udiv i64 %59, 2
  %61 = add i64 %57, %60
  %62 = load i64, i64* %10, align 8
  %63 = icmp uge i64 %61, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %56
  %65 = load i32, i32* @LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL, align 4
  %66 = load i8*, i8** %14, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = ptrtoint i8* %66 to i64
  %69 = ptrtoint i8* %67 to i64
  %70 = sub i64 %68, %69
  %71 = trunc i64 %70 to i32
  %72 = call i32 @RET_ERR(i32 %65, i32 %71)
  store i32 %72, i32* %7, align 4
  br label %113

73:                                               ; preds = %56
  %74 = load i64*, i64** %12, align 8
  %75 = load i64, i64* %74, align 8
  %76 = and i64 %75, 1
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %91

78:                                               ; preds = %73
  %79 = load i8*, i8** %14, align 8
  %80 = load i8, i8* %79, align 1
  %81 = call i64 @sldns_hexdigit_to_int(i8 signext %80)
  %82 = trunc i64 %81 to i32
  %83 = mul nsw i32 %82, 16
  %84 = load i32*, i32** %9, align 8
  %85 = load i64, i64* %11, align 8
  %86 = load i64*, i64** %12, align 8
  %87 = load i64, i64* %86, align 8
  %88 = udiv i64 %87, 2
  %89 = add i64 %85, %88
  %90 = getelementptr inbounds i32, i32* %84, i64 %89
  store i32 %83, i32* %90, align 4
  br label %105

91:                                               ; preds = %73
  %92 = load i8*, i8** %14, align 8
  %93 = load i8, i8* %92, align 1
  %94 = call i64 @sldns_hexdigit_to_int(i8 signext %93)
  %95 = trunc i64 %94 to i32
  %96 = load i32*, i32** %9, align 8
  %97 = load i64, i64* %11, align 8
  %98 = load i64*, i64** %12, align 8
  %99 = load i64, i64* %98, align 8
  %100 = udiv i64 %99, 2
  %101 = add i64 %97, %100
  %102 = getelementptr inbounds i32, i32* %96, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, %95
  store i32 %104, i32* %102, align 4
  br label %105

105:                                              ; preds = %91, %78
  %106 = load i8*, i8** %14, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %14, align 8
  %108 = load i64*, i64** %12, align 8
  %109 = load i64, i64* %108, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %108, align 8
  br label %16

111:                                              ; preds = %16
  %112 = load i32, i32* @LDNS_WIREPARSE_ERR_OK, align 4
  store i32 %112, i32* %7, align 4
  br label %113

113:                                              ; preds = %111, %64, %47, %33
  %114 = load i32, i32* %7, align 4
  ret i32 %114
}

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i32 @isxdigit(i8 zeroext) #1

declare dso_local i32 @RET_ERR(i32, i32) #1

declare dso_local i64 @sldns_hexdigit_to_int(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
