; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_clear_or_remove_actual.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_clear_or_remove_actual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@STMT_SELECT_NODE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"is\00", align 1
@presence_map = common dso_local global i32 0, align 4
@svn_wc__db_status_base_deleted = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@STMT_CLEAR_ACTUAL_NODE_LEAVING_CONFLICT = common dso_local global i32 0, align 4
@STMT_DELETE_ACTUAL_EMPTY = common dso_local global i32 0, align 4
@STMT_DELETE_ACTUAL_NODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_3__*, i8*, i32, i32*)* @clear_or_remove_actual to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @clear_or_remove_actual(%struct.TYPE_3__* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* %13, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @STMT_SELECT_NODE_INFO, align 4
  %20 = call i32 @svn_sqlite__get_statement(i32** %10, i32 %18, i32 %19)
  %21 = call i32 @SVN_ERR(i32 %20)
  %22 = load i32*, i32** %10, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @svn_sqlite__bindf(i32* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %25, i8* %26)
  %28 = call i32 @SVN_ERR(i32 %27)
  %29 = load i32*, i32** %10, align 8
  %30 = call i32 @svn_sqlite__step(i32* %11, i32* %29)
  %31 = call i32 @SVN_ERR(i32 %30)
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %66

34:                                               ; preds = %4
  %35 = load i32*, i32** %10, align 8
  %36 = call i32 @svn_sqlite__column_int(i32* %35, i32 0)
  %37 = load i32, i32* %8, align 4
  %38 = icmp sgt i32 %36, %37
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %12, align 4
  %40 = load i32*, i32** %10, align 8
  %41 = load i32, i32* @presence_map, align 4
  %42 = call i64 @svn_sqlite__column_token(i32* %40, i32 3, i32 %41)
  store i64 %42, i64* %14, align 8
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %65

45:                                               ; preds = %34
  %46 = load i64, i64* %14, align 8
  %47 = load i64, i64* @svn_wc__db_status_base_deleted, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %65

49:                                               ; preds = %45
  %50 = load i32, i32* @TRUE, align 4
  store i32 %50, i32* %13, align 4
  %51 = load i32*, i32** %10, align 8
  %52 = call i32 @svn_sqlite__step(i32* %11, i32* %51)
  %53 = call i32 @SVN_ERR(i32 %52)
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %49
  %57 = load i32*, i32** %10, align 8
  %58 = call i32 @svn_sqlite__column_int(i32* %57, i32 0)
  %59 = load i32, i32* %8, align 4
  %60 = icmp sgt i32 %58, %59
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %12, align 4
  br label %64

62:                                               ; preds = %49
  %63 = load i32, i32* @FALSE, align 4
  store i32 %63, i32* %12, align 4
  br label %64

64:                                               ; preds = %62, %56
  br label %65

65:                                               ; preds = %64, %45, %34
  br label %68

66:                                               ; preds = %4
  %67 = load i32, i32* @FALSE, align 4
  store i32 %67, i32* %12, align 4
  br label %68

68:                                               ; preds = %66, %65
  %69 = load i32*, i32** %10, align 8
  %70 = call i32 @svn_sqlite__reset(i32* %69)
  %71 = call i32 @SVN_ERR(i32 %70)
  %72 = load i32, i32* %12, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %75, i32** %5, align 8
  br label %131

76:                                               ; preds = %68
  %77 = load i32, i32* %13, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %112

79:                                               ; preds = %76
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @STMT_CLEAR_ACTUAL_NODE_LEAVING_CONFLICT, align 4
  %84 = call i32 @svn_sqlite__get_statement(i32** %10, i32 %82, i32 %83)
  %85 = call i32 @SVN_ERR(i32 %84)
  %86 = load i32*, i32** %10, align 8
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i8*, i8** %7, align 8
  %91 = call i32 @svn_sqlite__bindf(i32* %86, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %89, i8* %90)
  %92 = call i32 @SVN_ERR(i32 %91)
  %93 = load i32*, i32** %10, align 8
  %94 = call i32 @svn_sqlite__step_done(i32* %93)
  %95 = call i32 @SVN_ERR(i32 %94)
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @STMT_DELETE_ACTUAL_EMPTY, align 4
  %100 = call i32 @svn_sqlite__get_statement(i32** %10, i32 %98, i32 %99)
  %101 = call i32 @SVN_ERR(i32 %100)
  %102 = load i32*, i32** %10, align 8
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i8*, i8** %7, align 8
  %107 = call i32 @svn_sqlite__bindf(i32* %102, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %105, i8* %106)
  %108 = call i32 @SVN_ERR(i32 %107)
  %109 = load i32*, i32** %10, align 8
  %110 = call i32 @svn_sqlite__step_done(i32* %109)
  %111 = call i32 @SVN_ERR(i32 %110)
  br label %129

112:                                              ; preds = %76
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @STMT_DELETE_ACTUAL_NODE, align 4
  %117 = call i32 @svn_sqlite__get_statement(i32** %10, i32 %115, i32 %116)
  %118 = call i32 @SVN_ERR(i32 %117)
  %119 = load i32*, i32** %10, align 8
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i8*, i8** %7, align 8
  %124 = call i32 @svn_sqlite__bindf(i32* %119, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %122, i8* %123)
  %125 = call i32 @SVN_ERR(i32 %124)
  %126 = load i32*, i32** %10, align 8
  %127 = call i32 @svn_sqlite__step_done(i32* %126)
  %128 = call i32 @SVN_ERR(i32 %127)
  br label %129

129:                                              ; preds = %112, %79
  %130 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %130, i32** %5, align 8
  br label %131

131:                                              ; preds = %129, %74
  %132 = load i32*, i32** %5, align 8
  ret i32* %132
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32, i32) #1

declare dso_local i32 @svn_sqlite__bindf(i32*, i8*, i32, i8*) #1

declare dso_local i32 @svn_sqlite__step(i32*, i32*) #1

declare dso_local i32 @svn_sqlite__column_int(i32*, i32) #1

declare dso_local i64 @svn_sqlite__column_token(i32*, i32, i32) #1

declare dso_local i32 @svn_sqlite__reset(i32*) #1

declare dso_local i32 @svn_sqlite__step_done(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
