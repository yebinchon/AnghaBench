; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_wolfssl.c_tls_match_suffix_helper.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_wolfssl.c_tls_match_suffix_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i8* }
%struct.TYPE_5__ = type { i8*, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"TLS: Match domain against %s%s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"suffix \00", align 1
@ALT_NAMES_OID = common dso_local global i32 0, align 4
@ASN_DNS_TYPE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"TLS: Certificate dNSName\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"TLS: %s in dNSName found\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"Match\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"Suffix match\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"TLS: None of the dNSName(s) matched\00", align 1
@ASN_COMMON_NAME = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [28 x i8] c"TLS: Certificate commonName\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"TLS: %s in commonName found\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"TLS: No CommonName %smatch found\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64, i32)* @tls_match_suffix_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_match_suffix_helper(i32* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %14, align 4
  %18 = load i32, i32* @MSG_DEBUG, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 (i32, i8*, ...) @wpa_printf(i32 %18, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %22, i8* %23)
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* @ALT_NAMES_OID, align 4
  %27 = call i8* @wolfSSL_X509_get_ext_d2i(i32* %25, i32 %26, i32* null, i32* null)
  store i8* %27, i8** %11, align 8
  store i32 0, i32* %13, align 4
  br label %28

28:                                               ; preds = %82, %4
  %29 = load i8*, i8** %11, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load i32, i32* %13, align 4
  %33 = load i8*, i8** %11, align 8
  %34 = call i32 @wolfSSL_sk_num(i8* %33)
  %35 = icmp slt i32 %32, %34
  br label %36

36:                                               ; preds = %31, %28
  %37 = phi i1 [ false, %28 ], [ %35, %31 ]
  br i1 %37, label %38, label %85

38:                                               ; preds = %36
  %39 = load i8*, i8** %11, align 8
  %40 = load i32, i32* %13, align 4
  %41 = call %struct.TYPE_6__* @wolfSSL_sk_value(i8* %39, i32 %40)
  store %struct.TYPE_6__* %41, %struct.TYPE_6__** %10, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @ASN_DNS_TYPE, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %82

48:                                               ; preds = %38
  %49 = load i32, i32* %14, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* @MSG_DEBUG, align 4
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @os_strlen(i8* %57)
  %59 = call i32 @wpa_hexdump_ascii(i32 %51, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %54, i32 %58)
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @os_strlen(i8* %65)
  %67 = load i8*, i8** %7, align 8
  %68 = load i64, i64* %8, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @domain_suffix_match(i8* %62, i32 %66, i8* %67, i64 %68, i32 %69)
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %72, label %81

72:                                               ; preds = %48
  %73 = load i32, i32* @MSG_DEBUG, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0)
  %78 = call i32 (i32, i8*, ...) @wpa_printf(i32 %73, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %77)
  %79 = load i8*, i8** %11, align 8
  %80 = call i32 @wolfSSL_sk_ASN1_OBJECT_free(i8* %79)
  store i32 1, i32* %5, align 4
  br label %152

81:                                               ; preds = %48
  br label %82

82:                                               ; preds = %81, %47
  %83 = load i32, i32* %13, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %13, align 4
  br label %28

85:                                               ; preds = %36
  %86 = load i8*, i8** %11, align 8
  %87 = call i32 @wolfSSL_sk_ASN1_OBJECT_free(i8* %86)
  %88 = load i32, i32* %14, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load i32, i32* @MSG_DEBUG, align 4
  %92 = call i32 (i32, i8*, ...) @wpa_printf(i32 %91, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %152

93:                                               ; preds = %85
  %94 = load i32*, i32** %6, align 8
  %95 = call i32* @wolfSSL_X509_get_subject_name(i32* %94)
  store i32* %95, i32** %15, align 8
  store i32 -1, i32* %12, align 4
  br label %96

96:                                               ; preds = %144, %116, %110, %93
  %97 = load i32*, i32** %15, align 8
  %98 = load i32, i32* @ASN_COMMON_NAME, align 4
  %99 = load i32, i32* %12, align 4
  %100 = call i32 @wolfSSL_X509_NAME_get_index_by_NID(i32* %97, i32 %98, i32 %99)
  store i32 %100, i32* %12, align 4
  %101 = load i32, i32* %12, align 4
  %102 = icmp eq i32 %101, -1
  br i1 %102, label %103, label %104

103:                                              ; preds = %96
  br label %145

104:                                              ; preds = %96
  %105 = load i32*, i32** %15, align 8
  %106 = load i32, i32* %12, align 4
  %107 = call i32* @wolfSSL_X509_NAME_get_entry(i32* %105, i32 %106)
  store i32* %107, i32** %16, align 8
  %108 = load i32*, i32** %16, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %111, label %110

110:                                              ; preds = %104
  br label %96

111:                                              ; preds = %104
  %112 = load i32*, i32** %16, align 8
  %113 = call %struct.TYPE_5__* @wolfSSL_X509_NAME_ENTRY_get_data(i32* %112)
  store %struct.TYPE_5__* %113, %struct.TYPE_5__** %17, align 8
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %115 = icmp ne %struct.TYPE_5__* %114, null
  br i1 %115, label %117, label %116

116:                                              ; preds = %111
  br label %96

117:                                              ; preds = %111
  %118 = load i32, i32* @MSG_DEBUG, align 4
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @wpa_hexdump_ascii(i32 %118, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i8* %121, i32 %124)
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load i8*, i8** %7, align 8
  %133 = load i64, i64* %8, align 8
  %134 = load i32, i32* %9, align 4
  %135 = call i32 @domain_suffix_match(i8* %128, i32 %131, i8* %132, i64 %133, i32 %134)
  %136 = icmp eq i32 %135, 1
  br i1 %136, label %137, label %144

137:                                              ; preds = %117
  %138 = load i32, i32* @MSG_DEBUG, align 4
  %139 = load i32, i32* %9, align 4
  %140 = icmp ne i32 %139, 0
  %141 = zext i1 %140 to i64
  %142 = select i1 %140, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0)
  %143 = call i32 (i32, i8*, ...) @wpa_printf(i32 %138, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i8* %142)
  store i32 1, i32* %5, align 4
  br label %152

144:                                              ; preds = %117
  br label %96

145:                                              ; preds = %103
  %146 = load i32, i32* @MSG_DEBUG, align 4
  %147 = load i32, i32* %9, align 4
  %148 = icmp ne i32 %147, 0
  %149 = zext i1 %148 to i64
  %150 = select i1 %148, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %151 = call i32 (i32, i8*, ...) @wpa_printf(i32 %146, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i8* %150)
  store i32 0, i32* %5, align 4
  br label %152

152:                                              ; preds = %145, %137, %90, %72
  %153 = load i32, i32* %5, align 4
  ret i32 %153
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i8* @wolfSSL_X509_get_ext_d2i(i32*, i32, i32*, i32*) #1

declare dso_local i32 @wolfSSL_sk_num(i8*) #1

declare dso_local %struct.TYPE_6__* @wolfSSL_sk_value(i8*, i32) #1

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i8*, i32) #1

declare dso_local i32 @os_strlen(i8*) #1

declare dso_local i32 @domain_suffix_match(i8*, i32, i8*, i64, i32) #1

declare dso_local i32 @wolfSSL_sk_ASN1_OBJECT_free(i8*) #1

declare dso_local i32* @wolfSSL_X509_get_subject_name(i32*) #1

declare dso_local i32 @wolfSSL_X509_NAME_get_index_by_NID(i32*, i32, i32) #1

declare dso_local i32* @wolfSSL_X509_NAME_get_entry(i32*, i32) #1

declare dso_local %struct.TYPE_5__* @wolfSSL_X509_NAME_ENTRY_get_data(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
