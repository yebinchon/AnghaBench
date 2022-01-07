; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_adm_ops.c_svn_wc_add_lock2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_adm_ops.c_svn_wc_add_lock2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_21__ = type { i32, i32, i32, i32 }
%struct.TYPE_20__ = type { i32, i32, i32, i32 }

@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i64 0, align 8
@SVN_ERR_ENTRY_NOT_FOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"'%s' is not under version control\00", align 1
@SVN_PROP_NEEDS_LOCK = common dso_local global i32 0, align 4
@SVN_ERR_WC_PATH_UNEXPECTED_STATUS = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_22__* null, align 8
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_22__* @svn_wc_add_lock2(%struct.TYPE_19__* %0, i8* %1, %struct.TYPE_21__* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_20__, align 4
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call i32 @svn_dirent_is_absolute(i8* %13)
  %15 = call i32 @SVN_ERR_ASSERT(i32 %14)
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i8*, i8** %7, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = call i32 @svn_dirent_dirname(i8* %19, i32* %20)
  %22 = load i32*, i32** %9, align 8
  %23 = call %struct.TYPE_22__* @svn_wc__write_check(i32 %18, i32 %21, i32* %22)
  %24 = call i32 @SVN_ERR(%struct.TYPE_22__* %23)
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 3
  store i32 %27, i32* %28, align 4
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 2
  store i32 %31, i32* %32, align 4
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 1
  store i32 %35, i32* %36, align 4
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i8*, i8** %7, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = call %struct.TYPE_22__* @svn_wc__db_lock_add(i32 %43, i8* %44, %struct.TYPE_20__* %10, i32* %45)
  store %struct.TYPE_22__* %46, %struct.TYPE_22__** %11, align 8
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %48 = icmp ne %struct.TYPE_22__* %47, null
  br i1 %48, label %49, label %67

49:                                               ; preds = %4
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %57 = call %struct.TYPE_22__* @svn_error_trace(%struct.TYPE_22__* %56)
  store %struct.TYPE_22__* %57, %struct.TYPE_22__** %5, align 8
  br label %101

58:                                               ; preds = %49
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %60 = call i32 @svn_error_clear(%struct.TYPE_22__* %59)
  %61 = load i32, i32* @SVN_ERR_ENTRY_NOT_FOUND, align 4
  %62 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %63 = load i8*, i8** %7, align 8
  %64 = load i32*, i32** %9, align 8
  %65 = call i32 @svn_dirent_local_style(i8* %63, i32* %64)
  %66 = call %struct.TYPE_22__* @svn_error_createf(i32 %61, i32* null, i32 %62, i32 %65)
  store %struct.TYPE_22__* %66, %struct.TYPE_22__** %5, align 8
  br label %101

67:                                               ; preds = %4
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i8*, i8** %7, align 8
  %72 = load i32, i32* @SVN_PROP_NEEDS_LOCK, align 4
  %73 = load i32*, i32** %9, align 8
  %74 = load i32*, i32** %9, align 8
  %75 = call %struct.TYPE_22__* @svn_wc__internal_propget(i32** %12, i32 %70, i8* %71, i32 %72, i32* %73, i32* %74)
  store %struct.TYPE_22__* %75, %struct.TYPE_22__** %11, align 8
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %77 = icmp ne %struct.TYPE_22__* %76, null
  br i1 %77, label %78, label %88

78:                                               ; preds = %67
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @SVN_ERR_WC_PATH_UNEXPECTED_STATUS, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %78
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %86 = call i32 @svn_error_clear(%struct.TYPE_22__* %85)
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_22__* %87, %struct.TYPE_22__** %5, align 8
  br label %101

88:                                               ; preds = %78, %67
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %90 = call i32 @SVN_ERR(%struct.TYPE_22__* %89)
  %91 = load i32*, i32** %12, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %99

93:                                               ; preds = %88
  %94 = load i8*, i8** %7, align 8
  %95 = load i32, i32* @FALSE, align 4
  %96 = load i32*, i32** %9, align 8
  %97 = call %struct.TYPE_22__* @svn_io_set_file_read_write(i8* %94, i32 %95, i32* %96)
  %98 = call i32 @SVN_ERR(%struct.TYPE_22__* %97)
  br label %99

99:                                               ; preds = %93, %88
  %100 = load %struct.TYPE_22__*, %struct.TYPE_22__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_22__* %100, %struct.TYPE_22__** %5, align 8
  br label %101

101:                                              ; preds = %99, %84, %58, %55
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  ret %struct.TYPE_22__* %102
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local i32 @SVN_ERR(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_22__* @svn_wc__write_check(i32, i32, i32*) #1

declare dso_local i32 @svn_dirent_dirname(i8*, i32*) #1

declare dso_local %struct.TYPE_22__* @svn_wc__db_lock_add(i32, i8*, %struct.TYPE_20__*, i32*) #1

declare dso_local %struct.TYPE_22__* @svn_error_trace(%struct.TYPE_22__*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_22__* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local %struct.TYPE_22__* @svn_wc__internal_propget(i32**, i32, i8*, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_22__* @svn_io_set_file_read_write(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
