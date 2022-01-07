; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_simple_providers.c_svn_auth__simple_creds_cache_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_simple_providers.c_svn_auth__simple_creds_cache_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32 }
%struct.TYPE_4__ = type { i32*, i32, i32 (i8*, i8*, i32, i32*)* }

@SVN_AUTH_PARAM_DONT_STORE_PASSWORDS = common dso_local global i8* null, align 8
@SVN_AUTH_PARAM_NON_INTERACTIVE = common dso_local global i8* null, align 8
@SVN_AUTH_PARAM_NO_AUTH_CACHE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8 0, align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_AUTH_PARAM_CONFIG_DIR = common dso_local global i8* null, align 8
@SVN_CONFIG_AUTHN_USERNAME_KEY = common dso_local global i8* null, align 8
@SVN_AUTH__WINCRYPT_PASSWORD_TYPE = common dso_local global i32 0, align 4
@SVN_AUTH__KEYCHAIN_PASSWORD_TYPE = common dso_local global i32 0, align 4
@SVN_AUTH__KWALLET_PASSWORD_TYPE = common dso_local global i32 0, align 4
@SVN_AUTH__GNOME_KEYRING_PASSWORD_TYPE = common dso_local global i32 0, align 4
@SVN_AUTH__GPG_AGENT_PASSWORD_TYPE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8 0, align 1
@SVN_AUTH_PARAM_STORE_PLAINTEXT_PASSWORDS = common dso_local global i8* null, align 8
@SVN_CONFIG_ASK = common dso_local global i32 0, align 4
@SVN_CONFIG_FALSE = common dso_local global i32 0, align 4
@SVN_CONFIG_TRUE = common dso_local global i32 0, align 4
@SVN_ERR_BAD_CONFIG_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Config error: invalid value '%s' for option '%s'\00", align 1
@SVN_CONFIG_AUTHN_PASSTYPE_KEY = common dso_local global i8* null, align 8
@SVN_AUTH_CRED_SIMPLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_auth__simple_creds_cache_set(i8* %0, i8* %1, i8* %2, i32* %3, i8* %4, i32 (i8*, i32*, i8*, i8*, i32, i32*, i8, i32*)* %5, i8* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32 (i8*, i32*, i8*, i8*, i32, i32*, i8, i32*)*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_3__*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i8, align 1
  %23 = alloca i8, align 1
  %24 = alloca i8, align 1
  %25 = alloca i8, align 1
  %26 = alloca i8*, align 8
  %27 = alloca %struct.TYPE_4__*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i32*, align 8
  store i8* %0, i8** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i32* %3, i32** %13, align 8
  store i8* %4, i8** %14, align 8
  store i32 (i8*, i32*, i8*, i8*, i32, i32*, i8, i32*)* %5, i32 (i8*, i32*, i8*, i8*, i32, i32*, i8, i32*)** %15, align 8
  store i8* %6, i8** %16, align 8
  store i32* %7, i32** %17, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = bitcast i8* %30 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %31, %struct.TYPE_3__** %18, align 8
  store i32* null, i32** %19, align 8
  %32 = load i32*, i32** %13, align 8
  %33 = load i8*, i8** @SVN_AUTH_PARAM_DONT_STORE_PASSWORDS, align 8
  %34 = call i8* @svn_hash_gets(i32* %32, i8* %33)
  %35 = icmp ne i8* %34, null
  %36 = zext i1 %35 to i32
  %37 = trunc i32 %36 to i8
  store i8 %37, i8* %22, align 1
  %38 = load i32*, i32** %13, align 8
  %39 = load i8*, i8** @SVN_AUTH_PARAM_NON_INTERACTIVE, align 8
  %40 = call i8* @svn_hash_gets(i32* %38, i8* %39)
  %41 = icmp ne i8* %40, null
  %42 = zext i1 %41 to i32
  %43 = trunc i32 %42 to i8
  store i8 %43, i8* %23, align 1
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %8
  %49 = load i32*, i32** %13, align 8
  %50 = load i8*, i8** @SVN_AUTH_PARAM_NO_AUTH_CACHE, align 8
  %51 = call i8* @svn_hash_gets(i32* %49, i8* %50)
  %52 = icmp ne i8* %51, null
  br label %53

53:                                               ; preds = %48, %8
  %54 = phi i1 [ true, %8 ], [ %52, %48 ]
  %55 = zext i1 %54 to i32
  %56 = trunc i32 %55 to i8
  store i8 %56, i8* %24, align 1
  %57 = load i8*, i8** %16, align 8
  %58 = icmp ne i8* %57, null
  %59 = zext i1 %58 to i32
  %60 = call i32 @SVN_ERR_ASSERT(i32 %59)
  %61 = load i8, i8* @FALSE, align 1
  %62 = load i8*, i8** %10, align 8
  store i8 %61, i8* %62, align 1
  %63 = load i8, i8* %24, align 1
  %64 = icmp ne i8 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %53
  %66 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %66, i32** %9, align 8
  br label %258

67:                                               ; preds = %53
  %68 = load i32*, i32** %13, align 8
  %69 = load i8*, i8** @SVN_AUTH_PARAM_CONFIG_DIR, align 8
  %70 = call i8* @svn_hash_gets(i32* %68, i8* %69)
  store i8* %70, i8** %20, align 8
  %71 = load i32*, i32** %17, align 8
  %72 = call i32* @apr_hash_make(i32* %71)
  store i32* %72, i32** %19, align 8
  %73 = load i32*, i32** %19, align 8
  %74 = load i8*, i8** @SVN_CONFIG_AUTHN_USERNAME_KEY, align 8
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = load i32*, i32** %17, align 8
  %79 = call i8* @svn_string_create(i8* %77, i32* %78)
  %80 = call i32 @svn_hash_sets(i32* %73, i8* %74, i8* %79)
  %81 = load i8, i8* %22, align 1
  %82 = icmp ne i8 %81, 0
  br i1 %82, label %242, label %83

83:                                               ; preds = %67
  %84 = load i8, i8* @FALSE, align 1
  store i8 %84, i8* %25, align 1
  %85 = load i8*, i8** %16, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %114

87:                                               ; preds = %83
  %88 = load i8*, i8** %16, align 8
  %89 = load i32, i32* @SVN_AUTH__WINCRYPT_PASSWORD_TYPE, align 4
  %90 = call i64 @strcmp(i8* %88, i32 %89)
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %112, label %92

92:                                               ; preds = %87
  %93 = load i8*, i8** %16, align 8
  %94 = load i32, i32* @SVN_AUTH__KEYCHAIN_PASSWORD_TYPE, align 4
  %95 = call i64 @strcmp(i8* %93, i32 %94)
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %112, label %97

97:                                               ; preds = %92
  %98 = load i8*, i8** %16, align 8
  %99 = load i32, i32* @SVN_AUTH__KWALLET_PASSWORD_TYPE, align 4
  %100 = call i64 @strcmp(i8* %98, i32 %99)
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %112, label %102

102:                                              ; preds = %97
  %103 = load i8*, i8** %16, align 8
  %104 = load i32, i32* @SVN_AUTH__GNOME_KEYRING_PASSWORD_TYPE, align 4
  %105 = call i64 @strcmp(i8* %103, i32 %104)
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %102
  %108 = load i8*, i8** %16, align 8
  %109 = load i32, i32* @SVN_AUTH__GPG_AGENT_PASSWORD_TYPE, align 4
  %110 = call i64 @strcmp(i8* %108, i32 %109)
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %107, %102, %97, %92, %87
  %113 = load i8, i8* @TRUE, align 1
  store i8 %113, i8* %25, align 1
  br label %207

114:                                              ; preds = %107, %83
  %115 = load i32*, i32** %13, align 8
  %116 = load i8*, i8** @SVN_AUTH_PARAM_STORE_PLAINTEXT_PASSWORDS, align 8
  %117 = call i8* @svn_hash_gets(i32* %115, i8* %116)
  store i8* %117, i8** %26, align 8
  %118 = load i8*, i8** %12, align 8
  %119 = bitcast i8* %118 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %119, %struct.TYPE_4__** %27, align 8
  %120 = load i8*, i8** %26, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %178

122:                                              ; preds = %114
  %123 = load i8*, i8** %26, align 8
  %124 = load i32, i32* @SVN_CONFIG_ASK, align 4
  %125 = call i64 @svn_cstring_casecmp(i8* %123, i32 %124)
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %178

127:                                              ; preds = %122
  %128 = load i8, i8* %23, align 1
  %129 = icmp ne i8 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %127
  %131 = load i8, i8* @FALSE, align 1
  store i8 %131, i8* %25, align 1
  br label %177

132:                                              ; preds = %127
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 2
  %135 = load i32 (i8*, i8*, i32, i32*)*, i32 (i8*, i8*, i32, i32*)** %134, align 8
  %136 = icmp ne i32 (i8*, i8*, i32, i32*)* %135, null
  br i1 %136, label %137, label %174

137:                                              ; preds = %132
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = load i8*, i8** %14, align 8
  %142 = call i8* @svn_hash_gets(i32* %140, i8* %141)
  store i8* %142, i8** %28, align 8
  %143 = load i8*, i8** %28, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %145, label %148

145:                                              ; preds = %137
  %146 = load i8*, i8** %28, align 8
  %147 = load i8, i8* %146, align 1
  store i8 %147, i8* %25, align 1
  br label %173

148:                                              ; preds = %137
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 2
  %151 = load i32 (i8*, i8*, i32, i32*)*, i32 (i8*, i8*, i32, i32*)** %150, align 8
  %152 = load i8*, i8** %14, align 8
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = load i32*, i32** %17, align 8
  %157 = call i32 %151(i8* %25, i8* %152, i32 %155, i32* %156)
  %158 = call i32 @SVN_ERR(i32 %157)
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = call i32* @apr_hash_pool_get(i32* %161)
  store i32* %162, i32** %29, align 8
  %163 = load i32*, i32** %29, align 8
  %164 = call i8* @apr_palloc(i32* %163, i32 1)
  store i8* %164, i8** %28, align 8
  %165 = load i8, i8* %25, align 1
  %166 = load i8*, i8** %28, align 8
  store i8 %165, i8* %166, align 1
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  %170 = load i8*, i8** %14, align 8
  %171 = load i8*, i8** %28, align 8
  %172 = call i32 @svn_hash_sets(i32* %169, i8* %170, i8* %171)
  br label %173

173:                                              ; preds = %148, %145
  br label %176

174:                                              ; preds = %132
  %175 = load i8, i8* @TRUE, align 1
  store i8 %175, i8* %25, align 1
  br label %176

176:                                              ; preds = %174, %173
  br label %177

177:                                              ; preds = %176, %130
  br label %206

178:                                              ; preds = %122, %114
  %179 = load i8*, i8** %26, align 8
  %180 = icmp ne i8* %179, null
  br i1 %180, label %181, label %188

181:                                              ; preds = %178
  %182 = load i8*, i8** %26, align 8
  %183 = load i32, i32* @SVN_CONFIG_FALSE, align 4
  %184 = call i64 @svn_cstring_casecmp(i8* %182, i32 %183)
  %185 = icmp eq i64 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %181
  %187 = load i8, i8* @FALSE, align 1
  store i8 %187, i8* %25, align 1
  br label %205

188:                                              ; preds = %181, %178
  %189 = load i8*, i8** %26, align 8
  %190 = icmp ne i8* %189, null
  br i1 %190, label %191, label %196

191:                                              ; preds = %188
  %192 = load i8*, i8** %26, align 8
  %193 = load i32, i32* @SVN_CONFIG_TRUE, align 4
  %194 = call i64 @svn_cstring_casecmp(i8* %192, i32 %193)
  %195 = icmp eq i64 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %191, %188
  %197 = load i8, i8* @TRUE, align 1
  store i8 %197, i8* %25, align 1
  br label %204

198:                                              ; preds = %191
  %199 = load i32, i32* @SVN_ERR_BAD_CONFIG_VALUE, align 4
  %200 = call i32 @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %201 = load i8*, i8** %26, align 8
  %202 = load i8*, i8** @SVN_AUTH_PARAM_STORE_PLAINTEXT_PASSWORDS, align 8
  %203 = call i32* @svn_error_createf(i32 %199, i32* null, i32 %200, i8* %201, i8* %202)
  store i32* %203, i32** %9, align 8
  br label %258

204:                                              ; preds = %196
  br label %205

205:                                              ; preds = %204, %186
  br label %206

206:                                              ; preds = %205, %177
  br label %207

207:                                              ; preds = %206, %112
  %208 = load i8, i8* %25, align 1
  %209 = icmp ne i8 %208, 0
  br i1 %209, label %210, label %241

210:                                              ; preds = %207
  %211 = load i32 (i8*, i32*, i8*, i8*, i32, i32*, i8, i32*)*, i32 (i8*, i32*, i8*, i8*, i32, i32*, i8, i32*)** %15, align 8
  %212 = load i8*, i8** %10, align 8
  %213 = load i32*, i32** %19, align 8
  %214 = load i8*, i8** %14, align 8
  %215 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %215, i32 0, i32 0
  %217 = load i8*, i8** %216, align 8
  %218 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 8
  %221 = load i32*, i32** %13, align 8
  %222 = load i8, i8* %23, align 1
  %223 = load i32*, i32** %17, align 8
  %224 = call i32 %211(i8* %212, i32* %213, i8* %214, i8* %217, i32 %220, i32* %221, i8 signext %222, i32* %223)
  %225 = call i32 @SVN_ERR(i32 %224)
  %226 = load i8*, i8** %10, align 8
  %227 = load i8, i8* %226, align 1
  %228 = sext i8 %227 to i32
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %240

230:                                              ; preds = %210
  %231 = load i8*, i8** %16, align 8
  %232 = icmp ne i8* %231, null
  br i1 %232, label %233, label %240

233:                                              ; preds = %230
  %234 = load i32*, i32** %19, align 8
  %235 = load i8*, i8** @SVN_CONFIG_AUTHN_PASSTYPE_KEY, align 8
  %236 = load i8*, i8** %16, align 8
  %237 = load i32*, i32** %17, align 8
  %238 = call i8* @svn_string_create(i8* %236, i32* %237)
  %239 = call i32 @svn_hash_sets(i32* %234, i8* %235, i8* %238)
  br label %240

240:                                              ; preds = %233, %230, %210
  br label %241

241:                                              ; preds = %240, %207
  br label %242

242:                                              ; preds = %241, %67
  %243 = load i32*, i32** %19, align 8
  %244 = load i32, i32* @SVN_AUTH_CRED_SIMPLE, align 4
  %245 = load i8*, i8** %14, align 8
  %246 = load i8*, i8** %20, align 8
  %247 = load i32*, i32** %17, align 8
  %248 = call i32* @svn_config_write_auth_data(i32* %243, i32 %244, i8* %245, i8* %246, i32* %247)
  store i32* %248, i32** %21, align 8
  %249 = load i32*, i32** %21, align 8
  %250 = icmp ne i32* %249, null
  br i1 %250, label %251, label %254

251:                                              ; preds = %242
  %252 = load i8, i8* @FALSE, align 1
  %253 = load i8*, i8** %10, align 8
  store i8 %252, i8* %253, align 1
  br label %254

254:                                              ; preds = %251, %242
  %255 = load i32*, i32** %21, align 8
  %256 = call i32 @svn_error_clear(i32* %255)
  %257 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %257, i32** %9, align 8
  br label %258

258:                                              ; preds = %254, %198, %65
  %259 = load i32*, i32** %9, align 8
  ret i32* %259
}

declare dso_local i8* @svn_hash_gets(i32*, i8*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32 @svn_hash_sets(i32*, i8*, i8*) #1

declare dso_local i8* @svn_string_create(i8*, i32*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i64 @svn_cstring_casecmp(i8*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32* @apr_hash_pool_get(i32*) #1

declare dso_local i8* @apr_palloc(i32*, i32) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32* @svn_config_write_auth_data(i32*, i32, i8*, i8*, i32*) #1

declare dso_local i32 @svn_error_clear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
