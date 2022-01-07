; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_username_providers.c_username_save_creds.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_username_providers.c_username_save_creds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_AUTH_PARAM_CONFIG_DIR = common dso_local global i32 0, align 4
@SVN_CONFIG_AUTHN_USERNAME_KEY = common dso_local global i32 0, align 4
@SVN_AUTH_CRED_USERNAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i8*, i32*, i8*, i32*)* @username_save_creds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @username_save_creds(i32* %0, i8* %1, i8* %2, i32* %3, i8* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_2__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32* %3, i32** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %19, %struct.TYPE_2__** %14, align 8
  store i32* null, i32** %15, align 8
  %20 = load i32, i32* @FALSE, align 4
  %21 = load i32*, i32** %8, align 8
  store i32 %20, i32* %21, align 4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %6
  %27 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %27, i32** %7, align 8
  br label %56

28:                                               ; preds = %6
  %29 = load i32*, i32** %11, align 8
  %30 = load i32, i32* @SVN_AUTH_PARAM_CONFIG_DIR, align 4
  %31 = call i8* @svn_hash_gets(i32* %29, i32 %30)
  store i8* %31, i8** %16, align 8
  %32 = load i32*, i32** %13, align 8
  %33 = call i32* @apr_hash_make(i32* %32)
  store i32* %33, i32** %15, align 8
  %34 = load i32*, i32** %15, align 8
  %35 = load i32, i32* @SVN_CONFIG_AUTHN_USERNAME_KEY, align 4
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %13, align 8
  %40 = call i32 @svn_string_create(i32 %38, i32* %39)
  %41 = call i32 @svn_hash_sets(i32* %34, i32 %35, i32 %40)
  %42 = load i32*, i32** %15, align 8
  %43 = load i32, i32* @SVN_AUTH_CRED_USERNAME, align 4
  %44 = load i8*, i8** %12, align 8
  %45 = load i8*, i8** %16, align 8
  %46 = load i32*, i32** %13, align 8
  %47 = call i32* @svn_config_write_auth_data(i32* %42, i32 %43, i8* %44, i8* %45, i32* %46)
  store i32* %47, i32** %17, align 8
  %48 = load i32*, i32** %17, align 8
  %49 = call i32 @svn_error_clear(i32* %48)
  %50 = load i32*, i32** %17, align 8
  %51 = icmp ne i32* %50, null
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = load i32*, i32** %8, align 8
  store i32 %53, i32* %54, align 4
  %55 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %55, i32** %7, align 8
  br label %56

56:                                               ; preds = %28, %26
  %57 = load i32*, i32** %7, align 8
  ret i32* %57
}

declare dso_local i8* @svn_hash_gets(i32*, i32) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32 @svn_hash_sets(i32*, i32, i32) #1

declare dso_local i32 @svn_string_create(i32, i32*) #1

declare dso_local i32* @svn_config_write_auth_data(i32*, i32, i8*, i8*, i32*) #1

declare dso_local i32 @svn_error_clear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
