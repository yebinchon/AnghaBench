; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_ssl_client_cert_pw_providers.c_svn_auth__ssl_client_cert_pw_cache_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_ssl_client_cert_pw_providers.c_svn_auth__ssl_client_cert_pw_cache_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32*, i32, i32 (i8*, i8*, i32, i32*)* }

@SVN_AUTH_PARAM_DONT_STORE_SSL_CLIENT_CERT_PP = common dso_local global i8* null, align 8
@SVN_AUTH_PARAM_NON_INTERACTIVE = common dso_local global i8* null, align 8
@SVN_AUTH_PARAM_NO_AUTH_CACHE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8 0, align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_AUTH_PARAM_CONFIG_DIR = common dso_local global i8* null, align 8
@SVN_AUTH__WINCRYPT_PASSWORD_TYPE = common dso_local global i32 0, align 4
@SVN_AUTH__KWALLET_PASSWORD_TYPE = common dso_local global i32 0, align 4
@SVN_AUTH__GNOME_KEYRING_PASSWORD_TYPE = common dso_local global i32 0, align 4
@SVN_AUTH__KEYCHAIN_PASSWORD_TYPE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8 0, align 1
@SVN_AUTH_PARAM_STORE_SSL_CLIENT_CERT_PP_PLAINTEXT = common dso_local global i8* null, align 8
@SVN_CONFIG_ASK = common dso_local global i32 0, align 4
@SVN_CONFIG_FALSE = common dso_local global i32 0, align 4
@SVN_CONFIG_TRUE = common dso_local global i32 0, align 4
@SVN_ERR_RA_DAV_INVALID_CONFIG_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Config error: invalid value '%s' for option '%s'\00", align 1
@SVN_CONFIG_AUTHN_PASSTYPE_KEY = common dso_local global i8* null, align 8
@SVN_AUTH_CRED_SSL_CLIENT_CERT_PW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_auth__ssl_client_cert_pw_cache_set(i8* %0, i8* %1, i8* %2, i32* %3, i8* %4, i32 (i8*, i32*, i8*, i32*, i32, i32*, i8, i32*)* %5, i8* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32 (i8*, i32*, i8*, i32*, i32, i32*, i8, i32*)*, align 8
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
  store i32 (i8*, i32*, i8*, i32*, i32, i32*, i8, i32*)* %5, i32 (i8*, i32*, i8*, i32*, i32, i32*, i8, i32*)** %15, align 8
  store i8* %6, i8** %16, align 8
  store i32* %7, i32** %17, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = bitcast i8* %30 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %31, %struct.TYPE_3__** %18, align 8
  store i32* null, i32** %19, align 8
  %32 = load i32*, i32** %13, align 8
  %33 = load i8*, i8** @SVN_AUTH_PARAM_DONT_STORE_SSL_CLIENT_CERT_PP, align 8
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
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
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
  %57 = load i8, i8* @FALSE, align 1
  %58 = load i8*, i8** %10, align 8
  store i8 %57, i8* %58, align 1
  %59 = load i8, i8* %24, align 1
  %60 = icmp ne i8 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %62, i32** %9, align 8
  br label %226

63:                                               ; preds = %53
  %64 = load i32*, i32** %13, align 8
  %65 = load i8*, i8** @SVN_AUTH_PARAM_CONFIG_DIR, align 8
  %66 = call i8* @svn_hash_gets(i32* %64, i8* %65)
  store i8* %66, i8** %20, align 8
  %67 = load i32*, i32** %17, align 8
  %68 = call i32* @apr_hash_make(i32* %67)
  store i32* %68, i32** %19, align 8
  %69 = load i8, i8* %22, align 1
  %70 = icmp ne i8 %69, 0
  br i1 %70, label %224, label %71

71:                                               ; preds = %63
  %72 = load i8, i8* @FALSE, align 1
  store i8 %72, i8* %25, align 1
  %73 = load i8*, i8** %16, align 8
  %74 = load i32, i32* @SVN_AUTH__WINCRYPT_PASSWORD_TYPE, align 4
  %75 = call i64 @strcmp(i8* %73, i32 %74)
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %92, label %77

77:                                               ; preds = %71
  %78 = load i8*, i8** %16, align 8
  %79 = load i32, i32* @SVN_AUTH__KWALLET_PASSWORD_TYPE, align 4
  %80 = call i64 @strcmp(i8* %78, i32 %79)
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %92, label %82

82:                                               ; preds = %77
  %83 = load i8*, i8** %16, align 8
  %84 = load i32, i32* @SVN_AUTH__GNOME_KEYRING_PASSWORD_TYPE, align 4
  %85 = call i64 @strcmp(i8* %83, i32 %84)
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %82
  %88 = load i8*, i8** %16, align 8
  %89 = load i32, i32* @SVN_AUTH__KEYCHAIN_PASSWORD_TYPE, align 4
  %90 = call i64 @strcmp(i8* %88, i32 %89)
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %87, %82, %77, %71
  %93 = load i8, i8* @TRUE, align 1
  store i8 %93, i8* %25, align 1
  br label %178

94:                                               ; preds = %87
  %95 = load i32*, i32** %13, align 8
  %96 = load i8*, i8** @SVN_AUTH_PARAM_STORE_SSL_CLIENT_CERT_PP_PLAINTEXT, align 8
  %97 = call i8* @svn_hash_gets(i32* %95, i8* %96)
  store i8* %97, i8** %26, align 8
  %98 = load i8*, i8** %12, align 8
  %99 = bitcast i8* %98 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %99, %struct.TYPE_4__** %27, align 8
  %100 = load i8*, i8** %26, align 8
  %101 = load i32, i32* @SVN_CONFIG_ASK, align 4
  %102 = call i64 @svn_cstring_casecmp(i8* %100, i32 %101)
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %155

104:                                              ; preds = %94
  %105 = load i8, i8* %23, align 1
  %106 = icmp ne i8 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %104
  %108 = load i8, i8* @FALSE, align 1
  store i8 %108, i8* %25, align 1
  br label %154

109:                                              ; preds = %104
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 2
  %112 = load i32 (i8*, i8*, i32, i32*)*, i32 (i8*, i8*, i32, i32*)** %111, align 8
  %113 = icmp ne i32 (i8*, i8*, i32, i32*)* %112, null
  br i1 %113, label %114, label %151

114:                                              ; preds = %109
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load i8*, i8** %14, align 8
  %119 = call i8* @svn_hash_gets(i32* %117, i8* %118)
  store i8* %119, i8** %28, align 8
  %120 = load i8*, i8** %28, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %125

122:                                              ; preds = %114
  %123 = load i8*, i8** %28, align 8
  %124 = load i8, i8* %123, align 1
  store i8 %124, i8* %25, align 1
  br label %150

125:                                              ; preds = %114
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 2
  %128 = load i32 (i8*, i8*, i32, i32*)*, i32 (i8*, i8*, i32, i32*)** %127, align 8
  %129 = load i8*, i8** %14, align 8
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = load i32*, i32** %17, align 8
  %134 = call i32 %128(i8* %25, i8* %129, i32 %132, i32* %133)
  %135 = call i32 @SVN_ERR(i32 %134)
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = call i32* @apr_hash_pool_get(i32* %138)
  store i32* %139, i32** %29, align 8
  %140 = load i32*, i32** %29, align 8
  %141 = call i8* @apr_palloc(i32* %140, i32 1)
  store i8* %141, i8** %28, align 8
  %142 = load i8, i8* %25, align 1
  %143 = load i8*, i8** %28, align 8
  store i8 %142, i8* %143, align 1
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = load i8*, i8** %14, align 8
  %148 = load i8*, i8** %28, align 8
  %149 = call i32 @svn_hash_sets(i32* %146, i8* %147, i8* %148)
  br label %150

150:                                              ; preds = %125, %122
  br label %153

151:                                              ; preds = %109
  %152 = load i8, i8* @FALSE, align 1
  store i8 %152, i8* %25, align 1
  br label %153

153:                                              ; preds = %151, %150
  br label %154

154:                                              ; preds = %153, %107
  br label %177

155:                                              ; preds = %94
  %156 = load i8*, i8** %26, align 8
  %157 = load i32, i32* @SVN_CONFIG_FALSE, align 4
  %158 = call i64 @svn_cstring_casecmp(i8* %156, i32 %157)
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %155
  %161 = load i8, i8* @FALSE, align 1
  store i8 %161, i8* %25, align 1
  br label %176

162:                                              ; preds = %155
  %163 = load i8*, i8** %26, align 8
  %164 = load i32, i32* @SVN_CONFIG_TRUE, align 4
  %165 = call i64 @svn_cstring_casecmp(i8* %163, i32 %164)
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %162
  %168 = load i8, i8* @TRUE, align 1
  store i8 %168, i8* %25, align 1
  br label %175

169:                                              ; preds = %162
  %170 = load i32, i32* @SVN_ERR_RA_DAV_INVALID_CONFIG_VALUE, align 4
  %171 = call i32 @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %172 = load i8*, i8** %26, align 8
  %173 = load i8*, i8** @SVN_AUTH_PARAM_STORE_SSL_CLIENT_CERT_PP_PLAINTEXT, align 8
  %174 = call i32* @svn_error_createf(i32 %170, i32* null, i32 %171, i8* %172, i8* %173)
  store i32* %174, i32** %9, align 8
  br label %226

175:                                              ; preds = %167
  br label %176

176:                                              ; preds = %175, %160
  br label %177

177:                                              ; preds = %176, %154
  br label %178

178:                                              ; preds = %177, %92
  %179 = load i8, i8* %25, align 1
  %180 = icmp ne i8 %179, 0
  br i1 %180, label %181, label %223

181:                                              ; preds = %178
  %182 = load i32 (i8*, i32*, i8*, i32*, i32, i32*, i8, i32*)*, i32 (i8*, i32*, i8*, i32*, i32, i32*, i8, i32*)** %15, align 8
  %183 = load i8*, i8** %10, align 8
  %184 = load i32*, i32** %19, align 8
  %185 = load i8*, i8** %14, align 8
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load i32*, i32** %13, align 8
  %190 = load i8, i8* %23, align 1
  %191 = load i32*, i32** %17, align 8
  %192 = call i32 %182(i8* %183, i32* %184, i8* %185, i32* null, i32 %188, i32* %189, i8 signext %190, i32* %191)
  %193 = call i32 @SVN_ERR(i32 %192)
  %194 = load i8*, i8** %10, align 8
  %195 = load i8, i8* %194, align 1
  %196 = sext i8 %195 to i32
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %208

198:                                              ; preds = %181
  %199 = load i8*, i8** %16, align 8
  %200 = icmp ne i8* %199, null
  br i1 %200, label %201, label %208

201:                                              ; preds = %198
  %202 = load i32*, i32** %19, align 8
  %203 = load i8*, i8** @SVN_CONFIG_AUTHN_PASSTYPE_KEY, align 8
  %204 = load i8*, i8** %16, align 8
  %205 = load i32*, i32** %17, align 8
  %206 = call i8* @svn_string_create(i8* %204, i32* %205)
  %207 = call i32 @svn_hash_sets(i32* %202, i8* %203, i8* %206)
  br label %208

208:                                              ; preds = %201, %198, %181
  %209 = load i32*, i32** %19, align 8
  %210 = load i32, i32* @SVN_AUTH_CRED_SSL_CLIENT_CERT_PW, align 4
  %211 = load i8*, i8** %14, align 8
  %212 = load i8*, i8** %20, align 8
  %213 = load i32*, i32** %17, align 8
  %214 = call i32* @svn_config_write_auth_data(i32* %209, i32 %210, i8* %211, i8* %212, i32* %213)
  store i32* %214, i32** %21, align 8
  %215 = load i32*, i32** %21, align 8
  %216 = call i32 @svn_error_clear(i32* %215)
  %217 = load i32*, i32** %21, align 8
  %218 = icmp ne i32* %217, null
  %219 = xor i1 %218, true
  %220 = zext i1 %219 to i32
  %221 = trunc i32 %220 to i8
  %222 = load i8*, i8** %10, align 8
  store i8 %221, i8* %222, align 1
  br label %223

223:                                              ; preds = %208, %178
  br label %224

224:                                              ; preds = %223, %63
  %225 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %225, i32** %9, align 8
  br label %226

226:                                              ; preds = %224, %169, %61
  %227 = load i32*, i32** %9, align 8
  ret i32* %227
}

declare dso_local i8* @svn_hash_gets(i32*, i8*) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i64 @svn_cstring_casecmp(i8*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32* @apr_hash_pool_get(i32*) #1

declare dso_local i8* @apr_palloc(i32*, i32) #1

declare dso_local i32 @svn_hash_sets(i32*, i8*, i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @svn_string_create(i8*, i32*) #1

declare dso_local i32* @svn_config_write_auth_data(i32*, i32, i8*, i8*, i32*) #1

declare dso_local i32 @svn_error_clear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
