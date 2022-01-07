; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_krb5tgs.c_tgs_parse_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_krb5tgs.c_tgs_parse_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { i32, %struct.TYPE_32__ }
%struct.TYPE_32__ = type { i64 }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_41__ = type { %struct.TYPE_33__ }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_37__ = type { %struct.TYPE_34__ }
%struct.TYPE_34__ = type { i32 }
%struct.sockaddr = type { i32 }
%struct.TYPE_40__ = type { %struct.TYPE_36__ }
%struct.TYPE_36__ = type { %struct.TYPE_35__, i32, i32 }
%struct.TYPE_35__ = type { i32, i32* }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_39__ = type { i32, i32 }
%struct.TYPE_38__ = type { i32, i32 }

@tgs_parse_request.failed = internal global [22 x i8] c"<unparse_name failed>\00", align 16
@.str = private unnamed_addr constant [28 x i8] c"Failed to decode AP-REQ: %s\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"PA-DATA is not a ticket-granting ticket\00", align 1
@KRB5KDC_ERR_POLICY = common dso_local global i64 0, align 8
@HDB_F_GET_KRBTGT = common dso_local global i32 0, align 4
@HDB_ERR_NOT_FOUND_HERE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [83 x i8] c"Ticket-granting ticket account %s does not have secrets at this KDC, need to proxy\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"Ticket-granting ticket not found in database: %s\00", align 1
@KRB5KRB_AP_ERR_NOT_US = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [36 x i8] c"Ticket kvno = %d, DB kvno = %d (%s)\00", align 1
@KRB5KRB_AP_ERR_BADKEYVER = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [43 x i8] c"No server key with enctype %s found for %s\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"<unknown enctype>\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"<unparse_name failed>\00", align 1
@KRB5_VERIFY_AP_REQ_IGNORE_INVALID = common dso_local global i64 0, align 8
@KRB5_KU_TGS_REQ_AUTH = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [28 x i8] c"Failed to verify AP-REQ: %s\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@KRB5_KU_TGS_REQ_AUTH_DAT_SUBKEY = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [32 x i8] c"Failed to get remote subkey: %s\00", align 1
@KRB5_KU_TGS_REQ_AUTH_DAT_SESSION = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [30 x i8] c"Failed to get session key: %s\00", align 1
@.str.12 = private unnamed_addr constant [45 x i8] c"Failed to get key for enc-authorization-data\00", align 1
@KRB5KRB_AP_ERR_BAD_INTEGRITY = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [28 x i8] c"krb5_crypto_init failed: %s\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"Failed to decrypt enc-authorization-data\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"Failed to decode authorization data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32*, %struct.TYPE_31__*, %struct.TYPE_29__*, %struct.TYPE_41__**, i32*, %struct.TYPE_37__**, i8**, i8*, %struct.sockaddr*, i32**, i32**, i8**, i32**, i32*)* @tgs_parse_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tgs_parse_request(i32 %0, i32* %1, %struct.TYPE_31__* %2, %struct.TYPE_29__* %3, %struct.TYPE_41__** %4, i32* %5, %struct.TYPE_37__** %6, i8** %7, i8* %8, %struct.sockaddr* %9, i32** %10, i32** %11, i8** %12, i32** %13, i32* %14) #0 {
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_31__*, align 8
  %19 = alloca %struct.TYPE_29__*, align 8
  %20 = alloca %struct.TYPE_41__**, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_37__**, align 8
  %23 = alloca i8**, align 8
  %24 = alloca i8*, align 8
  %25 = alloca %struct.sockaddr*, align 8
  %26 = alloca i32**, align 8
  %27 = alloca i32**, align 8
  %28 = alloca i8**, align 8
  %29 = alloca i32**, align 8
  %30 = alloca i32*, align 8
  %31 = alloca %struct.TYPE_40__, align 8
  %32 = alloca i64, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32*, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca i32, align 4
  %38 = alloca %struct.TYPE_30__*, align 8
  %39 = alloca i32*, align 8
  %40 = alloca i32, align 4
  %41 = alloca i8*, align 8
  %42 = alloca i8*, align 8
  %43 = alloca i8*, align 8
  %44 = alloca i8*, align 8
  %45 = alloca i8*, align 8
  %46 = alloca i8*, align 8
  %47 = alloca i8*, align 8
  %48 = alloca i8*, align 8
  %49 = alloca %struct.TYPE_39__*, align 8
  %50 = alloca i8*, align 8
  %51 = alloca i8*, align 8
  %52 = alloca %struct.TYPE_38__, align 4
  %53 = alloca i8*, align 8
  store i32 %0, i32* %16, align 4
  store i32* %1, i32** %17, align 8
  store %struct.TYPE_31__* %2, %struct.TYPE_31__** %18, align 8
  store %struct.TYPE_29__* %3, %struct.TYPE_29__** %19, align 8
  store %struct.TYPE_41__** %4, %struct.TYPE_41__*** %20, align 8
  store i32* %5, i32** %21, align 8
  store %struct.TYPE_37__** %6, %struct.TYPE_37__*** %22, align 8
  store i8** %7, i8*** %23, align 8
  store i8* %8, i8** %24, align 8
  store %struct.sockaddr* %9, %struct.sockaddr** %25, align 8
  store i32** %10, i32*** %26, align 8
  store i32** %11, i32*** %27, align 8
  store i8** %12, i8*** %28, align 8
  store i32** %13, i32*** %29, align 8
  store i32* %14, i32** %30, align 8
  store i32* null, i32** %34, align 8
  store i32* null, i32** %39, align 8
  %54 = load i8**, i8*** %28, align 8
  store i8* null, i8** %54, align 8
  %55 = load i32**, i32*** %26, align 8
  store i32* null, i32** %55, align 8
  %56 = load i32**, i32*** %27, align 8
  store i32* null, i32** %56, align 8
  %57 = load i32**, i32*** %29, align 8
  store i32* null, i32** %57, align 8
  %58 = call i32 @memset(%struct.TYPE_40__* %31, i32 0, i32 24)
  %59 = load i32, i32* %16, align 4
  %60 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %61 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %60, i32 0, i32 0
  %62 = call i64 @krb5_decode_ap_req(i32 %59, i32* %61, %struct.TYPE_40__* %31)
  store i64 %62, i64* %32, align 8
  %63 = load i64, i64* %32, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %15
  %66 = load i32, i32* %16, align 4
  %67 = load i64, i64* %32, align 8
  %68 = call i8* @krb5_get_error_message(i32 %66, i64 %67)
  store i8* %68, i8** %41, align 8
  %69 = load i32, i32* %16, align 4
  %70 = load i32*, i32** %17, align 8
  %71 = load i8*, i8** %41, align 8
  %72 = call i32 (i32, i32*, i32, i8*, ...) @kdc_log(i32 %69, i32* %70, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %71)
  %73 = load i32, i32* %16, align 4
  %74 = load i8*, i8** %41, align 8
  %75 = call i32 @krb5_free_error_message(i32 %73, i8* %74)
  br label %503

76:                                               ; preds = %15
  %77 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %31, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %77, i32 0, i32 2
  %79 = call i32 @get_krbtgt_realm(i32* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %76
  %82 = load i32, i32* %16, align 4
  %83 = load i32*, i32** %17, align 8
  %84 = call i32 (i32, i32*, i32, i8*, ...) @kdc_log(i32 %82, i32* %83, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %85 = load i64, i64* @KRB5KDC_ERR_POLICY, align 8
  store i64 %85, i64* %32, align 8
  br label %503

86:                                               ; preds = %76
  %87 = load i32, i32* %16, align 4
  %88 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %31, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %31, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @_krb5_principalname2krb5_principal(i32 %87, i32* %33, i32 %90, i32 %93)
  %95 = load i32, i32* %16, align 4
  %96 = load i32*, i32** %17, align 8
  %97 = load i32, i32* %33, align 4
  %98 = load i32, i32* @HDB_F_GET_KRBTGT, align 4
  %99 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %31, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.TYPE_41__**, %struct.TYPE_41__*** %20, align 8
  %104 = call i64 @_kdc_db_fetch(i32 %95, i32* %96, i32 %97, i32 %98, i32* %102, i32* null, %struct.TYPE_41__** %103)
  store i64 %104, i64* %32, align 8
  %105 = load i64, i64* %32, align 8
  %106 = load i64, i64* @HDB_ERR_NOT_FOUND_HERE, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %130

108:                                              ; preds = %86
  %109 = load i32, i32* %16, align 4
  %110 = load i32, i32* %33, align 4
  %111 = call i64 @krb5_unparse_name(i32 %109, i32 %110, i8** %42)
  store i64 %111, i64* %32, align 8
  %112 = load i64, i64* %32, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @tgs_parse_request.failed, i64 0, i64 0), i8** %42, align 8
  br label %115

115:                                              ; preds = %114, %108
  %116 = load i32, i32* %16, align 4
  %117 = load i32, i32* %33, align 4
  %118 = call i32 @krb5_free_principal(i32 %116, i32 %117)
  %119 = load i32, i32* %16, align 4
  %120 = load i32*, i32** %17, align 8
  %121 = load i8*, i8** %42, align 8
  %122 = call i32 (i32, i32*, i32, i8*, ...) @kdc_log(i32 %119, i32* %120, i32 5, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i64 0, i64 0), i8* %121)
  %123 = load i64, i64* %32, align 8
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %115
  %126 = load i8*, i8** %42, align 8
  %127 = call i32 @free(i8* %126)
  br label %128

128:                                              ; preds = %125, %115
  %129 = load i64, i64* @HDB_ERR_NOT_FOUND_HERE, align 8
  store i64 %129, i64* %32, align 8
  br label %503

130:                                              ; preds = %86
  %131 = load i64, i64* %32, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %161

133:                                              ; preds = %130
  %134 = load i32, i32* %16, align 4
  %135 = load i64, i64* %32, align 8
  %136 = call i8* @krb5_get_error_message(i32 %134, i64 %135)
  store i8* %136, i8** %43, align 8
  %137 = load i32, i32* %16, align 4
  %138 = load i32, i32* %33, align 4
  %139 = call i64 @krb5_unparse_name(i32 %137, i32 %138, i8** %44)
  store i64 %139, i64* %32, align 8
  %140 = load i64, i64* %32, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %133
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @tgs_parse_request.failed, i64 0, i64 0), i8** %44, align 8
  br label %143

143:                                              ; preds = %142, %133
  %144 = load i32, i32* %16, align 4
  %145 = load i32, i32* %33, align 4
  %146 = call i32 @krb5_free_principal(i32 %144, i32 %145)
  %147 = load i32, i32* %16, align 4
  %148 = load i32*, i32** %17, align 8
  %149 = load i8*, i8** %43, align 8
  %150 = call i32 (i32, i32*, i32, i8*, ...) @kdc_log(i32 %147, i32* %148, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i8* %149)
  %151 = load i32, i32* %16, align 4
  %152 = load i8*, i8** %43, align 8
  %153 = call i32 @krb5_free_error_message(i32 %151, i8* %152)
  %154 = load i64, i64* %32, align 8
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %143
  %157 = load i8*, i8** %44, align 8
  %158 = call i32 @free(i8* %157)
  br label %159

159:                                              ; preds = %156, %143
  %160 = load i64, i64* @KRB5KRB_AP_ERR_NOT_US, align 8
  store i64 %160, i64* %32, align 8
  br label %503

161:                                              ; preds = %130
  br label %162

162:                                              ; preds = %161
  %163 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %31, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = icmp ne i32* %166, null
  br i1 %167, label %168, label %212

168:                                              ; preds = %162
  %169 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %31, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %170, i32 0, i32 1
  %172 = load i32*, i32** %171, align 8
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.TYPE_41__**, %struct.TYPE_41__*** %20, align 8
  %175 = load %struct.TYPE_41__*, %struct.TYPE_41__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = icmp ne i32 %173, %178
  br i1 %179, label %180, label %212

180:                                              ; preds = %168
  %181 = load i32, i32* %16, align 4
  %182 = load i32, i32* %33, align 4
  %183 = call i64 @krb5_unparse_name(i32 %181, i32 %182, i8** %45)
  store i64 %183, i64* %32, align 8
  %184 = load i32, i32* %16, align 4
  %185 = load i32, i32* %33, align 4
  %186 = call i32 @krb5_free_principal(i32 %184, i32 %185)
  %187 = load i64, i64* %32, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %180
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @tgs_parse_request.failed, i64 0, i64 0), i8** %45, align 8
  br label %190

190:                                              ; preds = %189, %180
  %191 = load i32, i32* %16, align 4
  %192 = load i32*, i32** %17, align 8
  %193 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %31, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %194, i32 0, i32 1
  %196 = load i32*, i32** %195, align 8
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.TYPE_41__**, %struct.TYPE_41__*** %20, align 8
  %199 = load %struct.TYPE_41__*, %struct.TYPE_41__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load i8*, i8** %45, align 8
  %204 = call i32 (i32, i32*, i32, i8*, ...) @kdc_log(i32 %191, i32* %192, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %197, i32 %202, i8* %203)
  %205 = load i64, i64* %32, align 8
  %206 = icmp eq i64 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %190
  %208 = load i8*, i8** %45, align 8
  %209 = call i32 @free(i8* %208)
  br label %210

210:                                              ; preds = %207, %190
  %211 = load i64, i64* @KRB5KRB_AP_ERR_BADKEYVER, align 8
  store i64 %211, i64* %32, align 8
  br label %503

212:                                              ; preds = %168, %162
  %213 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %31, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load i32*, i32** %21, align 8
  store i32 %216, i32* %217, align 4
  %218 = load i32, i32* %16, align 4
  %219 = load %struct.TYPE_41__**, %struct.TYPE_41__*** %20, align 8
  %220 = load %struct.TYPE_41__*, %struct.TYPE_41__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %31, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = call i64 @hdb_enctype2key(i32 %218, %struct.TYPE_33__* %221, i32 %225, %struct.TYPE_30__** %38)
  store i64 %226, i64* %32, align 8
  %227 = load i64, i64* %32, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %261

229:                                              ; preds = %212
  store i8* null, i8** %46, align 8
  store i8* null, i8** %47, align 8
  %230 = load i32, i32* %16, align 4
  %231 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %31, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = call i32 @krb5_enctype_to_string(i32 %230, i32 %234, i8** %46)
  %236 = load i32, i32* %16, align 4
  %237 = load i32, i32* %33, align 4
  %238 = call i64 @krb5_unparse_name(i32 %236, i32 %237, i8** %47)
  %239 = load i32, i32* %16, align 4
  %240 = load i32*, i32** %17, align 8
  %241 = load i8*, i8** %46, align 8
  %242 = icmp ne i8* %241, null
  br i1 %242, label %243, label %245

243:                                              ; preds = %229
  %244 = load i8*, i8** %46, align 8
  br label %246

245:                                              ; preds = %229
  br label %246

246:                                              ; preds = %245, %243
  %247 = phi i8* [ %244, %243 ], [ getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), %245 ]
  %248 = load i8*, i8** %47, align 8
  %249 = icmp ne i8* %248, null
  br i1 %249, label %250, label %252

250:                                              ; preds = %246
  %251 = load i8*, i8** %47, align 8
  br label %253

252:                                              ; preds = %246
  br label %253

253:                                              ; preds = %252, %250
  %254 = phi i8* [ %251, %250 ], [ getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), %252 ]
  %255 = call i32 (i32, i32*, i32, i8*, ...) @kdc_log(i32 %239, i32* %240, i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i8* %247, i8* %254)
  %256 = load i8*, i8** %46, align 8
  %257 = call i32 @free(i8* %256)
  %258 = load i8*, i8** %47, align 8
  %259 = call i32 @free(i8* %258)
  %260 = load i64, i64* @KRB5KRB_AP_ERR_BADKEYVER, align 8
  store i64 %260, i64* %32, align 8
  br label %503

261:                                              ; preds = %212
  %262 = load %struct.TYPE_31__*, %struct.TYPE_31__** %18, align 8
  %263 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %269

267:                                              ; preds = %261
  %268 = load i64, i64* @KRB5_VERIFY_AP_REQ_IGNORE_INVALID, align 8
  store i64 %268, i64* %36, align 8
  br label %270

269:                                              ; preds = %261
  store i64 0, i64* %36, align 8
  br label %270

270:                                              ; preds = %269, %267
  %271 = load i32, i32* %16, align 4
  %272 = load i32, i32* %33, align 4
  %273 = load %struct.TYPE_30__*, %struct.TYPE_30__** %38, align 8
  %274 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %273, i32 0, i32 0
  %275 = load i64, i64* %36, align 8
  %276 = load %struct.TYPE_37__**, %struct.TYPE_37__*** %22, align 8
  %277 = load i32, i32* @KRB5_KU_TGS_REQ_AUTH, align 4
  %278 = call i64 @krb5_verify_ap_req2(i32 %271, i32** %34, %struct.TYPE_40__* %31, i32 %272, i32* %274, i64 %275, i64* %35, %struct.TYPE_37__** %276, i32 %277)
  store i64 %278, i64* %32, align 8
  %279 = load i32, i32* %16, align 4
  %280 = load i32, i32* %33, align 4
  %281 = call i32 @krb5_free_principal(i32 %279, i32 %280)
  %282 = load i64, i64* %32, align 8
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %295

284:                                              ; preds = %270
  %285 = load i32, i32* %16, align 4
  %286 = load i64, i64* %32, align 8
  %287 = call i8* @krb5_get_error_message(i32 %285, i64 %286)
  store i8* %287, i8** %48, align 8
  %288 = load i32, i32* %16, align 4
  %289 = load i32*, i32** %17, align 8
  %290 = load i8*, i8** %48, align 8
  %291 = call i32 (i32, i32*, i32, i8*, ...) @kdc_log(i32 %288, i32* %289, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i8* %290)
  %292 = load i32, i32* %16, align 4
  %293 = load i8*, i8** %48, align 8
  %294 = call i32 @krb5_free_error_message(i32 %292, i8* %293)
  br label %503

295:                                              ; preds = %270
  %296 = load i32, i32* %16, align 4
  %297 = load i32*, i32** %34, align 8
  %298 = call i64 @krb5_auth_con_getauthenticator(i32 %296, i32* %297, %struct.TYPE_39__** %49)
  store i64 %298, i64* %32, align 8
  %299 = load i64, i64* %32, align 8
  %300 = icmp eq i64 %299, 0
  br i1 %300, label %301, label %340

301:                                              ; preds = %295
  %302 = call i8* @malloc(i32 4)
  %303 = bitcast i8* %302 to i32*
  %304 = load i32**, i32*** %26, align 8
  store i32* %303, i32** %304, align 8
  %305 = load i32**, i32*** %26, align 8
  %306 = load i32*, i32** %305, align 8
  %307 = icmp eq i32* %306, null
  br i1 %307, label %308, label %314

308:                                              ; preds = %301
  %309 = load i32, i32* %16, align 4
  %310 = call i32 @krb5_free_authenticator(i32 %309, %struct.TYPE_39__** %49)
  %311 = load i32, i32* %16, align 4
  %312 = load i32*, i32** %17, align 8
  %313 = call i32 (i32, i32*, i32, i8*, ...) @kdc_log(i32 %311, i32* %312, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  br label %503

314:                                              ; preds = %301
  %315 = load %struct.TYPE_39__*, %struct.TYPE_39__** %49, align 8
  %316 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  %318 = load i32**, i32*** %26, align 8
  %319 = load i32*, i32** %318, align 8
  store i32 %317, i32* %319, align 4
  %320 = call i8* @malloc(i32 4)
  %321 = bitcast i8* %320 to i32*
  %322 = load i32**, i32*** %27, align 8
  store i32* %321, i32** %322, align 8
  %323 = load i32**, i32*** %27, align 8
  %324 = load i32*, i32** %323, align 8
  %325 = icmp eq i32* %324, null
  br i1 %325, label %326, label %332

326:                                              ; preds = %314
  %327 = load i32, i32* %16, align 4
  %328 = call i32 @krb5_free_authenticator(i32 %327, %struct.TYPE_39__** %49)
  %329 = load i32, i32* %16, align 4
  %330 = load i32*, i32** %17, align 8
  %331 = call i32 (i32, i32*, i32, i8*, ...) @kdc_log(i32 %329, i32* %330, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  br label %503

332:                                              ; preds = %314
  %333 = load %struct.TYPE_39__*, %struct.TYPE_39__** %49, align 8
  %334 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 4
  %336 = load i32**, i32*** %27, align 8
  %337 = load i32*, i32** %336, align 8
  store i32 %335, i32* %337, align 4
  %338 = load i32, i32* %16, align 4
  %339 = call i32 @krb5_free_authenticator(i32 %338, %struct.TYPE_39__** %49)
  br label %340

340:                                              ; preds = %332, %295
  %341 = load i32, i32* %16, align 4
  %342 = load i32*, i32** %17, align 8
  %343 = load i32*, i32** %34, align 8
  %344 = load %struct.TYPE_31__*, %struct.TYPE_31__** %18, align 8
  %345 = load i8**, i8*** %23, align 8
  %346 = load %struct.TYPE_37__**, %struct.TYPE_37__*** %22, align 8
  %347 = load %struct.TYPE_37__*, %struct.TYPE_37__** %346, align 8
  %348 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %347, i32 0, i32 0
  %349 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %348, i32 0, i32 0
  %350 = call i64 @tgs_check_authenticator(i32 %341, i32* %342, i32* %343, %struct.TYPE_31__* %344, i8** %345, i32* %349)
  store i64 %350, i64* %32, align 8
  %351 = load i64, i64* %32, align 8
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %353, label %357

353:                                              ; preds = %340
  %354 = load i32, i32* %16, align 4
  %355 = load i32*, i32** %34, align 8
  %356 = call i32 @krb5_auth_con_free(i32 %354, i32* %355)
  br label %503

357:                                              ; preds = %340
  %358 = load i32, i32* @KRB5_KU_TGS_REQ_AUTH_DAT_SUBKEY, align 4
  store i32 %358, i32* %40, align 4
  %359 = load i32*, i32** %30, align 8
  store i32 1, i32* %359, align 4
  %360 = load i32, i32* %16, align 4
  %361 = load i32*, i32** %34, align 8
  %362 = call i64 @krb5_auth_con_getremotesubkey(i32 %360, i32* %361, i32** %39)
  store i64 %362, i64* %32, align 8
  %363 = load i64, i64* %32, align 8
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %379

365:                                              ; preds = %357
  %366 = load i32, i32* %16, align 4
  %367 = load i64, i64* %32, align 8
  %368 = call i8* @krb5_get_error_message(i32 %366, i64 %367)
  store i8* %368, i8** %50, align 8
  %369 = load i32, i32* %16, align 4
  %370 = load i32*, i32** %34, align 8
  %371 = call i32 @krb5_auth_con_free(i32 %369, i32* %370)
  %372 = load i32, i32* %16, align 4
  %373 = load i32*, i32** %17, align 8
  %374 = load i8*, i8** %50, align 8
  %375 = call i32 (i32, i32*, i32, i8*, ...) @kdc_log(i32 %372, i32* %373, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i8* %374)
  %376 = load i32, i32* %16, align 4
  %377 = load i8*, i8** %50, align 8
  %378 = call i32 @krb5_free_error_message(i32 %376, i8* %377)
  br label %503

379:                                              ; preds = %357
  %380 = load i32*, i32** %39, align 8
  %381 = icmp eq i32* %380, null
  br i1 %381, label %382, label %405

382:                                              ; preds = %379
  %383 = load i32, i32* @KRB5_KU_TGS_REQ_AUTH_DAT_SESSION, align 4
  store i32 %383, i32* %40, align 4
  %384 = load i32*, i32** %30, align 8
  store i32 0, i32* %384, align 4
  %385 = load i32, i32* %16, align 4
  %386 = load i32*, i32** %34, align 8
  %387 = call i64 @krb5_auth_con_getkey(i32 %385, i32* %386, i32** %39)
  store i64 %387, i64* %32, align 8
  %388 = load i64, i64* %32, align 8
  %389 = icmp ne i64 %388, 0
  br i1 %389, label %390, label %404

390:                                              ; preds = %382
  %391 = load i32, i32* %16, align 4
  %392 = load i64, i64* %32, align 8
  %393 = call i8* @krb5_get_error_message(i32 %391, i64 %392)
  store i8* %393, i8** %51, align 8
  %394 = load i32, i32* %16, align 4
  %395 = load i32*, i32** %34, align 8
  %396 = call i32 @krb5_auth_con_free(i32 %394, i32* %395)
  %397 = load i32, i32* %16, align 4
  %398 = load i32*, i32** %17, align 8
  %399 = load i8*, i8** %51, align 8
  %400 = call i32 (i32, i32*, i32, i8*, ...) @kdc_log(i32 %397, i32* %398, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), i8* %399)
  %401 = load i32, i32* %16, align 4
  %402 = load i8*, i8** %51, align 8
  %403 = call i32 @krb5_free_error_message(i32 %401, i8* %402)
  br label %503

404:                                              ; preds = %382
  br label %405

405:                                              ; preds = %404, %379
  %406 = load i32*, i32** %39, align 8
  %407 = icmp eq i32* %406, null
  br i1 %407, label %408, label %416

408:                                              ; preds = %405
  %409 = load i32, i32* %16, align 4
  %410 = load i32*, i32** %34, align 8
  %411 = call i32 @krb5_auth_con_free(i32 %409, i32* %410)
  %412 = load i32, i32* %16, align 4
  %413 = load i32*, i32** %17, align 8
  %414 = call i32 (i32, i32*, i32, i8*, ...) @kdc_log(i32 %412, i32* %413, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.12, i64 0, i64 0))
  %415 = load i64, i64* @KRB5KRB_AP_ERR_BAD_INTEGRITY, align 8
  store i64 %415, i64* %32, align 8
  br label %503

416:                                              ; preds = %405
  %417 = load i32*, i32** %39, align 8
  %418 = load i32**, i32*** %29, align 8
  store i32* %417, i32** %418, align 8
  %419 = load %struct.TYPE_31__*, %struct.TYPE_31__** %18, align 8
  %420 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %419, i32 0, i32 0
  %421 = load i32, i32* %420, align 8
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %423, label %499

423:                                              ; preds = %416
  %424 = load i32, i32* %16, align 4
  %425 = load i32*, i32** %39, align 8
  %426 = call i64 @krb5_crypto_init(i32 %424, i32* %425, i32 0, i32* %37)
  store i64 %426, i64* %32, align 8
  %427 = load i64, i64* %32, align 8
  %428 = icmp ne i64 %427, 0
  br i1 %428, label %429, label %443

429:                                              ; preds = %423
  %430 = load i32, i32* %16, align 4
  %431 = load i64, i64* %32, align 8
  %432 = call i8* @krb5_get_error_message(i32 %430, i64 %431)
  store i8* %432, i8** %53, align 8
  %433 = load i32, i32* %16, align 4
  %434 = load i32*, i32** %34, align 8
  %435 = call i32 @krb5_auth_con_free(i32 %433, i32* %434)
  %436 = load i32, i32* %16, align 4
  %437 = load i32*, i32** %17, align 8
  %438 = load i8*, i8** %53, align 8
  %439 = call i32 (i32, i32*, i32, i8*, ...) @kdc_log(i32 %436, i32* %437, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0), i8* %438)
  %440 = load i32, i32* %16, align 4
  %441 = load i8*, i8** %53, align 8
  %442 = call i32 @krb5_free_error_message(i32 %440, i8* %441)
  br label %503

443:                                              ; preds = %423
  %444 = load i32, i32* %16, align 4
  %445 = load i32, i32* %37, align 4
  %446 = load i32, i32* %40, align 4
  %447 = load %struct.TYPE_31__*, %struct.TYPE_31__** %18, align 8
  %448 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %447, i32 0, i32 0
  %449 = load i32, i32* %448, align 8
  %450 = call i64 @krb5_decrypt_EncryptedData(i32 %444, i32 %445, i32 %446, i32 %449, %struct.TYPE_38__* %52)
  store i64 %450, i64* %32, align 8
  %451 = load i32, i32* %16, align 4
  %452 = load i32, i32* %37, align 4
  %453 = call i32 @krb5_crypto_destroy(i32 %451, i32 %452)
  %454 = load i64, i64* %32, align 8
  %455 = icmp ne i64 %454, 0
  br i1 %455, label %456, label %464

456:                                              ; preds = %443
  %457 = load i32, i32* %16, align 4
  %458 = load i32*, i32** %34, align 8
  %459 = call i32 @krb5_auth_con_free(i32 %457, i32* %458)
  %460 = load i32, i32* %16, align 4
  %461 = load i32*, i32** %17, align 8
  %462 = call i32 (i32, i32*, i32, i8*, ...) @kdc_log(i32 %460, i32* %461, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i64 0, i64 0))
  %463 = load i64, i64* @KRB5KRB_AP_ERR_BAD_INTEGRITY, align 8
  store i64 %463, i64* %32, align 8
  br label %503

464:                                              ; preds = %443
  %465 = load i8**, i8*** %28, align 8
  %466 = load i8*, i8** %465, align 8
  %467 = call i32 @ALLOC(i8* %466)
  %468 = load i8**, i8*** %28, align 8
  %469 = load i8*, i8** %468, align 8
  %470 = icmp eq i8* %469, null
  br i1 %470, label %471, label %476

471:                                              ; preds = %464
  %472 = load i32, i32* %16, align 4
  %473 = load i32*, i32** %34, align 8
  %474 = call i32 @krb5_auth_con_free(i32 %472, i32* %473)
  %475 = load i64, i64* @KRB5KRB_AP_ERR_BAD_INTEGRITY, align 8
  store i64 %475, i64* %32, align 8
  br label %503

476:                                              ; preds = %464
  %477 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %52, i32 0, i32 1
  %478 = load i32, i32* %477, align 4
  %479 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %52, i32 0, i32 0
  %480 = load i32, i32* %479, align 4
  %481 = load i8**, i8*** %28, align 8
  %482 = load i8*, i8** %481, align 8
  %483 = call i64 @decode_AuthorizationData(i32 %478, i32 %480, i8* %482, i32* null)
  store i64 %483, i64* %32, align 8
  %484 = load i64, i64* %32, align 8
  %485 = icmp ne i64 %484, 0
  br i1 %485, label %486, label %498

486:                                              ; preds = %476
  %487 = load i32, i32* %16, align 4
  %488 = load i32*, i32** %34, align 8
  %489 = call i32 @krb5_auth_con_free(i32 %487, i32* %488)
  %490 = load i8**, i8*** %28, align 8
  %491 = load i8*, i8** %490, align 8
  %492 = call i32 @free(i8* %491)
  %493 = load i8**, i8*** %28, align 8
  store i8* null, i8** %493, align 8
  %494 = load i32, i32* %16, align 4
  %495 = load i32*, i32** %17, align 8
  %496 = call i32 (i32, i32*, i32, i8*, ...) @kdc_log(i32 %494, i32* %495, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i64 0, i64 0))
  %497 = load i64, i64* @KRB5KRB_AP_ERR_BAD_INTEGRITY, align 8
  store i64 %497, i64* %32, align 8
  br label %503

498:                                              ; preds = %476
  br label %499

499:                                              ; preds = %498, %416
  %500 = load i32, i32* %16, align 4
  %501 = load i32*, i32** %34, align 8
  %502 = call i32 @krb5_auth_con_free(i32 %500, i32* %501)
  br label %503

503:                                              ; preds = %499, %486, %471, %456, %429, %408, %390, %365, %353, %326, %308, %284, %253, %210, %159, %128, %81, %65
  %504 = call i32 @free_AP_REQ(%struct.TYPE_40__* %31)
  %505 = load i64, i64* %32, align 8
  ret i64 %505
}

declare dso_local i32 @memset(%struct.TYPE_40__*, i32, i32) #1

declare dso_local i64 @krb5_decode_ap_req(i32, i32*, %struct.TYPE_40__*) #1

declare dso_local i8* @krb5_get_error_message(i32, i64) #1

declare dso_local i32 @kdc_log(i32, i32*, i32, i8*, ...) #1

declare dso_local i32 @krb5_free_error_message(i32, i8*) #1

declare dso_local i32 @get_krbtgt_realm(i32*) #1

declare dso_local i32 @_krb5_principalname2krb5_principal(i32, i32*, i32, i32) #1

declare dso_local i64 @_kdc_db_fetch(i32, i32*, i32, i32, i32*, i32*, %struct.TYPE_41__**) #1

declare dso_local i64 @krb5_unparse_name(i32, i32, i8**) #1

declare dso_local i32 @krb5_free_principal(i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @hdb_enctype2key(i32, %struct.TYPE_33__*, i32, %struct.TYPE_30__**) #1

declare dso_local i32 @krb5_enctype_to_string(i32, i32, i8**) #1

declare dso_local i64 @krb5_verify_ap_req2(i32, i32**, %struct.TYPE_40__*, i32, i32*, i64, i64*, %struct.TYPE_37__**, i32) #1

declare dso_local i64 @krb5_auth_con_getauthenticator(i32, i32*, %struct.TYPE_39__**) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @krb5_free_authenticator(i32, %struct.TYPE_39__**) #1

declare dso_local i64 @tgs_check_authenticator(i32, i32*, i32*, %struct.TYPE_31__*, i8**, i32*) #1

declare dso_local i32 @krb5_auth_con_free(i32, i32*) #1

declare dso_local i64 @krb5_auth_con_getremotesubkey(i32, i32*, i32**) #1

declare dso_local i64 @krb5_auth_con_getkey(i32, i32*, i32**) #1

declare dso_local i64 @krb5_crypto_init(i32, i32*, i32, i32*) #1

declare dso_local i64 @krb5_decrypt_EncryptedData(i32, i32, i32, i32, %struct.TYPE_38__*) #1

declare dso_local i32 @krb5_crypto_destroy(i32, i32) #1

declare dso_local i32 @ALLOC(i8*) #1

declare dso_local i64 @decode_AuthorizationData(i32, i32, i8*, i32*) #1

declare dso_local i32 @free_AP_REQ(%struct.TYPE_40__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
