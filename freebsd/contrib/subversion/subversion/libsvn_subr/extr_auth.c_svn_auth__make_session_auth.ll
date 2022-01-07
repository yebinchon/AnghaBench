; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_auth.c_svn_auth__make_session_auth.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_auth.c_svn_auth__make_session_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svn_auth_baton_t = type { i32, i32 }

@SVN_CONFIG_DEFAULT_OPTION_STORE_PASSWORDS = common dso_local global i32 0, align 4
@SVN_CONFIG_DEFAULT_OPTION_STORE_AUTH_CREDS = common dso_local global i32 0, align 4
@SVN_CONFIG_DEFAULT_OPTION_STORE_PLAINTEXT_PASSWORDS = common dso_local global i8* null, align 8
@SVN_CONFIG_DEFAULT_OPTION_STORE_SSL_CLIENT_CERT_PP = common dso_local global i32 0, align 4
@SVN_CONFIG_DEFAULT_OPTION_STORE_SSL_CLIENT_CERT_PP_PLAINTEXT = common dso_local global i8* null, align 8
@SVN_AUTH_PARAM_DONT_STORE_PASSWORDS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SVN_AUTH_PARAM_NO_AUTH_CACHE = common dso_local global i32 0, align 4
@SVN_CONFIG_CATEGORY_SERVERS = common dso_local global i32 0, align 4
@SVN_CONFIG_SECTION_GLOBAL = common dso_local global i8* null, align 8
@SVN_CONFIG_OPTION_STORE_PASSWORDS = common dso_local global i32 0, align 4
@SVN_CONFIG_OPTION_STORE_PLAINTEXT_PASSWORDS = common dso_local global i32 0, align 4
@SVN_CONFIG_OPTION_STORE_SSL_CLIENT_CERT_PP = common dso_local global i32 0, align 4
@SVN_CONFIG_OPTION_STORE_SSL_CLIENT_CERT_PP_PLAINTEXT = common dso_local global i32 0, align 4
@SVN_CONFIG_OPTION_STORE_AUTH_CREDS = common dso_local global i32 0, align 4
@SVN_CONFIG_SECTION_GROUPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SVN_AUTH_PARAM_STORE_PLAINTEXT_PASSWORDS = common dso_local global i32 0, align 4
@SVN_AUTH_PARAM_DONT_STORE_SSL_CLIENT_CERT_PP = common dso_local global i32 0, align 4
@SVN_AUTH_PARAM_STORE_SSL_CLIENT_CERT_PP_PLAINTEXT = common dso_local global i32 0, align 4
@SVN_AUTH_PARAM_SERVER_GROUP = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_auth__make_session_auth(%struct.svn_auth_baton_t** %0, %struct.svn_auth_baton_t* %1, i32* %2, i8* %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.svn_auth_baton_t**, align 8
  %8 = alloca %struct.svn_auth_baton_t*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.svn_auth_baton_t*, align 8
  store %struct.svn_auth_baton_t** %0, %struct.svn_auth_baton_t*** %7, align 8
  store %struct.svn_auth_baton_t* %1, %struct.svn_auth_baton_t** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %21 = load i32, i32* @SVN_CONFIG_DEFAULT_OPTION_STORE_PASSWORDS, align 4
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* @SVN_CONFIG_DEFAULT_OPTION_STORE_AUTH_CREDS, align 4
  store i32 %22, i32* %14, align 4
  %23 = load i8*, i8** @SVN_CONFIG_DEFAULT_OPTION_STORE_PLAINTEXT_PASSWORDS, align 8
  store i8* %23, i8** %15, align 8
  %24 = load i32, i32* @SVN_CONFIG_DEFAULT_OPTION_STORE_SSL_CLIENT_CERT_PP, align 4
  store i32 %24, i32* %16, align 4
  %25 = load i8*, i8** @SVN_CONFIG_DEFAULT_OPTION_STORE_SSL_CLIENT_CERT_PP_PLAINTEXT, align 8
  store i8* %25, i8** %17, align 8
  store i32* null, i32** %18, align 8
  store i8* null, i8** %19, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = load %struct.svn_auth_baton_t*, %struct.svn_auth_baton_t** %8, align 8
  %28 = call %struct.svn_auth_baton_t* @apr_pmemdup(i32* %26, %struct.svn_auth_baton_t* %27, i32 8)
  store %struct.svn_auth_baton_t* %28, %struct.svn_auth_baton_t** %20, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = call i32 @apr_hash_make(i32* %29)
  %31 = load %struct.svn_auth_baton_t*, %struct.svn_auth_baton_t** %20, align 8
  %32 = getelementptr inbounds %struct.svn_auth_baton_t, %struct.svn_auth_baton_t* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.svn_auth_baton_t*, %struct.svn_auth_baton_t** %20, align 8
  %34 = load i32, i32* @SVN_AUTH_PARAM_DONT_STORE_PASSWORDS, align 4
  %35 = call i32* @svn_auth_get_parameter(%struct.svn_auth_baton_t* %33, i32 %34)
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %6
  %38 = load i32, i32* @FALSE, align 4
  store i32 %38, i32* %13, align 4
  br label %39

39:                                               ; preds = %37, %6
  %40 = load %struct.svn_auth_baton_t*, %struct.svn_auth_baton_t** %20, align 8
  %41 = load i32, i32* @SVN_AUTH_PARAM_NO_AUTH_CACHE, align 4
  %42 = call i32* @svn_auth_get_parameter(%struct.svn_auth_baton_t* %40, i32 %41)
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* @FALSE, align 4
  store i32 %45, i32* %14, align 4
  br label %46

46:                                               ; preds = %44, %39
  %47 = load i32*, i32** %9, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %126

49:                                               ; preds = %46
  %50 = load i32*, i32** %9, align 8
  %51 = load i32, i32* @SVN_CONFIG_CATEGORY_SERVERS, align 4
  %52 = call i32* @svn_hash_gets(i32* %50, i32 %51)
  store i32* %52, i32** %18, align 8
  %53 = load i32*, i32** %18, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %125

55:                                               ; preds = %49
  %56 = load i32*, i32** %18, align 8
  %57 = load i8*, i8** @SVN_CONFIG_SECTION_GLOBAL, align 8
  %58 = load i32, i32* @SVN_CONFIG_OPTION_STORE_PASSWORDS, align 4
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @svn_config_get_bool(i32* %56, i32* %13, i8* %57, i32 %58, i32 %59)
  %61 = call i32 @SVN_ERR(i32 %60)
  %62 = load i32*, i32** %18, align 8
  %63 = load i8*, i8** @SVN_CONFIG_SECTION_GLOBAL, align 8
  %64 = load i32, i32* @SVN_CONFIG_OPTION_STORE_PLAINTEXT_PASSWORDS, align 4
  %65 = load i8*, i8** @SVN_CONFIG_DEFAULT_OPTION_STORE_PLAINTEXT_PASSWORDS, align 8
  %66 = call i32 @svn_config_get_yes_no_ask(i32* %62, i8** %15, i8* %63, i32 %64, i8* %65)
  %67 = call i32 @SVN_ERR(i32 %66)
  %68 = load i32*, i32** %18, align 8
  %69 = load i8*, i8** @SVN_CONFIG_SECTION_GLOBAL, align 8
  %70 = load i32, i32* @SVN_CONFIG_OPTION_STORE_SSL_CLIENT_CERT_PP, align 4
  %71 = load i32, i32* %16, align 4
  %72 = call i32 @svn_config_get_bool(i32* %68, i32* %16, i8* %69, i32 %70, i32 %71)
  %73 = call i32 @SVN_ERR(i32 %72)
  %74 = load i32*, i32** %18, align 8
  %75 = load i8*, i8** @SVN_CONFIG_SECTION_GLOBAL, align 8
  %76 = load i32, i32* @SVN_CONFIG_OPTION_STORE_SSL_CLIENT_CERT_PP_PLAINTEXT, align 4
  %77 = load i8*, i8** @SVN_CONFIG_DEFAULT_OPTION_STORE_SSL_CLIENT_CERT_PP_PLAINTEXT, align 8
  %78 = call i32 @svn_config_get_yes_no_ask(i32* %74, i8** %17, i8* %75, i32 %76, i8* %77)
  %79 = call i32 @SVN_ERR(i32 %78)
  %80 = load i32*, i32** %18, align 8
  %81 = load i8*, i8** @SVN_CONFIG_SECTION_GLOBAL, align 8
  %82 = load i32, i32* @SVN_CONFIG_OPTION_STORE_AUTH_CREDS, align 4
  %83 = load i32, i32* %14, align 4
  %84 = call i32 @svn_config_get_bool(i32* %80, i32* %14, i8* %81, i32 %82, i32 %83)
  %85 = call i32 @SVN_ERR(i32 %84)
  %86 = load i32*, i32** %18, align 8
  %87 = load i8*, i8** %10, align 8
  %88 = load i32, i32* @SVN_CONFIG_SECTION_GROUPS, align 4
  %89 = load i32*, i32** %12, align 8
  %90 = call i8* @svn_config_find_group(i32* %86, i8* %87, i32 %88, i32* %89)
  store i8* %90, i8** %19, align 8
  %91 = load i8*, i8** %19, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %124

93:                                               ; preds = %55
  %94 = load i32*, i32** %18, align 8
  %95 = load i8*, i8** %19, align 8
  %96 = load i32, i32* @SVN_CONFIG_OPTION_STORE_AUTH_CREDS, align 4
  %97 = load i32, i32* %14, align 4
  %98 = call i32 @svn_config_get_bool(i32* %94, i32* %14, i8* %95, i32 %96, i32 %97)
  %99 = call i32 @SVN_ERR(i32 %98)
  %100 = load i32*, i32** %18, align 8
  %101 = load i8*, i8** %19, align 8
  %102 = load i32, i32* @SVN_CONFIG_OPTION_STORE_PASSWORDS, align 4
  %103 = load i32, i32* %13, align 4
  %104 = call i32 @svn_config_get_bool(i32* %100, i32* %13, i8* %101, i32 %102, i32 %103)
  %105 = call i32 @SVN_ERR(i32 %104)
  %106 = load i32*, i32** %18, align 8
  %107 = load i8*, i8** %19, align 8
  %108 = load i32, i32* @SVN_CONFIG_OPTION_STORE_PLAINTEXT_PASSWORDS, align 4
  %109 = load i8*, i8** %15, align 8
  %110 = call i32 @svn_config_get_yes_no_ask(i32* %106, i8** %15, i8* %107, i32 %108, i8* %109)
  %111 = call i32 @SVN_ERR(i32 %110)
  %112 = load i32*, i32** %18, align 8
  %113 = load i8*, i8** %19, align 8
  %114 = load i32, i32* @SVN_CONFIG_OPTION_STORE_SSL_CLIENT_CERT_PP, align 4
  %115 = load i32, i32* %16, align 4
  %116 = call i32 @svn_config_get_bool(i32* %112, i32* %16, i8* %113, i32 %114, i32 %115)
  %117 = call i32 @SVN_ERR(i32 %116)
  %118 = load i32*, i32** %18, align 8
  %119 = load i8*, i8** %19, align 8
  %120 = load i32, i32* @SVN_CONFIG_OPTION_STORE_SSL_CLIENT_CERT_PP_PLAINTEXT, align 4
  %121 = load i8*, i8** %17, align 8
  %122 = call i32 @svn_config_get_yes_no_ask(i32* %118, i8** %17, i8* %119, i32 %120, i8* %121)
  %123 = call i32 @SVN_ERR(i32 %122)
  br label %124

124:                                              ; preds = %93, %55
  br label %125

125:                                              ; preds = %124, %49
  br label %126

126:                                              ; preds = %125, %46
  %127 = load i32, i32* %13, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %133, label %129

129:                                              ; preds = %126
  %130 = load %struct.svn_auth_baton_t*, %struct.svn_auth_baton_t** %20, align 8
  %131 = load i32, i32* @SVN_AUTH_PARAM_DONT_STORE_PASSWORDS, align 4
  %132 = call i32 @svn_auth_set_parameter(%struct.svn_auth_baton_t* %130, i32 %131, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %133

133:                                              ; preds = %129, %126
  %134 = load %struct.svn_auth_baton_t*, %struct.svn_auth_baton_t** %20, align 8
  %135 = load i32, i32* @SVN_AUTH_PARAM_STORE_PLAINTEXT_PASSWORDS, align 4
  %136 = load i8*, i8** %15, align 8
  %137 = call i32 @svn_auth_set_parameter(%struct.svn_auth_baton_t* %134, i32 %135, i8* %136)
  %138 = load i32, i32* %16, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %144, label %140

140:                                              ; preds = %133
  %141 = load %struct.svn_auth_baton_t*, %struct.svn_auth_baton_t** %20, align 8
  %142 = load i32, i32* @SVN_AUTH_PARAM_DONT_STORE_SSL_CLIENT_CERT_PP, align 4
  %143 = call i32 @svn_auth_set_parameter(%struct.svn_auth_baton_t* %141, i32 %142, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %144

144:                                              ; preds = %140, %133
  %145 = load %struct.svn_auth_baton_t*, %struct.svn_auth_baton_t** %20, align 8
  %146 = load i32, i32* @SVN_AUTH_PARAM_STORE_SSL_CLIENT_CERT_PP_PLAINTEXT, align 4
  %147 = load i8*, i8** %17, align 8
  %148 = call i32 @svn_auth_set_parameter(%struct.svn_auth_baton_t* %145, i32 %146, i8* %147)
  %149 = load i32, i32* %14, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %155, label %151

151:                                              ; preds = %144
  %152 = load %struct.svn_auth_baton_t*, %struct.svn_auth_baton_t** %20, align 8
  %153 = load i32, i32* @SVN_AUTH_PARAM_NO_AUTH_CACHE, align 4
  %154 = call i32 @svn_auth_set_parameter(%struct.svn_auth_baton_t* %152, i32 %153, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %155

155:                                              ; preds = %151, %144
  %156 = load i8*, i8** %19, align 8
  %157 = icmp ne i8* %156, null
  br i1 %157, label %158, label %167

158:                                              ; preds = %155
  %159 = load %struct.svn_auth_baton_t*, %struct.svn_auth_baton_t** %20, align 8
  %160 = load i32, i32* @SVN_AUTH_PARAM_SERVER_GROUP, align 4
  %161 = load %struct.svn_auth_baton_t*, %struct.svn_auth_baton_t** %20, align 8
  %162 = getelementptr inbounds %struct.svn_auth_baton_t, %struct.svn_auth_baton_t* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load i8*, i8** %19, align 8
  %165 = call i8* @apr_pstrdup(i32 %163, i8* %164)
  %166 = call i32 @svn_auth_set_parameter(%struct.svn_auth_baton_t* %159, i32 %160, i8* %165)
  br label %167

167:                                              ; preds = %158, %155
  %168 = load %struct.svn_auth_baton_t*, %struct.svn_auth_baton_t** %20, align 8
  %169 = load %struct.svn_auth_baton_t**, %struct.svn_auth_baton_t*** %7, align 8
  store %struct.svn_auth_baton_t* %168, %struct.svn_auth_baton_t** %169, align 8
  %170 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %170
}

declare dso_local %struct.svn_auth_baton_t* @apr_pmemdup(i32*, %struct.svn_auth_baton_t*, i32) #1

declare dso_local i32 @apr_hash_make(i32*) #1

declare dso_local i32* @svn_auth_get_parameter(%struct.svn_auth_baton_t*, i32) #1

declare dso_local i32* @svn_hash_gets(i32*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_config_get_bool(i32*, i32*, i8*, i32, i32) #1

declare dso_local i32 @svn_config_get_yes_no_ask(i32*, i8**, i8*, i32, i8*) #1

declare dso_local i8* @svn_config_find_group(i32*, i8*, i32, i32*) #1

declare dso_local i32 @svn_auth_set_parameter(%struct.svn_auth_baton_t*, i32, i8*) #1

declare dso_local i8* @apr_pstrdup(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
