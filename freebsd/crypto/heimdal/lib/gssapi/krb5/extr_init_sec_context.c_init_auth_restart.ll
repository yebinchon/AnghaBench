; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_init_sec_context.c_init_auth_restart.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_init_sec_context.c_init_auth_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_34__ = type { i32 }
%struct.TYPE_33__ = type { i32, i32, i32*, i32, %struct.TYPE_27__*, %struct.TYPE_29__*, i32*, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_29__ = type { %struct.TYPE_31__* }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_35__ = type { i32*, i32 }
%struct.TYPE_32__ = type { i32, i32* }

@GSS_S_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"realm-config\00", align 1
@GSS_C_DELEG_FLAG = common dso_local global i32 0, align 4
@GSS_C_DELEG_POLICY_FLAG = common dso_local global i32 0, align 4
@GSS_C_MUTUAL_FLAG = common dso_local global i32 0, align 4
@AP_OPTS_MUTUAL_REQUIRED = common dso_local global i32 0, align 4
@GSS_C_REPLAY_FLAG = common dso_local global i32 0, align 4
@GSS_C_SEQUENCE_FLAG = common dso_local global i32 0, align 4
@GSS_C_DCE_STYLE = common dso_local global i32 0, align 4
@GSS_C_IDENTIFY_FLAG = common dso_local global i32 0, align 4
@GSS_C_EXTENDED_ERROR_FLAG = common dso_local global i32 0, align 4
@GSS_C_CONF_FLAG = common dso_local global i32 0, align 4
@GSS_C_INTEG_FLAG = common dso_local global i32 0, align 4
@GSS_CF_NO_CI_FLAGS = common dso_local global i32 0, align 4
@GSS_C_TRANS_FLAG = common dso_local global i32 0, align 4
@LOCAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"time-offset\00", align 1
@KRB5_KU_AP_REQ_AUTH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"\01\00\00", align 1
@GSS_KRB5_MECHANISM = common dso_local global i32 0, align 4
@INITIATOR_WAIT_FOR_MUTAL = common dso_local global i32 0, align 4
@GSS_S_CONTINUE_NEEDED = common dso_local global i32 0, align 4
@CLOSE_CCACHE = common dso_local global i32 0, align 4
@GSS_C_ANON_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_34__*, %struct.TYPE_33__*, i32, i32, i32, %struct.TYPE_35__*, i32*, %struct.TYPE_35__*, i32*, i32*)* @init_auth_restart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_auth_restart(i32* %0, %struct.TYPE_34__* %1, %struct.TYPE_33__* %2, i32 %3, i32 %4, i32 %5, %struct.TYPE_35__* %6, i32* %7, %struct.TYPE_35__* %8, i32* %9, i32* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_34__*, align 8
  %15 = alloca %struct.TYPE_33__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_35__*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_35__*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_32__, align 8
  %28 = alloca i32, align 4
  %29 = alloca %struct.TYPE_32__, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca %struct.TYPE_32__, align 8
  %33 = alloca %struct.TYPE_32__, align 8
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca %struct.TYPE_32__, align 8
  %38 = alloca i32*, align 8
  store i32* %0, i32** %13, align 8
  store %struct.TYPE_34__* %1, %struct.TYPE_34__** %14, align 8
  store %struct.TYPE_33__* %2, %struct.TYPE_33__** %15, align 8
  store i32 %3, i32* %16, align 4
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store %struct.TYPE_35__* %6, %struct.TYPE_35__** %19, align 8
  store i32* %7, i32** %20, align 8
  store %struct.TYPE_35__* %8, %struct.TYPE_35__** %21, align 8
  store i32* %9, i32** %22, align 8
  store i32* %10, i32** %23, align 8
  %39 = load i32, i32* @GSS_S_FAILURE, align 4
  store i32 %39, i32* %24, align 4
  store i32 0, i32* %34, align 4
  store i32 0, i32* %35, align 4
  %40 = call i32 @krb5_data_zero(%struct.TYPE_32__* %27)
  %41 = call i32 @krb5_data_zero(%struct.TYPE_32__* %32)
  %42 = load i32*, i32** %13, align 8
  store i32 0, i32* %42, align 4
  %43 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %44 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %43, i32 0, i32 4
  %45 = load %struct.TYPE_27__*, %struct.TYPE_27__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %82, label %51

51:                                               ; preds = %11
  %52 = load i32, i32* %16, align 4
  %53 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %54 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @krb5_cc_get_config(i32 %52, i32* %55, i32* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.TYPE_32__* %37)
  store i32 %56, i32* %24, align 4
  %57 = load i32, i32* %24, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %81

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %37, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %61, 1
  br i1 %62, label %72, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %37, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = bitcast i32* %65 to i8*
  %67 = getelementptr inbounds i8, i8* %66, i64 0
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = and i32 %69, 1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %63, %59
  %73 = load i32, i32* @GSS_C_DELEG_FLAG, align 4
  %74 = load i32, i32* @GSS_C_DELEG_POLICY_FLAG, align 4
  %75 = or i32 %73, %74
  %76 = xor i32 %75, -1
  %77 = load i32, i32* %17, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %17, align 4
  br label %79

79:                                               ; preds = %72, %63
  %80 = call i32 @krb5_data_free(%struct.TYPE_32__* %37)
  br label %81

81:                                               ; preds = %79, %51
  br label %82

82:                                               ; preds = %81, %11
  store i32 0, i32* %36, align 4
  %83 = load i32, i32* %17, align 4
  %84 = load i32, i32* @GSS_C_DELEG_POLICY_FLAG, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %102

87:                                               ; preds = %82
  %88 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %89 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %88, i32 0, i32 4
  %90 = load %struct.TYPE_27__*, %struct.TYPE_27__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %87
  %97 = load i32, i32* @GSS_C_DELEG_FLAG, align 4
  %98 = load i32, i32* @GSS_C_DELEG_POLICY_FLAG, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* %36, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %36, align 4
  br label %102

102:                                              ; preds = %96, %87, %82
  %103 = load i32, i32* %17, align 4
  %104 = load i32, i32* @GSS_C_DELEG_FLAG, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %102
  %108 = load i32, i32* @GSS_C_DELEG_FLAG, align 4
  %109 = load i32, i32* %36, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %36, align 4
  br label %111

111:                                              ; preds = %107, %102
  store i32 0, i32* %28, align 4
  store i32 0, i32* %26, align 4
  %112 = load i32, i32* %36, align 4
  %113 = load i32, i32* @GSS_C_DELEG_FLAG, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %132

116:                                              ; preds = %111
  %117 = load i32, i32* %16, align 4
  %118 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %119 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %118, i32 0, i32 7
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %122 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %121, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %125 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %124, i32 0, i32 4
  %126 = load %struct.TYPE_27__*, %struct.TYPE_27__** %125, align 8
  %127 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %128 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %127, i32 0, i32 6
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %36, align 4
  %131 = call i32 @do_delegation(i32 %117, i32 %120, i32* %123, %struct.TYPE_27__* %126, i32* %129, %struct.TYPE_32__* %32, i32 %130, i32* %28)
  br label %132

132:                                              ; preds = %116, %111
  %133 = load i32, i32* %17, align 4
  %134 = load i32, i32* @GSS_C_MUTUAL_FLAG, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %132
  %138 = load i32, i32* @GSS_C_MUTUAL_FLAG, align 4
  %139 = load i32, i32* %28, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %28, align 4
  %141 = load i32, i32* @AP_OPTS_MUTUAL_REQUIRED, align 4
  %142 = load i32, i32* %26, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %26, align 4
  br label %144

144:                                              ; preds = %137, %132
  %145 = load i32, i32* %17, align 4
  %146 = load i32, i32* @GSS_C_REPLAY_FLAG, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %144
  %150 = load i32, i32* @GSS_C_REPLAY_FLAG, align 4
  %151 = load i32, i32* %28, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %28, align 4
  br label %153

153:                                              ; preds = %149, %144
  %154 = load i32, i32* %17, align 4
  %155 = load i32, i32* @GSS_C_SEQUENCE_FLAG, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %153
  %159 = load i32, i32* @GSS_C_SEQUENCE_FLAG, align 4
  %160 = load i32, i32* %28, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %28, align 4
  br label %162

162:                                              ; preds = %158, %153
  %163 = load i32, i32* %17, align 4
  %164 = load i32, i32* @GSS_C_DCE_STYLE, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %176

167:                                              ; preds = %162
  %168 = load i32, i32* @GSS_C_DCE_STYLE, align 4
  %169 = load i32, i32* @GSS_C_MUTUAL_FLAG, align 4
  %170 = or i32 %168, %169
  %171 = load i32, i32* %28, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %28, align 4
  %173 = load i32, i32* @AP_OPTS_MUTUAL_REQUIRED, align 4
  %174 = load i32, i32* %26, align 4
  %175 = or i32 %174, %173
  store i32 %175, i32* %26, align 4
  br label %176

176:                                              ; preds = %167, %162
  %177 = load i32, i32* %17, align 4
  %178 = load i32, i32* @GSS_C_IDENTIFY_FLAG, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %176
  %182 = load i32, i32* @GSS_C_IDENTIFY_FLAG, align 4
  %183 = load i32, i32* %28, align 4
  %184 = or i32 %183, %182
  store i32 %184, i32* %28, align 4
  br label %185

185:                                              ; preds = %181, %176
  %186 = load i32, i32* %17, align 4
  %187 = load i32, i32* @GSS_C_EXTENDED_ERROR_FLAG, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %194

190:                                              ; preds = %185
  %191 = load i32, i32* @GSS_C_EXTENDED_ERROR_FLAG, align 4
  %192 = load i32, i32* %28, align 4
  %193 = or i32 %192, %191
  store i32 %193, i32* %28, align 4
  br label %194

194:                                              ; preds = %190, %185
  %195 = load i32, i32* %17, align 4
  %196 = load i32, i32* @GSS_C_CONF_FLAG, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %203

199:                                              ; preds = %194
  %200 = load i32, i32* @GSS_C_CONF_FLAG, align 4
  %201 = load i32, i32* %28, align 4
  %202 = or i32 %201, %200
  store i32 %202, i32* %28, align 4
  br label %203

203:                                              ; preds = %199, %194
  %204 = load i32, i32* %17, align 4
  %205 = load i32, i32* @GSS_C_INTEG_FLAG, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %203
  %209 = load i32, i32* @GSS_C_INTEG_FLAG, align 4
  %210 = load i32, i32* %28, align 4
  %211 = or i32 %210, %209
  store i32 %211, i32* %28, align 4
  br label %212

212:                                              ; preds = %208, %203
  %213 = load %struct.TYPE_34__*, %struct.TYPE_34__** %14, align 8
  %214 = icmp eq %struct.TYPE_34__* %213, null
  br i1 %214, label %222, label %215

215:                                              ; preds = %212
  %216 = load %struct.TYPE_34__*, %struct.TYPE_34__** %14, align 8
  %217 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* @GSS_CF_NO_CI_FLAGS, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %229, label %222

222:                                              ; preds = %215, %212
  %223 = load i32, i32* @GSS_C_CONF_FLAG, align 4
  %224 = load i32, i32* %28, align 4
  %225 = or i32 %224, %223
  store i32 %225, i32* %28, align 4
  %226 = load i32, i32* @GSS_C_INTEG_FLAG, align 4
  %227 = load i32, i32* %28, align 4
  %228 = or i32 %227, %226
  store i32 %228, i32* %28, align 4
  br label %229

229:                                              ; preds = %222, %215
  %230 = load i32, i32* @GSS_C_TRANS_FLAG, align 4
  %231 = load i32, i32* %28, align 4
  %232 = or i32 %231, %230
  store i32 %232, i32* %28, align 4
  %233 = load i32*, i32** %22, align 8
  %234 = icmp ne i32* %233, null
  br i1 %234, label %235, label %238

235:                                              ; preds = %229
  %236 = load i32, i32* %28, align 4
  %237 = load i32*, i32** %22, align 8
  store i32 %236, i32* %237, align 4
  br label %238

238:                                              ; preds = %235, %229
  %239 = load i32, i32* %28, align 4
  %240 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %241 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %240, i32 0, i32 0
  store i32 %239, i32* %241, align 8
  %242 = load i32, i32* @LOCAL, align 4
  %243 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %244 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = or i32 %245, %242
  store i32 %246, i32* %244, align 4
  %247 = load i32*, i32** %13, align 8
  %248 = load i32, i32* %18, align 4
  %249 = load i32, i32* %28, align 4
  %250 = call i32 @_gsskrb5_create_8003_checksum(i32* %247, i32 %248, i32 %249, %struct.TYPE_32__* %32, i32* %30)
  store i32 %250, i32* %24, align 4
  %251 = call i32 @krb5_data_free(%struct.TYPE_32__* %32)
  %252 = load i32, i32* %24, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %255

254:                                              ; preds = %238
  br label %400

255:                                              ; preds = %238
  %256 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %257 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %256, i32 0, i32 5
  %258 = load %struct.TYPE_29__*, %struct.TYPE_29__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %258, i32 0, i32 0
  %260 = load %struct.TYPE_31__*, %struct.TYPE_31__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  store i32 %262, i32* %31, align 4
  %263 = load i32, i32* %16, align 4
  %264 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %265 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %264, i32 0, i32 2
  %266 = load i32*, i32** %265, align 8
  %267 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %268 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %267, i32 0, i32 6
  %269 = load i32*, i32** %268, align 8
  %270 = call i32 @krb5_cc_get_config(i32 %263, i32* %266, i32* %269, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_32__* %33)
  store i32 %270, i32* %24, align 4
  %271 = load i32, i32* %24, align 4
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %301

273:                                              ; preds = %255
  %274 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %33, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = icmp eq i32 %275, 4
  br i1 %276, label %277, label %299

277:                                              ; preds = %273
  %278 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %33, i32 0, i32 1
  %279 = load i32*, i32** %278, align 8
  store i32* %279, i32** %38, align 8
  %280 = load i32*, i32** %38, align 8
  %281 = getelementptr inbounds i32, i32* %280, i64 0
  %282 = load i32, i32* %281, align 4
  %283 = shl i32 %282, 24
  %284 = load i32*, i32** %38, align 8
  %285 = getelementptr inbounds i32, i32* %284, i64 1
  %286 = load i32, i32* %285, align 4
  %287 = shl i32 %286, 16
  %288 = or i32 %283, %287
  %289 = load i32*, i32** %38, align 8
  %290 = getelementptr inbounds i32, i32* %289, i64 2
  %291 = load i32, i32* %290, align 4
  %292 = shl i32 %291, 8
  %293 = or i32 %288, %292
  %294 = load i32*, i32** %38, align 8
  %295 = getelementptr inbounds i32, i32* %294, i64 3
  %296 = load i32, i32* %295, align 4
  %297 = shl i32 %296, 0
  %298 = or i32 %293, %297
  store i32 %298, i32* %34, align 4
  br label %299

299:                                              ; preds = %277, %273
  %300 = call i32 @krb5_data_free(%struct.TYPE_32__* %33)
  br label %301

301:                                              ; preds = %299, %255
  %302 = load i32, i32* %34, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %310

304:                                              ; preds = %301
  %305 = load i32, i32* %16, align 4
  %306 = call i32 @krb5_get_kdc_sec_offset(i32 %305, i32* %35, i32* null)
  %307 = load i32, i32* %16, align 4
  %308 = load i32, i32* %34, align 4
  %309 = call i32 @krb5_set_kdc_sec_offset(i32 %307, i32 %308, i32 -1)
  br label %310

310:                                              ; preds = %304, %301
  %311 = load i32, i32* %16, align 4
  %312 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %313 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %312, i32 0, i32 5
  %314 = load %struct.TYPE_29__*, %struct.TYPE_29__** %313, align 8
  %315 = load i32, i32* %31, align 4
  %316 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %317 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %316, i32 0, i32 4
  %318 = load %struct.TYPE_27__*, %struct.TYPE_27__** %317, align 8
  %319 = load i32, i32* @KRB5_KU_AP_REQ_AUTH, align 4
  %320 = call i32 @_krb5_build_authenticator(i32 %311, %struct.TYPE_29__* %314, i32 %315, %struct.TYPE_27__* %318, i32* %30, %struct.TYPE_32__* %29, i32 %319)
  store i32 %320, i32* %25, align 4
  %321 = load i32, i32* %25, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %334

323:                                              ; preds = %310
  %324 = load i32, i32* %34, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %330

326:                                              ; preds = %323
  %327 = load i32, i32* %16, align 4
  %328 = load i32, i32* %35, align 4
  %329 = call i32 @krb5_set_kdc_sec_offset(i32 %327, i32 %328, i32 -1)
  br label %330

330:                                              ; preds = %326, %323
  %331 = load i32, i32* %25, align 4
  %332 = load i32*, i32** %13, align 8
  store i32 %331, i32* %332, align 4
  %333 = load i32, i32* @GSS_S_FAILURE, align 4
  store i32 %333, i32* %24, align 4
  br label %400

334:                                              ; preds = %310
  %335 = load i32, i32* %16, align 4
  %336 = load i32, i32* %31, align 4
  %337 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %338 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %337, i32 0, i32 4
  %339 = load %struct.TYPE_27__*, %struct.TYPE_27__** %338, align 8
  %340 = load i32, i32* %26, align 4
  %341 = bitcast %struct.TYPE_32__* %29 to { i32, i32* }*
  %342 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 8
  %344 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %341, i32 0, i32 1
  %345 = load i32*, i32** %344, align 8
  %346 = call i32 @krb5_build_ap_req(i32 %335, i32 %336, %struct.TYPE_27__* %339, i32 %340, i32 %343, i32* %345, %struct.TYPE_32__* %27)
  store i32 %346, i32* %25, align 4
  %347 = load i32, i32* %34, align 4
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %353

349:                                              ; preds = %334
  %350 = load i32, i32* %16, align 4
  %351 = load i32, i32* %35, align 4
  %352 = call i32 @krb5_set_kdc_sec_offset(i32 %350, i32 %351, i32 -1)
  br label %353

353:                                              ; preds = %349, %334
  %354 = load i32, i32* %25, align 4
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %360

356:                                              ; preds = %353
  %357 = load i32, i32* %25, align 4
  %358 = load i32*, i32** %13, align 8
  store i32 %357, i32* %358, align 4
  %359 = load i32, i32* @GSS_S_FAILURE, align 4
  store i32 %359, i32* %24, align 4
  br label %400

360:                                              ; preds = %353
  %361 = load i32, i32* %28, align 4
  %362 = load i32, i32* @GSS_C_DCE_STYLE, align 4
  %363 = and i32 %361, %362
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %374

365:                                              ; preds = %360
  %366 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %27, i32 0, i32 1
  %367 = load i32*, i32** %366, align 8
  %368 = load %struct.TYPE_35__*, %struct.TYPE_35__** %21, align 8
  %369 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %368, i32 0, i32 0
  store i32* %367, i32** %369, align 8
  %370 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %27, i32 0, i32 0
  %371 = load i32, i32* %370, align 8
  %372 = load %struct.TYPE_35__*, %struct.TYPE_35__** %21, align 8
  %373 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %372, i32 0, i32 1
  store i32 %371, i32* %373, align 8
  br label %384

374:                                              ; preds = %360
  %375 = load i32*, i32** %13, align 8
  %376 = load %struct.TYPE_35__*, %struct.TYPE_35__** %21, align 8
  %377 = load i32, i32* @GSS_KRB5_MECHANISM, align 4
  %378 = call i32 @_gsskrb5_encapsulate(i32* %375, %struct.TYPE_32__* %27, %struct.TYPE_35__* %376, i32* bitcast ([3 x i8]* @.str.2 to i32*), i32 %377)
  store i32 %378, i32* %24, align 4
  %379 = call i32 @krb5_data_free(%struct.TYPE_32__* %27)
  %380 = load i32, i32* %24, align 4
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %383

382:                                              ; preds = %374
  br label %400

383:                                              ; preds = %374
  br label %384

384:                                              ; preds = %383, %365
  %385 = call i32 @free_Checksum(i32* %30)
  %386 = load i32, i32* %28, align 4
  %387 = load i32, i32* @GSS_C_MUTUAL_FLAG, align 4
  %388 = and i32 %386, %387
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %395

390:                                              ; preds = %384
  %391 = load i32, i32* @INITIATOR_WAIT_FOR_MUTAL, align 4
  %392 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %393 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %392, i32 0, i32 3
  store i32 %391, i32* %393, align 8
  %394 = load i32, i32* @GSS_S_CONTINUE_NEEDED, align 4
  store i32 %394, i32* %12, align 4
  br label %422

395:                                              ; preds = %384
  %396 = load i32*, i32** %13, align 8
  %397 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %398 = load i32, i32* %16, align 4
  %399 = call i32 @gsskrb5_initiator_ready(i32* %396, %struct.TYPE_33__* %397, i32 %398)
  store i32 %399, i32* %12, align 4
  br label %422

400:                                              ; preds = %382, %356, %330, %254
  %401 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %402 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %401, i32 0, i32 2
  %403 = load i32*, i32** %402, align 8
  %404 = icmp ne i32* %403, null
  br i1 %404, label %405, label %418

405:                                              ; preds = %400
  %406 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %407 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %406, i32 0, i32 1
  %408 = load i32, i32* %407, align 4
  %409 = load i32, i32* @CLOSE_CCACHE, align 4
  %410 = and i32 %408, %409
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %412, label %418

412:                                              ; preds = %405
  %413 = load i32, i32* %16, align 4
  %414 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %415 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %414, i32 0, i32 2
  %416 = load i32*, i32** %415, align 8
  %417 = call i32 @krb5_cc_close(i32 %413, i32* %416)
  br label %418

418:                                              ; preds = %412, %405, %400
  %419 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %420 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %419, i32 0, i32 2
  store i32* null, i32** %420, align 8
  %421 = load i32, i32* %24, align 4
  store i32 %421, i32* %12, align 4
  br label %422

422:                                              ; preds = %418, %395, %390
  %423 = load i32, i32* %12, align 4
  ret i32 %423
}

declare dso_local i32 @krb5_data_zero(%struct.TYPE_32__*) #1

declare dso_local i32 @krb5_cc_get_config(i32, i32*, i32*, i8*, %struct.TYPE_32__*) #1

declare dso_local i32 @krb5_data_free(%struct.TYPE_32__*) #1

declare dso_local i32 @do_delegation(i32, i32, i32*, %struct.TYPE_27__*, i32*, %struct.TYPE_32__*, i32, i32*) #1

declare dso_local i32 @_gsskrb5_create_8003_checksum(i32*, i32, i32, %struct.TYPE_32__*, i32*) #1

declare dso_local i32 @krb5_get_kdc_sec_offset(i32, i32*, i32*) #1

declare dso_local i32 @krb5_set_kdc_sec_offset(i32, i32, i32) #1

declare dso_local i32 @_krb5_build_authenticator(i32, %struct.TYPE_29__*, i32, %struct.TYPE_27__*, i32*, %struct.TYPE_32__*, i32) #1

declare dso_local i32 @krb5_build_ap_req(i32, i32, %struct.TYPE_27__*, i32, i32, i32*, %struct.TYPE_32__*) #1

declare dso_local i32 @_gsskrb5_encapsulate(i32*, %struct.TYPE_32__*, %struct.TYPE_35__*, i32*, i32) #1

declare dso_local i32 @free_Checksum(i32*) #1

declare dso_local i32 @gsskrb5_initiator_ready(i32*, %struct.TYPE_33__*, i32) #1

declare dso_local i32 @krb5_cc_close(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
