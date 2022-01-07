; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_ticket.c_check_server_referral.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_ticket.c_check_server_referral.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_36__ = type { %struct.TYPE_32__ }
%struct.TYPE_32__ = type { %struct.TYPE_31__* }
%struct.TYPE_31__ = type { i32, i32 }
%struct.TYPE_38__ = type { i8*, %struct.TYPE_35__ }
%struct.TYPE_35__ = type { %struct.TYPE_34__ }
%struct.TYPE_34__ = type { i8** }
%struct.TYPE_39__ = type { i8**, i64 }
%struct.TYPE_37__ = type { i32, i32 }
%struct.TYPE_30__ = type { %struct.TYPE_33__ }
%struct.TYPE_33__ = type { i64, i32 }

@KRB5_PADATA_SERVER_REFERRAL = common dso_local global i32 0, align 4
@KRB5KRB_AP_ERR_MODIFIED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"Referral EncryptedData wrong for realm %s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"realm\00", align 1
@KRB5_KU_PA_SERVER_REFERRAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [58 x i8] c"server ref realm mismatch, requested realm %s got back %s\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"tgt returned with wrong ref\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"req princ no same as returned\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"referred principal not same as requested\00", align 1
@EXTRACT_TICKET_AS_REQ = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [38 x i8] c"Requested principal missing on AS-REQ\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [48 x i8] c"Not same server principal returned as requested\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.TYPE_36__*, i32, %struct.TYPE_38__*, %struct.TYPE_38__*, i32*)* @check_server_referral to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @check_server_referral(i32 %0, %struct.TYPE_36__* %1, i32 %2, %struct.TYPE_38__* %3, %struct.TYPE_38__* %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_36__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_38__*, align 8
  %12 = alloca %struct.TYPE_38__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_39__, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_39__, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_37__, align 4
  %20 = alloca %struct.TYPE_30__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  store i32 %0, i32* %8, align 4
  store %struct.TYPE_36__* %1, %struct.TYPE_36__** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.TYPE_38__* %3, %struct.TYPE_38__** %11, align 8
  store %struct.TYPE_38__* %4, %struct.TYPE_38__** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %21, align 4
  %24 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_31__*, %struct.TYPE_31__** %26, align 8
  %28 = icmp eq %struct.TYPE_31__* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %6
  br label %218

30:                                               ; preds = %6
  %31 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_31__*, %struct.TYPE_31__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_31__*, %struct.TYPE_31__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @KRB5_PADATA_SERVER_REFERRAL, align 4
  %44 = call %struct.TYPE_30__* @krb5_find_padata(i32 %36, i32 %42, i32 %43, i32* %21)
  store %struct.TYPE_30__* %44, %struct.TYPE_30__** %20, align 8
  %45 = load %struct.TYPE_30__*, %struct.TYPE_30__** %20, align 8
  %46 = icmp eq %struct.TYPE_30__* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %30
  br label %218

48:                                               ; preds = %30
  %49 = call i32 @memset(%struct.TYPE_39__* %17, i32 0, i32 16)
  %50 = call i32 @memset(%struct.TYPE_39__* %15, i32 0, i32 16)
  %51 = load %struct.TYPE_30__*, %struct.TYPE_30__** %20, align 8
  %52 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_30__*, %struct.TYPE_30__** %20, align 8
  %56 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i64 @decode_EncryptedData(i32 %54, i64 %58, %struct.TYPE_39__* %17, i64* %18)
  store i64 %59, i64* %14, align 8
  %60 = load i64, i64* %14, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %48
  %63 = load i64, i64* %14, align 8
  store i64 %63, i64* %7, align 8
  br label %245

64:                                               ; preds = %48
  %65 = load i64, i64* %18, align 8
  %66 = load %struct.TYPE_30__*, %struct.TYPE_30__** %20, align 8
  %67 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %65, %69
  br i1 %70, label %71, label %81

71:                                               ; preds = %64
  %72 = call i32 @free_EncryptedData(%struct.TYPE_39__* %17)
  %73 = load i32, i32* %8, align 4
  %74 = load i64, i64* @KRB5KRB_AP_ERR_MODIFIED, align 8
  %75 = call i32 @N_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %76 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 (i32, i64, i32, ...) @krb5_set_error_message(i32 %73, i64 %74, i32 %75, i8* %78)
  %80 = load i64, i64* @KRB5KRB_AP_ERR_MODIFIED, align 8
  store i64 %80, i64* %7, align 8
  br label %245

81:                                               ; preds = %64
  %82 = load i32, i32* %8, align 4
  %83 = load i32*, i32** %13, align 8
  %84 = call i64 @krb5_crypto_init(i32 %82, i32* %83, i32 0, i32* %16)
  store i64 %84, i64* %14, align 8
  %85 = load i64, i64* %14, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = call i32 @free_EncryptedData(%struct.TYPE_39__* %17)
  %89 = load i64, i64* %14, align 8
  store i64 %89, i64* %7, align 8
  br label %245

90:                                               ; preds = %81
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %16, align 4
  %93 = load i32, i32* @KRB5_KU_PA_SERVER_REFERRAL, align 4
  %94 = call i64 @krb5_decrypt_EncryptedData(i32 %91, i32 %92, i32 %93, %struct.TYPE_39__* %17, %struct.TYPE_37__* %19)
  store i64 %94, i64* %14, align 8
  %95 = call i32 @free_EncryptedData(%struct.TYPE_39__* %17)
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %16, align 4
  %98 = call i32 @krb5_crypto_destroy(i32 %96, i32 %97)
  %99 = load i64, i64* %14, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %90
  %102 = load i64, i64* %14, align 8
  store i64 %102, i64* %7, align 8
  br label %245

103:                                              ; preds = %90
  %104 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %19, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %19, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i64 @decode_PA_ServerReferralData(i32 %105, i32 %107, %struct.TYPE_39__* %15, i64* %18)
  store i64 %108, i64* %14, align 8
  %109 = load i64, i64* %14, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %103
  %112 = call i32 @krb5_data_free(%struct.TYPE_37__* %19)
  %113 = load i64, i64* %14, align 8
  store i64 %113, i64* %7, align 8
  br label %245

114:                                              ; preds = %103
  %115 = call i32 @krb5_data_free(%struct.TYPE_37__* %19)
  %116 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = call i64 @strcmp(i8* %118, i8* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %137

124:                                              ; preds = %114
  %125 = call i32 @free_PA_ServerReferralData(%struct.TYPE_39__* %15)
  %126 = load i32, i32* %8, align 4
  %127 = load i64, i64* @KRB5KRB_AP_ERR_MODIFIED, align 8
  %128 = call i32 @N_(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %129 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %130 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %129, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %132, i32 0, i32 0
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 (i32, i64, i32, ...) @krb5_set_error_message(i32 %126, i64 %127, i32 %128, i8* %131, i8* %134)
  %136 = load i64, i64* @KRB5KRB_AP_ERR_MODIFIED, align 8
  store i64 %136, i64* %7, align 8
  br label %245

137:                                              ; preds = %114
  %138 = load i32, i32* %8, align 4
  %139 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %140 = call i64 @krb5_principal_is_krbtgt(i32 %138, %struct.TYPE_38__* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %168

142:                                              ; preds = %137
  %143 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %144 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %145, i32 0, i32 0
  %147 = load i8**, i8*** %146, align 8
  %148 = getelementptr inbounds i8*, i8** %147, i64 1
  %149 = load i8*, i8** %148, align 8
  store i8* %149, i8** %23, align 8
  %150 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %15, i32 0, i32 0
  %151 = load i8**, i8*** %150, align 8
  %152 = icmp eq i8** %151, null
  br i1 %152, label %160, label %153

153:                                              ; preds = %142
  %154 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %15, i32 0, i32 0
  %155 = load i8**, i8*** %154, align 8
  %156 = load i8*, i8** %155, align 8
  %157 = load i8*, i8** %23, align 8
  %158 = call i64 @strcmp(i8* %156, i8* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %167

160:                                              ; preds = %153, %142
  %161 = call i32 @free_PA_ServerReferralData(%struct.TYPE_39__* %15)
  %162 = load i32, i32* %8, align 4
  %163 = load i64, i64* @KRB5KRB_AP_ERR_MODIFIED, align 8
  %164 = call i32 @N_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %165 = call i32 (i32, i64, i32, ...) @krb5_set_error_message(i32 %162, i64 %163, i32 %164)
  %166 = load i64, i64* @KRB5KRB_AP_ERR_MODIFIED, align 8
  store i64 %166, i64* %7, align 8
  br label %245

167:                                              ; preds = %153
  br label %182

168:                                              ; preds = %137
  %169 = load i32, i32* %8, align 4
  %170 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %171 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %172 = call i64 @krb5_principal_compare(i32 %169, %struct.TYPE_38__* %170, %struct.TYPE_38__* %171)
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %174, label %181

174:                                              ; preds = %168
  %175 = call i32 @free_PA_ServerReferralData(%struct.TYPE_39__* %15)
  %176 = load i32, i32* %8, align 4
  %177 = load i64, i64* @KRB5KRB_AP_ERR_MODIFIED, align 8
  %178 = call i32 @N_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %179 = call i32 (i32, i64, i32, ...) @krb5_set_error_message(i32 %176, i64 %177, i32 %178)
  %180 = load i64, i64* @KRB5KRB_AP_ERR_MODIFIED, align 8
  store i64 %180, i64* %7, align 8
  br label %245

181:                                              ; preds = %168
  br label %182

182:                                              ; preds = %181, %167
  %183 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %15, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %202

186:                                              ; preds = %182
  %187 = load i32, i32* %8, align 4
  %188 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %189 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %15, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = call i32 @_krb5_principal_compare_PrincipalName(i32 %187, %struct.TYPE_38__* %188, i64 %190)
  store i32 %191, i32* %22, align 4
  %192 = load i32, i32* %22, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %201, label %194

194:                                              ; preds = %186
  %195 = call i32 @free_PA_ServerReferralData(%struct.TYPE_39__* %15)
  %196 = load i32, i32* %8, align 4
  %197 = load i64, i64* @KRB5KRB_AP_ERR_MODIFIED, align 8
  %198 = call i32 @N_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %199 = call i32 (i32, i64, i32, ...) @krb5_set_error_message(i32 %196, i64 %197, i32 %198)
  %200 = load i64, i64* @KRB5KRB_AP_ERR_MODIFIED, align 8
  store i64 %200, i64* %7, align 8
  br label %245

201:                                              ; preds = %186
  br label %215

202:                                              ; preds = %182
  %203 = load i32, i32* %10, align 4
  %204 = load i32, i32* @EXTRACT_TICKET_AS_REQ, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %214

207:                                              ; preds = %202
  %208 = call i32 @free_PA_ServerReferralData(%struct.TYPE_39__* %15)
  %209 = load i32, i32* %8, align 4
  %210 = load i64, i64* @KRB5KRB_AP_ERR_MODIFIED, align 8
  %211 = call i32 @N_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %212 = call i32 (i32, i64, i32, ...) @krb5_set_error_message(i32 %209, i64 %210, i32 %211)
  %213 = load i64, i64* @KRB5KRB_AP_ERR_MODIFIED, align 8
  store i64 %213, i64* %7, align 8
  br label %245

214:                                              ; preds = %202
  br label %215

215:                                              ; preds = %214, %201
  %216 = call i32 @free_PA_ServerReferralData(%struct.TYPE_39__* %15)
  %217 = load i64, i64* %14, align 8
  store i64 %217, i64* %7, align 8
  br label %245

218:                                              ; preds = %47, %29
  %219 = load i32, i32* %8, align 4
  %220 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %221 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %222 = call i64 @krb5_principal_compare(i32 %219, %struct.TYPE_38__* %220, %struct.TYPE_38__* %221)
  %223 = load i64, i64* @TRUE, align 8
  %224 = icmp ne i64 %222, %223
  br i1 %224, label %225, label %244

225:                                              ; preds = %218
  %226 = load i32, i32* %8, align 4
  %227 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %228 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %229 = call i64 @krb5_realm_compare(i32 %226, %struct.TYPE_38__* %227, %struct.TYPE_38__* %228)
  %230 = load i64, i64* @TRUE, align 8
  %231 = icmp ne i64 %229, %230
  br i1 %231, label %232, label %244

232:                                              ; preds = %225
  %233 = load i32, i32* %8, align 4
  %234 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %235 = call i64 @krb5_principal_is_krbtgt(i32 %233, %struct.TYPE_38__* %234)
  %236 = load i64, i64* @TRUE, align 8
  %237 = icmp ne i64 %235, %236
  br i1 %237, label %238, label %244

238:                                              ; preds = %232
  %239 = load i32, i32* %8, align 4
  %240 = load i64, i64* @KRB5KRB_AP_ERR_MODIFIED, align 8
  %241 = call i32 @N_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %242 = call i32 (i32, i64, i32, ...) @krb5_set_error_message(i32 %239, i64 %240, i32 %241)
  %243 = load i64, i64* @KRB5KRB_AP_ERR_MODIFIED, align 8
  store i64 %243, i64* %7, align 8
  br label %245

244:                                              ; preds = %232, %225, %218
  store i64 0, i64* %7, align 8
  br label %245

245:                                              ; preds = %244, %238, %215, %207, %194, %174, %160, %124, %111, %101, %87, %71, %62
  %246 = load i64, i64* %7, align 8
  ret i64 %246
}

declare dso_local %struct.TYPE_30__* @krb5_find_padata(i32, i32, i32, i32*) #1

declare dso_local i32 @memset(%struct.TYPE_39__*, i32, i32) #1

declare dso_local i64 @decode_EncryptedData(i32, i64, %struct.TYPE_39__*, i64*) #1

declare dso_local i32 @free_EncryptedData(%struct.TYPE_39__*) #1

declare dso_local i32 @krb5_set_error_message(i32, i64, i32, ...) #1

declare dso_local i32 @N_(i8*, i8*) #1

declare dso_local i64 @krb5_crypto_init(i32, i32*, i32, i32*) #1

declare dso_local i64 @krb5_decrypt_EncryptedData(i32, i32, i32, %struct.TYPE_39__*, %struct.TYPE_37__*) #1

declare dso_local i32 @krb5_crypto_destroy(i32, i32) #1

declare dso_local i64 @decode_PA_ServerReferralData(i32, i32, %struct.TYPE_39__*, i64*) #1

declare dso_local i32 @krb5_data_free(%struct.TYPE_37__*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @free_PA_ServerReferralData(%struct.TYPE_39__*) #1

declare dso_local i64 @krb5_principal_is_krbtgt(i32, %struct.TYPE_38__*) #1

declare dso_local i64 @krb5_principal_compare(i32, %struct.TYPE_38__*, %struct.TYPE_38__*) #1

declare dso_local i32 @_krb5_principal_compare_PrincipalName(i32, %struct.TYPE_38__*, i64) #1

declare dso_local i64 @krb5_realm_compare(i32, %struct.TYPE_38__*, %struct.TYPE_38__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
