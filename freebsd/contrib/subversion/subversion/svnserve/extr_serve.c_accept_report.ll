; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnserve/extr_serve.c_accept_report.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnserve/extr_serve.c_accept_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { i32, i64, i32*, i32*, i8*, i32, %struct.TYPE_12__* }
%struct.TYPE_14__ = type { i32*, %struct.TYPE_12__* }

@TRUE = common dso_local global i64 0, align 8
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@report_commands = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, i32*, %struct.TYPE_12__*, i32, i8*, i8*, i32, i32, i32, i32)* @accept_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @accept_report(i32* %0, i32* %1, i32* %2, i32* %3, %struct.TYPE_12__* %4, i32 %5, i8* %6, i8* %7, i32 %8, i32 %9, i32 %10, i32 %11) #0 {
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_12__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca %struct.TYPE_13__, align 8
  %30 = alloca i32*, align 8
  %31 = alloca %struct.TYPE_14__, align 8
  store i32* %0, i32** %14, align 8
  store i32* %1, i32** %15, align 8
  store i32* %2, i32** %16, align 8
  store i32* %3, i32** %17, align 8
  store %struct.TYPE_12__* %4, %struct.TYPE_12__** %18, align 8
  store i32 %5, i32* %19, align 4
  store i8* %6, i8** %20, align 8
  store i8* %7, i8** %21, align 8
  store i32 %8, i32* %22, align 4
  store i32 %9, i32* %23, align 4
  store i32 %10, i32* %24, align 4
  store i32 %11, i32* %25, align 4
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 1
  store %struct.TYPE_12__* %32, %struct.TYPE_12__** %33, align 8
  %34 = load i32*, i32** %16, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  store i32* %34, i32** %35, align 8
  %36 = load i32*, i32** %16, align 8
  %37 = load i32*, i32** %17, align 8
  %38 = call i32 @svn_ra_svn_get_editor(i32** %26, i8** %27, i32* %36, i32* %37, i32* null, i32* null)
  %39 = load i32, i32* %19, align 4
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i8*, i8** %20, align 8
  %53 = load i8*, i8** %21, align 8
  %54 = load i32, i32* %22, align 4
  %55 = load i32, i32* %23, align 4
  %56 = load i32, i32* %25, align 4
  %57 = load i32, i32* %24, align 4
  %58 = load i32*, i32** %26, align 8
  %59 = load i8*, i8** %27, align 8
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %61 = call i32 @authz_check_access_cb_func(%struct.TYPE_12__* %60)
  %62 = load i32*, i32** %16, align 8
  %63 = call i32 @svn_ra_svn_zero_copy_limit(i32* %62)
  %64 = load i32*, i32** %17, align 8
  %65 = call i32* @svn_repos_begin_report3(i8** %28, i32 %39, i32 %44, i32 %51, i8* %52, i8* %53, i32 %54, i32 %55, i32 %56, i32 %57, i32* %58, i8* %59, i32 %61, %struct.TYPE_14__* %31, i32 %63, i32* %64)
  %66 = call i32 @SVN_CMD_ERR(i32* %65)
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 6
  store %struct.TYPE_12__* %67, %struct.TYPE_12__** %68, align 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32*, i32** %17, align 8
  %75 = call i32 @svn_path_uri_decode(i32 %73, i32* %74)
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 5
  store i32 %75, i32* %76, align 8
  %77 = load i8*, i8** %28, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 4
  store i8* %77, i8** %78, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 2
  store i32* null, i32** %79, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  store i32 0, i32* %80, align 8
  %81 = load i64, i64* @TRUE, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 1
  store i64 %81, i64* %82, align 8
  %83 = load i32*, i32** %15, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 3
  store i32* %83, i32** %84, align 8
  %85 = load i32*, i32** %15, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %12
  %88 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %89 = load i32*, i32** %15, align 8
  store i32 %88, i32* %89, align 4
  br label %90

90:                                               ; preds = %87, %12
  %91 = load i32*, i32** %16, align 8
  %92 = load i32*, i32** %17, align 8
  %93 = load i32, i32* @report_commands, align 4
  %94 = load i64, i64* @TRUE, align 8
  %95 = call i32* @svn_ra_svn__handle_commands2(i32* %91, i32* %92, i32 %93, %struct.TYPE_13__* %29, i64 %94)
  store i32* %95, i32** %30, align 8
  %96 = load i32*, i32** %30, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %103

98:                                               ; preds = %90
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @svn_error_clear(i32* %100)
  %102 = load i32*, i32** %30, align 8
  store i32* %102, i32** %13, align 8
  br label %133

103:                                              ; preds = %90
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 2
  %109 = load i32*, i32** %108, align 8
  %110 = call i32 @SVN_CMD_ERR(i32* %109)
  br label %111

111:                                              ; preds = %107, %103
  br label %112

112:                                              ; preds = %111
  %113 = load i32*, i32** %16, align 8
  %114 = load i32*, i32** %17, align 8
  %115 = call i32 @svn_ra_svn__write_cmd_response(i32* %113, i32* %114, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %116 = call i32 @SVN_ERR(i32 %115)
  %117 = load i32*, i32** %14, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %119, label %131

119:                                              ; preds = %112
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp eq i32 %121, 1
  br i1 %122, label %123, label %127

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br label %127

127:                                              ; preds = %123, %119
  %128 = phi i1 [ false, %119 ], [ %126, %123 ]
  %129 = zext i1 %128 to i32
  %130 = load i32*, i32** %14, align 8
  store i32 %129, i32* %130, align 4
  br label %131

131:                                              ; preds = %127, %112
  %132 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %132, i32** %13, align 8
  br label %133

133:                                              ; preds = %131, %98
  %134 = load i32*, i32** %13, align 8
  ret i32* %134
}

declare dso_local i32 @svn_ra_svn_get_editor(i32**, i8**, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @SVN_CMD_ERR(i32*) #1

declare dso_local i32* @svn_repos_begin_report3(i8**, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32*, i8*, i32, %struct.TYPE_14__*, i32, i32*) #1

declare dso_local i32 @authz_check_access_cb_func(%struct.TYPE_12__*) #1

declare dso_local i32 @svn_ra_svn_zero_copy_limit(i32*) #1

declare dso_local i32 @svn_path_uri_decode(i32, i32*) #1

declare dso_local i32* @svn_ra_svn__handle_commands2(i32*, i32*, i32, %struct.TYPE_13__*, i64) #1

declare dso_local i32 @svn_error_clear(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_svn__write_cmd_response(i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
