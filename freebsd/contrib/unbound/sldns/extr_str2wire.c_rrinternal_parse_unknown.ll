; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_str2wire.c_rrinternal_parse_unknown.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_str2wire.c_rrinternal_parse_unknown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"\0A\09 \00", align 1
@LDNS_WIREPARSE_ERR_GENERAL = common dso_local global i32 0, align 4
@LDNS_WIREPARSE_ERR_SYNTAX_RDATA = common dso_local global i32 0, align 4
@LDNS_MAX_RDFLEN = common dso_local global i64 0, align 8
@LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@LDNS_WIREPARSE_ERR_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64, i32*, i64*, i64*, i64)* @rrinternal_parse_unknown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rrinternal_parse_unknown(i32* %0, i8* %1, i64 %2, i32* %3, i64* %4, i64* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i32* %3, i32** %12, align 8
  store i64* %4, i64** %13, align 8
  store i64* %5, i64** %14, align 8
  store i64 %6, i64* %15, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %16, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = load i64, i64* %15, align 8
  %23 = call i32 @sldns_buffer_set_position(i32* %21, i64 %22)
  %24 = load i32*, i32** %9, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = load i8*, i8** %16, align 8
  %27 = load i64, i64* %11, align 8
  %28 = call i32 @sldns_bget_token(i32* %24, i8* %25, i8* %26, i64 %27)
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %32

30:                                               ; preds = %7
  %31 = load i32, i32* @LDNS_WIREPARSE_ERR_GENERAL, align 4
  store i32 %31, i32* %8, align 4
  br label %114

32:                                               ; preds = %7
  %33 = load i32*, i32** %9, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = load i8*, i8** %16, align 8
  %36 = load i64, i64* %11, align 8
  %37 = call i32 @sldns_bget_token(i32* %33, i8* %34, i8* %35, i64 %36)
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = load i32, i32* @LDNS_WIREPARSE_ERR_SYNTAX_RDATA, align 4
  %41 = load i32*, i32** %9, align 8
  %42 = call i64 @sldns_buffer_position(i32* %41)
  %43 = call i32 @RET_ERR(i32 %40, i64 %42)
  store i32 %43, i32* %8, align 4
  br label %114

44:                                               ; preds = %32
  %45 = load i8*, i8** %10, align 8
  %46 = call i64 @atoi(i8* %45)
  store i64 %46, i64* %17, align 8
  %47 = load i64, i64* %17, align 8
  %48 = load i64, i64* @LDNS_MAX_RDFLEN, align 8
  %49 = icmp ugt i64 %47, %48
  br i1 %49, label %58, label %50

50:                                               ; preds = %44
  %51 = load i64*, i64** %14, align 8
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %17, align 8
  %54 = add i64 %52, %53
  %55 = load i64*, i64** %13, align 8
  %56 = load i64, i64* %55, align 8
  %57 = icmp ugt i64 %54, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %50, %44
  %59 = load i32, i32* @LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL, align 4
  %60 = load i32*, i32** %9, align 8
  %61 = call i64 @sldns_buffer_position(i32* %60)
  %62 = call i32 @RET_ERR(i32 %59, i64 %61)
  store i32 %62, i32* %8, align 4
  br label %114

63:                                               ; preds = %50
  %64 = load i64, i64* %17, align 8
  %65 = mul i64 %64, 2
  store i64 %65, i64* %17, align 8
  store i64 0, i64* %18, align 8
  br label %66

66:                                               ; preds = %106, %63
  %67 = load i64, i64* %18, align 8
  %68 = load i64, i64* %17, align 8
  %69 = icmp ult i64 %67, %68
  br i1 %69, label %70, label %107

70:                                               ; preds = %66
  %71 = load i32*, i32** %9, align 8
  %72 = load i8*, i8** %10, align 8
  %73 = load i8*, i8** %16, align 8
  %74 = load i64, i64* %11, align 8
  %75 = call i32 @sldns_bget_token(i32* %71, i8* %72, i8* %73, i64 %74)
  store i32 %75, i32* %20, align 4
  %76 = load i8*, i8** %10, align 8
  %77 = load i32*, i32** %12, align 8
  %78 = load i64*, i64** %13, align 8
  %79 = load i64, i64* %78, align 8
  %80 = load i64*, i64** %14, align 8
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %17, align 8
  %83 = call i32 @rrinternal_spool_hex(i8* %76, i32* %77, i64 %79, i64 %81, i64* %18, i64 %82)
  store i32 %83, i32* %19, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %70
  %86 = load i32, i32* %19, align 4
  %87 = load i32*, i32** %9, align 8
  %88 = call i64 @sldns_buffer_position(i32* %87)
  %89 = load i8*, i8** %10, align 8
  %90 = call i64 @strlen(i8* %89)
  %91 = sub nsw i64 %88, %90
  %92 = call i32 @RET_ERR_SHIFT(i32 %86, i64 %91)
  store i32 %92, i32* %8, align 4
  br label %114

93:                                               ; preds = %70
  %94 = load i32, i32* %20, align 4
  %95 = icmp eq i32 %94, -1
  br i1 %95, label %96, label %106

96:                                               ; preds = %93
  %97 = load i64, i64* %18, align 8
  %98 = load i64, i64* %17, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %96
  %101 = load i32, i32* @LDNS_WIREPARSE_ERR_SYNTAX_RDATA, align 4
  %102 = load i32*, i32** %9, align 8
  %103 = call i64 @sldns_buffer_position(i32* %102)
  %104 = call i32 @RET_ERR(i32 %101, i64 %103)
  store i32 %104, i32* %8, align 4
  br label %114

105:                                              ; preds = %96
  br label %107

106:                                              ; preds = %93
  br label %66

107:                                              ; preds = %105, %66
  %108 = load i64, i64* %17, align 8
  %109 = udiv i64 %108, 2
  %110 = load i64*, i64** %14, align 8
  %111 = load i64, i64* %110, align 8
  %112 = add i64 %111, %109
  store i64 %112, i64* %110, align 8
  %113 = load i32, i32* @LDNS_WIREPARSE_ERR_OK, align 4
  store i32 %113, i32* %8, align 4
  br label %114

114:                                              ; preds = %107, %100, %85, %58, %39, %30
  %115 = load i32, i32* %8, align 4
  ret i32 %115
}

declare dso_local i32 @sldns_buffer_set_position(i32*, i64) #1

declare dso_local i32 @sldns_bget_token(i32*, i8*, i8*, i64) #1

declare dso_local i32 @RET_ERR(i32, i64) #1

declare dso_local i64 @sldns_buffer_position(i32*) #1

declare dso_local i64 @atoi(i8*) #1

declare dso_local i32 @rrinternal_spool_hex(i8*, i32*, i64, i64, i64*, i64) #1

declare dso_local i32 @RET_ERR_SHIFT(i32, i64) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
