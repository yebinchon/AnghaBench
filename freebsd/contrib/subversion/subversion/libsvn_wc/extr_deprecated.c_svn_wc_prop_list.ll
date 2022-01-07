; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_svn_wc_prop_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_svn_wc_prop_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }

@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @svn_wc_prop_list(i32** %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  store i32** %0, i32*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = call i32 @svn_dirent_get_absolute(i8** %10, i8* %12, i32* %13)
  %15 = call i32 @SVN_ERR(i32 %14)
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @svn_wc__adm_get_db(i32* %16)
  %18 = load i32*, i32** %8, align 8
  %19 = call i32 @svn_wc__context_create_with_db(i32** %9, i32* null, i32 %17, i32* %18)
  %20 = call i32 @SVN_ERR(i32 %19)
  %21 = load i32**, i32*** %5, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = call %struct.TYPE_7__* @svn_wc_prop_list2(i32** %21, i32* %22, i8* %23, i32* %24, i32* %25)
  store %struct.TYPE_7__* %26, %struct.TYPE_7__** %11, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %28 = icmp ne %struct.TYPE_7__* %27, null
  br i1 %28, label %29, label %41

29:                                               ; preds = %4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load i32*, i32** %8, align 8
  %37 = call i32* @apr_hash_make(i32* %36)
  %38 = load i32**, i32*** %5, align 8
  store i32* %37, i32** %38, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %40 = call i32 @svn_error_clear(%struct.TYPE_7__* %39)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %11, align 8
  br label %41

41:                                               ; preds = %35, %29, %4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = call i32 @svn_wc_context_destroy(i32* %43)
  %45 = call %struct.TYPE_7__* @svn_error_compose_create(%struct.TYPE_7__* %42, i32 %44)
  ret %struct.TYPE_7__* %45
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_dirent_get_absolute(i8**, i8*, i32*) #1

declare dso_local i32 @svn_wc__context_create_with_db(i32**, i32*, i32, i32*) #1

declare dso_local i32 @svn_wc__adm_get_db(i32*) #1

declare dso_local %struct.TYPE_7__* @svn_wc_prop_list2(i32**, i32*, i8*, i32*, i32*) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_7__* @svn_error_compose_create(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @svn_wc_context_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
