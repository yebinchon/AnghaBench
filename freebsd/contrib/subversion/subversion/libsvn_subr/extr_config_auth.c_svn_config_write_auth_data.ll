; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_config_auth.c_svn_config_write_auth_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_config_auth.c_svn_config_write_auth_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_ERR_NO_AUTH_FILE_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Unable to locate auth file\00", align 1
@SVN_CONFIG_REALMSTRING_KEY = common dso_local global i32 0, align 4
@svn_io_file_del_on_pool_cleanup = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Unable to open auth file for writing\00", align 1
@SVN_HASH_TERMINATOR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Error writing hash to '%s'\00", align 1
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_config_write_auth_data(i32* %0, i8* %1, i8* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = load i32*, i32** %11, align 8
  %19 = call i32 @svn_auth__file_path(i8** %13, i8* %15, i8* %16, i8* %17, i32* %18)
  %20 = call i32 @SVN_ERR(i32 %19)
  %21 = load i8*, i8** %13, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %5
  %24 = load i32, i32* @SVN_ERR_NO_AUTH_FILE_PATH, align 4
  %25 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %26 = call i32* @svn_error_create(i32 %24, i32* null, i32 %25)
  store i32* %26, i32** %6, align 8
  br label %68

27:                                               ; preds = %5
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* @SVN_CONFIG_REALMSTRING_KEY, align 4
  %30 = load i8*, i8** %9, align 8
  %31 = load i32*, i32** %11, align 8
  %32 = call i32* @svn_string_create(i8* %30, i32* %31)
  %33 = call i32 @svn_hash_sets(i32* %28, i32 %29, i32* %32)
  %34 = load i8*, i8** %13, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = call i32 @svn_dirent_dirname(i8* %34, i32* %35)
  %37 = load i32, i32* @svn_io_file_del_on_pool_cleanup, align 4
  %38 = load i32*, i32** %11, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = call i32 @svn_stream_open_unique(i32** %12, i8** %14, i32 %36, i32 %37, i32* %38, i32* %39)
  %41 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %42 = call i32 @SVN_ERR_W(i32 %40, i32 %41)
  %43 = load i32*, i32** %7, align 8
  %44 = load i32*, i32** %12, align 8
  %45 = load i32, i32* @SVN_HASH_TERMINATOR, align 4
  %46 = load i32*, i32** %11, align 8
  %47 = call i32 @svn_hash_write2(i32* %43, i32* %44, i32 %45, i32* %46)
  %48 = load i32*, i32** %11, align 8
  %49 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i8*, i8** %13, align 8
  %51 = load i32*, i32** %11, align 8
  %52 = call i32 @svn_dirent_local_style(i8* %50, i32* %51)
  %53 = call i32 @apr_psprintf(i32* %48, i32 %49, i32 %52)
  %54 = call i32 @SVN_ERR_W(i32 %47, i32 %53)
  %55 = load i32*, i32** %12, align 8
  %56 = call i32 @svn_stream_close(i32* %55)
  %57 = call i32 @SVN_ERR(i32 %56)
  %58 = load i8*, i8** %14, align 8
  %59 = load i8*, i8** %13, align 8
  %60 = load i32, i32* @FALSE, align 4
  %61 = load i32*, i32** %11, align 8
  %62 = call i32 @svn_io_file_rename2(i8* %58, i8* %59, i32 %60, i32* %61)
  %63 = call i32 @SVN_ERR(i32 %62)
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* @SVN_CONFIG_REALMSTRING_KEY, align 4
  %66 = call i32 @svn_hash_sets(i32* %64, i32 %65, i32* null)
  %67 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %67, i32** %6, align 8
  br label %68

68:                                               ; preds = %27, %23
  %69 = load i32*, i32** %6, align 8
  ret i32* %69
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_auth__file_path(i8**, i8*, i8*, i8*, i32*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_hash_sets(i32*, i32, i32*) #1

declare dso_local i32* @svn_string_create(i8*, i32*) #1

declare dso_local i32 @SVN_ERR_W(i32, i32) #1

declare dso_local i32 @svn_stream_open_unique(i32**, i8**, i32, i32, i32*, i32*) #1

declare dso_local i32 @svn_dirent_dirname(i8*, i32*) #1

declare dso_local i32 @svn_hash_write2(i32*, i32*, i32, i32*) #1

declare dso_local i32 @apr_psprintf(i32*, i32, i32) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32 @svn_stream_close(i32*) #1

declare dso_local i32 @svn_io_file_rename2(i8*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
