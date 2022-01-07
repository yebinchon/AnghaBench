; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_x509v3.c_x509_parse_time.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_x509v3.c_x509_parse_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"X509: Unrecognized UTCTime format\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"X509: Failed to parse UTCTime year\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"X509: Unrecognized GeneralizedTime format\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"X509: Failed to parse GeneralizedTime year\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"X509: Expected UTCTime or GeneralizedTime - found tag 0x%x\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"X509: Failed to parse Time (month)\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"X509: Failed to parse Time (day)\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"X509: Failed to parse Time (hour)\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"X509: Failed to parse Time (min)\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"X509: Failed to parse Time (sec)\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"X509: Failed to convert Time\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"X509: Year=%d before epoch - assume epoch as the time\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @x509_parse_time(i32* %0, i64 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = bitcast i32* %18 to i8*
  store i8* %19, i8** %10, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = load i64, i64* %7, align 8
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  store i8* %22, i8** %11, align 8
  %23 = load i32, i32* %8, align 4
  switch i32 %23, label %97 [
    i32 128, label %24
    i32 129, label %65
  ]

24:                                               ; preds = %4
  %25 = load i64, i64* %7, align 8
  %26 = icmp ne i64 %25, 13
  br i1 %26, label %32, label %27

27:                                               ; preds = %24
  %28 = load i32*, i32** %6, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 12
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 90
  br i1 %31, label %32, label %37

32:                                               ; preds = %27, %24
  %33 = load i32, i32* @MSG_DEBUG, align 4
  %34 = load i32*, i32** %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @wpa_hexdump_ascii(i32 %33, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32* %34, i64 %35)
  store i32 -1, i32* %5, align 4
  br label %213

37:                                               ; preds = %27
  %38 = load i8*, i8** %10, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = ptrtoint i8* %39 to i64
  %42 = ptrtoint i8* %40 to i64
  %43 = sub i64 %41, %42
  %44 = trunc i64 %43 to i32
  %45 = call i32 @parse_uint2(i8* %38, i32 %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %37
  %49 = load i32, i32* @MSG_DEBUG, align 4
  %50 = load i32*, i32** %6, align 8
  %51 = load i64, i64* %7, align 8
  %52 = call i32 @wpa_hexdump_ascii(i32 %49, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32* %50, i64 %51)
  store i32 -1, i32* %5, align 4
  br label %213

53:                                               ; preds = %37
  %54 = load i32, i32* %12, align 4
  %55 = icmp slt i32 %54, 50
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i32, i32* %12, align 4
  %58 = add nsw i32 %57, 2000
  store i32 %58, i32* %12, align 4
  br label %62

59:                                               ; preds = %53
  %60 = load i32, i32* %12, align 4
  %61 = add nsw i32 %60, 1900
  store i32 %61, i32* %12, align 4
  br label %62

62:                                               ; preds = %59, %56
  %63 = load i8*, i8** %10, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 2
  store i8* %64, i8** %10, align 8
  br label %101

65:                                               ; preds = %4
  %66 = load i64, i64* %7, align 8
  %67 = icmp ne i64 %66, 15
  br i1 %67, label %73, label %68

68:                                               ; preds = %65
  %69 = load i32*, i32** %6, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 14
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 90
  br i1 %72, label %73, label %78

73:                                               ; preds = %68, %65
  %74 = load i32, i32* @MSG_DEBUG, align 4
  %75 = load i32*, i32** %6, align 8
  %76 = load i64, i64* %7, align 8
  %77 = call i32 @wpa_hexdump_ascii(i32 %74, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32* %75, i64 %76)
  store i32 -1, i32* %5, align 4
  br label %213

78:                                               ; preds = %68
  %79 = load i8*, i8** %10, align 8
  %80 = load i8*, i8** %11, align 8
  %81 = load i8*, i8** %10, align 8
  %82 = ptrtoint i8* %80 to i64
  %83 = ptrtoint i8* %81 to i64
  %84 = sub i64 %82, %83
  %85 = trunc i64 %84 to i32
  %86 = call i32 @parse_uint4(i8* %79, i32 %85)
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %12, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %78
  %90 = load i32, i32* @MSG_DEBUG, align 4
  %91 = load i32*, i32** %6, align 8
  %92 = load i64, i64* %7, align 8
  %93 = call i32 @wpa_hexdump_ascii(i32 %90, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32* %91, i64 %92)
  store i32 -1, i32* %5, align 4
  br label %213

94:                                               ; preds = %78
  %95 = load i8*, i8** %10, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 4
  store i8* %96, i8** %10, align 8
  br label %101

97:                                               ; preds = %4
  %98 = load i32, i32* @MSG_DEBUG, align 4
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @wpa_printf(i32 %98, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i32 %99)
  store i32 -1, i32* %5, align 4
  br label %213

101:                                              ; preds = %94, %62
  %102 = load i8*, i8** %10, align 8
  %103 = load i8*, i8** %11, align 8
  %104 = load i8*, i8** %10, align 8
  %105 = ptrtoint i8* %103 to i64
  %106 = ptrtoint i8* %104 to i64
  %107 = sub i64 %105, %106
  %108 = trunc i64 %107 to i32
  %109 = call i32 @parse_uint2(i8* %102, i32 %108)
  store i32 %109, i32* %13, align 4
  %110 = load i32, i32* %13, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %101
  %113 = load i32, i32* @MSG_DEBUG, align 4
  %114 = load i32*, i32** %6, align 8
  %115 = load i64, i64* %7, align 8
  %116 = call i32 @wpa_hexdump_ascii(i32 %113, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32* %114, i64 %115)
  store i32 -1, i32* %5, align 4
  br label %213

117:                                              ; preds = %101
  %118 = load i8*, i8** %10, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 2
  store i8* %119, i8** %10, align 8
  %120 = load i8*, i8** %10, align 8
  %121 = load i8*, i8** %11, align 8
  %122 = load i8*, i8** %10, align 8
  %123 = ptrtoint i8* %121 to i64
  %124 = ptrtoint i8* %122 to i64
  %125 = sub i64 %123, %124
  %126 = trunc i64 %125 to i32
  %127 = call i32 @parse_uint2(i8* %120, i32 %126)
  store i32 %127, i32* %14, align 4
  %128 = load i32, i32* %14, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %117
  %131 = load i32, i32* @MSG_DEBUG, align 4
  %132 = load i32*, i32** %6, align 8
  %133 = load i64, i64* %7, align 8
  %134 = call i32 @wpa_hexdump_ascii(i32 %131, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32* %132, i64 %133)
  store i32 -1, i32* %5, align 4
  br label %213

135:                                              ; preds = %117
  %136 = load i8*, i8** %10, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 2
  store i8* %137, i8** %10, align 8
  %138 = load i8*, i8** %10, align 8
  %139 = load i8*, i8** %11, align 8
  %140 = load i8*, i8** %10, align 8
  %141 = ptrtoint i8* %139 to i64
  %142 = ptrtoint i8* %140 to i64
  %143 = sub i64 %141, %142
  %144 = trunc i64 %143 to i32
  %145 = call i32 @parse_uint2(i8* %138, i32 %144)
  store i32 %145, i32* %15, align 4
  %146 = load i32, i32* %15, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %135
  %149 = load i32, i32* @MSG_DEBUG, align 4
  %150 = load i32*, i32** %6, align 8
  %151 = load i64, i64* %7, align 8
  %152 = call i32 @wpa_hexdump_ascii(i32 %149, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32* %150, i64 %151)
  store i32 -1, i32* %5, align 4
  br label %213

153:                                              ; preds = %135
  %154 = load i8*, i8** %10, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 2
  store i8* %155, i8** %10, align 8
  %156 = load i8*, i8** %10, align 8
  %157 = load i8*, i8** %11, align 8
  %158 = load i8*, i8** %10, align 8
  %159 = ptrtoint i8* %157 to i64
  %160 = ptrtoint i8* %158 to i64
  %161 = sub i64 %159, %160
  %162 = trunc i64 %161 to i32
  %163 = call i32 @parse_uint2(i8* %156, i32 %162)
  store i32 %163, i32* %16, align 4
  %164 = load i32, i32* %16, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %153
  %167 = load i32, i32* @MSG_DEBUG, align 4
  %168 = load i32*, i32** %6, align 8
  %169 = load i64, i64* %7, align 8
  %170 = call i32 @wpa_hexdump_ascii(i32 %167, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i32* %168, i64 %169)
  store i32 -1, i32* %5, align 4
  br label %213

171:                                              ; preds = %153
  %172 = load i8*, i8** %10, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 2
  store i8* %173, i8** %10, align 8
  %174 = load i8*, i8** %10, align 8
  %175 = load i8*, i8** %11, align 8
  %176 = load i8*, i8** %10, align 8
  %177 = ptrtoint i8* %175 to i64
  %178 = ptrtoint i8* %176 to i64
  %179 = sub i64 %177, %178
  %180 = trunc i64 %179 to i32
  %181 = call i32 @parse_uint2(i8* %174, i32 %180)
  store i32 %181, i32* %17, align 4
  %182 = load i32, i32* %17, align 4
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %171
  %185 = load i32, i32* @MSG_DEBUG, align 4
  %186 = load i32*, i32** %6, align 8
  %187 = load i64, i64* %7, align 8
  %188 = call i32 @wpa_hexdump_ascii(i32 %185, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i32* %186, i64 %187)
  store i32 -1, i32* %5, align 4
  br label %213

189:                                              ; preds = %171
  %190 = load i32, i32* %12, align 4
  %191 = load i32, i32* %13, align 4
  %192 = load i32, i32* %14, align 4
  %193 = load i32, i32* %15, align 4
  %194 = load i32, i32* %16, align 4
  %195 = load i32, i32* %17, align 4
  %196 = load i64*, i64** %9, align 8
  %197 = call i64 @os_mktime(i32 %190, i32 %191, i32 %192, i32 %193, i32 %194, i32 %195, i64* %196)
  %198 = icmp slt i64 %197, 0
  br i1 %198, label %199, label %212

199:                                              ; preds = %189
  %200 = load i32, i32* @MSG_DEBUG, align 4
  %201 = load i32*, i32** %6, align 8
  %202 = load i64, i64* %7, align 8
  %203 = call i32 @wpa_hexdump_ascii(i32 %200, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i32* %201, i64 %202)
  %204 = load i32, i32* %12, align 4
  %205 = icmp slt i32 %204, 1970
  br i1 %205, label %206, label %211

206:                                              ; preds = %199
  %207 = load i32, i32* @MSG_DEBUG, align 4
  %208 = load i32, i32* %12, align 4
  %209 = call i32 @wpa_printf(i32 %207, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i64 0, i64 0), i32 %208)
  %210 = load i64*, i64** %9, align 8
  store i64 0, i64* %210, align 8
  store i32 0, i32* %5, align 4
  br label %213

211:                                              ; preds = %199
  store i32 -1, i32* %5, align 4
  br label %213

212:                                              ; preds = %189
  store i32 0, i32* %5, align 4
  br label %213

213:                                              ; preds = %212, %211, %206, %184, %166, %148, %130, %112, %97, %89, %73, %48, %32
  %214 = load i32, i32* %5, align 4
  ret i32 %214
}

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i32*, i64) #1

declare dso_local i32 @parse_uint2(i8*, i32) #1

declare dso_local i32 @parse_uint4(i8*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i64 @os_mktime(i32, i32, i32, i32, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
