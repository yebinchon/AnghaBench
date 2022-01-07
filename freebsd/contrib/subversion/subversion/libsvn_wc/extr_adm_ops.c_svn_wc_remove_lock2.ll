; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_adm_ops.c_svn_wc_remove_lock2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_adm_ops.c_svn_wc_remove_lock2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i32 }

@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i64 0, align 8
@SVN_ERR_ENTRY_NOT_FOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"'%s' is not under version control\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @svn_wc_remove_lock2(%struct.TYPE_11__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i32 @svn_dirent_is_absolute(i8* %10)
  %12 = call i32 @SVN_ERR_ASSERT(i32 %11)
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @svn_dirent_dirname(i8* %16, i32* %17)
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @svn_wc__write_check(i32 %15, i32 %18, i32* %19)
  %21 = call i32 @SVN_ERR(i32 %20)
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %6, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @svn_wc__wq_build_sync_file_flags(i32** %9, i32 %24, i8* %25, i32* %26, i32* %27)
  %29 = call i32 @SVN_ERR(i32 %28)
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %6, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = call %struct.TYPE_12__* @svn_wc__db_lock_remove(i32 %32, i8* %33, i32* %34, i32* %35)
  store %struct.TYPE_12__* %36, %struct.TYPE_12__** %8, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %38 = icmp ne %struct.TYPE_12__* %37, null
  br i1 %38, label %39, label %57

39:                                               ; preds = %3
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %47 = call %struct.TYPE_12__* @svn_error_trace(%struct.TYPE_12__* %46)
  store %struct.TYPE_12__* %47, %struct.TYPE_12__** %4, align 8
  br label %65

48:                                               ; preds = %39
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %50 = call i32 @svn_error_clear(%struct.TYPE_12__* %49)
  %51 = load i32, i32* @SVN_ERR_ENTRY_NOT_FOUND, align 4
  %52 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %53 = load i8*, i8** %6, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = call i32 @svn_dirent_local_style(i8* %53, i32* %54)
  %56 = call %struct.TYPE_12__* @svn_error_createf(i32 %51, i32* null, i32 %52, i32 %55)
  store %struct.TYPE_12__* %56, %struct.TYPE_12__** %4, align 8
  br label %65

57:                                               ; preds = %3
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i8*, i8** %6, align 8
  %62 = load i32*, i32** %7, align 8
  %63 = call %struct.TYPE_12__* @svn_wc__wq_run(i32 %60, i8* %61, i32* null, i32* null, i32* %62)
  %64 = call %struct.TYPE_12__* @svn_error_trace(%struct.TYPE_12__* %63)
  store %struct.TYPE_12__* %64, %struct.TYPE_12__** %4, align 8
  br label %65

65:                                               ; preds = %57, %48, %45
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  ret %struct.TYPE_12__* %66
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__write_check(i32, i32, i32*) #1

declare dso_local i32 @svn_dirent_dirname(i8*, i32*) #1

declare dso_local i32 @svn_wc__wq_build_sync_file_flags(i32**, i32, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_12__* @svn_wc__db_lock_remove(i32, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_12__* @svn_error_trace(%struct.TYPE_12__*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local %struct.TYPE_12__* @svn_wc__wq_run(i32, i8*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
