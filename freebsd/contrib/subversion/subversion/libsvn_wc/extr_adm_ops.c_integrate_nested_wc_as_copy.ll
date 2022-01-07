; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_adm_ops.c_integrate_nested_wc_as_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_adm_ops.c_integrate_nested_wc_as_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@svn_io_file_del_on_close = common dso_local global i32 0, align 4
@APR_OS_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_4__*, i8*, i32*)* @integrate_nested_wc_as_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @integrate_nested_wc_as_copy(%struct.TYPE_4__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %7, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @svn_wc__db_drop_root(i32* %16, i8* %17, i32* %18)
  %20 = call i32 @SVN_ERR(i32 %19)
  %21 = load i32*, i32** %7, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @svn_dirent_dirname(i8* %22, i32* %23)
  %25 = load i32*, i32** %6, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @svn_wc__db_temp_wcroot_tempdir(i8** %9, i32* %21, i32 %24, i32* %25, i32* %26)
  %28 = call i32 @SVN_ERR(i32 %27)
  %29 = load i8*, i8** %9, align 8
  %30 = load i32, i32* @svn_io_file_del_on_close, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @svn_io_open_unique_file3(i32* null, i8** %8, i8* %29, i32 %30, i32* %31, i32* %32)
  %34 = call i32 @SVN_ERR(i32 %33)
  %35 = load i8*, i8** %8, align 8
  %36 = load i32, i32* @APR_OS_DEFAULT, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @svn_io_dir_make(i8* %35, i32 %36, i32* %37)
  %39 = call i32 @SVN_ERR(i32 %38)
  %40 = load i8*, i8** %5, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = call i8* @svn_wc__adm_child(i8* %40, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32* %41)
  store i8* %42, i8** %11, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = call i8* @svn_wc__adm_child(i8* %43, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32* %44)
  store i8* %45, i8** %10, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 @svn_io_file_move(i8* %46, i8* %47, i32* %48)
  %50 = call i32 @SVN_ERR(i32 %49)
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = load i32, i32* @TRUE, align 4
  %55 = load i32*, i32** %6, align 8
  %56 = call i32 @svn_wc_copy3(%struct.TYPE_4__* %51, i8* %52, i8* %53, i32 %54, i32* null, i32* null, i32* null, i32* null, i32* %55)
  %57 = call i32 @SVN_ERR(i32 %56)
  %58 = load i32*, i32** %7, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = load i32*, i32** %6, align 8
  %61 = call i32 @svn_wc__db_drop_root(i32* %58, i8* %59, i32* %60)
  %62 = call i32 @SVN_ERR(i32 %61)
  %63 = load i8*, i8** %8, align 8
  %64 = load i32, i32* @FALSE, align 4
  %65 = load i32*, i32** %6, align 8
  %66 = call i32 @svn_io_remove_dir2(i8* %63, i32 %64, i32* null, i32* null, i32* %65)
  %67 = call i32 @SVN_ERR(i32 %66)
  %68 = load i32*, i32** %7, align 8
  %69 = load i8*, i8** %5, align 8
  %70 = load i32, i32* @FALSE, align 4
  %71 = load i32*, i32** %6, align 8
  %72 = call i32 @svn_wc__db_wclock_owns_lock(i32* %12, i32* %68, i8* %69, i32 %70, i32* %71)
  %73 = call i32 @SVN_ERR(i32 %72)
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %3
  %77 = load i32*, i32** %7, align 8
  %78 = load i8*, i8** %5, align 8
  %79 = load i32, i32* @FALSE, align 4
  %80 = load i32*, i32** %6, align 8
  %81 = call i32 @svn_wc__db_wclock_obtain(i32* %77, i8* %78, i32 0, i32 %79, i32* %80)
  %82 = call i32 @SVN_ERR(i32 %81)
  br label %83

83:                                               ; preds = %76, %3
  %84 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %84
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_drop_root(i32*, i8*, i32*) #1

declare dso_local i32 @svn_wc__db_temp_wcroot_tempdir(i8**, i32*, i32, i32*, i32*) #1

declare dso_local i32 @svn_dirent_dirname(i8*, i32*) #1

declare dso_local i32 @svn_io_open_unique_file3(i32*, i8**, i8*, i32, i32*, i32*) #1

declare dso_local i32 @svn_io_dir_make(i8*, i32, i32*) #1

declare dso_local i8* @svn_wc__adm_child(i8*, i8*, i32*) #1

declare dso_local i32 @svn_io_file_move(i8*, i8*, i32*) #1

declare dso_local i32 @svn_wc_copy3(%struct.TYPE_4__*, i8*, i8*, i32, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_io_remove_dir2(i8*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_wclock_owns_lock(i32*, i32*, i8*, i32, i32*) #1

declare dso_local i32 @svn_wc__db_wclock_obtain(i32*, i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
