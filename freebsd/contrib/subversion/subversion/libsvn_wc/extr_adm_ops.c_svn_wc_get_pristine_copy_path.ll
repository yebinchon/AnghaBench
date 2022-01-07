; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_adm_ops.c_svn_wc_get_pristine_copy_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_adm_ops.c_svn_wc_get_pristine_copy_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SVN_ERR_WC_PATH_UNEXPECTED_STATUS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @svn_wc_get_pristine_copy_path(i8* %0, i8** %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = call i32 @svn_dirent_get_absolute(i8** %8, i8* %11, i32* %12)
  %14 = call i32 @SVN_ERR(i32 %13)
  %15 = load i32, i32* @FALSE, align 4
  %16 = load i32, i32* @TRUE, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @svn_wc__db_open(i32** %7, i32* null, i32 %15, i32 %16, i32* %17, i32* %18)
  %20 = call i32 @SVN_ERR(i32 %19)
  %21 = load i8**, i8*** %5, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = call %struct.TYPE_8__* @svn_wc__text_base_path_to_read(i8** %21, i32* %22, i8* %23, i32* %24, i32* %25)
  store %struct.TYPE_8__* %26, %struct.TYPE_8__** %9, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %28 = icmp ne %struct.TYPE_8__* %27, null
  br i1 %28, label %29, label %51

29:                                               ; preds = %3
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SVN_ERR_WC_PATH_UNEXPECTED_STATUS, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %51

35:                                               ; preds = %29
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %37 = call i32 @svn_error_clear(%struct.TYPE_8__* %36)
  %38 = load i32*, i32** %7, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = call %struct.TYPE_8__* @svn_wc__db_get_wcroot(i8** %10, i32* %38, i8* %39, i32* %40, i32* %41)
  store %struct.TYPE_8__* %42, %struct.TYPE_8__** %9, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %44 = icmp eq %struct.TYPE_8__* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %35
  %46 = load i8*, i8** %10, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = call i8* @nonexistent_path(i8* %46, i32* %47)
  %49 = load i8**, i8*** %5, align 8
  store i8* %48, i8** %49, align 8
  br label %50

50:                                               ; preds = %45, %35
  br label %51

51:                                               ; preds = %50, %29, %3
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @svn_wc__db_close(i32* %53)
  %55 = call %struct.TYPE_8__* @svn_error_compose_create(%struct.TYPE_8__* %52, i32 %54)
  ret %struct.TYPE_8__* %55
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_dirent_get_absolute(i8**, i8*, i32*) #1

declare dso_local i32 @svn_wc__db_open(i32**, i32*, i32, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_8__* @svn_wc__text_base_path_to_read(i8**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_8__* @svn_wc__db_get_wcroot(i8**, i32*, i8*, i32*, i32*) #1

declare dso_local i8* @nonexistent_path(i8*, i32*) #1

declare dso_local %struct.TYPE_8__* @svn_error_compose_create(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @svn_wc__db_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
