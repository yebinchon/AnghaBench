; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_mschapv2.c_mschapv2_derive_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_mschapv2.c_mschapv2_derive_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"MSCHAPV2: Identity\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"MSCHAPV2: Username\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"MSCHAPV2: auth_challenge\00", align 1
@MSCHAPV2_CHAL_LEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"MSCHAPV2: peer_challenge\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"MSCHAPV2: username\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"MSCHAPV2: password hash\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"MSCHAPV2: password\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"MSCHAPV2: NT Response\00", align 1
@MSCHAPV2_NT_RESPONSE_LEN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"MSCHAPV2: Auth Response\00", align 1
@MSCHAPV2_AUTH_RESPONSE_LEN = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [21 x i8] c"MSCHAPV2: Master Key\00", align 1
@MSCHAPV2_MASTER_KEY_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mschapv2_derive_response(i32* %0, i64 %1, i32* %2, i64 %3, i32 %4, i32* %5, i32* %6, i32* %7, i32* %8, i32* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i64, align 8
  %24 = alloca [16 x i32], align 16
  %25 = alloca [16 x i32], align 16
  store i32* %0, i32** %12, align 8
  store i64 %1, i64* %13, align 8
  store i32* %2, i32** %14, align 8
  store i64 %3, i64* %15, align 8
  store i32 %4, i32* %16, align 4
  store i32* %5, i32** %17, align 8
  store i32* %6, i32** %18, align 8
  store i32* %7, i32** %19, align 8
  store i32* %8, i32** %20, align 8
  store i32* %9, i32** %21, align 8
  %26 = load i32, i32* @MSG_DEBUG, align 4
  %27 = load i32*, i32** %12, align 8
  %28 = load i64, i64* %13, align 8
  %29 = call i32 @wpa_hexdump_ascii(i32 %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %27, i64 %28)
  %30 = load i64, i64* %13, align 8
  store i64 %30, i64* %23, align 8
  %31 = load i32*, i32** %12, align 8
  %32 = call i32* @mschapv2_remove_domain(i32* %31, i64* %23)
  store i32* %32, i32** %22, align 8
  %33 = load i32, i32* @MSG_DEBUG, align 4
  %34 = load i32*, i32** %22, align 8
  %35 = load i64, i64* %23, align 8
  %36 = call i32 @wpa_hexdump_ascii(i32 %33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32* %34, i64 %35)
  %37 = load i32, i32* @MSG_DEBUG, align 4
  %38 = load i32*, i32** %17, align 8
  %39 = load i32, i32* @MSCHAPV2_CHAL_LEN, align 4
  %40 = call i32 @wpa_hexdump(i32 %37, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32* %38, i32 %39)
  %41 = load i32, i32* @MSG_DEBUG, align 4
  %42 = load i32*, i32** %18, align 8
  %43 = load i32, i32* @MSCHAPV2_CHAL_LEN, align 4
  %44 = call i32 @wpa_hexdump(i32 %41, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32* %42, i32 %43)
  %45 = load i32, i32* @MSG_DEBUG, align 4
  %46 = load i32*, i32** %22, align 8
  %47 = load i64, i64* %23, align 8
  %48 = call i32 @wpa_hexdump_ascii(i32 %45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32* %46, i64 %47)
  %49 = load i32, i32* %16, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %76

51:                                               ; preds = %10
  %52 = load i32, i32* @MSG_DEBUG, align 4
  %53 = load i32*, i32** %14, align 8
  %54 = load i64, i64* %15, align 8
  %55 = call i32 @wpa_hexdump_key(i32 %52, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32* %53, i64 %54)
  %56 = load i32*, i32** %17, align 8
  %57 = load i32*, i32** %18, align 8
  %58 = load i32*, i32** %22, align 8
  %59 = load i64, i64* %23, align 8
  %60 = load i32*, i32** %14, align 8
  %61 = load i32*, i32** %19, align 8
  %62 = call i64 @generate_nt_response_pwhash(i32* %56, i32* %57, i32* %58, i64 %59, i32* %60, i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %74, label %64

64:                                               ; preds = %51
  %65 = load i32*, i32** %14, align 8
  %66 = load i32*, i32** %18, align 8
  %67 = load i32*, i32** %17, align 8
  %68 = load i32*, i32** %22, align 8
  %69 = load i64, i64* %23, align 8
  %70 = load i32*, i32** %19, align 8
  %71 = load i32*, i32** %20, align 8
  %72 = call i64 @generate_authenticator_response_pwhash(i32* %65, i32* %66, i32* %67, i32* %68, i64 %69, i32* %70, i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %64, %51
  store i32 -1, i32* %11, align 4
  br label %146

75:                                               ; preds = %64
  br label %103

76:                                               ; preds = %10
  %77 = load i32, i32* @MSG_DEBUG, align 4
  %78 = load i32*, i32** %14, align 8
  %79 = load i64, i64* %15, align 8
  %80 = call i32 @wpa_hexdump_ascii_key(i32 %77, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32* %78, i64 %79)
  %81 = load i32*, i32** %17, align 8
  %82 = load i32*, i32** %18, align 8
  %83 = load i32*, i32** %22, align 8
  %84 = load i64, i64* %23, align 8
  %85 = load i32*, i32** %14, align 8
  %86 = load i64, i64* %15, align 8
  %87 = load i32*, i32** %19, align 8
  %88 = call i64 @generate_nt_response(i32* %81, i32* %82, i32* %83, i64 %84, i32* %85, i64 %86, i32* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %101, label %90

90:                                               ; preds = %76
  %91 = load i32*, i32** %14, align 8
  %92 = load i64, i64* %15, align 8
  %93 = load i32*, i32** %18, align 8
  %94 = load i32*, i32** %17, align 8
  %95 = load i32*, i32** %22, align 8
  %96 = load i64, i64* %23, align 8
  %97 = load i32*, i32** %19, align 8
  %98 = load i32*, i32** %20, align 8
  %99 = call i64 @generate_authenticator_response(i32* %91, i64 %92, i32* %93, i32* %94, i32* %95, i64 %96, i32* %97, i32* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %90, %76
  store i32 -1, i32* %11, align 4
  br label %146

102:                                              ; preds = %90
  br label %103

103:                                              ; preds = %102, %75
  %104 = load i32, i32* @MSG_DEBUG, align 4
  %105 = load i32*, i32** %19, align 8
  %106 = load i32, i32* @MSCHAPV2_NT_RESPONSE_LEN, align 4
  %107 = call i32 @wpa_hexdump(i32 %104, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32* %105, i32 %106)
  %108 = load i32, i32* @MSG_DEBUG, align 4
  %109 = load i32*, i32** %20, align 8
  %110 = load i32, i32* @MSCHAPV2_AUTH_RESPONSE_LEN, align 4
  %111 = call i32 @wpa_hexdump(i32 %108, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32* %109, i32 %110)
  %112 = load i32, i32* %16, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %103
  %115 = load i32*, i32** %14, align 8
  %116 = getelementptr inbounds [16 x i32], [16 x i32]* %25, i64 0, i64 0
  %117 = call i64 @hash_nt_password_hash(i32* %115, i32* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  store i32 -1, i32* %11, align 4
  br label %146

120:                                              ; preds = %114
  br label %134

121:                                              ; preds = %103
  %122 = load i32*, i32** %14, align 8
  %123 = load i64, i64* %15, align 8
  %124 = getelementptr inbounds [16 x i32], [16 x i32]* %24, i64 0, i64 0
  %125 = call i64 @nt_password_hash(i32* %122, i64 %123, i32* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %132, label %127

127:                                              ; preds = %121
  %128 = getelementptr inbounds [16 x i32], [16 x i32]* %24, i64 0, i64 0
  %129 = getelementptr inbounds [16 x i32], [16 x i32]* %25, i64 0, i64 0
  %130 = call i64 @hash_nt_password_hash(i32* %128, i32* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %127, %121
  store i32 -1, i32* %11, align 4
  br label %146

133:                                              ; preds = %127
  br label %134

134:                                              ; preds = %133, %120
  %135 = getelementptr inbounds [16 x i32], [16 x i32]* %25, i64 0, i64 0
  %136 = load i32*, i32** %19, align 8
  %137 = load i32*, i32** %21, align 8
  %138 = call i64 @get_master_key(i32* %135, i32* %136, i32* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %134
  store i32 -1, i32* %11, align 4
  br label %146

141:                                              ; preds = %134
  %142 = load i32, i32* @MSG_DEBUG, align 4
  %143 = load i32*, i32** %21, align 8
  %144 = load i64, i64* @MSCHAPV2_MASTER_KEY_LEN, align 8
  %145 = call i32 @wpa_hexdump_key(i32 %142, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32* %143, i64 %144)
  store i32 0, i32* %11, align 4
  br label %146

146:                                              ; preds = %141, %140, %132, %119, %101, %74
  %147 = load i32, i32* %11, align 4
  ret i32 %147
}

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i32*, i64) #1

declare dso_local i32* @mschapv2_remove_domain(i32*, i64*) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i64) #1

declare dso_local i64 @generate_nt_response_pwhash(i32*, i32*, i32*, i64, i32*, i32*) #1

declare dso_local i64 @generate_authenticator_response_pwhash(i32*, i32*, i32*, i32*, i64, i32*, i32*) #1

declare dso_local i32 @wpa_hexdump_ascii_key(i32, i8*, i32*, i64) #1

declare dso_local i64 @generate_nt_response(i32*, i32*, i32*, i64, i32*, i64, i32*) #1

declare dso_local i64 @generate_authenticator_response(i32*, i64, i32*, i32*, i32*, i64, i32*, i32*) #1

declare dso_local i64 @hash_nt_password_hash(i32*, i32*) #1

declare dso_local i64 @nt_password_hash(i32*, i64, i32*) #1

declare dso_local i64 @get_master_key(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
