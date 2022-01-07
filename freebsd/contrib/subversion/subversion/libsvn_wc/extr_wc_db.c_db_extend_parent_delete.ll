; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_db_extend_parent_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_db_extend_parent_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@STMT_SELECT_LOWEST_WORKING_NODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"isd\00", align 1
@STMT_INSTALL_WORKING_NODE_FOR_DELETE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"isdst\00", align 1
@kind_map = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_3__*, i8*, i32, i32, i32*)* @db_extend_parent_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @db_extend_parent_delete(%struct.TYPE_3__* %0, i8* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = call i8* @svn_relpath_dirname(i8* %16, i32* %17)
  store i8* %18, i8** %14, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = call i32 @SVN_ERR_ASSERT(i8 signext %21)
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @STMT_SELECT_LOWEST_WORKING_NODE, align 4
  %27 = call i32 @svn_sqlite__get_statement(i32** %12, i32 %25, i32 %26)
  %28 = call i32 @SVN_ERR(i32 %27)
  %29 = load i32*, i32** %12, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %14, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 (i32*, i8*, i32, i8*, i32, ...) @svn_sqlite__bindf(i32* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %32, i8* %33, i32 %34)
  %36 = call i32 @SVN_ERR(i32 %35)
  %37 = load i32*, i32** %12, align 8
  %38 = call i32 @svn_sqlite__step(i64* %11, i32* %37)
  %39 = call i32 @SVN_ERR(i32 %38)
  %40 = load i64, i64* %11, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %5
  %43 = load i32*, i32** %12, align 8
  %44 = call i32 @svn_sqlite__column_int(i32* %43, i32 0)
  store i32 %44, i32* %13, align 4
  br label %45

45:                                               ; preds = %42, %5
  %46 = load i32*, i32** %12, align 8
  %47 = call i32 @svn_sqlite__reset(i32* %46)
  %48 = call i32 @SVN_ERR(i32 %47)
  %49 = load i64, i64* %11, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %100

51:                                               ; preds = %45
  %52 = load i32*, i32** %12, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i8*, i8** %7, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 (i32*, i8*, i32, i8*, i32, ...) @svn_sqlite__bindf(i32* %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %55, i8* %56, i32 %57)
  %59 = call i32 @SVN_ERR(i32 %58)
  %60 = load i32*, i32** %12, align 8
  %61 = call i32 @svn_sqlite__step(i64* %11, i32* %60)
  %62 = call i32 @SVN_ERR(i32 %61)
  %63 = load i64, i64* %11, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %51
  %66 = load i32*, i32** %12, align 8
  %67 = call i32 @svn_sqlite__column_int(i32* %66, i32 0)
  store i32 %67, i32* %15, align 4
  br label %68

68:                                               ; preds = %65, %51
  %69 = load i32*, i32** %12, align 8
  %70 = call i32 @svn_sqlite__reset(i32* %69)
  %71 = call i32 @SVN_ERR(i32 %70)
  %72 = load i64, i64* %11, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* %15, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %99

78:                                               ; preds = %74, %68
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @STMT_INSTALL_WORKING_NODE_FOR_DELETE, align 4
  %83 = call i32 @svn_sqlite__get_statement(i32** %12, i32 %81, i32 %82)
  %84 = call i32 @SVN_ERR(i32 %83)
  %85 = load i32*, i32** %12, align 8
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i8*, i8** %7, align 8
  %90 = load i32, i32* %13, align 4
  %91 = load i8*, i8** %14, align 8
  %92 = load i32, i32* @kind_map, align 4
  %93 = load i32, i32* %8, align 4
  %94 = call i32 (i32*, i8*, i32, i8*, i32, ...) @svn_sqlite__bindf(i32* %85, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %88, i8* %89, i32 %90, i8* %91, i32 %92, i32 %93)
  %95 = call i32 @SVN_ERR(i32 %94)
  %96 = load i32*, i32** %12, align 8
  %97 = call i32 @svn_sqlite__update(i32* null, i32* %96)
  %98 = call i32 @SVN_ERR(i32 %97)
  br label %99

99:                                               ; preds = %78, %74
  br label %100

100:                                              ; preds = %99, %45
  %101 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %101
}

declare dso_local i8* @svn_relpath_dirname(i8*, i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i8 signext) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32, i32) #1

declare dso_local i32 @svn_sqlite__bindf(i32*, i8*, i32, i8*, i32, ...) #1

declare dso_local i32 @svn_sqlite__step(i64*, i32*) #1

declare dso_local i32 @svn_sqlite__column_int(i32*, i32) #1

declare dso_local i32 @svn_sqlite__reset(i32*) #1

declare dso_local i32 @svn_sqlite__update(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
