; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_default_config.c_krb5_kdc_get_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_default_config.c_krb5_kdc_get_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i64, i8*, i8*, i8*, i32*, i32*, i8*, i32*, i64, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"malloc: out of memory\00", align 1
@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@TRPOLICY_ALWAYS_CHECK = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"kdc\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"require-preauth\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"tgt-use-strongest-session-key\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"preauth-use-strongest-session-key\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"svc-use-strongest-session-key\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"use-strongest-server-key\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"check-ticket-addresses\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"allow-null-ticket-addresses\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"allow-anonymous\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"max-kdc-datagram-reply-length\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"DEFAULT\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"transited-policy\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"always-check\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"allow-per-principal\00", align 1
@TRPOLICY_ALLOW_PER_PRINCIPAL = common dso_local global i8* null, align 8
@.str.15 = private unnamed_addr constant [22 x i8] c"always-honour-request\00", align 1
@TRPOLICY_ALWAYS_HONOUR_REQUEST = common dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [66 x i8] c"unknown transited-policy: %s, reverting to default (always-check)\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"encode_as_rep_as_tgs_rep\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"kdc_warn_pwexpire\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"enable-pkinit\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"pkinit_identity\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"pkinit_anchors\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"pkinit_pool\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"pkinit_revoke\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"pkinit_kdc_ocsp\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"pkinit_kdc_friendly_name\00", align 1
@.str.26 = private unnamed_addr constant [32 x i8] c"pkinit_principal_in_certificate\00", align 1
@.str.27 = private unnamed_addr constant [29 x i8] c"pkinit_win2k_require_binding\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"pkinit_dh_min_bits\00", align 1
@_kdc_digestunits = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @krb5_kdc_get_config(i32 %0, %struct.TYPE_5__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__**, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_5__** %1, %struct.TYPE_5__*** %5, align 8
  %8 = call %struct.TYPE_5__* @calloc(i32 1, i32 240)
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %6, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %10 = icmp eq %struct.TYPE_5__* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = call i32 @krb5_set_error_message(i32 %12, i32 %13, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @ENOMEM, align 4
  store i32 %15, i32* %3, align 4
  br label %228

16:                                               ; preds = %2
  %17 = load i8*, i8** @TRUE, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 20
  store i64 0, i64* %21, align 8
  %22 = load i8*, i8** @FALSE, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = load i8*, i8** @FALSE, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  store i8* %25, i8** %27, align 8
  %28 = load i8*, i8** @FALSE, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 3
  store i8* %28, i8** %30, align 8
  %31 = load i8*, i8** @FALSE, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 4
  store i8* %31, i8** %33, align 8
  %34 = load i8*, i8** @TRUE, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 5
  store i8* %34, i8** %36, align 8
  %37 = load i8*, i8** @TRUE, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 6
  store i8* %37, i8** %39, align 8
  %40 = load i8*, i8** @TRUE, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 7
  store i8* %40, i8** %42, align 8
  %43 = load i8*, i8** @FALSE, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 8
  store i8* %43, i8** %45, align 8
  %46 = load i8*, i8** @TRPOLICY_ALWAYS_CHECK, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 21
  store i8* %46, i8** %48, align 8
  %49 = load i8*, i8** @FALSE, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 9
  store i8* %49, i8** %51, align 8
  %52 = load i8*, i8** @TRUE, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 10
  store i8* %52, i8** %54, align 8
  %55 = load i8*, i8** @TRUE, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 11
  store i8* %55, i8** %57, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 29
  store i32* null, i32** %59, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 28
  store i64 0, i64* %61, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 27
  store i32* null, i32** %63, align 8
  %64 = load i32, i32* %4, align 4
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i8* @krb5_config_get_bool_default(i32 %64, i32* null, i8* %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32* null)
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  store i8* %68, i8** %70, align 8
  %71 = load i32, i32* %4, align 4
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 2
  %74 = load i8*, i8** %73, align 8
  %75 = call i8* @krb5_config_get_bool_default(i32 %71, i32* null, i8* %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32* null)
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 2
  store i8* %75, i8** %77, align 8
  %78 = load i32, i32* %4, align 4
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 3
  %81 = load i8*, i8** %80, align 8
  %82 = call i8* @krb5_config_get_bool_default(i32 %78, i32* null, i8* %81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32* null)
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 3
  store i8* %82, i8** %84, align 8
  %85 = load i32, i32* %4, align 4
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 4
  %88 = load i8*, i8** %87, align 8
  %89 = call i8* @krb5_config_get_bool_default(i32 %85, i32* null, i8* %88, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32* null)
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 4
  store i8* %89, i8** %91, align 8
  %92 = load i32, i32* %4, align 4
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 5
  %95 = load i8*, i8** %94, align 8
  %96 = call i8* @krb5_config_get_bool_default(i32 %92, i32* null, i8* %95, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32* null)
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 5
  store i8* %96, i8** %98, align 8
  %99 = load i32, i32* %4, align 4
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 6
  %102 = load i8*, i8** %101, align 8
  %103 = call i8* @krb5_config_get_bool_default(i32 %99, i32* null, i8* %102, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32* null)
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 6
  store i8* %103, i8** %105, align 8
  %106 = load i32, i32* %4, align 4
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 7
  %109 = load i8*, i8** %108, align 8
  %110 = call i8* @krb5_config_get_bool_default(i32 %106, i32* null, i8* %109, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i32* null)
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 7
  store i8* %110, i8** %112, align 8
  %113 = load i32, i32* %4, align 4
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 8
  %116 = load i8*, i8** %115, align 8
  %117 = call i8* @krb5_config_get_bool_default(i32 %113, i32* null, i8* %116, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32* null)
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 8
  store i8* %117, i8** %119, align 8
  %120 = load i32, i32* %4, align 4
  %121 = call i8* @krb5_config_get_int_default(i32 %120, i32* null, i32 1400, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i32* null)
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 22
  store i8* %121, i8** %123, align 8
  %124 = load i32, i32* %4, align 4
  %125 = call i8* @krb5_config_get_string_default(i32 %124, i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i32* null)
  store i8* %125, i8** %7, align 8
  %126 = load i8*, i8** %7, align 8
  %127 = call i64 @strcasecmp(i8* %126, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0))
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %16
  %130 = load i8*, i8** @TRPOLICY_ALWAYS_CHECK, align 8
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 21
  store i8* %130, i8** %132, align 8
  br label %162

133:                                              ; preds = %16
  %134 = load i8*, i8** %7, align 8
  %135 = call i64 @strcasecmp(i8* %134, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0))
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %133
  %138 = load i8*, i8** @TRPOLICY_ALLOW_PER_PRINCIPAL, align 8
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 21
  store i8* %138, i8** %140, align 8
  br label %161

141:                                              ; preds = %133
  %142 = load i8*, i8** %7, align 8
  %143 = call i64 @strcasecmp(i8* %142, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0))
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %141
  %146 = load i8*, i8** @TRPOLICY_ALWAYS_HONOUR_REQUEST, align 8
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 21
  store i8* %146, i8** %148, align 8
  br label %160

149:                                              ; preds = %141
  %150 = load i8*, i8** %7, align 8
  %151 = call i64 @strcasecmp(i8* %150, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %149
  br label %159

154:                                              ; preds = %149
  %155 = load i32, i32* %4, align 4
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %157 = load i8*, i8** %7, align 8
  %158 = call i32 (i32, %struct.TYPE_5__*, i32, i8*, ...) @kdc_log(i32 %155, %struct.TYPE_5__* %156, i32 0, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.16, i64 0, i64 0), i8* %157)
  br label %159

159:                                              ; preds = %154, %153
  br label %160

160:                                              ; preds = %159, %145
  br label %161

161:                                              ; preds = %160, %137
  br label %162

162:                                              ; preds = %161, %129
  %163 = load i32, i32* %4, align 4
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 1
  %166 = load i8*, i8** %165, align 8
  %167 = call i8* @krb5_config_get_bool_default(i32 %163, i32* null, i8* %166, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0), i32* null)
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 1
  store i8* %167, i8** %169, align 8
  %170 = load i32, i32* %4, align 4
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 20
  %173 = load i64, i64* %172, align 8
  %174 = call i64 @krb5_config_get_time_default(i32 %170, i32* null, i64 %173, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0), i32* null)
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 20
  store i64 %174, i64* %176, align 8
  %177 = load i32, i32* %4, align 4
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 9
  %180 = load i8*, i8** %179, align 8
  %181 = call i8* @krb5_config_get_bool_default(i32 %177, i32* null, i8* %180, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i32* null)
  %182 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 9
  store i8* %181, i8** %183, align 8
  %184 = load i32, i32* %4, align 4
  %185 = call i8* @krb5_config_get_string(i32 %184, i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i32* null)
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 19
  store i8* %185, i8** %187, align 8
  %188 = load i32, i32* %4, align 4
  %189 = call i8* @krb5_config_get_string(i32 %188, i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32* null)
  %190 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 18
  store i8* %189, i8** %191, align 8
  %192 = load i32, i32* %4, align 4
  %193 = call i8* @krb5_config_get_strings(i32 %192, i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0), i32* null)
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 17
  store i8* %193, i8** %195, align 8
  %196 = load i32, i32* %4, align 4
  %197 = call i8* @krb5_config_get_strings(i32 %196, i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0), i32* null)
  %198 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 16
  store i8* %197, i8** %199, align 8
  %200 = load i32, i32* %4, align 4
  %201 = call i8* @krb5_config_get_string(i32 %200, i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i64 0, i64 0), i32* null)
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 15
  store i8* %201, i8** %203, align 8
  %204 = load i32, i32* %4, align 4
  %205 = call i8* @krb5_config_get_string(i32 %204, i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i64 0, i64 0), i32* null)
  %206 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 14
  store i8* %205, i8** %207, align 8
  %208 = load i32, i32* %4, align 4
  %209 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 10
  %211 = load i8*, i8** %210, align 8
  %212 = call i8* @krb5_config_get_bool_default(i32 %208, i32* null, i8* %211, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.26, i64 0, i64 0), i32* null)
  %213 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 10
  store i8* %212, i8** %214, align 8
  %215 = load i32, i32* %4, align 4
  %216 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i32 0, i32 11
  %218 = load i8*, i8** %217, align 8
  %219 = call i8* @krb5_config_get_bool_default(i32 %215, i32* null, i8* %218, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.27, i64 0, i64 0), i32* null)
  %220 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 11
  store i8* %219, i8** %221, align 8
  %222 = load i32, i32* %4, align 4
  %223 = call i8* @krb5_config_get_int_default(i32 %222, i32* null, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.28, i64 0, i64 0), i32* null)
  %224 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 13
  store i8* %223, i8** %225, align 8
  %226 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %227 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  store %struct.TYPE_5__* %226, %struct.TYPE_5__** %227, align 8
  store i32 0, i32* %3, align 4
  br label %228

228:                                              ; preds = %162, %11
  %229 = load i32, i32* %3, align 4
  ret i32 %229
}

declare dso_local %struct.TYPE_5__* @calloc(i32, i32) #1

declare dso_local i32 @krb5_set_error_message(i32, i32, i8*) #1

declare dso_local i8* @krb5_config_get_bool_default(i32, i32*, i8*, i8*, i8*, i32*) #1

declare dso_local i8* @krb5_config_get_int_default(i32, i32*, i32, i8*, i8*, i32*) #1

declare dso_local i8* @krb5_config_get_string_default(i32, i32*, i8*, i8*, i8*, i32*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @kdc_log(i32, %struct.TYPE_5__*, i32, i8*, ...) #1

declare dso_local i64 @krb5_config_get_time_default(i32, i32*, i64, i8*, i8*, i32*) #1

declare dso_local i8* @krb5_config_get_string(i32, i32*, i8*, i8*, i32*) #1

declare dso_local i8* @krb5_config_get_strings(i32, i32*, i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
