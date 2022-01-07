; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_accept_sec_context.c_gsskrb5_acceptor_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_accept_sec_context.c_gsskrb5_acceptor_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_39__ = type { i32, i32, i32, i32, %struct.TYPE_34__*, %struct.TYPE_35__*, i32, i32, i32, i32 }
%struct.TYPE_34__ = type { %struct.TYPE_36__, i32, i32 }
%struct.TYPE_36__ = type { i32 }
%struct.TYPE_35__ = type { i32 }
%struct.TYPE_41__ = type { i32, i32 }
%struct.TYPE_37__ = type { i32, i32 }
%struct.TYPE_40__ = type { i32*, i32* }
%struct.TYPE_38__ = type { %struct.TYPE_42__* }
%struct.TYPE_42__ = type { i64 }

@GSS_S_COMPLETE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"\01\00\00", align 1
@GSS_KRB5_MECHANISM = common dso_local global i32 0, align 4
@_gsskrb5_keytab = common dso_local global i32* null, align 8
@GSS_S_FAILURE = common dso_local global i32 0, align 4
@KRB5KRB_AP_ERR_SKEW = common dso_local global i32 0, align 4
@KRB5KRB_AP_ERR_TKT_NYV = common dso_local global i32 0, align 4
@GSS_S_BAD_BINDINGS = common dso_local global i32 0, align 4
@CKSUMTYPE_GSSAPI = common dso_local global i64 0, align 8
@KRB5_KU_AP_REQ_AUTH_CKSUM = common dso_local global i32 0, align 4
@GSS_S_BAD_SIG = common dso_local global i32 0, align 4
@GSS_C_REPLAY_FLAG = common dso_local global i32 0, align 4
@GSS_C_SEQUENCE_FLAG = common dso_local global i32 0, align 4
@AP_OPTS_MUTUAL_REQUIRED = common dso_local global i32 0, align 4
@GSS_C_MUTUAL_FLAG = common dso_local global i32 0, align 4
@IS_CFX = common dso_local global i32 0, align 4
@AP_OPTS_USE_SUBKEY = common dso_local global i32 0, align 4
@ACCEPTOR_SUBKEY = common dso_local global i32 0, align 4
@KRB5_AUTH_CONTEXT_USE_SUBKEY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"\02\00\00", align 1
@GSS_C_TRANS_FLAG = common dso_local global i32 0, align 4
@OPEN = common dso_local global i32 0, align 4
@GSS_C_DELEG_FLAG = common dso_local global i32 0, align 4
@ACCEPTOR_WAIT_FOR_DCESTYLE = common dso_local global i32 0, align 4
@GSS_S_CONTINUE_NEEDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_39__*, i32, i32, %struct.TYPE_41__*, i32, i32*, i32*, %struct.TYPE_41__*, i32*, i32*, i32*)* @gsskrb5_acceptor_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gsskrb5_acceptor_start(i32* %0, %struct.TYPE_39__* %1, i32 %2, i32 %3, %struct.TYPE_41__* %4, i32 %5, i32* %6, i32* %7, %struct.TYPE_41__* %8, i32* %9, i32* %10, i32* %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_39__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_41__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_41__*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.TYPE_37__, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32*, align 8
  %31 = alloca i32, align 4
  %32 = alloca %struct.TYPE_40__*, align 8
  %33 = alloca i32*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i32*, align 8
  %36 = alloca %struct.TYPE_38__*, align 8
  %37 = alloca i32, align 4
  %38 = alloca %struct.TYPE_37__, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32*, align 8
  store i32* %0, i32** %14, align 8
  store %struct.TYPE_39__* %1, %struct.TYPE_39__** %15, align 8
  store i32 %2, i32* %16, align 4
  store i32 %3, i32* %17, align 4
  store %struct.TYPE_41__* %4, %struct.TYPE_41__** %18, align 8
  store i32 %5, i32* %19, align 4
  store i32* %6, i32** %20, align 8
  store i32* %7, i32** %21, align 8
  store %struct.TYPE_41__* %8, %struct.TYPE_41__** %22, align 8
  store i32* %9, i32** %23, align 8
  store i32* %10, i32** %24, align 8
  store i32* %11, i32** %25, align 8
  %41 = load i32, i32* @GSS_S_COMPLETE, align 4
  store i32 %41, i32* %27, align 4
  store i32* null, i32** %30, align 8
  store i32 0, i32* %31, align 4
  %42 = load i32, i32* %17, align 4
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to %struct.TYPE_40__*
  store %struct.TYPE_40__* %44, %struct.TYPE_40__** %32, align 8
  %45 = load i32*, i32** %14, align 8
  %46 = load %struct.TYPE_41__*, %struct.TYPE_41__** %18, align 8
  %47 = load i32, i32* @GSS_KRB5_MECHANISM, align 4
  %48 = call i32 @_gsskrb5_decapsulate(i32* %45, %struct.TYPE_41__* %46, %struct.TYPE_37__* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %47)
  store i32 %48, i32* %27, align 4
  %49 = load i32, i32* %27, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %12
  %52 = load %struct.TYPE_41__*, %struct.TYPE_41__** %18, align 8
  %53 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %28, i32 0, i32 1
  store i32 %54, i32* %55, align 4
  %56 = load %struct.TYPE_41__*, %struct.TYPE_41__** %18, align 8
  %57 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %28, i32 0, i32 0
  store i32 %58, i32* %59, align 4
  br label %60

60:                                               ; preds = %51, %12
  %61 = load %struct.TYPE_40__*, %struct.TYPE_40__** %32, align 8
  %62 = icmp eq %struct.TYPE_40__* %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load i32*, i32** @_gsskrb5_keytab, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = load i32*, i32** @_gsskrb5_keytab, align 8
  store i32* %67, i32** %30, align 8
  br label %68

68:                                               ; preds = %66, %63
  br label %79

69:                                               ; preds = %60
  %70 = load %struct.TYPE_40__*, %struct.TYPE_40__** %32, align 8
  %71 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load %struct.TYPE_40__*, %struct.TYPE_40__** %32, align 8
  %76 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  store i32* %77, i32** %30, align 8
  br label %78

78:                                               ; preds = %74, %69
  br label %79

79:                                               ; preds = %78, %68
  store i32* null, i32** %33, align 8
  store i32* null, i32** %34, align 8
  store i32* null, i32** %35, align 8
  %80 = load %struct.TYPE_40__*, %struct.TYPE_40__** %32, align 8
  %81 = icmp ne %struct.TYPE_40__* %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load %struct.TYPE_40__*, %struct.TYPE_40__** %32, align 8
  %84 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  store i32* %85, i32** %35, align 8
  br label %86

86:                                               ; preds = %82, %79
  %87 = load i32, i32* %16, align 4
  %88 = call i32 @krb5_rd_req_in_ctx_alloc(i32 %87, i32** %33)
  store i32 %88, i32* %26, align 4
  %89 = load i32, i32* %26, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = load i32, i32* %16, align 4
  %93 = load i32*, i32** %33, align 8
  %94 = load i32*, i32** %30, align 8
  %95 = call i32 @krb5_rd_req_in_set_keytab(i32 %92, i32* %93, i32* %94)
  store i32 %95, i32* %26, align 4
  br label %96

96:                                               ; preds = %91, %86
  %97 = load i32, i32* %26, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %110

99:                                               ; preds = %96
  %100 = load i32*, i32** %33, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %106

102:                                              ; preds = %99
  %103 = load i32, i32* %16, align 4
  %104 = load i32*, i32** %33, align 8
  %105 = call i32 @krb5_rd_req_in_ctx_free(i32 %103, i32* %104)
  br label %106

106:                                              ; preds = %102, %99
  %107 = load i32, i32* %26, align 4
  %108 = load i32*, i32** %14, align 8
  store i32 %107, i32* %108, align 4
  %109 = load i32, i32* @GSS_S_FAILURE, align 4
  store i32 %109, i32* %13, align 4
  br label %521

110:                                              ; preds = %96
  %111 = load i32, i32* %16, align 4
  %112 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %113 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %112, i32 0, i32 5
  %114 = load i32*, i32** %35, align 8
  %115 = load i32*, i32** %33, align 8
  %116 = call i32 @krb5_rd_req_ctx(i32 %111, %struct.TYPE_35__** %113, %struct.TYPE_37__* %28, i32* %114, i32* %115, i32** %34)
  store i32 %116, i32* %26, align 4
  %117 = load i32, i32* %16, align 4
  %118 = load i32*, i32** %33, align 8
  %119 = call i32 @krb5_rd_req_in_ctx_free(i32 %117, i32* %118)
  %120 = load i32, i32* %26, align 4
  %121 = load i32, i32* @KRB5KRB_AP_ERR_SKEW, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %127, label %123

123:                                              ; preds = %110
  %124 = load i32, i32* %26, align 4
  %125 = load i32, i32* @KRB5KRB_AP_ERR_TKT_NYV, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %134

127:                                              ; preds = %123, %110
  %128 = load i32*, i32** %14, align 8
  %129 = load i32, i32* %16, align 4
  %130 = load i32, i32* %26, align 4
  %131 = load i32*, i32** %35, align 8
  %132 = load %struct.TYPE_41__*, %struct.TYPE_41__** %22, align 8
  %133 = call i32 @send_error_token(i32* %128, i32 %129, i32 %130, i32* %131, %struct.TYPE_37__* %28, %struct.TYPE_41__* %132)
  store i32 %133, i32* %13, align 4
  br label %521

134:                                              ; preds = %123
  %135 = load i32, i32* %26, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %134
  %138 = load i32, i32* %26, align 4
  %139 = load i32*, i32** %14, align 8
  store i32 %138, i32* %139, align 4
  %140 = load i32, i32* @GSS_S_FAILURE, align 4
  store i32 %140, i32* %13, align 4
  br label %521

141:                                              ; preds = %134
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %16, align 4
  %144 = load i32*, i32** %34, align 8
  %145 = call i32 @krb5_rd_req_out_get_ap_req_options(i32 %143, i32* %144, i32* %29)
  store i32 %145, i32* %26, align 4
  %146 = load i32, i32* %26, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %142
  %149 = load i32, i32* %16, align 4
  %150 = load i32*, i32** %34, align 8
  %151 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %152 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %151, i32 0, i32 4
  %153 = call i32 @krb5_rd_req_out_get_ticket(i32 %149, i32* %150, %struct.TYPE_34__** %152)
  store i32 %153, i32* %26, align 4
  br label %154

154:                                              ; preds = %148, %142
  %155 = load i32, i32* %26, align 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %154
  %158 = load i32, i32* %16, align 4
  %159 = load i32*, i32** %34, align 8
  %160 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %161 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %160, i32 0, i32 9
  %162 = call i32 @krb5_rd_req_out_get_keyblock(i32 %158, i32* %159, i32* %161)
  store i32 %162, i32* %26, align 4
  br label %163

163:                                              ; preds = %157, %154
  %164 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %165 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %164, i32 0, i32 4
  %166 = load %struct.TYPE_34__*, %struct.TYPE_34__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %171 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %170, i32 0, i32 3
  store i32 %169, i32* %171, align 4
  %172 = load i32, i32* %16, align 4
  %173 = load i32*, i32** %34, align 8
  %174 = call i32 @krb5_rd_req_out_ctx_free(i32 %172, i32* %173)
  %175 = load i32, i32* %26, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %163
  %178 = load i32, i32* @GSS_S_FAILURE, align 4
  store i32 %178, i32* %27, align 4
  %179 = load i32, i32* %26, align 4
  %180 = load i32*, i32** %14, align 8
  store i32 %179, i32* %180, align 4
  %181 = load i32, i32* %27, align 4
  store i32 %181, i32* %13, align 4
  br label %521

182:                                              ; preds = %163
  %183 = load i32, i32* %16, align 4
  %184 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %185 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %184, i32 0, i32 4
  %186 = load %struct.TYPE_34__*, %struct.TYPE_34__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %190 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %189, i32 0, i32 8
  %191 = call i32 @krb5_copy_principal(i32 %183, i32 %188, i32* %190)
  store i32 %191, i32* %26, align 4
  %192 = load i32, i32* %26, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %182
  %195 = load i32, i32* @GSS_S_FAILURE, align 4
  store i32 %195, i32* %27, align 4
  %196 = load i32, i32* %26, align 4
  %197 = load i32*, i32** %14, align 8
  store i32 %196, i32* %197, align 4
  br label %198

198:                                              ; preds = %194, %182
  %199 = load i32, i32* %16, align 4
  %200 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %201 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %200, i32 0, i32 4
  %202 = load %struct.TYPE_34__*, %struct.TYPE_34__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %206 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %205, i32 0, i32 7
  %207 = call i32 @krb5_copy_principal(i32 %199, i32 %204, i32* %206)
  store i32 %207, i32* %26, align 4
  %208 = load i32, i32* %26, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %198
  %211 = load i32, i32* @GSS_S_FAILURE, align 4
  store i32 %211, i32* %27, align 4
  %212 = load i32, i32* %26, align 4
  %213 = load i32*, i32** %14, align 8
  store i32 %212, i32* %213, align 4
  %214 = load i32, i32* %27, align 4
  store i32 %214, i32* %13, align 4
  br label %521

215:                                              ; preds = %198
  %216 = load i32*, i32** %14, align 8
  %217 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %218 = load i32, i32* %16, align 4
  %219 = call i32 @_gss_DES3_get_mic_compat(i32* %216, %struct.TYPE_39__* %217, i32 %218)
  store i32 %219, i32* %27, align 4
  %220 = load i32, i32* %27, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %224

222:                                              ; preds = %215
  %223 = load i32, i32* %27, align 4
  store i32 %223, i32* %13, align 4
  br label %521

224:                                              ; preds = %215
  %225 = load i32*, i32** %20, align 8
  %226 = icmp ne i32* %225, null
  br i1 %226, label %227, label %244

227:                                              ; preds = %224
  %228 = load i32, i32* %16, align 4
  %229 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %230 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %229, i32 0, i32 4
  %231 = load %struct.TYPE_34__*, %struct.TYPE_34__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = load i32*, i32** %20, align 8
  %235 = call i32 @krb5_copy_principal(i32 %228, i32 %233, i32* %234)
  store i32 %235, i32* %26, align 4
  %236 = load i32, i32* %26, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %243

238:                                              ; preds = %227
  %239 = load i32, i32* @GSS_S_FAILURE, align 4
  store i32 %239, i32* %27, align 4
  %240 = load i32, i32* %26, align 4
  %241 = load i32*, i32** %14, align 8
  store i32 %240, i32* %241, align 4
  %242 = load i32, i32* %27, align 4
  store i32 %242, i32* %13, align 4
  br label %521

243:                                              ; preds = %227
  br label %244

244:                                              ; preds = %243, %224
  %245 = load i32, i32* %16, align 4
  %246 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %247 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %246, i32 0, i32 5
  %248 = load %struct.TYPE_35__*, %struct.TYPE_35__** %247, align 8
  %249 = call i32 @krb5_auth_con_getauthenticator(i32 %245, %struct.TYPE_35__* %248, %struct.TYPE_38__** %36)
  store i32 %249, i32* %26, align 4
  %250 = load i32, i32* %26, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %257

252:                                              ; preds = %244
  %253 = load i32, i32* @GSS_S_FAILURE, align 4
  store i32 %253, i32* %27, align 4
  %254 = load i32, i32* %26, align 4
  %255 = load i32*, i32** %14, align 8
  store i32 %254, i32* %255, align 4
  %256 = load i32, i32* %27, align 4
  store i32 %256, i32* %13, align 4
  br label %521

257:                                              ; preds = %244
  %258 = load %struct.TYPE_38__*, %struct.TYPE_38__** %36, align 8
  %259 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %258, i32 0, i32 0
  %260 = load %struct.TYPE_42__*, %struct.TYPE_42__** %259, align 8
  %261 = icmp eq %struct.TYPE_42__* %260, null
  br i1 %261, label %262, label %267

262:                                              ; preds = %257
  %263 = load i32, i32* %16, align 4
  %264 = call i32 @krb5_free_authenticator(i32 %263, %struct.TYPE_38__** %36)
  %265 = load i32*, i32** %14, align 8
  store i32 0, i32* %265, align 4
  %266 = load i32, i32* @GSS_S_BAD_BINDINGS, align 4
  store i32 %266, i32* %13, align 4
  br label %521

267:                                              ; preds = %257
  %268 = load %struct.TYPE_38__*, %struct.TYPE_38__** %36, align 8
  %269 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %268, i32 0, i32 0
  %270 = load %struct.TYPE_42__*, %struct.TYPE_42__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = load i64, i64* @CKSUMTYPE_GSSAPI, align 8
  %274 = icmp eq i64 %272, %273
  br i1 %274, label %275, label %293

275:                                              ; preds = %267
  %276 = load i32*, i32** %14, align 8
  %277 = load i32, i32* %19, align 4
  %278 = load %struct.TYPE_38__*, %struct.TYPE_38__** %36, align 8
  %279 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %278, i32 0, i32 0
  %280 = load %struct.TYPE_42__*, %struct.TYPE_42__** %279, align 8
  %281 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %282 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %281, i32 0, i32 0
  %283 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %284 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %283, i32 0, i32 6
  %285 = call i32 @_gsskrb5_verify_8003_checksum(i32* %276, i32 %277, %struct.TYPE_42__* %280, i32* %282, i32* %284)
  store i32 %285, i32* %27, align 4
  %286 = load i32, i32* %16, align 4
  %287 = call i32 @krb5_free_authenticator(i32 %286, %struct.TYPE_38__** %36)
  %288 = load i32, i32* %27, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %292

290:                                              ; preds = %275
  %291 = load i32, i32* %27, align 4
  store i32 %291, i32* %13, align 4
  br label %521

292:                                              ; preds = %275
  br label %347

293:                                              ; preds = %267
  %294 = load i32, i32* %16, align 4
  %295 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %296 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %295, i32 0, i32 5
  %297 = load %struct.TYPE_35__*, %struct.TYPE_35__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = call i32 @krb5_crypto_init(i32 %294, i32 %299, i32 0, i32* %37)
  store i32 %300, i32* %26, align 4
  %301 = load i32, i32* %26, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %310

303:                                              ; preds = %293
  %304 = load i32, i32* %16, align 4
  %305 = call i32 @krb5_free_authenticator(i32 %304, %struct.TYPE_38__** %36)
  %306 = load i32, i32* @GSS_S_FAILURE, align 4
  store i32 %306, i32* %27, align 4
  %307 = load i32, i32* %26, align 4
  %308 = load i32*, i32** %14, align 8
  store i32 %307, i32* %308, align 4
  %309 = load i32, i32* %27, align 4
  store i32 %309, i32* %13, align 4
  br label %521

310:                                              ; preds = %293
  %311 = load i32, i32* %16, align 4
  %312 = load i32, i32* %37, align 4
  %313 = load i32, i32* @KRB5_KU_AP_REQ_AUTH_CKSUM, align 4
  %314 = load %struct.TYPE_38__*, %struct.TYPE_38__** %36, align 8
  %315 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %314, i32 0, i32 0
  %316 = load %struct.TYPE_42__*, %struct.TYPE_42__** %315, align 8
  %317 = call i32 @krb5_verify_checksum(i32 %311, i32 %312, i32 %313, i32* null, i32 0, %struct.TYPE_42__* %316)
  store i32 %317, i32* %26, align 4
  %318 = load i32, i32* %16, align 4
  %319 = call i32 @krb5_free_authenticator(i32 %318, %struct.TYPE_38__** %36)
  %320 = load i32, i32* %16, align 4
  %321 = load i32, i32* %37, align 4
  %322 = call i32 @krb5_crypto_destroy(i32 %320, i32 %321)
  %323 = load i32, i32* %26, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %330

325:                                              ; preds = %310
  %326 = load i32, i32* @GSS_S_BAD_SIG, align 4
  store i32 %326, i32* %27, align 4
  %327 = load i32, i32* %26, align 4
  %328 = load i32*, i32** %14, align 8
  store i32 %327, i32* %328, align 4
  %329 = load i32, i32* %27, align 4
  store i32 %329, i32* %13, align 4
  br label %521

330:                                              ; preds = %310
  %331 = load i32, i32* @GSS_C_REPLAY_FLAG, align 4
  %332 = load i32, i32* @GSS_C_SEQUENCE_FLAG, align 4
  %333 = or i32 %331, %332
  %334 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %335 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %334, i32 0, i32 0
  store i32 %333, i32* %335, align 8
  %336 = load i32, i32* %29, align 4
  %337 = load i32, i32* @AP_OPTS_MUTUAL_REQUIRED, align 4
  %338 = and i32 %336, %337
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %346

340:                                              ; preds = %330
  %341 = load i32, i32* @GSS_C_MUTUAL_FLAG, align 4
  %342 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %343 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 8
  %345 = or i32 %344, %341
  store i32 %345, i32* %343, align 8
  br label %346

346:                                              ; preds = %340, %330
  br label %347

347:                                              ; preds = %346, %292
  %348 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %349 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 8
  %351 = load i32, i32* @GSS_C_MUTUAL_FLAG, align 4
  %352 = and i32 %350, %351
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %446

354:                                              ; preds = %347
  store i32 0, i32* %39, align 4
  %355 = load i32, i32* %16, align 4
  %356 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %357 = call i32 @_gsskrb5i_is_cfx(i32 %355, %struct.TYPE_39__* %356, i32 1)
  %358 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %359 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %358, i32 0, i32 1
  %360 = load i32, i32* %359, align 4
  %361 = load i32, i32* @IS_CFX, align 4
  %362 = and i32 %360, %361
  store i32 %362, i32* %31, align 4
  %363 = load i32, i32* %31, align 4
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %370, label %365

365:                                              ; preds = %354
  %366 = load i32, i32* %29, align 4
  %367 = load i32, i32* @AP_OPTS_USE_SUBKEY, align 4
  %368 = and i32 %366, %367
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %371

370:                                              ; preds = %365, %354
  store i32 1, i32* %39, align 4
  br label %394

371:                                              ; preds = %365
  %372 = load i32, i32* %16, align 4
  %373 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %374 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %373, i32 0, i32 5
  %375 = load %struct.TYPE_35__*, %struct.TYPE_35__** %374, align 8
  %376 = call i32 @krb5_auth_con_getremotesubkey(i32 %372, %struct.TYPE_35__* %375, i32** %40)
  store i32 %376, i32* %26, align 4
  %377 = load i32, i32* %26, align 4
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %379, label %393

379:                                              ; preds = %371
  %380 = load i32, i32* %16, align 4
  %381 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %382 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %381, i32 0, i32 5
  %383 = load %struct.TYPE_35__*, %struct.TYPE_35__** %382, align 8
  %384 = load i32*, i32** %40, align 8
  %385 = call i32 @krb5_auth_con_setlocalsubkey(i32 %380, %struct.TYPE_35__* %383, i32* %384)
  store i32 %385, i32* %26, align 4
  %386 = load i32, i32* %26, align 4
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %388, label %389

388:                                              ; preds = %379
  store i32 1, i32* %39, align 4
  br label %389

389:                                              ; preds = %388, %379
  %390 = load i32, i32* %16, align 4
  %391 = load i32*, i32** %40, align 8
  %392 = call i32 @krb5_free_keyblock(i32 %390, i32* %391)
  br label %393

393:                                              ; preds = %389, %371
  br label %394

394:                                              ; preds = %393, %370
  %395 = load i32, i32* %39, align 4
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %397, label %409

397:                                              ; preds = %394
  %398 = load i32, i32* @ACCEPTOR_SUBKEY, align 4
  %399 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %400 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %399, i32 0, i32 1
  %401 = load i32, i32* %400, align 4
  %402 = or i32 %401, %398
  store i32 %402, i32* %400, align 4
  %403 = load i32, i32* %16, align 4
  %404 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %405 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %404, i32 0, i32 5
  %406 = load %struct.TYPE_35__*, %struct.TYPE_35__** %405, align 8
  %407 = load i32, i32* @KRB5_AUTH_CONTEXT_USE_SUBKEY, align 4
  %408 = call i32 @krb5_auth_con_addflags(i32 %403, %struct.TYPE_35__* %406, i32 %407, i32* null)
  br label %409

409:                                              ; preds = %397, %394
  %410 = load i32, i32* %16, align 4
  %411 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %412 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %411, i32 0, i32 5
  %413 = load %struct.TYPE_35__*, %struct.TYPE_35__** %412, align 8
  %414 = call i32 @krb5_mk_rep(i32 %410, %struct.TYPE_35__* %413, %struct.TYPE_37__* %38)
  store i32 %414, i32* %26, align 4
  %415 = load i32, i32* %26, align 4
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %421

417:                                              ; preds = %409
  %418 = load i32, i32* %26, align 4
  %419 = load i32*, i32** %14, align 8
  store i32 %418, i32* %419, align 4
  %420 = load i32, i32* @GSS_S_FAILURE, align 4
  store i32 %420, i32* %13, align 4
  br label %521

421:                                              ; preds = %409
  %422 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %423 = call i64 @IS_DCE_STYLE(%struct.TYPE_39__* %422)
  %424 = icmp ne i64 %423, 0
  br i1 %424, label %425, label %434

425:                                              ; preds = %421
  %426 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %38, i32 0, i32 1
  %427 = load i32, i32* %426, align 4
  %428 = load %struct.TYPE_41__*, %struct.TYPE_41__** %22, align 8
  %429 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %428, i32 0, i32 1
  store i32 %427, i32* %429, align 4
  %430 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %38, i32 0, i32 0
  %431 = load i32, i32* %430, align 4
  %432 = load %struct.TYPE_41__*, %struct.TYPE_41__** %22, align 8
  %433 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %432, i32 0, i32 0
  store i32 %431, i32* %433, align 4
  br label %445

434:                                              ; preds = %421
  %435 = load i32*, i32** %14, align 8
  %436 = load %struct.TYPE_41__*, %struct.TYPE_41__** %22, align 8
  %437 = load i32, i32* @GSS_KRB5_MECHANISM, align 4
  %438 = call i32 @_gsskrb5_encapsulate(i32* %435, %struct.TYPE_37__* %38, %struct.TYPE_41__* %436, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %437)
  store i32 %438, i32* %27, align 4
  %439 = call i32 @krb5_data_free(%struct.TYPE_37__* %38)
  %440 = load i32, i32* %27, align 4
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %442, label %444

442:                                              ; preds = %434
  %443 = load i32, i32* %27, align 4
  store i32 %443, i32* %13, align 4
  br label %521

444:                                              ; preds = %434
  br label %445

445:                                              ; preds = %444, %425
  br label %446

446:                                              ; preds = %445, %347
  %447 = load i32, i32* @GSS_C_TRANS_FLAG, align 4
  %448 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %449 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %448, i32 0, i32 0
  %450 = load i32, i32* %449, align 8
  %451 = or i32 %450, %447
  store i32 %451, i32* %449, align 8
  %452 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %453 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %452, i32 0, i32 4
  %454 = load %struct.TYPE_34__*, %struct.TYPE_34__** %453, align 8
  %455 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %454, i32 0, i32 0
  %456 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %455, i32 0, i32 0
  %457 = load i32, i32* %456, align 4
  %458 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %459 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %458, i32 0, i32 3
  store i32 %457, i32* %459, align 4
  %460 = load i32, i32* @OPEN, align 4
  %461 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %462 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %461, i32 0, i32 1
  %463 = load i32, i32* %462, align 4
  %464 = or i32 %463, %460
  store i32 %464, i32* %462, align 4
  %465 = load i32*, i32** %21, align 8
  %466 = icmp ne i32* %465, null
  br i1 %466, label %467, label %470

467:                                              ; preds = %446
  %468 = load i32, i32* @GSS_KRB5_MECHANISM, align 4
  %469 = load i32*, i32** %21, align 8
  store i32 %468, i32* %469, align 4
  br label %470

470:                                              ; preds = %467, %446
  %471 = load i32*, i32** %24, align 8
  %472 = icmp ne i32* %471, null
  br i1 %472, label %473, label %486

473:                                              ; preds = %470
  %474 = load i32*, i32** %14, align 8
  %475 = load i32, i32* %16, align 4
  %476 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %477 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %476, i32 0, i32 3
  %478 = load i32, i32* %477, align 4
  %479 = load i32*, i32** %24, align 8
  %480 = call i32 @_gsskrb5_lifetime_left(i32* %474, i32 %475, i32 %478, i32* %479)
  store i32 %480, i32* %27, align 4
  %481 = load i32, i32* %27, align 4
  %482 = icmp ne i32 %481, 0
  br i1 %482, label %483, label %485

483:                                              ; preds = %473
  %484 = load i32, i32* %27, align 4
  store i32 %484, i32* %13, align 4
  br label %521

485:                                              ; preds = %473
  br label %486

486:                                              ; preds = %485, %470
  %487 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %488 = call i64 @IS_DCE_STYLE(%struct.TYPE_39__* %487)
  %489 = icmp ne i64 %488, 0
  br i1 %489, label %490, label %506

490:                                              ; preds = %486
  %491 = load i32*, i32** %23, align 8
  %492 = icmp ne i32* %491, null
  br i1 %492, label %493, label %501

493:                                              ; preds = %490
  %494 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %495 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %494, i32 0, i32 0
  %496 = load i32, i32* %495, align 8
  %497 = load i32, i32* @GSS_C_DELEG_FLAG, align 4
  %498 = xor i32 %497, -1
  %499 = and i32 %496, %498
  %500 = load i32*, i32** %23, align 8
  store i32 %499, i32* %500, align 4
  br label %501

501:                                              ; preds = %493, %490
  %502 = load i32, i32* @ACCEPTOR_WAIT_FOR_DCESTYLE, align 4
  %503 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %504 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %503, i32 0, i32 2
  store i32 %502, i32* %504, align 8
  %505 = load i32, i32* @GSS_S_CONTINUE_NEEDED, align 4
  store i32 %505, i32* %13, align 4
  br label %521

506:                                              ; preds = %486
  %507 = load i32*, i32** %14, align 8
  %508 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %509 = load i32, i32* %16, align 4
  %510 = load i32*, i32** %25, align 8
  %511 = call i32 @gsskrb5_acceptor_ready(i32* %507, %struct.TYPE_39__* %508, i32 %509, i32* %510)
  store i32 %511, i32* %27, align 4
  %512 = load i32*, i32** %23, align 8
  %513 = icmp ne i32* %512, null
  br i1 %513, label %514, label %519

514:                                              ; preds = %506
  %515 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %516 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %515, i32 0, i32 0
  %517 = load i32, i32* %516, align 8
  %518 = load i32*, i32** %23, align 8
  store i32 %517, i32* %518, align 4
  br label %519

519:                                              ; preds = %514, %506
  %520 = load i32, i32* %27, align 4
  store i32 %520, i32* %13, align 4
  br label %521

521:                                              ; preds = %519, %501, %483, %442, %417, %325, %303, %290, %262, %252, %238, %222, %210, %177, %137, %127, %106
  %522 = load i32, i32* %13, align 4
  ret i32 %522
}

declare dso_local i32 @_gsskrb5_decapsulate(i32*, %struct.TYPE_41__*, %struct.TYPE_37__*, i8*, i32) #1

declare dso_local i32 @krb5_rd_req_in_ctx_alloc(i32, i32**) #1

declare dso_local i32 @krb5_rd_req_in_set_keytab(i32, i32*, i32*) #1

declare dso_local i32 @krb5_rd_req_in_ctx_free(i32, i32*) #1

declare dso_local i32 @krb5_rd_req_ctx(i32, %struct.TYPE_35__**, %struct.TYPE_37__*, i32*, i32*, i32**) #1

declare dso_local i32 @send_error_token(i32*, i32, i32, i32*, %struct.TYPE_37__*, %struct.TYPE_41__*) #1

declare dso_local i32 @krb5_rd_req_out_get_ap_req_options(i32, i32*, i32*) #1

declare dso_local i32 @krb5_rd_req_out_get_ticket(i32, i32*, %struct.TYPE_34__**) #1

declare dso_local i32 @krb5_rd_req_out_get_keyblock(i32, i32*, i32*) #1

declare dso_local i32 @krb5_rd_req_out_ctx_free(i32, i32*) #1

declare dso_local i32 @krb5_copy_principal(i32, i32, i32*) #1

declare dso_local i32 @_gss_DES3_get_mic_compat(i32*, %struct.TYPE_39__*, i32) #1

declare dso_local i32 @krb5_auth_con_getauthenticator(i32, %struct.TYPE_35__*, %struct.TYPE_38__**) #1

declare dso_local i32 @krb5_free_authenticator(i32, %struct.TYPE_38__**) #1

declare dso_local i32 @_gsskrb5_verify_8003_checksum(i32*, i32, %struct.TYPE_42__*, i32*, i32*) #1

declare dso_local i32 @krb5_crypto_init(i32, i32, i32, i32*) #1

declare dso_local i32 @krb5_verify_checksum(i32, i32, i32, i32*, i32, %struct.TYPE_42__*) #1

declare dso_local i32 @krb5_crypto_destroy(i32, i32) #1

declare dso_local i32 @_gsskrb5i_is_cfx(i32, %struct.TYPE_39__*, i32) #1

declare dso_local i32 @krb5_auth_con_getremotesubkey(i32, %struct.TYPE_35__*, i32**) #1

declare dso_local i32 @krb5_auth_con_setlocalsubkey(i32, %struct.TYPE_35__*, i32*) #1

declare dso_local i32 @krb5_free_keyblock(i32, i32*) #1

declare dso_local i32 @krb5_auth_con_addflags(i32, %struct.TYPE_35__*, i32, i32*) #1

declare dso_local i32 @krb5_mk_rep(i32, %struct.TYPE_35__*, %struct.TYPE_37__*) #1

declare dso_local i64 @IS_DCE_STYLE(%struct.TYPE_39__*) #1

declare dso_local i32 @_gsskrb5_encapsulate(i32*, %struct.TYPE_37__*, %struct.TYPE_41__*, i8*, i32) #1

declare dso_local i32 @krb5_data_free(%struct.TYPE_37__*) #1

declare dso_local i32 @_gsskrb5_lifetime_left(i32*, i32, i32, i32*) #1

declare dso_local i32 @gsskrb5_acceptor_ready(i32*, %struct.TYPE_39__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
