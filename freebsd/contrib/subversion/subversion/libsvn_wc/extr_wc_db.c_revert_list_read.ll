; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_revert_list_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_revert_list_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@svn_node_unknown = common dso_local global i32 0, align 4
@STMT_SELECT_REVERT_LIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"s\00", align 1
@TRUE = common dso_local global i32 0, align 4
@kind_map = common dso_local global i32 0, align 4
@STMT_DELETE_REVERT_LIST = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32**, i32*, i32*, %struct.TYPE_3__*, i8*, i32*, i32*, i32*)* @revert_list_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @revert_list_read(i32* %0, i32** %1, i32* %2, i32* %3, %struct.TYPE_3__* %4, i8* %5, i32* %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_3__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32** %1, i32*** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store %struct.TYPE_3__* %4, %struct.TYPE_3__** %14, align 8
  store i8* %5, i8** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32* %8, i32** %18, align 8
  %27 = load i32, i32* @FALSE, align 4
  %28 = load i32*, i32** %10, align 8
  store i32 %27, i32* %28, align 4
  %29 = load i32**, i32*** %11, align 8
  store i32* null, i32** %29, align 8
  %30 = load i32, i32* @FALSE, align 4
  %31 = load i32*, i32** %12, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* @svn_node_unknown, align 4
  %33 = load i32*, i32** %13, align 8
  store i32 %32, i32* %33, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @STMT_SELECT_REVERT_LIST, align 4
  %38 = call i32 @svn_sqlite__get_statement(i32** %19, i32 %36, i32 %37)
  %39 = call i32 @SVN_ERR(i32 %38)
  %40 = load i32*, i32** %19, align 8
  %41 = load i8*, i8** %15, align 8
  %42 = call i32 @svn_sqlite__bindf(i32* %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* %41)
  %43 = call i32 @SVN_ERR(i32 %42)
  %44 = load i32*, i32** %19, align 8
  %45 = call i32 @svn_sqlite__step(i32* %20, i32* %44)
  %46 = call i32 @SVN_ERR(i32 %45)
  %47 = load i32, i32* %20, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %114

49:                                               ; preds = %9
  %50 = load i32*, i32** %19, align 8
  %51 = call i32 @svn_sqlite__column_boolean(i32* %50, i32 0)
  store i32 %51, i32* %21, align 4
  %52 = load i32, i32* @FALSE, align 4
  store i32 %52, i32* %22, align 4
  %53 = load i32, i32* %21, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %87

55:                                               ; preds = %49
  %56 = load i32*, i32** %19, align 8
  %57 = load i32*, i32** %18, align 8
  %58 = call i8* @svn_sqlite__column_blob(i32* %56, i32 5, i32* %23, i32* %57)
  store i8* %58, i8** %24, align 8
  %59 = load i8*, i8** %24, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %76

61:                                               ; preds = %55
  %62 = load i8*, i8** %24, align 8
  %63 = load i32, i32* %23, align 4
  %64 = load i32*, i32** %18, align 8
  %65 = call i32* @svn_skel__parse(i8* %62, i32 %63, i32* %64)
  store i32* %65, i32** %25, align 8
  %66 = load i32**, i32*** %11, align 8
  %67 = load i32*, i32** %16, align 8
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %25, align 8
  %72 = load i32*, i32** %17, align 8
  %73 = load i32*, i32** %18, align 8
  %74 = call i32 @svn_wc__conflict_read_markers(i32** %66, i32* %67, i32 %70, i32* %71, i32* %72, i32* %73)
  %75 = call i32 @SVN_ERR(i32 %74)
  br label %76

76:                                               ; preds = %61, %55
  %77 = load i32*, i32** %19, align 8
  %78 = call i32 @svn_sqlite__column_is_null(i32* %77, i32 1)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %76
  %81 = load i32, i32* @TRUE, align 4
  %82 = load i32*, i32** %10, align 8
  store i32 %81, i32* %82, align 4
  br label %83

83:                                               ; preds = %80, %76
  %84 = load i32*, i32** %19, align 8
  %85 = call i32 @svn_sqlite__step(i32* %22, i32* %84)
  %86 = call i32 @SVN_ERR(i32 %85)
  br label %87

87:                                               ; preds = %83, %49
  %88 = load i32, i32* %21, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load i32, i32* %22, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %113

93:                                               ; preds = %90, %87
  %94 = load i32, i32* @TRUE, align 4
  %95 = load i32*, i32** %10, align 8
  store i32 %94, i32* %95, align 4
  %96 = load i32*, i32** %19, align 8
  %97 = call i32 @svn_sqlite__column_is_null(i32* %96, i32 4)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %108, label %99

99:                                               ; preds = %93
  %100 = load i32*, i32** %19, align 8
  %101 = call i32 @svn_sqlite__column_int(i32* %100, i32 3)
  store i32 %101, i32* %26, align 4
  %102 = load i32, i32* %26, align 4
  %103 = load i8*, i8** %15, align 8
  %104 = call i32 @relpath_depth(i8* %103)
  %105 = icmp eq i32 %102, %104
  %106 = zext i1 %105 to i32
  %107 = load i32*, i32** %12, align 8
  store i32 %106, i32* %107, align 4
  br label %108

108:                                              ; preds = %99, %93
  %109 = load i32*, i32** %19, align 8
  %110 = load i32, i32* @kind_map, align 4
  %111 = call i32 @svn_sqlite__column_token(i32* %109, i32 2, i32 %110)
  %112 = load i32*, i32** %13, align 8
  store i32 %111, i32* %112, align 4
  br label %113

113:                                              ; preds = %108, %90
  br label %114

114:                                              ; preds = %113, %9
  %115 = load i32*, i32** %19, align 8
  %116 = call i32 @svn_sqlite__reset(i32* %115)
  %117 = call i32 @SVN_ERR(i32 %116)
  %118 = load i32, i32* %20, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %134

120:                                              ; preds = %114
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @STMT_DELETE_REVERT_LIST, align 4
  %125 = call i32 @svn_sqlite__get_statement(i32** %19, i32 %123, i32 %124)
  %126 = call i32 @SVN_ERR(i32 %125)
  %127 = load i32*, i32** %19, align 8
  %128 = load i8*, i8** %15, align 8
  %129 = call i32 @svn_sqlite__bindf(i32* %127, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* %128)
  %130 = call i32 @SVN_ERR(i32 %129)
  %131 = load i32*, i32** %19, align 8
  %132 = call i32 @svn_sqlite__step_done(i32* %131)
  %133 = call i32 @SVN_ERR(i32 %132)
  br label %134

134:                                              ; preds = %120, %114
  %135 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %135
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32, i32) #1

declare dso_local i32 @svn_sqlite__bindf(i32*, i8*, i8*) #1

declare dso_local i32 @svn_sqlite__step(i32*, i32*) #1

declare dso_local i32 @svn_sqlite__column_boolean(i32*, i32) #1

declare dso_local i8* @svn_sqlite__column_blob(i32*, i32, i32*, i32*) #1

declare dso_local i32* @svn_skel__parse(i8*, i32, i32*) #1

declare dso_local i32 @svn_wc__conflict_read_markers(i32**, i32*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @svn_sqlite__column_is_null(i32*, i32) #1

declare dso_local i32 @svn_sqlite__column_int(i32*, i32) #1

declare dso_local i32 @relpath_depth(i8*) #1

declare dso_local i32 @svn_sqlite__column_token(i32*, i32, i32) #1

declare dso_local i32 @svn_sqlite__reset(i32*) #1

declare dso_local i32 @svn_sqlite__step_done(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
