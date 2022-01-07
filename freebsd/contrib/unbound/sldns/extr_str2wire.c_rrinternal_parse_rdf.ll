; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_str2wire.c_rrinternal_parse_rdf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_str2wire.c_rrinternal_parse_rdf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"@\00", align 1
@LDNS_RR_TYPE_SOA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@LDNS_WIREPARSE_ERR_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64, i32*, i64, i64*, i32, i32, i64, i64, i64, i32*, i64)* @rrinternal_parse_rdf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rrinternal_parse_rdf(i32* %0, i8* %1, i64 %2, i32* %3, i64 %4, i64* %5, i32 %6, i32 %7, i64 %8, i64 %9, i64 %10, i32* %11, i64 %12) #0 {
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32*, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i32, align 4
  %34 = alloca i64, align 8
  store i32* %0, i32** %15, align 8
  store i8* %1, i8** %16, align 8
  store i64 %2, i64* %17, align 8
  store i32* %3, i32** %18, align 8
  store i64 %4, i64* %19, align 8
  store i64* %5, i64** %20, align 8
  store i32 %6, i32* %21, align 4
  store i32 %7, i32* %22, align 4
  store i64 %8, i64* %23, align 8
  store i64 %9, i64* %24, align 8
  store i64 %10, i64* %25, align 8
  store i32* %11, i32** %26, align 8
  store i64 %12, i64* %27, align 8
  %35 = load i32, i32* %21, align 4
  switch i32 %35, label %126 [
    i32 129, label %36
    i32 128, label %109
    i32 130, label %109
  ]

36:                                               ; preds = %13
  %37 = load i8*, i8** %16, align 8
  %38 = call i32 @strcmp(i8* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %79

40:                                               ; preds = %36
  %41 = load i32*, i32** %26, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i64, i64* %27, align 8
  store i64 %44, i64* %31, align 8
  %45 = load i32*, i32** %26, align 8
  store i32* %45, i32** %30, align 8
  br label %55

46:                                               ; preds = %40
  %47 = load i32, i32* %22, align 4
  %48 = load i32, i32* @LDNS_RR_TYPE_SOA, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i64, i64* %25, align 8
  store i64 %51, i64* %31, align 8
  %52 = load i32*, i32** %18, align 8
  store i32* %52, i32** %30, align 8
  br label %54

53:                                               ; preds = %46
  store i64 1, i64* %31, align 8
  store i32* bitcast ([2 x i8]* @.str.1 to i32*), i32** %30, align 8
  br label %54

54:                                               ; preds = %53, %50
  br label %55

55:                                               ; preds = %54, %43
  %56 = load i64*, i64** %20, align 8
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %31, align 8
  %59 = add i64 %57, %58
  %60 = load i64, i64* %19, align 8
  %61 = icmp ugt i64 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %55
  %63 = load i32, i32* @LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL, align 4
  %64 = load i32*, i32** %15, align 8
  %65 = call i64 @sldns_buffer_position(i32* %64)
  %66 = call i32 @RET_ERR(i32 %63, i64 %65)
  store i32 %66, i32* %14, align 4
  br label %154

67:                                               ; preds = %55
  %68 = load i32*, i32** %18, align 8
  %69 = load i64*, i64** %20, align 8
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32*, i32** %30, align 8
  %73 = load i64, i64* %31, align 8
  %74 = call i32 @memmove(i32* %71, i32* %72, i64 %73)
  %75 = load i64, i64* %31, align 8
  %76 = load i64*, i64** %20, align 8
  %77 = load i64, i64* %76, align 8
  %78 = add i64 %77, %75
  store i64 %78, i64* %76, align 8
  br label %107

79:                                               ; preds = %36
  %80 = load i64, i64* %19, align 8
  %81 = load i64*, i64** %20, align 8
  %82 = load i64, i64* %81, align 8
  %83 = sub i64 %80, %82
  store i64 %83, i64* %32, align 8
  %84 = load i8*, i8** %16, align 8
  %85 = load i32*, i32** %18, align 8
  %86 = load i64*, i64** %20, align 8
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32*, i32** %26, align 8
  %90 = load i64, i64* %27, align 8
  %91 = call i32 @sldns_str2wire_dname_buf_origin(i8* %84, i32* %88, i64* %32, i32* %89, i64 %90)
  store i32 %91, i32* %33, align 4
  %92 = load i32, i32* %33, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %79
  %95 = load i32, i32* %33, align 4
  %96 = load i32*, i32** %15, align 8
  %97 = call i64 @sldns_buffer_position(i32* %96)
  %98 = load i8*, i8** %16, align 8
  %99 = call i64 @strlen(i8* %98)
  %100 = sub i64 %97, %99
  %101 = call i32 @RET_ERR_SHIFT(i32 %95, i64 %100)
  store i32 %101, i32* %14, align 4
  br label %154

102:                                              ; preds = %79
  %103 = load i64, i64* %32, align 8
  %104 = load i64*, i64** %20, align 8
  %105 = load i64, i64* %104, align 8
  %106 = add i64 %105, %103
  store i64 %106, i64* %104, align 8
  br label %107

107:                                              ; preds = %102, %67
  %108 = load i32, i32* @LDNS_WIREPARSE_ERR_OK, align 4
  store i32 %108, i32* %14, align 4
  br label %154

109:                                              ; preds = %13, %13
  %110 = load i64, i64* %23, align 8
  %111 = load i64, i64* %24, align 8
  %112 = sub i64 %111, 1
  %113 = icmp eq i64 %110, %112
  br i1 %113, label %114, label %125

114:                                              ; preds = %109
  %115 = load i8*, i8** %16, align 8
  %116 = call i64 @strlen(i8* %115)
  store i64 %116, i64* %34, align 8
  %117 = load i32*, i32** %15, align 8
  %118 = load i8*, i8** %16, align 8
  %119 = load i64, i64* %34, align 8
  %120 = getelementptr inbounds i8, i8* %118, i64 %119
  %121 = load i64, i64* %17, align 8
  %122 = load i64, i64* %34, align 8
  %123 = sub i64 %121, %122
  %124 = call i32 @sldns_bget_token(i32* %117, i8* %120, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64 %123)
  br label %125

125:                                              ; preds = %114, %109
  br label %127

126:                                              ; preds = %13
  br label %127

127:                                              ; preds = %126, %125
  %128 = load i64, i64* %19, align 8
  %129 = load i64*, i64** %20, align 8
  %130 = load i64, i64* %129, align 8
  %131 = sub i64 %128, %130
  store i64 %131, i64* %28, align 8
  %132 = load i8*, i8** %16, align 8
  %133 = load i32*, i32** %18, align 8
  %134 = load i64*, i64** %20, align 8
  %135 = load i64, i64* %134, align 8
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %21, align 4
  %138 = call i32 @sldns_str2wire_rdf_buf(i8* %132, i32* %136, i64* %28, i32 %137)
  store i32 %138, i32* %29, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %127
  %141 = load i32, i32* %29, align 4
  %142 = load i32*, i32** %15, align 8
  %143 = call i64 @sldns_buffer_position(i32* %142)
  %144 = load i8*, i8** %16, align 8
  %145 = call i64 @strlen(i8* %144)
  %146 = sub i64 %143, %145
  %147 = call i32 @RET_ERR_SHIFT(i32 %141, i64 %146)
  store i32 %147, i32* %14, align 4
  br label %154

148:                                              ; preds = %127
  %149 = load i64, i64* %28, align 8
  %150 = load i64*, i64** %20, align 8
  %151 = load i64, i64* %150, align 8
  %152 = add i64 %151, %149
  store i64 %152, i64* %150, align 8
  %153 = load i32, i32* @LDNS_WIREPARSE_ERR_OK, align 4
  store i32 %153, i32* %14, align 4
  br label %154

154:                                              ; preds = %148, %140, %107, %94, %62
  %155 = load i32, i32* %14, align 4
  ret i32 %155
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @RET_ERR(i32, i64) #1

declare dso_local i64 @sldns_buffer_position(i32*) #1

declare dso_local i32 @memmove(i32*, i32*, i64) #1

declare dso_local i32 @sldns_str2wire_dname_buf_origin(i8*, i32*, i64*, i32*, i64) #1

declare dso_local i32 @RET_ERR_SHIFT(i32, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sldns_bget_token(i32*, i8*, i8*, i64) #1

declare dso_local i32 @sldns_str2wire_rdf_buf(i8*, i32*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
