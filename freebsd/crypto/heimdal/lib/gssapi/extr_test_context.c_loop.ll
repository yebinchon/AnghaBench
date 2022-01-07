; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/extr_test_context.c_loop.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/extr_test_context.c_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32* }

@GSS_C_NO_OID = common dso_local global i32 0, align 4
@GSS_C_INTEG_FLAG = common dso_local global i32 0, align 4
@GSS_C_CONF_FLAG = common dso_local global i32 0, align 4
@mutual_auth_flag = common dso_local global i64 0, align 8
@GSS_C_MUTUAL_FLAG = common dso_local global i32 0, align 4
@dce_style_flag = common dso_local global i64 0, align 8
@GSS_C_DCE_STYLE = common dso_local global i32 0, align 4
@deleg_flag = common dso_local global i64 0, align 8
@GSS_C_DELEG_FLAG = common dso_local global i32 0, align 4
@policy_deleg_flag = common dso_local global i64 0, align 8
@GSS_C_DELEG_POLICY_FLAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"import name creds failed with: %d\00", align 1
@client_time_offset = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"init_sec_context: %s\00", align 1
@GSS_S_CONTINUE_NEEDED = common dso_local global i32 0, align 4
@server_time_offset = common dso_local global i32 0, align 4
@GSS_C_NO_CREDENTIAL = common dso_local global i64 0, align 8
@GSS_C_NO_CHANNEL_BINDINGS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"accept_sec_context: %s\00", align 1
@server_no_deleg_flag = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [41 x i8] c"got delegated cred but didn't expect one\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"asked for delegarated cred but did get one\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"got deleg_cred cred but didn't ask\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"mech mismatch\00", align 1
@max_loops = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [41 x i8] c"num loops %d was lager then max loops %d\00", align 1
@verbose_flag = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [24 x i8] c"server time offset: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"client time offset: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"num loops %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*, i64, i32*, i32*, i32*, i64*)* @loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @loop(i32 %0, i32 %1, i8* %2, i64 %3, i32* %4, i32* %5, i32* %6, i64* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_8__, align 8
  %24 = alloca %struct.TYPE_8__, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i64* %7, i64** %16, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %25, align 4
  %30 = load i32, i32* @GSS_C_NO_OID, align 4
  %31 = load i32*, i32** %15, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* @GSS_C_INTEG_FLAG, align 4
  %33 = load i32, i32* %25, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %25, align 4
  %35 = load i32, i32* @GSS_C_CONF_FLAG, align 4
  %36 = load i32, i32* %25, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %25, align 4
  %38 = load i64, i64* @mutual_auth_flag, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %8
  %41 = load i32, i32* @GSS_C_MUTUAL_FLAG, align 4
  %42 = load i32, i32* %25, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %25, align 4
  br label %44

44:                                               ; preds = %40, %8
  %45 = load i64, i64* @dce_style_flag, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i32, i32* @GSS_C_DCE_STYLE, align 4
  %49 = load i32, i32* %25, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %25, align 4
  br label %51

51:                                               ; preds = %47, %44
  %52 = load i64, i64* @deleg_flag, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i32, i32* @GSS_C_DELEG_FLAG, align 4
  %56 = load i32, i32* %25, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %25, align 4
  br label %58

58:                                               ; preds = %54, %51
  %59 = load i64, i64* @policy_deleg_flag, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load i32, i32* @GSS_C_DELEG_POLICY_FLAG, align 4
  %63 = load i32, i32* %25, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %25, align 4
  br label %65

65:                                               ; preds = %61, %58
  %66 = load i8*, i8** %11, align 8
  %67 = call i32* @rk_UNCONST(i8* %66)
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  store i32* %67, i32** %68, align 8
  %69 = load i8*, i8** %11, align 8
  %70 = call i64 @strlen(i8* %69)
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  store i64 %70, i64* %71, align 8
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @gss_import_name(i32* %21, %struct.TYPE_8__* %23, i32 %72, i32* %22)
  store i32 %73, i32* %20, align 4
  %74 = load i32, i32* %20, align 4
  %75 = call i64 @GSS_ERROR(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %65
  %78 = load i32, i32* %20, align 4
  %79 = call i32 @err(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %77, %65
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  store i64 0, i64* %81, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  store i32* null, i32** %82, align 8
  br label %83

83:                                               ; preds = %164, %80
  %84 = load i32, i32* %17, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load i32, i32* %18, align 4
  %88 = icmp ne i32 %87, 0
  %89 = xor i1 %88, true
  br label %90

90:                                               ; preds = %86, %83
  %91 = phi i1 [ true, %83 ], [ %89, %86 ]
  br i1 %91, label %92, label %165

92:                                               ; preds = %90
  %93 = load i32, i32* %19, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %19, align 4
  %95 = load i32, i32* @client_time_offset, align 4
  %96 = call i32 @gsskrb5_set_time_offset(i32 %95)
  %97 = load i64, i64* %12, align 8
  %98 = load i32*, i32** %14, align 8
  %99 = load i32, i32* %22, align 4
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* %25, align 4
  %102 = call i32 @gss_init_sec_context(i32* %21, i64 %97, i32* %98, i32 %99, i32 %100, i32 %101, i32 0, i32* null, %struct.TYPE_8__* %23, i32* %28, %struct.TYPE_8__* %24, i32* %26, i32* null)
  store i32 %102, i32* %20, align 4
  %103 = load i32, i32* %20, align 4
  %104 = call i64 @GSS_ERROR(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %92
  %107 = load i32, i32* %20, align 4
  %108 = load i32, i32* %21, align 4
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @gssapi_err(i32 %107, i32 %108, i32 %109)
  %111 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %110)
  br label %112

112:                                              ; preds = %106, %92
  %113 = load i32, i32* %20, align 4
  %114 = load i32, i32* @GSS_S_CONTINUE_NEEDED, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  br label %119

118:                                              ; preds = %112
  store i32 1, i32* %18, align 4
  br label %119

119:                                              ; preds = %118, %117
  %120 = call i32 @gsskrb5_get_time_offset(i32* @client_time_offset)
  %121 = load i32, i32* %18, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %119
  %124 = load i32, i32* %17, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %123
  br label %165

127:                                              ; preds = %123, %119
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %127
  %132 = call i32 @gss_release_buffer(i32* %21, %struct.TYPE_8__* %23)
  br label %133

133:                                              ; preds = %131, %127
  %134 = load i32, i32* @server_time_offset, align 4
  %135 = call i32 @gsskrb5_set_time_offset(i32 %134)
  %136 = load i32*, i32** %13, align 8
  %137 = load i64, i64* @GSS_C_NO_CREDENTIAL, align 8
  %138 = load i32, i32* @GSS_C_NO_CHANNEL_BINDINGS, align 4
  %139 = load i64*, i64** %16, align 8
  %140 = call i32 @gss_accept_sec_context(i32* %21, i32* %136, i64 %137, %struct.TYPE_8__* %24, i32 %138, i32* null, i32* %29, %struct.TYPE_8__* %23, i32* %27, i32* null, i64* %139)
  store i32 %140, i32* %20, align 4
  %141 = load i32, i32* %20, align 4
  %142 = call i64 @GSS_ERROR(i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %133
  %145 = load i32, i32* %20, align 4
  %146 = load i32, i32* %21, align 4
  %147 = load i32, i32* %29, align 4
  %148 = call i32 @gssapi_err(i32 %145, i32 %146, i32 %147)
  %149 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %148)
  br label %150

150:                                              ; preds = %144, %133
  %151 = call i32 @gsskrb5_get_time_offset(i32* @server_time_offset)
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %150
  %156 = call i32 @gss_release_buffer(i32* %21, %struct.TYPE_8__* %24)
  br label %157

157:                                              ; preds = %155, %150
  %158 = load i32, i32* %20, align 4
  %159 = load i32, i32* @GSS_S_CONTINUE_NEEDED, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %157
  br label %164

163:                                              ; preds = %157
  store i32 1, i32* %17, align 4
  br label %164

164:                                              ; preds = %163, %162
  br label %83

165:                                              ; preds = %126, %90
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %165
  %170 = call i32 @gss_release_buffer(i32* %21, %struct.TYPE_8__* %24)
  br label %171

171:                                              ; preds = %169, %165
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %171
  %176 = call i32 @gss_release_buffer(i32* %21, %struct.TYPE_8__* %23)
  br label %177

177:                                              ; preds = %175, %171
  %178 = call i32 @gss_release_name(i32* %21, i32* %22)
  %179 = load i64, i64* @deleg_flag, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %184, label %181

181:                                              ; preds = %177
  %182 = load i64, i64* @policy_deleg_flag, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %204

184:                                              ; preds = %181, %177
  %185 = load i64, i64* @server_no_deleg_flag, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %195

187:                                              ; preds = %184
  %188 = load i64*, i64** %16, align 8
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @GSS_C_NO_CREDENTIAL, align 8
  %191 = icmp ne i64 %189, %190
  br i1 %191, label %192, label %194

192:                                              ; preds = %187
  %193 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %194

194:                                              ; preds = %192, %187
  br label %203

195:                                              ; preds = %184
  %196 = load i64*, i64** %16, align 8
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @GSS_C_NO_CREDENTIAL, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %202

200:                                              ; preds = %195
  %201 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  br label %202

202:                                              ; preds = %200, %195
  br label %203

203:                                              ; preds = %202, %194
  br label %212

204:                                              ; preds = %181
  %205 = load i64*, i64** %16, align 8
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @GSS_C_NO_CREDENTIAL, align 8
  %208 = icmp ne i64 %206, %207
  br i1 %208, label %209, label %211

209:                                              ; preds = %204
  %210 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  br label %211

211:                                              ; preds = %209, %204
  br label %212

212:                                              ; preds = %211, %203
  %213 = load i32, i32* %29, align 4
  %214 = load i32, i32* %28, align 4
  %215 = call i64 @gss_oid_equal(i32 %213, i32 %214)
  %216 = icmp eq i64 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %212
  %218 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %219

219:                                              ; preds = %217, %212
  %220 = load i32, i32* %29, align 4
  %221 = load i32*, i32** %15, align 8
  store i32 %220, i32* %221, align 4
  %222 = load i32, i32* @max_loops, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %232

224:                                              ; preds = %219
  %225 = load i32, i32* %19, align 4
  %226 = load i32, i32* @max_loops, align 4
  %227 = icmp sgt i32 %225, %226
  br i1 %227, label %228, label %232

228:                                              ; preds = %224
  %229 = load i32, i32* %19, align 4
  %230 = load i32, i32* @max_loops, align 4
  %231 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i32 %229, i32 %230)
  br label %232

232:                                              ; preds = %228, %224, %219
  %233 = load i64, i64* @verbose_flag, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %242

235:                                              ; preds = %232
  %236 = load i32, i32* @server_time_offset, align 4
  %237 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 %236)
  %238 = load i32, i32* @client_time_offset, align 4
  %239 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i32 %238)
  %240 = load i32, i32* %19, align 4
  %241 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 %240)
  br label %242

242:                                              ; preds = %235, %232
  ret void
}

declare dso_local i32* @rk_UNCONST(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @gss_import_name(i32*, %struct.TYPE_8__*, i32, i32*) #1

declare dso_local i64 @GSS_ERROR(i32) #1

declare dso_local i32 @err(i32, i8*, i32) #1

declare dso_local i32 @gsskrb5_set_time_offset(i32) #1

declare dso_local i32 @gss_init_sec_context(i32*, i64, i32*, i32, i32, i32, i32, i32*, %struct.TYPE_8__*, i32*, %struct.TYPE_8__*, i32*, i32*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @gssapi_err(i32, i32, i32) #1

declare dso_local i32 @gsskrb5_get_time_offset(i32*) #1

declare dso_local i32 @gss_release_buffer(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @gss_accept_sec_context(i32*, i32*, i64, %struct.TYPE_8__*, i32, i32*, i32*, %struct.TYPE_8__*, i32*, i32*, i64*) #1

declare dso_local i32 @gss_release_name(i32*, i32*) #1

declare dso_local i64 @gss_oid_equal(i32, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
