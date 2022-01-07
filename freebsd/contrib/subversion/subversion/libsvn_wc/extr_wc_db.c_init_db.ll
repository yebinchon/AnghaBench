; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_init_db.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_init_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STMT_CREATE_SCHEMA = common dso_local global i32 0, align 4
@STMT_INSERT_WCROOT = common dso_local global i32 0, align 4
@svn_wc__db_status_normal = common dso_local global i32 0, align 4
@svn_wc__db_status_incomplete = common dso_local global i32 0, align 4
@STMT_INSERT_NODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"isdsisrtst\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SVN_VA_NULL = common dso_local global i32 0, align 4
@presence_map = common dso_local global i32 0, align 4
@depth_map = common dso_local global i32 0, align 4
@kind_map = common dso_local global i32 0, align 4
@svn_node_dir = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, i8*, i8*, i8*, i64, i32, i32*)* @init_db to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @init_db(i32* %0, i32* %1, i32* %2, i8* %3, i8* %4, i8* %5, i64 %6, i32 %7, i32* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store i64 %6, i64* %16, align 8
  store i32 %7, i32* %17, align 4
  store i32* %8, i32** %18, align 8
  %21 = load i32*, i32** %12, align 8
  %22 = load i32, i32* @STMT_CREATE_SCHEMA, align 4
  %23 = call i32 @svn_sqlite__exec_statements(i32* %21, i32 %22)
  %24 = call i32 @SVN_ERR(i32 %23)
  %25 = load i32*, i32** %12, align 8
  %26 = load i32*, i32** %18, align 8
  %27 = call i32 @svn_wc__db_install_schema_statistics(i32* %25, i32* %26)
  %28 = call i32 @SVN_ERR(i32 %27)
  %29 = load i32*, i32** %10, align 8
  %30 = load i8*, i8** %13, align 8
  %31 = load i8*, i8** %14, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = load i32*, i32** %18, align 8
  %34 = call i32 @create_repos_id(i32* %29, i8* %30, i8* %31, i32* %32, i32* %33)
  %35 = call i32 @SVN_ERR(i32 %34)
  %36 = load i32*, i32** %12, align 8
  %37 = load i32, i32* @STMT_INSERT_WCROOT, align 4
  %38 = call i32 @svn_sqlite__get_statement(i32** %19, i32* %36, i32 %37)
  %39 = call i32 @SVN_ERR(i32 %38)
  %40 = load i32*, i32** %11, align 8
  %41 = load i32*, i32** %19, align 8
  %42 = call i32 @svn_sqlite__insert(i32* %40, i32* %41)
  %43 = call i32 @SVN_ERR(i32 %42)
  %44 = load i8*, i8** %15, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %77

46:                                               ; preds = %9
  %47 = load i32, i32* @svn_wc__db_status_normal, align 4
  store i32 %47, i32* %20, align 4
  %48 = load i64, i64* %16, align 8
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* @svn_wc__db_status_incomplete, align 4
  store i32 %51, i32* %20, align 4
  br label %52

52:                                               ; preds = %50, %46
  %53 = load i32*, i32** %12, align 8
  %54 = load i32, i32* @STMT_INSERT_NODE, align 4
  %55 = call i32 @svn_sqlite__get_statement(i32** %19, i32* %53, i32 %54)
  %56 = call i32 @SVN_ERR(i32 %55)
  %57 = load i32*, i32** %19, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @SVN_VA_NULL, align 4
  %61 = load i32*, i32** %10, align 8
  %62 = load i32, i32* %61, align 4
  %63 = load i8*, i8** %15, align 8
  %64 = load i64, i64* %16, align 8
  %65 = load i32, i32* @presence_map, align 4
  %66 = load i32, i32* %20, align 4
  %67 = load i32, i32* @depth_map, align 4
  %68 = load i32, i32* %17, align 4
  %69 = call i32 @svn_token__to_word(i32 %67, i32 %68)
  %70 = load i32, i32* @kind_map, align 4
  %71 = load i32, i32* @svn_node_dir, align 4
  %72 = call i32 @svn_sqlite__bindf(i32* %57, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %59, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 %60, i32 %62, i8* %63, i64 %64, i32 %65, i32 %66, i32 %69, i32 %70, i32 %71)
  %73 = call i32 @SVN_ERR(i32 %72)
  %74 = load i32*, i32** %19, align 8
  %75 = call i32 @svn_sqlite__insert(i32* null, i32* %74)
  %76 = call i32 @SVN_ERR(i32 %75)
  br label %77

77:                                               ; preds = %52, %9
  %78 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %78
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_sqlite__exec_statements(i32*, i32) #1

declare dso_local i32 @svn_wc__db_install_schema_statistics(i32*, i32*) #1

declare dso_local i32 @create_repos_id(i32*, i8*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32*, i32) #1

declare dso_local i32 @svn_sqlite__insert(i32*, i32*) #1

declare dso_local i32 @svn_sqlite__bindf(i32*, i8*, i32, i8*, i32, i32, i32, i8*, i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @svn_token__to_word(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
