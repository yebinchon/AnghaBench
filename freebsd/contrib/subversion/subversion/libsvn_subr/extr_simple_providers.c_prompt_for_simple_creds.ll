; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_simple_providers.c_prompt_for_simple_creds.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_simple_providers.c_prompt_for_simple_creds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i8*, i8* }
%struct.TYPE_10__ = type { i32, i32 (%struct.TYPE_9__**, i32, i8*, i8*, i64, i32*)* }
%struct.TYPE_8__ = type { i8* }

@SVN_AUTH_PARAM_DEFAULT_USERNAME = common dso_local global i32 0, align 4
@SVN_AUTH_PARAM_CONFIG_DIR = common dso_local global i32 0, align 4
@SVN_AUTH_CRED_SIMPLE = common dso_local global i32 0, align 4
@SVN_CONFIG_AUTHN_USERNAME_KEY = common dso_local global i32 0, align 4
@SVN_AUTH_PARAM_CONFIG_CATEGORY_SERVERS = common dso_local global i32 0, align 4
@SVN_AUTH_PARAM_SERVER_GROUP = common dso_local global i32 0, align 4
@SVN_CONFIG_OPTION_USERNAME = common dso_local global i32 0, align 4
@SVN_AUTH_PARAM_DEFAULT_PASSWORD = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_9__**, %struct.TYPE_10__*, i32*, i8*, i64, i64, i32*)* @prompt_for_simple_creds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @prompt_for_simple_creds(%struct.TYPE_9__** %0, %struct.TYPE_10__* %1, i32* %2, i8* %3, i64 %4, i64 %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_9__**, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_8__*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  store %struct.TYPE_9__** %0, %struct.TYPE_9__*** %8, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %9, align 8
  store i32* %2, i32** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i32* %6, i32** %14, align 8
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  %23 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %23, align 8
  %24 = load i64, i64* %12, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %91

26:                                               ; preds = %7
  %27 = load i32*, i32** %10, align 8
  %28 = load i32, i32* @SVN_AUTH_PARAM_DEFAULT_USERNAME, align 4
  %29 = call i8* @svn_hash_gets(i32* %27, i32 %28)
  store i8* %29, i8** %15, align 8
  %30 = load i8*, i8** %15, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %66, label %32

32:                                               ; preds = %26
  %33 = load i32*, i32** %10, align 8
  %34 = load i32, i32* @SVN_AUTH_PARAM_CONFIG_DIR, align 4
  %35 = call i8* @svn_hash_gets(i32* %33, i32 %34)
  store i8* %35, i8** %17, align 8
  store i32* null, i32** %18, align 8
  %36 = load i32, i32* @SVN_AUTH_CRED_SIMPLE, align 4
  %37 = load i8*, i8** %11, align 8
  %38 = load i8*, i8** %17, align 8
  %39 = load i32*, i32** %14, align 8
  %40 = call i32* @svn_config_read_auth_data(i32** %18, i32 %36, i8* %37, i8* %38, i32* %39)
  store i32* %40, i32** %20, align 8
  %41 = load i32*, i32** %20, align 8
  %42 = call i32 @svn_error_clear(i32* %41)
  %43 = load i32*, i32** %20, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %65, label %45

45:                                               ; preds = %32
  %46 = load i32*, i32** %18, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %65

48:                                               ; preds = %45
  %49 = load i32*, i32** %18, align 8
  %50 = load i32, i32* @SVN_CONFIG_AUTHN_USERNAME_KEY, align 4
  %51 = call i8* @svn_hash_gets(i32* %49, i32 %50)
  %52 = bitcast i8* %51 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %52, %struct.TYPE_8__** %19, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %54 = icmp ne %struct.TYPE_8__* %53, null
  br i1 %54, label %55, label %64

55:                                               ; preds = %48
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  store i8* %63, i8** %15, align 8
  br label %64

64:                                               ; preds = %60, %55, %48
  br label %65

65:                                               ; preds = %64, %45, %32
  br label %66

66:                                               ; preds = %65, %26
  %67 = load i8*, i8** %15, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %81, label %69

69:                                               ; preds = %66
  %70 = load i32*, i32** %10, align 8
  %71 = load i32, i32* @SVN_AUTH_PARAM_CONFIG_CATEGORY_SERVERS, align 4
  %72 = call i8* @svn_hash_gets(i32* %70, i32 %71)
  %73 = bitcast i8* %72 to i32*
  store i32* %73, i32** %21, align 8
  %74 = load i32*, i32** %10, align 8
  %75 = load i32, i32* @SVN_AUTH_PARAM_SERVER_GROUP, align 4
  %76 = call i8* @svn_hash_gets(i32* %74, i32 %75)
  store i8* %76, i8** %22, align 8
  %77 = load i32*, i32** %21, align 8
  %78 = load i8*, i8** %22, align 8
  %79 = load i32, i32* @SVN_CONFIG_OPTION_USERNAME, align 4
  %80 = call i8* @svn_config_get_server_setting(i32* %77, i8* %78, i32 %79, i32* null)
  store i8* %80, i8** %15, align 8
  br label %81

81:                                               ; preds = %69, %66
  %82 = load i8*, i8** %15, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %81
  %85 = load i32*, i32** %14, align 8
  %86 = call i8* @svn_user_get_name(i32* %85)
  store i8* %86, i8** %15, align 8
  br label %87

87:                                               ; preds = %84, %81
  %88 = load i32*, i32** %10, align 8
  %89 = load i32, i32* @SVN_AUTH_PARAM_DEFAULT_PASSWORD, align 4
  %90 = call i8* @svn_hash_gets(i32* %88, i32 %89)
  store i8* %90, i8** %16, align 8
  br label %91

91:                                               ; preds = %87, %7
  %92 = load i8*, i8** %15, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %117

94:                                               ; preds = %91
  %95 = load i8*, i8** %16, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %117

97:                                               ; preds = %94
  %98 = load i32*, i32** %14, align 8
  %99 = call %struct.TYPE_9__* @apr_palloc(i32* %98, i32 24)
  %100 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  store %struct.TYPE_9__* %99, %struct.TYPE_9__** %100, align 8
  %101 = load i32*, i32** %14, align 8
  %102 = load i8*, i8** %15, align 8
  %103 = call i8* @apr_pstrdup(i32* %101, i8* %102)
  %104 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 2
  store i8* %103, i8** %106, align 8
  %107 = load i32*, i32** %14, align 8
  %108 = load i8*, i8** %16, align 8
  %109 = call i8* @apr_pstrdup(i32* %107, i8* %108)
  %110 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 1
  store i8* %109, i8** %112, align 8
  %113 = load i32, i32* @TRUE, align 4
  %114 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  store i32 %113, i32* %116, align 8
  br label %131

117:                                              ; preds = %94, %91
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 1
  %120 = load i32 (%struct.TYPE_9__**, i32, i8*, i8*, i64, i32*)*, i32 (%struct.TYPE_9__**, i32, i8*, i8*, i64, i32*)** %119, align 8
  %121 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %8, align 8
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i8*, i8** %11, align 8
  %126 = load i8*, i8** %15, align 8
  %127 = load i64, i64* %13, align 8
  %128 = load i32*, i32** %14, align 8
  %129 = call i32 %120(%struct.TYPE_9__** %121, i32 %124, i8* %125, i8* %126, i64 %127, i32* %128)
  %130 = call i32 @SVN_ERR(i32 %129)
  br label %131

131:                                              ; preds = %117, %97
  %132 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %132
}

declare dso_local i8* @svn_hash_gets(i32*, i32) #1

declare dso_local i32* @svn_config_read_auth_data(i32**, i32, i8*, i8*, i32*) #1

declare dso_local i32 @svn_error_clear(i32*) #1

declare dso_local i8* @svn_config_get_server_setting(i32*, i8*, i32, i32*) #1

declare dso_local i8* @svn_user_get_name(i32*) #1

declare dso_local %struct.TYPE_9__* @apr_palloc(i32*, i32) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
