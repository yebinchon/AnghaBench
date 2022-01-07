; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_db_read_pristine_props.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_db_read_pristine_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@STMT_SELECT_NODE_PROPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"is\00", align 1
@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"The node '%s' was not found.\00", align 1
@presence_map = common dso_local global i32 0, align 4
@svn_wc__db_status_base_deleted = common dso_local global i64 0, align 8
@svn_wc__db_status_normal = common dso_local global i64 0, align 8
@svn_wc__db_status_incomplete = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_ERR_WC_PATH_UNEXPECTED_STATUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"The node '%s' has a status that has no properties.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, %struct.TYPE_4__*, i8*, i64, i32*, i32*)* @db_read_pristine_props to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @db_read_pristine_props(i32** %0, %struct.TYPE_4__* %1, i8* %2, i64 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  store i32** %0, i32*** %8, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @STMT_SELECT_NODE_PROPS, align 4
  %22 = call i32 @svn_sqlite__get_statement(i32** %14, i32 %20, i32 %21)
  %23 = call i32 @SVN_ERR(i32 %22)
  %24 = load i32*, i32** %14, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i8*, i8** %10, align 8
  %29 = call i32 @svn_sqlite__bindf(i32* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %27, i8* %28)
  %30 = call i32 @SVN_ERR(i32 %29)
  %31 = load i32*, i32** %14, align 8
  %32 = call i32 @svn_sqlite__step(i64* %15, i32* %31)
  %33 = call i32 @SVN_ERR(i32 %32)
  %34 = load i64, i64* %15, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %6
  %37 = load i32, i32* @SVN_ERR_WC_PATH_NOT_FOUND, align 4
  %38 = load i32*, i32** %14, align 8
  %39 = call i32 @svn_sqlite__reset(i32* %38)
  %40 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = load i32*, i32** %13, align 8
  %44 = call i32 @path_for_error_message(%struct.TYPE_4__* %41, i8* %42, i32* %43)
  %45 = call i32* @svn_error_createf(i32 %37, i32 %39, i32 %40, i32 %44)
  store i32* %45, i32** %7, align 8
  br label %103

46:                                               ; preds = %6
  %47 = load i32*, i32** %14, align 8
  %48 = load i32, i32* @presence_map, align 4
  %49 = call i64 @svn_sqlite__column_token(i32* %47, i32 1, i32 %48)
  store i64 %49, i64* %16, align 8
  %50 = load i64, i64* %16, align 8
  %51 = load i64, i64* @svn_wc__db_status_base_deleted, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %46
  %54 = load i64, i64* %11, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %53
  %57 = load i32*, i32** %14, align 8
  %58 = call i32 @svn_sqlite__step(i64* %15, i32* %57)
  %59 = call i32 @SVN_ERR(i32 %58)
  %60 = load i64, i64* %15, align 8
  %61 = call i32 @SVN_ERR_ASSERT(i64 %60)
  %62 = load i32*, i32** %14, align 8
  %63 = load i32, i32* @presence_map, align 4
  %64 = call i64 @svn_sqlite__column_token(i32* %62, i32 1, i32 %63)
  store i64 %64, i64* %16, align 8
  br label %65

65:                                               ; preds = %56, %53, %46
  %66 = load i64, i64* %16, align 8
  %67 = load i64, i64* @svn_wc__db_status_normal, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = load i64, i64* %16, align 8
  %71 = load i64, i64* @svn_wc__db_status_incomplete, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %93

73:                                               ; preds = %69, %65
  %74 = load i32**, i32*** %8, align 8
  %75 = load i32*, i32** %14, align 8
  %76 = load i32*, i32** %12, align 8
  %77 = load i32*, i32** %13, align 8
  %78 = call i32* @svn_sqlite__column_properties(i32** %74, i32* %75, i32 0, i32* %76, i32* %77)
  store i32* %78, i32** %17, align 8
  %79 = load i32*, i32** %17, align 8
  %80 = load i32*, i32** %14, align 8
  %81 = call i32 @svn_sqlite__reset(i32* %80)
  %82 = call i32 @svn_error_compose_create(i32* %79, i32 %81)
  %83 = call i32 @SVN_ERR(i32 %82)
  %84 = load i32**, i32*** %8, align 8
  %85 = load i32*, i32** %84, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %91, label %87

87:                                               ; preds = %73
  %88 = load i32*, i32** %12, align 8
  %89 = call i32* @apr_hash_make(i32* %88)
  %90 = load i32**, i32*** %8, align 8
  store i32* %89, i32** %90, align 8
  br label %91

91:                                               ; preds = %87, %73
  %92 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %92, i32** %7, align 8
  br label %103

93:                                               ; preds = %69
  %94 = load i32, i32* @SVN_ERR_WC_PATH_UNEXPECTED_STATUS, align 4
  %95 = load i32*, i32** %14, align 8
  %96 = call i32 @svn_sqlite__reset(i32* %95)
  %97 = call i32 @_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %99 = load i8*, i8** %10, align 8
  %100 = load i32*, i32** %13, align 8
  %101 = call i32 @path_for_error_message(%struct.TYPE_4__* %98, i8* %99, i32* %100)
  %102 = call i32* @svn_error_createf(i32 %94, i32 %96, i32 %97, i32 %101)
  store i32* %102, i32** %7, align 8
  br label %103

103:                                              ; preds = %93, %91, %36
  %104 = load i32*, i32** %7, align 8
  ret i32* %104
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32, i32) #1

declare dso_local i32 @svn_sqlite__bindf(i32*, i8*, i32, i8*) #1

declare dso_local i32 @svn_sqlite__step(i64*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32, i32, i32) #1

declare dso_local i32 @svn_sqlite__reset(i32*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @path_for_error_message(%struct.TYPE_4__*, i8*, i32*) #1

declare dso_local i64 @svn_sqlite__column_token(i32*, i32, i32) #1

declare dso_local i32 @SVN_ERR_ASSERT(i64) #1

declare dso_local i32* @svn_sqlite__column_properties(i32**, i32*, i32, i32*, i32*) #1

declare dso_local i32 @svn_error_compose_create(i32*, i32) #1

declare dso_local i32* @apr_hash_make(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
