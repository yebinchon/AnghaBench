; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_serf.c_load_http_auth_types.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_serf.c_load_http_auth_types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SERF_AUTHN_NONE = common dso_local global i32 0, align 4
@SVN_CONFIG_SECTION_GLOBAL = common dso_local global i8* null, align 8
@SVN_CONFIG_OPTION_HTTP_AUTH_TYPES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"basic\00", align 1
@SERF_AUTHN_BASIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"digest\00", align 1
@SERF_AUTHN_DIGEST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"ntlm\00", align 1
@SERF_AUTHN_NTLM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"negotiate\00", align 1
@SERF_AUTHN_NEGOTIATE = common dso_local global i32 0, align 4
@SVN_ERR_BAD_CONFIG_VALUE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"Invalid config: unknown %s '%s'\00", align 1
@SERF_AUTHN_ALL = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i8*, i32*)* @load_http_auth_types to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @load_http_auth_types(i32* %0, i32* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store i8* null, i8** %10, align 8
  %13 = load i32, i32* @SERF_AUTHN_NONE, align 4
  %14 = load i32*, i32** %9, align 8
  store i32 %13, i32* %14, align 4
  %15 = load i32*, i32** %7, align 8
  %16 = load i8*, i8** @SVN_CONFIG_SECTION_GLOBAL, align 8
  %17 = load i32, i32* @SVN_CONFIG_OPTION_HTTP_AUTH_TYPES, align 4
  %18 = call i32 @svn_config_get(i32* %15, i8** %10, i8* %16, i32 %17, i8* null)
  %19 = load i8*, i8** %8, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %4
  %22 = load i32*, i32** %7, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load i32, i32* @SVN_CONFIG_OPTION_HTTP_AUTH_TYPES, align 4
  %25 = load i8*, i8** %10, align 8
  %26 = call i32 @svn_config_get(i32* %22, i8** %10, i8* %23, i32 %24, i8* %25)
  br label %27

27:                                               ; preds = %21, %4
  %28 = load i8*, i8** %10, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %89

30:                                               ; preds = %27
  %31 = load i32*, i32** %6, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = call i64 @strlen(i8* %32)
  %34 = add nsw i64 %33, 1
  %35 = call i8* @apr_palloc(i32* %31, i64 %34)
  store i8* %35, i8** %12, align 8
  %36 = load i8*, i8** %12, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = call i32 @apr_collapse_spaces(i8* %36, i8* %37)
  br label %39

39:                                               ; preds = %87, %30
  %40 = call i8* @svn_cstring_tokenize(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %12)
  store i8* %40, i8** %11, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %88

42:                                               ; preds = %39
  %43 = load i8*, i8** %11, align 8
  %44 = call i64 @svn_cstring_casecmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load i32, i32* @SERF_AUTHN_BASIC, align 4
  %48 = load i32*, i32** %9, align 8
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %47
  store i32 %50, i32* %48, align 4
  br label %87

51:                                               ; preds = %42
  %52 = load i8*, i8** %11, align 8
  %53 = call i64 @svn_cstring_casecmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %52)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load i32, i32* @SERF_AUTHN_DIGEST, align 4
  %57 = load i32*, i32** %9, align 8
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %56
  store i32 %59, i32* %57, align 4
  br label %86

60:                                               ; preds = %51
  %61 = load i8*, i8** %11, align 8
  %62 = call i64 @svn_cstring_casecmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %61)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load i32, i32* @SERF_AUTHN_NTLM, align 4
  %66 = load i32*, i32** %9, align 8
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %65
  store i32 %68, i32* %66, align 4
  br label %85

69:                                               ; preds = %60
  %70 = load i8*, i8** %11, align 8
  %71 = call i64 @svn_cstring_casecmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %70)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = load i32, i32* @SERF_AUTHN_NEGOTIATE, align 4
  %75 = load i32*, i32** %9, align 8
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %74
  store i32 %77, i32* %75, align 4
  br label %84

78:                                               ; preds = %69
  %79 = load i32, i32* @SVN_ERR_BAD_CONFIG_VALUE, align 4
  %80 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %81 = load i32, i32* @SVN_CONFIG_OPTION_HTTP_AUTH_TYPES, align 4
  %82 = load i8*, i8** %11, align 8
  %83 = call i32* @svn_error_createf(i32 %79, i32* null, i32 %80, i32 %81, i8* %82)
  store i32* %83, i32** %5, align 8
  br label %94

84:                                               ; preds = %73
  br label %85

85:                                               ; preds = %84, %64
  br label %86

86:                                               ; preds = %85, %55
  br label %87

87:                                               ; preds = %86, %46
  br label %39

88:                                               ; preds = %39
  br label %92

89:                                               ; preds = %27
  %90 = load i32, i32* @SERF_AUTHN_ALL, align 4
  %91 = load i32*, i32** %9, align 8
  store i32 %90, i32* %91, align 4
  br label %92

92:                                               ; preds = %89, %88
  %93 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %93, i32** %5, align 8
  br label %94

94:                                               ; preds = %92, %78
  %95 = load i32*, i32** %5, align 8
  ret i32* %95
}

declare dso_local i32 @svn_config_get(i32*, i8**, i8*, i32, i8*) #1

declare dso_local i8* @apr_palloc(i32*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @apr_collapse_spaces(i8*, i8*) #1

declare dso_local i8* @svn_cstring_tokenize(i8*, i8**) #1

declare dso_local i64 @svn_cstring_casecmp(i8*, i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
