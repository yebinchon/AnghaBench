; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_openssl.c_tls_match_suffix_helper.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_openssl.c_tls_match_suffix_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"TLS: Match domain against %s%s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"suffix \00", align 1
@NID_subject_alt_name = common dso_local global i32 0, align 4
@GEN_DNS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"TLS: Certificate dNSName\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"TLS: %s in dNSName found\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"Match\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"Suffix match\00", align 1
@GENERAL_NAME_free = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [36 x i8] c"TLS: None of the dNSName(s) matched\00", align 1
@NID_commonName = common dso_local global i32 0, align 4
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
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_10__*, align 8
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
  %26 = load i32, i32* @NID_subject_alt_name, align 4
  %27 = call i8* @X509_get_ext_d2i(i32* %25, i32 %26, i32* null, i32* null)
  store i8* %27, i8** %11, align 8
  store i64 0, i64* %13, align 8
  br label %28

28:                                               ; preds = %93, %4
  %29 = load i8*, i8** %11, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load i64, i64* %13, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = call i64 @sk_GENERAL_NAME_num(i8* %33)
  %35 = icmp slt i64 %32, %34
  br label %36

36:                                               ; preds = %31, %28
  %37 = phi i1 [ false, %28 ], [ %35, %31 ]
  br i1 %37, label %38, label %96

38:                                               ; preds = %36
  %39 = load i8*, i8** %11, align 8
  %40 = load i64, i64* %13, align 8
  %41 = call %struct.TYPE_9__* @sk_GENERAL_NAME_value(i8* %39, i64 %40)
  store %struct.TYPE_9__* %41, %struct.TYPE_9__** %10, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @GEN_DNS, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %93

48:                                               ; preds = %38
  %49 = load i32, i32* %14, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* @MSG_DEBUG, align 4
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @wpa_hexdump_ascii(i32 %51, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %57, i32 %63)
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i8*, i8** %7, align 8
  %78 = load i64, i64* %8, align 8
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @domain_suffix_match(i32 %70, i32 %76, i8* %77, i64 %78, i32 %79)
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %92

82:                                               ; preds = %48
  %83 = load i32, i32* @MSG_DEBUG, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0)
  %88 = call i32 (i32, i8*, ...) @wpa_printf(i32 %83, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %87)
  %89 = load i8*, i8** %11, align 8
  %90 = load i32, i32* @GENERAL_NAME_free, align 4
  %91 = call i32 @sk_GENERAL_NAME_pop_free(i8* %89, i32 %90)
  store i32 1, i32* %5, align 4
  br label %164

92:                                               ; preds = %48
  br label %93

93:                                               ; preds = %92, %47
  %94 = load i64, i64* %13, align 8
  %95 = add nsw i64 %94, 1
  store i64 %95, i64* %13, align 8
  br label %28

96:                                               ; preds = %36
  %97 = load i8*, i8** %11, align 8
  %98 = load i32, i32* @GENERAL_NAME_free, align 4
  %99 = call i32 @sk_GENERAL_NAME_pop_free(i8* %97, i32 %98)
  %100 = load i32, i32* %14, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %96
  %103 = load i32, i32* @MSG_DEBUG, align 4
  %104 = call i32 (i32, i8*, ...) @wpa_printf(i32 %103, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %164

105:                                              ; preds = %96
  %106 = load i32*, i32** %6, align 8
  %107 = call i32* @X509_get_subject_name(i32* %106)
  store i32* %107, i32** %15, align 8
  store i32 -1, i32* %12, align 4
  br label %108

108:                                              ; preds = %156, %128, %122, %105
  %109 = load i32*, i32** %15, align 8
  %110 = load i32, i32* @NID_commonName, align 4
  %111 = load i32, i32* %12, align 4
  %112 = call i32 @X509_NAME_get_index_by_NID(i32* %109, i32 %110, i32 %111)
  store i32 %112, i32* %12, align 4
  %113 = load i32, i32* %12, align 4
  %114 = icmp eq i32 %113, -1
  br i1 %114, label %115, label %116

115:                                              ; preds = %108
  br label %157

116:                                              ; preds = %108
  %117 = load i32*, i32** %15, align 8
  %118 = load i32, i32* %12, align 4
  %119 = call i32* @X509_NAME_get_entry(i32* %117, i32 %118)
  store i32* %119, i32** %16, align 8
  %120 = load i32*, i32** %16, align 8
  %121 = icmp eq i32* %120, null
  br i1 %121, label %122, label %123

122:                                              ; preds = %116
  br label %108

123:                                              ; preds = %116
  %124 = load i32*, i32** %16, align 8
  %125 = call %struct.TYPE_10__* @X509_NAME_ENTRY_get_data(i32* %124)
  store %struct.TYPE_10__* %125, %struct.TYPE_10__** %17, align 8
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %127 = icmp eq %struct.TYPE_10__* %126, null
  br i1 %127, label %128, label %129

128:                                              ; preds = %123
  br label %108

129:                                              ; preds = %123
  %130 = load i32, i32* @MSG_DEBUG, align 4
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @wpa_hexdump_ascii(i32 %130, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i32 %133, i32 %136)
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i8*, i8** %7, align 8
  %145 = load i64, i64* %8, align 8
  %146 = load i32, i32* %9, align 4
  %147 = call i32 @domain_suffix_match(i32 %140, i32 %143, i8* %144, i64 %145, i32 %146)
  %148 = icmp eq i32 %147, 1
  br i1 %148, label %149, label %156

149:                                              ; preds = %129
  %150 = load i32, i32* @MSG_DEBUG, align 4
  %151 = load i32, i32* %9, align 4
  %152 = icmp ne i32 %151, 0
  %153 = zext i1 %152 to i64
  %154 = select i1 %152, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0)
  %155 = call i32 (i32, i8*, ...) @wpa_printf(i32 %150, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i8* %154)
  store i32 1, i32* %5, align 4
  br label %164

156:                                              ; preds = %129
  br label %108

157:                                              ; preds = %115
  %158 = load i32, i32* @MSG_DEBUG, align 4
  %159 = load i32, i32* %9, align 4
  %160 = icmp ne i32 %159, 0
  %161 = zext i1 %160 to i64
  %162 = select i1 %160, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %163 = call i32 (i32, i8*, ...) @wpa_printf(i32 %158, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i8* %162)
  store i32 0, i32* %5, align 4
  br label %164

164:                                              ; preds = %157, %149, %102, %82
  %165 = load i32, i32* %5, align 4
  ret i32 %165
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i8* @X509_get_ext_d2i(i32*, i32, i32*, i32*) #1

declare dso_local i64 @sk_GENERAL_NAME_num(i8*) #1

declare dso_local %struct.TYPE_9__* @sk_GENERAL_NAME_value(i8*, i64) #1

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i32, i32) #1

declare dso_local i32 @domain_suffix_match(i32, i32, i8*, i64, i32) #1

declare dso_local i32 @sk_GENERAL_NAME_pop_free(i8*, i32) #1

declare dso_local i32* @X509_get_subject_name(i32*) #1

declare dso_local i32 @X509_NAME_get_index_by_NID(i32*, i32, i32) #1

declare dso_local i32* @X509_NAME_get_entry(i32*, i32) #1

declare dso_local %struct.TYPE_10__* @X509_NAME_ENTRY_get_data(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
