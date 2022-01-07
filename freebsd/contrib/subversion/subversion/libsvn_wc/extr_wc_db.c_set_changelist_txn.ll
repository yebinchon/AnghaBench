; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_set_changelist_txn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_set_changelist_txn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.set_changelist_baton_t = type { i64, i32, i32 }

@STMT_INSERT_ACTUAL_EMPTIES_FILES = common dso_local global i32 0, align 4
@STMT_CREATE_CHANGELIST_LIST = common dso_local global i32 0, align 4
@STMT_CREATE_CHANGELIST_TRIGGER = common dso_local global i32 0, align 4
@STMT_UPDATE_ACTUAL_CHANGELISTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"iss\00", align 1
@STMT_MARK_SKIPPED_CHANGELIST_DIRS = common dso_local global i32 0, align 4
@STMT_DELETE_ACTUAL_EMPTIES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"is\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, %struct.TYPE_4__*, i8*, i32*)* @set_changelist_txn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @set_changelist_txn(i8* %0, %struct.TYPE_4__* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.set_changelist_baton_t*, align 8
  %10 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.set_changelist_baton_t*
  store %struct.set_changelist_baton_t* %12, %struct.set_changelist_baton_t** %9, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load %struct.set_changelist_baton_t*, %struct.set_changelist_baton_t** %9, align 8
  %16 = getelementptr inbounds %struct.set_changelist_baton_t, %struct.set_changelist_baton_t* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.set_changelist_baton_t*, %struct.set_changelist_baton_t** %9, align 8
  %19 = getelementptr inbounds %struct.set_changelist_baton_t, %struct.set_changelist_baton_t* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = call i32 @populate_targets_tree(%struct.TYPE_4__* %13, i8* %14, i32 %17, i32 %20, i32* %21)
  %23 = call i32 @SVN_ERR(i32 %22)
  %24 = load %struct.set_changelist_baton_t*, %struct.set_changelist_baton_t** %9, align 8
  %25 = getelementptr inbounds %struct.set_changelist_baton_t, %struct.set_changelist_baton_t* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @STMT_INSERT_ACTUAL_EMPTIES_FILES, align 4
  %33 = call i32 @svn_sqlite__get_statement(i32** %10, i32 %31, i32 %32)
  %34 = call i32 @SVN_ERR(i32 %33)
  %35 = load i32*, i32** %10, align 8
  %36 = call i32 @svn_sqlite__step_done(i32* %35)
  %37 = call i32 @SVN_ERR(i32 %36)
  br label %38

38:                                               ; preds = %28, %4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @STMT_CREATE_CHANGELIST_LIST, align 4
  %43 = call i32 @svn_sqlite__exec_statements(i32 %41, i32 %42)
  %44 = call i32 @SVN_ERR(i32 %43)
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @STMT_CREATE_CHANGELIST_TRIGGER, align 4
  %49 = call i32 @svn_sqlite__exec_statements(i32 %47, i32 %48)
  %50 = call i32 @SVN_ERR(i32 %49)
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @STMT_UPDATE_ACTUAL_CHANGELISTS, align 4
  %55 = call i32 @svn_sqlite__get_statement(i32** %10, i32 %53, i32 %54)
  %56 = call i32 @SVN_ERR(i32 %55)
  %57 = load i32*, i32** %10, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i8*, i8** %7, align 8
  %62 = load %struct.set_changelist_baton_t*, %struct.set_changelist_baton_t** %9, align 8
  %63 = getelementptr inbounds %struct.set_changelist_baton_t, %struct.set_changelist_baton_t* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 (i32*, i8*, i32, i8*, ...) @svn_sqlite__bindf(i32* %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %60, i8* %61, i64 %64)
  %66 = call i32 @SVN_ERR(i32 %65)
  %67 = load i32*, i32** %10, align 8
  %68 = call i32 @svn_sqlite__step_done(i32* %67)
  %69 = call i32 @SVN_ERR(i32 %68)
  %70 = load %struct.set_changelist_baton_t*, %struct.set_changelist_baton_t** %9, align 8
  %71 = getelementptr inbounds %struct.set_changelist_baton_t, %struct.set_changelist_baton_t* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %94

74:                                               ; preds = %38
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @STMT_MARK_SKIPPED_CHANGELIST_DIRS, align 4
  %79 = call i32 @svn_sqlite__get_statement(i32** %10, i32 %77, i32 %78)
  %80 = call i32 @SVN_ERR(i32 %79)
  %81 = load i32*, i32** %10, align 8
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i8*, i8** %7, align 8
  %86 = load %struct.set_changelist_baton_t*, %struct.set_changelist_baton_t** %9, align 8
  %87 = getelementptr inbounds %struct.set_changelist_baton_t, %struct.set_changelist_baton_t* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = call i32 (i32*, i8*, i32, i8*, ...) @svn_sqlite__bindf(i32* %81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %84, i8* %85, i64 %88)
  %90 = call i32 @SVN_ERR(i32 %89)
  %91 = load i32*, i32** %10, align 8
  %92 = call i32 @svn_sqlite__step_done(i32* %91)
  %93 = call i32 @SVN_ERR(i32 %92)
  br label %94

94:                                               ; preds = %74, %38
  %95 = load %struct.set_changelist_baton_t*, %struct.set_changelist_baton_t** %9, align 8
  %96 = getelementptr inbounds %struct.set_changelist_baton_t, %struct.set_changelist_baton_t* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %116, label %99

99:                                               ; preds = %94
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @STMT_DELETE_ACTUAL_EMPTIES, align 4
  %104 = call i32 @svn_sqlite__get_statement(i32** %10, i32 %102, i32 %103)
  %105 = call i32 @SVN_ERR(i32 %104)
  %106 = load i32*, i32** %10, align 8
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i8*, i8** %7, align 8
  %111 = call i32 (i32*, i8*, i32, i8*, ...) @svn_sqlite__bindf(i32* %106, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %109, i8* %110)
  %112 = call i32 @SVN_ERR(i32 %111)
  %113 = load i32*, i32** %10, align 8
  %114 = call i32 @svn_sqlite__step_done(i32* %113)
  %115 = call i32 @SVN_ERR(i32 %114)
  br label %116

116:                                              ; preds = %99, %94
  %117 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %117
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @populate_targets_tree(%struct.TYPE_4__*, i8*, i32, i32, i32*) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32, i32) #1

declare dso_local i32 @svn_sqlite__step_done(i32*) #1

declare dso_local i32 @svn_sqlite__exec_statements(i32, i32) #1

declare dso_local i32 @svn_sqlite__bindf(i32*, i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
