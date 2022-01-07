; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_op_depth_for_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_op_depth_for_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@STMT_SELECT_WORKING_NODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"is\00", align 1
@presence_map = common dso_local global i32 0, align 4
@svn_wc__db_status_incomplete = common dso_local global i64 0, align 8
@svn_wc__db_status_normal = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, i64, i8*, i64, %struct.TYPE_3__*, i8*, i32*)* @op_depth_for_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @op_depth_for_copy(i32* %0, i32* %1, i32* %2, i64 %3, i8* %4, i64 %5, %struct.TYPE_3__* %6, i8* %7, i32* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_3__*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i64, align 8
  store i32* %0, i32** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32* %2, i32** %13, align 8
  store i64 %3, i64* %14, align 8
  store i8* %4, i8** %15, align 8
  store i64 %5, i64* %16, align 8
  store %struct.TYPE_3__* %6, %struct.TYPE_3__** %17, align 8
  store i8* %7, i8** %18, align 8
  store i32* %8, i32** %19, align 8
  store i32 -1, i32* %24, align 4
  store i32 1, i32* %25, align 4
  %31 = load i8*, i8** %18, align 8
  %32 = call i32 @relpath_depth(i8* %31)
  %33 = load i32*, i32** %11, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i32*, i32** %12, align 8
  store i32 -1, i32* %34, align 4
  %35 = load i8*, i8** %18, align 8
  %36 = load i32*, i32** %19, align 8
  %37 = call i32 @svn_relpath_split(i8** %20, i8** %21, i8* %35, i32* %36)
  %38 = load i8*, i8** %20, align 8
  %39 = call i32 @relpath_depth(i8* %38)
  %40 = load i32*, i32** %13, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i8*, i8** %15, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %9
  %44 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %44, i32** %10, align 8
  br label %168

45:                                               ; preds = %9
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @STMT_SELECT_WORKING_NODE, align 4
  %50 = call i32 @svn_sqlite__get_statement(i32** %22, i32 %48, i32 %49)
  %51 = call i32 @SVN_ERR(i32 %50)
  %52 = load i32*, i32** %22, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i8*, i8** %18, align 8
  %57 = call i32 @svn_sqlite__bindf(i32* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %55, i8* %56)
  %58 = call i32 @SVN_ERR(i32 %57)
  %59 = load i32*, i32** %22, align 8
  %60 = call i32 @svn_sqlite__step(i64* %23, i32* %59)
  %61 = call i32 @SVN_ERR(i32 %60)
  %62 = load i64, i64* %23, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %45
  %65 = load i32*, i32** %22, align 8
  %66 = load i32, i32* @presence_map, align 4
  %67 = call i64 @svn_sqlite__column_token(i32* %65, i32 1, i32 %66)
  store i64 %67, i64* %26, align 8
  %68 = load i32*, i32** %22, align 8
  %69 = call i32 @svn_sqlite__column_int(i32* %68, i32 0)
  store i32 %69, i32* %25, align 4
  %70 = load i64, i64* %26, align 8
  %71 = load i64, i64* @svn_wc__db_status_incomplete, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %64
  %74 = load i32, i32* %25, align 4
  store i32 %74, i32* %24, align 4
  br label %75

75:                                               ; preds = %73, %64
  br label %76

76:                                               ; preds = %75, %45
  %77 = load i32*, i32** %22, align 8
  %78 = call i32 @svn_sqlite__reset(i32* %77)
  %79 = call i32 @SVN_ERR(i32 %78)
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @STMT_SELECT_WORKING_NODE, align 4
  %84 = call i32 @svn_sqlite__get_statement(i32** %22, i32 %82, i32 %83)
  %85 = call i32 @SVN_ERR(i32 %84)
  %86 = load i32*, i32** %22, align 8
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i8*, i8** %20, align 8
  %91 = call i32 @svn_sqlite__bindf(i32* %86, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %89, i8* %90)
  %92 = call i32 @SVN_ERR(i32 %91)
  %93 = load i32*, i32** %22, align 8
  %94 = call i32 @svn_sqlite__step(i64* %23, i32* %93)
  %95 = call i32 @SVN_ERR(i32 %94)
  %96 = load i64, i64* %23, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %163

98:                                               ; preds = %76
  %99 = load i32*, i32** %22, align 8
  %100 = load i32, i32* @presence_map, align 4
  %101 = call i64 @svn_sqlite__column_token(i32* %99, i32 1, i32 %100)
  store i64 %101, i64* %27, align 8
  %102 = load i32*, i32** %22, align 8
  %103 = call i32 @svn_sqlite__column_int(i32* %102, i32 0)
  %104 = load i32*, i32** %13, align 8
  store i32 %103, i32* %104, align 4
  %105 = load i32*, i32** %13, align 8
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %25, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %114

109:                                              ; preds = %98
  %110 = load i32*, i32** %22, align 8
  %111 = call i32 @svn_sqlite__reset(i32* %110)
  %112 = call i32 @SVN_ERR(i32 %111)
  %113 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %113, i32** %10, align 8
  br label %168

114:                                              ; preds = %98
  %115 = load i64, i64* %27, align 8
  %116 = load i64, i64* @svn_wc__db_status_normal, align 8
  %117 = icmp eq i64 %115, %116
  %118 = zext i1 %117 to i32
  %119 = call i32 @SVN_ERR_ASSERT(i32 %118)
  %120 = load i32, i32* %24, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %127, label %122

122:                                              ; preds = %114
  %123 = load i32, i32* %24, align 4
  %124 = load i32*, i32** %13, align 8
  %125 = load i32, i32* %124, align 4
  %126 = icmp eq i32 %123, %125
  br i1 %126, label %127, label %162

127:                                              ; preds = %122, %114
  %128 = load i32*, i32** %22, align 8
  %129 = call i64 @svn_sqlite__column_int64(i32* %128, i32 10)
  store i64 %129, i64* %28, align 8
  %130 = load i32*, i32** %22, align 8
  %131 = call i8* @svn_sqlite__column_text(i32* %130, i32 11, i32* null)
  store i8* %131, i8** %29, align 8
  %132 = load i32*, i32** %22, align 8
  %133 = call i64 @svn_sqlite__column_revnum(i32* %132, i32 12)
  store i64 %133, i64* %30, align 8
  %134 = load i64, i64* %28, align 8
  %135 = load i64, i64* %14, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %161

137:                                              ; preds = %127
  %138 = load i64, i64* %16, align 8
  %139 = load i64, i64* %30, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %153

141:                                              ; preds = %137
  %142 = load i8*, i8** %15, align 8
  %143 = load i8*, i8** %29, align 8
  %144 = load i8*, i8** %21, align 8
  %145 = load i32*, i32** %19, align 8
  %146 = call i32 @svn_relpath_join(i8* %143, i8* %144, i32* %145)
  %147 = call i32 @strcmp(i8* %142, i32 %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %153, label %149

149:                                              ; preds = %141
  %150 = load i32*, i32** %13, align 8
  %151 = load i32, i32* %150, align 4
  %152 = load i32*, i32** %11, align 8
  store i32 %151, i32* %152, align 4
  br label %160

153:                                              ; preds = %141, %137
  %154 = load i32, i32* %24, align 4
  %155 = icmp sgt i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %153
  %157 = load i32, i32* %24, align 4
  %158 = load i32*, i32** %12, align 8
  store i32 %157, i32* %158, align 4
  br label %159

159:                                              ; preds = %156, %153
  br label %160

160:                                              ; preds = %159, %149
  br label %161

161:                                              ; preds = %160, %127
  br label %162

162:                                              ; preds = %161, %122
  br label %163

163:                                              ; preds = %162, %76
  %164 = load i32*, i32** %22, align 8
  %165 = call i32 @svn_sqlite__reset(i32* %164)
  %166 = call i32 @SVN_ERR(i32 %165)
  %167 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %167, i32** %10, align 8
  br label %168

168:                                              ; preds = %163, %109, %43
  %169 = load i32*, i32** %10, align 8
  ret i32* %169
}

declare dso_local i32 @relpath_depth(i8*) #1

declare dso_local i32 @svn_relpath_split(i8**, i8**, i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32, i32) #1

declare dso_local i32 @svn_sqlite__bindf(i32*, i8*, i32, i8*) #1

declare dso_local i32 @svn_sqlite__step(i64*, i32*) #1

declare dso_local i64 @svn_sqlite__column_token(i32*, i32, i32) #1

declare dso_local i32 @svn_sqlite__column_int(i32*, i32) #1

declare dso_local i32 @svn_sqlite__reset(i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i64 @svn_sqlite__column_int64(i32*, i32) #1

declare dso_local i8* @svn_sqlite__column_text(i32*, i32, i32*) #1

declare dso_local i64 @svn_sqlite__column_revnum(i32*, i32) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @svn_relpath_join(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
