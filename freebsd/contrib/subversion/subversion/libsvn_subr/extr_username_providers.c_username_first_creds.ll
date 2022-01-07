; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_username_providers.c_username_first_creds.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_username_providers.c_username_first_creds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }
%struct.TYPE_5__ = type { i8*, i32 }

@SVN_AUTH_PARAM_CONFIG_DIR = common dso_local global i32 0, align 4
@SVN_AUTH_PARAM_DEFAULT_USERNAME = common dso_local global i32 0, align 4
@SVN_AUTH_CRED_USERNAME = common dso_local global i32 0, align 4
@SVN_CONFIG_AUTHN_USERNAME_KEY = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i8**, i8*, i32*, i8*, i32*)* @username_first_creds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @username_first_creds(i8** %0, i8** %1, i8* %2, i32* %3, i8* %4, i32* %5) #0 {
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_4__*, align 8
  %19 = alloca %struct.TYPE_5__*, align 8
  store i8** %0, i8*** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32* %5, i32** %12, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = load i32, i32* @SVN_AUTH_PARAM_CONFIG_DIR, align 4
  %22 = call i8* @svn_hash_gets(i32* %20, i32 %21)
  store i8* %22, i8** %13, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = load i32, i32* @SVN_AUTH_PARAM_DEFAULT_USERNAME, align 4
  %25 = call i8* @svn_hash_gets(i32* %23, i32 %24)
  store i8* %25, i8** %14, align 8
  %26 = load i8*, i8** %14, align 8
  %27 = icmp ne i8* %26, null
  %28 = xor i1 %27, true
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %15, align 4
  %31 = load i8*, i8** %14, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %64, label %33

33:                                               ; preds = %6
  store i32* null, i32** %17, align 8
  %34 = load i32, i32* @SVN_AUTH_CRED_USERNAME, align 4
  %35 = load i8*, i8** %11, align 8
  %36 = load i8*, i8** %13, align 8
  %37 = load i32*, i32** %12, align 8
  %38 = call i32* @svn_config_read_auth_data(i32** %17, i32 %34, i8* %35, i8* %36, i32* %37)
  store i32* %38, i32** %16, align 8
  %39 = load i32*, i32** %16, align 8
  %40 = call i32 @svn_error_clear(i32* %39)
  %41 = load i32*, i32** %16, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %63, label %43

43:                                               ; preds = %33
  %44 = load i32*, i32** %17, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %63

46:                                               ; preds = %43
  %47 = load i32*, i32** %17, align 8
  %48 = load i32, i32* @SVN_CONFIG_AUTHN_USERNAME_KEY, align 4
  %49 = call i8* @svn_hash_gets(i32* %47, i32 %48)
  %50 = bitcast i8* %49 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %50, %struct.TYPE_4__** %18, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %52 = icmp ne %struct.TYPE_4__* %51, null
  br i1 %52, label %53, label %62

53:                                               ; preds = %46
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  store i8* %61, i8** %14, align 8
  br label %62

62:                                               ; preds = %58, %53, %46
  br label %63

63:                                               ; preds = %62, %43, %33
  br label %64

64:                                               ; preds = %63, %6
  %65 = load i8*, i8** %14, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = load i32*, i32** %12, align 8
  %69 = call i8* @svn_user_get_name(i32* %68)
  store i8* %69, i8** %14, align 8
  br label %70

70:                                               ; preds = %67, %64
  %71 = load i8*, i8** %14, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %85

73:                                               ; preds = %70
  %74 = load i32*, i32** %12, align 8
  %75 = call %struct.TYPE_5__* @apr_pcalloc(i32* %74, i32 16)
  store %struct.TYPE_5__* %75, %struct.TYPE_5__** %19, align 8
  %76 = load i8*, i8** %14, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  store i8* %76, i8** %78, align 8
  %79 = load i32, i32* %15, align 4
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 8
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %83 = bitcast %struct.TYPE_5__* %82 to i8*
  %84 = load i8**, i8*** %7, align 8
  store i8* %83, i8** %84, align 8
  br label %87

85:                                               ; preds = %70
  %86 = load i8**, i8*** %7, align 8
  store i8* null, i8** %86, align 8
  br label %87

87:                                               ; preds = %85, %73
  %88 = load i8**, i8*** %8, align 8
  store i8* null, i8** %88, align 8
  %89 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %89
}

declare dso_local i8* @svn_hash_gets(i32*, i32) #1

declare dso_local i32* @svn_config_read_auth_data(i32**, i32, i8*, i8*, i32*) #1

declare dso_local i32 @svn_error_clear(i32*) #1

declare dso_local i8* @svn_user_get_name(i32*) #1

declare dso_local %struct.TYPE_5__* @apr_pcalloc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
