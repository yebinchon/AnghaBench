; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_revprops.c_write_non_packed_revprop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_revprops.c_write_non_packed_revprop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c".tmp\00", align 1
@SVN_VA_NULL = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i8**, i32*, i32, i32*, i32*, i32*, i32*)* @write_non_packed_revprop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @write_non_packed_revprop(i8** %0, i8** %1, i32* %2, i32 %3, i32* %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store i8** %0, i8*** %9, align 8
  store i8** %1, i8*** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  %18 = load i32*, i32** %11, align 8
  %19 = load i32, i32* %12, align 4
  %20 = load i32*, i32** %15, align 8
  %21 = call i8* @svn_fs_x__path_revprops(i32* %18, i32 %19, i32* %20)
  %22 = load i8**, i8*** %9, align 8
  store i8* %21, i8** %22, align 8
  %23 = load i32*, i32** %15, align 8
  %24 = load i8**, i8*** %9, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = load i32, i32* @SVN_VA_NULL, align 4
  %27 = call i8* @apr_pstrcat(i32* %23, i8* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i8**, i8*** %10, align 8
  store i8* %27, i8** %28, align 8
  %29 = load i32*, i32** %14, align 8
  %30 = load i8**, i8*** %10, align 8
  %31 = load i8*, i8** %30, align 8
  %32 = load i32*, i32** %16, align 8
  %33 = call i32 @svn_fs_x__batch_fsync_open_file(i32** %17, i32* %29, i8* %31, i32* %32)
  %34 = call i32 @SVN_ERR(i32 %33)
  %35 = load i32*, i32** %17, align 8
  %36 = load i32*, i32** %13, align 8
  %37 = load i32*, i32** %16, align 8
  %38 = call i32 @svn_fs_x__write_non_packed_revprops(i32* %35, i32* %36, i32* %37)
  %39 = call i32 @SVN_ERR(i32 %38)
  %40 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %40
}

declare dso_local i8* @svn_fs_x__path_revprops(i32*, i32, i32*) #1

declare dso_local i8* @apr_pstrcat(i32*, i8*, i8*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_x__batch_fsync_open_file(i32**, i32*, i8*, i32*) #1

declare dso_local i32 @svn_fs_x__write_non_packed_revprops(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
