; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_svn_wc_set_changelist.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_svn_wc_set_changelist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@svn_depth_empty = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc_set_changelist(i8* %0, i8* %1, i32* %2, i32 %3, i8* %4, i32 %5, i8* %6, i32* %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  store i32* %7, i32** %16, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = load i32*, i32** %16, align 8
  %21 = call i32 @svn_dirent_get_absolute(i8** %17, i8* %19, i32* %20)
  %22 = call i32 @SVN_ERR(i32 %21)
  %23 = load i32*, i32** %11, align 8
  %24 = call i32 @svn_wc__adm_get_db(i32* %23)
  %25 = load i32*, i32** %16, align 8
  %26 = call i32 @svn_wc__context_create_with_db(i32** %18, i32* null, i32 %24, i32* %25)
  %27 = call i32 @SVN_ERR(i32 %26)
  %28 = load i32*, i32** %18, align 8
  %29 = load i8*, i8** %17, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = load i32, i32* @svn_depth_empty, align 4
  %32 = load i32, i32* %12, align 4
  %33 = load i8*, i8** %13, align 8
  %34 = load i32, i32* %14, align 4
  %35 = load i8*, i8** %15, align 8
  %36 = load i32*, i32** %16, align 8
  %37 = call i32 @svn_wc_set_changelist2(i32* %28, i8* %29, i8* %30, i32 %31, i32* null, i32 %32, i8* %33, i32 %34, i8* %35, i32* %36)
  %38 = call i32 @SVN_ERR(i32 %37)
  %39 = load i32*, i32** %18, align 8
  %40 = call i32 @svn_wc_context_destroy(i32* %39)
  %41 = call i32* @svn_error_trace(i32 %40)
  ret i32* %41
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_dirent_get_absolute(i8**, i8*, i32*) #1

declare dso_local i32 @svn_wc__context_create_with_db(i32**, i32*, i32, i32*) #1

declare dso_local i32 @svn_wc__adm_get_db(i32*) #1

declare dso_local i32 @svn_wc_set_changelist2(i32*, i8*, i8*, i32, i32*, i32, i8*, i32, i8*, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_wc_context_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
