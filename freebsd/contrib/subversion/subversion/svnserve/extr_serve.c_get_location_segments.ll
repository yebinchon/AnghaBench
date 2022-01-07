; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnserve/extr_serve.c_get_location_segments.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnserve/extr_serve.c_get_location_segments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i32*, %struct.TYPE_11__* }

@.str = private unnamed_addr constant [14 x i8] c"c(?r)(?r)(?r)\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"done\00", align 1
@SVN_ERR_FS_NO_SUCH_REVISION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [75 x i8] c"Get-location-segments end revision must not be younger than start revision\00", align 1
@.str.4 = private unnamed_addr constant [75 x i8] c"Get-location-segments start revision must not be younger than peg revision\00", align 1
@gls_receiver = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, i8*)* @get_location_segments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_location_segments(i32* %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_12__, align 8
  %19 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %21, %struct.TYPE_11__** %12, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 1
  store %struct.TYPE_11__* %22, %struct.TYPE_11__** %23, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  store i32* %24, i32** %25, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @svn_ra_svn__parse_tuple(i32* %26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %16, i64* %13, i64* %14, i64* %15)
  %28 = call i32 @SVN_ERR(i32 %27)
  %29 = load i8*, i8** %16, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = call i8* @svn_relpath_canonicalize(i8* %29, i32* %30)
  store i8* %31, i8** %16, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i8*, i8** %16, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = call i8* @svn_fspath__join(i32 %38, i8* %39, i32* %40)
  store i8* %41, i8** %17, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %45 = call i32 @trivial_auth_request(i32* %42, i32* %43, %struct.TYPE_11__* %44)
  %46 = call i32 @SVN_ERR(i32 %45)
  %47 = load i8*, i8** %9, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = load i8*, i8** %17, align 8
  %51 = load i64, i64* %13, align 8
  %52 = load i64, i64* %14, align 8
  %53 = load i64, i64* %15, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = call i32 @svn_log__get_location_segments(i8* %50, i64 %51, i64 %52, i64 %53, i32* %54)
  %56 = call i32 @log_command(i8* %47, i32* %48, i32* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = call i32 @SVN_ERR(i32 %56)
  %58 = load i64, i64* %14, align 8
  %59 = call i32 @SVN_IS_VALID_REVNUM(i64 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %4
  %62 = load i64, i64* %13, align 8
  %63 = call i32 @SVN_IS_VALID_REVNUM(i64 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %99, label %65

65:                                               ; preds = %61, %4
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %7, align 8
  %72 = call i32* @svn_fs_youngest_rev(i64* %19, i32 %70, i32* %71)
  store i32* %72, i32** %10, align 8
  %73 = load i32*, i32** %10, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %86

75:                                               ; preds = %65
  %76 = load i32*, i32** %6, align 8
  %77 = load i32*, i32** %7, align 8
  %78 = call i32* @svn_ra_svn__write_word(i32* %76, i32* %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %79 = load i32*, i32** %10, align 8
  %80 = call i32* @svn_error_compose_create(i32* %78, i32* %79)
  store i32* %80, i32** %10, align 8
  %81 = load i32*, i32** %10, align 8
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %83 = load i32*, i32** %6, align 8
  %84 = load i32*, i32** %7, align 8
  %85 = call i32* @log_fail_and_flush(i32* %81, %struct.TYPE_11__* %82, i32* %83, i32* %84)
  store i32* %85, i32** %5, align 8
  br label %170

86:                                               ; preds = %65
  %87 = load i64, i64* %14, align 8
  %88 = call i32 @SVN_IS_VALID_REVNUM(i64 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %86
  %91 = load i64, i64* %19, align 8
  store i64 %91, i64* %14, align 8
  br label %92

92:                                               ; preds = %90, %86
  %93 = load i64, i64* %13, align 8
  %94 = call i32 @SVN_IS_VALID_REVNUM(i64 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %92
  %97 = load i64, i64* %19, align 8
  store i64 %97, i64* %13, align 8
  br label %98

98:                                               ; preds = %96, %92
  br label %99

99:                                               ; preds = %98, %61
  %100 = load i64, i64* %15, align 8
  %101 = call i32 @SVN_IS_VALID_REVNUM(i64 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %99
  store i64 0, i64* %15, align 8
  br label %104

104:                                              ; preds = %103, %99
  %105 = load i64, i64* %15, align 8
  %106 = load i64, i64* %14, align 8
  %107 = icmp sgt i64 %105, %106
  br i1 %107, label %108, label %120

108:                                              ; preds = %104
  %109 = load i32*, i32** %6, align 8
  %110 = load i32*, i32** %7, align 8
  %111 = call i32* @svn_ra_svn__write_word(i32* %109, i32* %110, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32* %111, i32** %10, align 8
  %112 = load i32, i32* @SVN_ERR_FS_NO_SUCH_REVISION, align 4
  %113 = load i32*, i32** %10, align 8
  %114 = call i32* @svn_error_createf(i32 %112, i32* %113, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.3, i64 0, i64 0))
  store i32* %114, i32** %10, align 8
  %115 = load i32*, i32** %10, align 8
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %117 = load i32*, i32** %6, align 8
  %118 = load i32*, i32** %7, align 8
  %119 = call i32* @log_fail_and_flush(i32* %115, %struct.TYPE_11__* %116, i32* %117, i32* %118)
  store i32* %119, i32** %5, align 8
  br label %170

120:                                              ; preds = %104
  %121 = load i64, i64* %14, align 8
  %122 = load i64, i64* %13, align 8
  %123 = icmp sgt i64 %121, %122
  br i1 %123, label %124, label %136

124:                                              ; preds = %120
  %125 = load i32*, i32** %6, align 8
  %126 = load i32*, i32** %7, align 8
  %127 = call i32* @svn_ra_svn__write_word(i32* %125, i32* %126, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32* %127, i32** %10, align 8
  %128 = load i32, i32* @SVN_ERR_FS_NO_SUCH_REVISION, align 4
  %129 = load i32*, i32** %10, align 8
  %130 = call i32* @svn_error_createf(i32 %128, i32* %129, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.4, i64 0, i64 0))
  store i32* %130, i32** %10, align 8
  %131 = load i32*, i32** %10, align 8
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %133 = load i32*, i32** %6, align 8
  %134 = load i32*, i32** %7, align 8
  %135 = call i32* @log_fail_and_flush(i32* %131, %struct.TYPE_11__* %132, i32* %133, i32* %134)
  store i32* %135, i32** %5, align 8
  br label %170

136:                                              ; preds = %120
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i8*, i8** %17, align 8
  %143 = load i64, i64* %13, align 8
  %144 = load i64, i64* %14, align 8
  %145 = load i64, i64* %15, align 8
  %146 = load i32, i32* @gls_receiver, align 4
  %147 = load i32*, i32** %6, align 8
  %148 = bitcast i32* %147 to i8*
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %150 = call i32 @authz_check_access_cb_func(%struct.TYPE_11__* %149)
  %151 = load i32*, i32** %7, align 8
  %152 = call i32* @svn_repos_node_location_segments(i32 %141, i8* %142, i64 %143, i64 %144, i64 %145, i32 %146, i8* %148, i32 %150, %struct.TYPE_12__* %18, i32* %151)
  store i32* %152, i32** %10, align 8
  %153 = load i32*, i32** %6, align 8
  %154 = load i32*, i32** %7, align 8
  %155 = call i32* @svn_ra_svn__write_word(i32* %153, i32* %154, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32* %155, i32** %11, align 8
  %156 = load i32*, i32** %11, align 8
  %157 = icmp ne i32* %156, null
  br i1 %157, label %158, label %162

158:                                              ; preds = %136
  %159 = load i32*, i32** %11, align 8
  %160 = load i32*, i32** %10, align 8
  %161 = call i32* @svn_error_compose_create(i32* %159, i32* %160)
  store i32* %161, i32** %5, align 8
  br label %170

162:                                              ; preds = %136
  %163 = load i32*, i32** %10, align 8
  %164 = call i32 @SVN_CMD_ERR(i32* %163)
  %165 = load i32*, i32** %6, align 8
  %166 = load i32*, i32** %7, align 8
  %167 = call i32 @svn_ra_svn__write_cmd_response(i32* %165, i32* %166, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0))
  %168 = call i32 @SVN_ERR(i32 %167)
  %169 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %169, i32** %5, align 8
  br label %170

170:                                              ; preds = %162, %158, %124, %108, %75
  %171 = load i32*, i32** %5, align 8
  ret i32* %171
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_svn__parse_tuple(i32*, i8*, i8**, i64*, i64*, i64*) #1

declare dso_local i8* @svn_relpath_canonicalize(i8*, i32*) #1

declare dso_local i8* @svn_fspath__join(i32, i8*, i32*) #1

declare dso_local i32 @trivial_auth_request(i32*, i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @log_command(i8*, i32*, i32*, i8*, i32) #1

declare dso_local i32 @svn_log__get_location_segments(i8*, i64, i64, i64, i32*) #1

declare dso_local i32 @SVN_IS_VALID_REVNUM(i64) #1

declare dso_local i32* @svn_fs_youngest_rev(i64*, i32, i32*) #1

declare dso_local i32* @svn_error_compose_create(i32*, i32*) #1

declare dso_local i32* @svn_ra_svn__write_word(i32*, i32*, i8*) #1

declare dso_local i32* @log_fail_and_flush(i32*, %struct.TYPE_11__*, i32*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i8*) #1

declare dso_local i32* @svn_repos_node_location_segments(i32, i8*, i64, i64, i64, i32, i8*, i32, %struct.TYPE_12__*, i32*) #1

declare dso_local i32 @authz_check_access_cb_func(%struct.TYPE_11__*) #1

declare dso_local i32 @SVN_CMD_ERR(i32*) #1

declare dso_local i32 @svn_ra_svn__write_cmd_response(i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
