; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_info_below_working.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_info_below_working.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@svn_wc__db_status_normal = common dso_local global i32 0, align 4
@STMT_SELECT_NODE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"is\00", align 1
@presence_map = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i64*, i64*, i32*, %struct.TYPE_3__*, i8*, i32, i32*)* @info_below_working to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @info_below_working(i64* %0, i64* %1, i32* %2, %struct.TYPE_3__* %3, i8* %4, i32 %5, i32* %6) #0 {
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i64* %0, i64** %8, align 8
  store i64* %1, i64** %9, align 8
  store i32* %2, i32** %10, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  %18 = load i64, i64* @FALSE, align 8
  %19 = load i64*, i64** %9, align 8
  store i64 %18, i64* %19, align 8
  %20 = load i64*, i64** %8, align 8
  store i64 %18, i64* %20, align 8
  %21 = load i32, i32* @svn_wc__db_status_normal, align 4
  %22 = load i32*, i32** %10, align 8
  store i32 %21, i32* %22, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @STMT_SELECT_NODE_INFO, align 4
  %27 = call i32 @svn_sqlite__get_statement(i32** %15, i32 %25, i32 %26)
  %28 = call i32 @SVN_ERR(i32 %27)
  %29 = load i32*, i32** %15, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %12, align 8
  %34 = call i32 @svn_sqlite__bindf(i32* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %32, i8* %33)
  %35 = call i32 @SVN_ERR(i32 %34)
  %36 = load i32*, i32** %15, align 8
  %37 = call i32 @svn_sqlite__step(i64* %16, i32* %36)
  %38 = call i32 @SVN_ERR(i32 %37)
  %39 = load i32, i32* %13, align 4
  %40 = icmp sge i32 %39, 0
  br i1 %40, label %41, label %57

41:                                               ; preds = %7
  br label %42

42:                                               ; preds = %52, %41
  %43 = load i64, i64* %16, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load i32*, i32** %15, align 8
  %47 = call i32 @svn_sqlite__column_int(i32* %46, i32 0)
  %48 = load i32, i32* %13, align 4
  %49 = icmp sgt i32 %47, %48
  br label %50

50:                                               ; preds = %45, %42
  %51 = phi i1 [ false, %42 ], [ %49, %45 ]
  br i1 %51, label %52, label %56

52:                                               ; preds = %50
  %53 = load i32*, i32** %15, align 8
  %54 = call i32 @svn_sqlite__step(i64* %16, i32* %53)
  %55 = call i32 @SVN_ERR(i32 %54)
  br label %42

56:                                               ; preds = %50
  br label %57

57:                                               ; preds = %56, %7
  %58 = load i64, i64* %16, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %91

60:                                               ; preds = %57
  %61 = load i32*, i32** %15, align 8
  %62 = call i32 @svn_sqlite__step(i64* %16, i32* %61)
  %63 = call i32 @SVN_ERR(i32 %62)
  %64 = load i64, i64* %16, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %60
  %67 = load i32*, i32** %15, align 8
  %68 = load i32, i32* @presence_map, align 4
  %69 = call i32 @svn_sqlite__column_token(i32* %67, i32 3, i32 %68)
  %70 = load i32*, i32** %10, align 8
  store i32 %69, i32* %70, align 4
  br label %71

71:                                               ; preds = %66, %60
  br label %72

72:                                               ; preds = %86, %71
  %73 = load i64, i64* %16, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %90

75:                                               ; preds = %72
  %76 = load i32*, i32** %15, align 8
  %77 = call i32 @svn_sqlite__column_int(i32* %76, i32 0)
  store i32 %77, i32* %17, align 4
  %78 = load i32, i32* %17, align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load i64, i64* @TRUE, align 8
  %82 = load i64*, i64** %9, align 8
  store i64 %81, i64* %82, align 8
  br label %86

83:                                               ; preds = %75
  %84 = load i64, i64* @TRUE, align 8
  %85 = load i64*, i64** %8, align 8
  store i64 %84, i64* %85, align 8
  br label %86

86:                                               ; preds = %83, %80
  %87 = load i32*, i32** %15, align 8
  %88 = call i32 @svn_sqlite__step(i64* %16, i32* %87)
  %89 = call i32 @SVN_ERR(i32 %88)
  br label %72

90:                                               ; preds = %72
  br label %91

91:                                               ; preds = %90, %57
  %92 = load i32*, i32** %15, align 8
  %93 = call i32 @svn_sqlite__reset(i32* %92)
  %94 = call i32 @SVN_ERR(i32 %93)
  %95 = load i64*, i64** %9, align 8
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %91
  %99 = load i32*, i32** %10, align 8
  %100 = load i32*, i32** %10, align 8
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @convert_to_working_status(i32* %99, i32 %101)
  %103 = call i32 @SVN_ERR(i32 %102)
  br label %104

104:                                              ; preds = %98, %91
  %105 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %105
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32, i32) #1

declare dso_local i32 @svn_sqlite__bindf(i32*, i8*, i32, i8*) #1

declare dso_local i32 @svn_sqlite__step(i64*, i32*) #1

declare dso_local i32 @svn_sqlite__column_int(i32*, i32) #1

declare dso_local i32 @svn_sqlite__column_token(i32*, i32, i32) #1

declare dso_local i32 @svn_sqlite__reset(i32*) #1

declare dso_local i32 @convert_to_working_status(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
