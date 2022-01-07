; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_config_auth.c_svn_auth__file_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_config_auth.c_svn_auth__file_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_CONFIG__AUTH_SUBDIR = common dso_local global i32 0, align 4
@svn_checksum_md5 = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_auth__file_path(i8** %0, i8* %1, i8* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  store i8** %0, i8*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = load i32, i32* @SVN_CONFIG__AUTH_SUBDIR, align 4
  %16 = load i32*, i32** %10, align 8
  %17 = call i32 @svn_config_get_user_config_path(i8** %11, i8* %14, i32 %15, i32* %16)
  %18 = call i32 @SVN_ERR(i32 %17)
  %19 = load i8*, i8** %11, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %41

21:                                               ; preds = %5
  %22 = load i8*, i8** %11, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = call i8* @svn_dirent_join(i8* %22, i8* %23, i32* %24)
  store i8* %25, i8** %11, align 8
  %26 = load i32, i32* @svn_checksum_md5, align 4
  %27 = load i8*, i8** %8, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @strlen(i8* %28)
  %30 = load i32*, i32** %10, align 8
  %31 = call i32 @svn_checksum(i32** %13, i32 %26, i8* %27, i32 %29, i32* %30)
  %32 = call i32 @SVN_ERR(i32 %31)
  %33 = load i32*, i32** %13, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = call i8* @svn_checksum_to_cstring(i32* %33, i32* %34)
  store i8* %35, i8** %12, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = load i8*, i8** %12, align 8
  %38 = load i32*, i32** %10, align 8
  %39 = call i8* @svn_dirent_join(i8* %36, i8* %37, i32* %38)
  %40 = load i8**, i8*** %6, align 8
  store i8* %39, i8** %40, align 8
  br label %43

41:                                               ; preds = %5
  %42 = load i8**, i8*** %6, align 8
  store i8* null, i8** %42, align 8
  br label %43

43:                                               ; preds = %41, %21
  %44 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %44
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_config_get_user_config_path(i8**, i8*, i32, i32*) #1

declare dso_local i8* @svn_dirent_join(i8*, i8*, i32*) #1

declare dso_local i32 @svn_checksum(i32**, i32, i8*, i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @svn_checksum_to_cstring(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
