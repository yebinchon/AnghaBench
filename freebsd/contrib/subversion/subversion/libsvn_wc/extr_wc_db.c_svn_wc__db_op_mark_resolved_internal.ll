; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_op_mark_resolved_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_op_mark_resolved_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@STMT_SELECT_ACTUAL_NODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"is\00", align 1
@STMT_SELECT_NODE_INFO = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"The node '%s' was not found.\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@STMT_UPDATE_ACTUAL_CONFLICT = common dso_local global i32 0, align 4
@STMT_DELETE_ACTUAL_EMPTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__db_op_mark_resolved_internal(%struct.TYPE_6__* %0, i8* %1, i32* %2, i64 %3, i64 %4, i64 %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32* %2, i32** %12, align 8
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32 0, i32* %20, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @STMT_SELECT_ACTUAL_NODE, align 4
  %30 = call i32 @svn_sqlite__get_statement(i32** %18, i32 %28, i32 %29)
  %31 = call i32 @SVN_ERR(i32 %30)
  %32 = load i32*, i32** %18, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %11, align 8
  %37 = call i32 @svn_sqlite__bindf(i32* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %35, i8* %36)
  %38 = call i32 @SVN_ERR(i32 %37)
  %39 = load i32*, i32** %18, align 8
  %40 = call i32 @svn_sqlite__step(i64* %19, i32* %39)
  %41 = call i32 @SVN_ERR(i32 %40)
  %42 = load i64, i64* %19, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %79, label %44

44:                                               ; preds = %8
  %45 = load i32*, i32** %18, align 8
  %46 = call i32 @svn_sqlite__reset(i32* %45)
  %47 = call i32 @SVN_ERR(i32 %46)
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @STMT_SELECT_NODE_INFO, align 4
  %52 = call i32 @svn_sqlite__get_statement(i32** %18, i32 %50, i32 %51)
  %53 = call i32 @SVN_ERR(i32 %52)
  %54 = load i32*, i32** %18, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i8*, i8** %11, align 8
  %59 = call i32 @svn_sqlite__bindf(i32* %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %57, i8* %58)
  %60 = call i32 @SVN_ERR(i32 %59)
  %61 = load i32*, i32** %18, align 8
  %62 = call i32 @svn_sqlite__step(i64* %19, i32* %61)
  %63 = call i32 @SVN_ERR(i32 %62)
  %64 = load i32*, i32** %18, align 8
  %65 = call i32 @svn_sqlite__reset(i32* %64)
  %66 = call i32 @SVN_ERR(i32 %65)
  %67 = load i64, i64* %19, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %44
  %70 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %70, i32** %9, align 8
  br label %170

71:                                               ; preds = %44
  %72 = load i32, i32* @SVN_ERR_WC_PATH_NOT_FOUND, align 4
  %73 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %75 = load i8*, i8** %11, align 8
  %76 = load i32*, i32** %17, align 8
  %77 = call i32 @path_for_error_message(%struct.TYPE_6__* %74, i8* %75, i32* %76)
  %78 = call i32* @svn_error_createf(i32 %72, i32* null, i32 %73, i32 %77)
  store i32* %78, i32** %9, align 8
  br label %170

79:                                               ; preds = %8
  %80 = load i32*, i32** %18, align 8
  %81 = load i32*, i32** %17, align 8
  %82 = call i8* @svn_sqlite__column_blob(i32* %80, i32 2, i32* %22, i32* %81)
  store i8* %82, i8** %23, align 8
  %83 = load i32*, i32** %18, align 8
  %84 = call i32 @svn_sqlite__reset(i32* %83)
  %85 = call i32 @SVN_ERR(i32 %84)
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %16, align 8
  %90 = load i32*, i32** %17, align 8
  %91 = call i32 @add_work_items(i32 %88, i32* %89, i32* %90)
  %92 = call i32 @SVN_ERR(i32 %91)
  %93 = load i8*, i8** %23, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %97, label %95

95:                                               ; preds = %79
  %96 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %96, i32** %9, align 8
  br label %170

97:                                               ; preds = %79
  %98 = load i8*, i8** %23, align 8
  %99 = load i32, i32* %22, align 4
  %100 = load i32*, i32** %17, align 8
  %101 = call i32* @svn_skel__parse(i8* %98, i32 %99, i32* %100)
  store i32* %101, i32** %24, align 8
  %102 = load i32*, i32** %24, align 8
  %103 = load i32*, i32** %12, align 8
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load i64, i64* %13, align 8
  %108 = load i64, i64* %14, align 8
  %109 = icmp ne i64 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* null
  %112 = load i64, i64* %15, align 8
  %113 = load i32*, i32** %17, align 8
  %114 = load i32*, i32** %17, align 8
  %115 = call i32 @svn_wc__conflict_skel_resolve(i64* %21, i32* %102, i32* %103, i32 %106, i64 %107, i8* %111, i64 %112, i32* %113, i32* %114)
  %116 = call i32 @SVN_ERR(i32 %115)
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @STMT_UPDATE_ACTUAL_CONFLICT, align 4
  %121 = call i32 @svn_sqlite__get_statement(i32** %18, i32 %119, i32 %120)
  %122 = call i32 @SVN_ERR(i32 %121)
  %123 = load i32*, i32** %18, align 8
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i8*, i8** %11, align 8
  %128 = call i32 @svn_sqlite__bindf(i32* %123, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %126, i8* %127)
  %129 = call i32 @SVN_ERR(i32 %128)
  %130 = load i64, i64* %21, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %145, label %132

132:                                              ; preds = %97
  %133 = load i32*, i32** %24, align 8
  %134 = load i32*, i32** %17, align 8
  %135 = call %struct.TYPE_7__* @svn_skel__unparse(i32* %133, i32* %134)
  store %struct.TYPE_7__* %135, %struct.TYPE_7__** %25, align 8
  %136 = load i32*, i32** %18, align 8
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @svn_sqlite__bind_blob(i32* %136, i32 3, i32 %139, i32 %142)
  %144 = call i32 @SVN_ERR(i32 %143)
  br label %145

145:                                              ; preds = %132, %97
  %146 = load i32*, i32** %18, align 8
  %147 = call i32 @svn_sqlite__update(i32* %20, i32* %146)
  %148 = call i32 @SVN_ERR(i32 %147)
  %149 = load i32, i32* %20, align 4
  %150 = icmp sgt i32 %149, 0
  br i1 %150, label %151, label %168

151:                                              ; preds = %145
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @STMT_DELETE_ACTUAL_EMPTY, align 4
  %156 = call i32 @svn_sqlite__get_statement(i32** %18, i32 %154, i32 %155)
  %157 = call i32 @SVN_ERR(i32 %156)
  %158 = load i32*, i32** %18, align 8
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i8*, i8** %11, align 8
  %163 = call i32 @svn_sqlite__bindf(i32* %158, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %161, i8* %162)
  %164 = call i32 @SVN_ERR(i32 %163)
  %165 = load i32*, i32** %18, align 8
  %166 = call i32 @svn_sqlite__step_done(i32* %165)
  %167 = call i32 @SVN_ERR(i32 %166)
  br label %168

168:                                              ; preds = %151, %145
  %169 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %169, i32** %9, align 8
  br label %170

170:                                              ; preds = %168, %95, %71, %69
  %171 = load i32*, i32** %9, align 8
  ret i32* %171
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32, i32) #1

declare dso_local i32 @svn_sqlite__bindf(i32*, i8*, i32, i8*) #1

declare dso_local i32 @svn_sqlite__step(i64*, i32*) #1

declare dso_local i32 @svn_sqlite__reset(i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @path_for_error_message(%struct.TYPE_6__*, i8*, i32*) #1

declare dso_local i8* @svn_sqlite__column_blob(i32*, i32, i32*, i32*) #1

declare dso_local i32 @add_work_items(i32, i32*, i32*) #1

declare dso_local i32* @svn_skel__parse(i8*, i32, i32*) #1

declare dso_local i32 @svn_wc__conflict_skel_resolve(i64*, i32*, i32*, i32, i64, i8*, i64, i32*, i32*) #1

declare dso_local %struct.TYPE_7__* @svn_skel__unparse(i32*, i32*) #1

declare dso_local i32 @svn_sqlite__bind_blob(i32*, i32, i32, i32) #1

declare dso_local i32 @svn_sqlite__update(i32*, i32*) #1

declare dso_local i32 @svn_sqlite__step_done(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
