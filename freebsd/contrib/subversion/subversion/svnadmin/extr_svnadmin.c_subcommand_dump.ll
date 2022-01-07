; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnadmin/extr_svnadmin.c_subcommand_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnadmin/extr_svnadmin.c_subcommand_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svnadmin_opt_state = type { i32, i32, i32, i64, i64, i32, i64, i32 }
%struct.dump_filter_baton_t = type { i64, i32, i32, i32 }

@APR_WRITE = common dso_local global i32 0, align 4
@APR_CREATE = common dso_local global i32 0, align 4
@APR_TRUNCATE = common dso_local global i32 0, align 4
@APR_BUFFERED = common dso_local global i32 0, align 4
@APR_OS_DEFAULT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SVN_ERR_CL_ARG_PARSING_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"'--exclude' and '--include' options cannot be used simultaneously\00", align 1
@repos_notify_handler = common dso_local global i32* null, align 8
@dump_filter_func = common dso_local global i32* null, align 8
@check_cancel = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i32*)* @subcommand_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @subcommand_dump(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.svnadmin_opt_state*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.dump_filter_baton_t, align 8
  %15 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.svnadmin_opt_state*
  store %struct.svnadmin_opt_state* %17, %struct.svnadmin_opt_state** %8, align 8
  store i32* null, i32** %13, align 8
  %18 = bitcast %struct.dump_filter_baton_t* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 24, i1 false)
  %19 = load i32*, i32** %5, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @parse_args(i32* null, i32* %19, i32 0, i32 0, i32* %20)
  %22 = call i32 @SVN_ERR(i32 %21)
  %23 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %8, align 8
  %24 = getelementptr inbounds %struct.svnadmin_opt_state, %struct.svnadmin_opt_state* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %8, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @open_repos(i32** %9, i32 %25, %struct.svnadmin_opt_state* %26, i32* %27)
  %29 = call i32 @SVN_ERR(i32 %28)
  %30 = load i32*, i32** %9, align 8
  %31 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %8, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @get_dump_range(i32* %11, i32* %12, i32* %30, %struct.svnadmin_opt_state* %31, i32* %32)
  %34 = call i32 @SVN_ERR(i32 %33)
  %35 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %8, align 8
  %36 = getelementptr inbounds %struct.svnadmin_opt_state, %struct.svnadmin_opt_state* %35, i32 0, i32 6
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %58

39:                                               ; preds = %3
  %40 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %8, align 8
  %41 = getelementptr inbounds %struct.svnadmin_opt_state, %struct.svnadmin_opt_state* %40, i32 0, i32 6
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* @APR_WRITE, align 4
  %44 = load i32, i32* @APR_CREATE, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @APR_TRUNCATE, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @APR_BUFFERED, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @APR_OS_DEFAULT, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @svn_io_file_open(i32** %15, i64 %42, i32 %49, i32 %50, i32* %51)
  %53 = call i32 @SVN_ERR(i32 %52)
  %54 = load i32*, i32** %15, align 8
  %55 = load i32, i32* @FALSE, align 4
  %56 = load i32*, i32** %7, align 8
  %57 = call i32* @svn_stream_from_aprfile2(i32* %54, i32 %55, i32* %56)
  store i32* %57, i32** %10, align 8
  br label %62

58:                                               ; preds = %3
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @svn_stream_for_stdout(i32** %10, i32* %59)
  %61 = call i32 @SVN_ERR(i32 %60)
  br label %62

62:                                               ; preds = %58, %39
  %63 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %8, align 8
  %64 = getelementptr inbounds %struct.svnadmin_opt_state, %struct.svnadmin_opt_state* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* @stderr, align 4
  %69 = load i32*, i32** %7, align 8
  %70 = call i32* @recode_stream_create(i32 %68, i32* %69)
  store i32* %70, i32** %13, align 8
  br label %71

71:                                               ; preds = %67, %62
  %72 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %8, align 8
  %73 = getelementptr inbounds %struct.svnadmin_opt_state, %struct.svnadmin_opt_state* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 8
  %75 = getelementptr inbounds %struct.dump_filter_baton_t, %struct.dump_filter_baton_t* %14, i32 0, i32 2
  store i32 %74, i32* %75, align 4
  %76 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %8, align 8
  %77 = getelementptr inbounds %struct.svnadmin_opt_state, %struct.svnadmin_opt_state* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %92

80:                                               ; preds = %71
  %81 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %8, align 8
  %82 = getelementptr inbounds %struct.svnadmin_opt_state, %struct.svnadmin_opt_state* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %92, label %85

85:                                               ; preds = %80
  %86 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %8, align 8
  %87 = getelementptr inbounds %struct.svnadmin_opt_state, %struct.svnadmin_opt_state* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds %struct.dump_filter_baton_t, %struct.dump_filter_baton_t* %14, i32 0, i32 0
  store i64 %88, i64* %89, align 8
  %90 = load i32, i32* @TRUE, align 4
  %91 = getelementptr inbounds %struct.dump_filter_baton_t, %struct.dump_filter_baton_t* %14, i32 0, i32 1
  store i32 %90, i32* %91, align 8
  br label %125

92:                                               ; preds = %80, %71
  %93 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %8, align 8
  %94 = getelementptr inbounds %struct.svnadmin_opt_state, %struct.svnadmin_opt_state* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %109

97:                                               ; preds = %92
  %98 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %8, align 8
  %99 = getelementptr inbounds %struct.svnadmin_opt_state, %struct.svnadmin_opt_state* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %109, label %102

102:                                              ; preds = %97
  %103 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %8, align 8
  %104 = getelementptr inbounds %struct.svnadmin_opt_state, %struct.svnadmin_opt_state* %103, i32 0, i32 4
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds %struct.dump_filter_baton_t, %struct.dump_filter_baton_t* %14, i32 0, i32 0
  store i64 %105, i64* %106, align 8
  %107 = load i32, i32* @FALSE, align 4
  %108 = getelementptr inbounds %struct.dump_filter_baton_t, %struct.dump_filter_baton_t* %14, i32 0, i32 1
  store i32 %107, i32* %108, align 8
  br label %124

109:                                              ; preds = %97, %92
  %110 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %8, align 8
  %111 = getelementptr inbounds %struct.svnadmin_opt_state, %struct.svnadmin_opt_state* %110, i32 0, i32 4
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %109
  %115 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %8, align 8
  %116 = getelementptr inbounds %struct.svnadmin_opt_state, %struct.svnadmin_opt_state* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %114
  %120 = load i32, i32* @SVN_ERR_CL_ARG_PARSING_ERROR, align 4
  %121 = call i32 @_(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  %122 = call i32* @svn_error_createf(i32 %120, i32* null, i32 %121)
  store i32* %122, i32** %4, align 8
  br label %161

123:                                              ; preds = %114, %109
  br label %124

124:                                              ; preds = %123, %102
  br label %125

125:                                              ; preds = %124, %85
  %126 = load i32*, i32** %9, align 8
  %127 = load i32*, i32** %10, align 8
  %128 = load i32, i32* %11, align 4
  %129 = load i32, i32* %12, align 4
  %130 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %8, align 8
  %131 = getelementptr inbounds %struct.svnadmin_opt_state, %struct.svnadmin_opt_state* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %8, align 8
  %134 = getelementptr inbounds %struct.svnadmin_opt_state, %struct.svnadmin_opt_state* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @TRUE, align 4
  %137 = load i32, i32* @TRUE, align 4
  %138 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %8, align 8
  %139 = getelementptr inbounds %struct.svnadmin_opt_state, %struct.svnadmin_opt_state* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %144, label %142

142:                                              ; preds = %125
  %143 = load i32*, i32** @repos_notify_handler, align 8
  br label %145

144:                                              ; preds = %125
  br label %145

145:                                              ; preds = %144, %142
  %146 = phi i32* [ %143, %142 ], [ null, %144 ]
  %147 = load i32*, i32** %13, align 8
  %148 = getelementptr inbounds %struct.dump_filter_baton_t, %struct.dump_filter_baton_t* %14, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %145
  %152 = load i32*, i32** @dump_filter_func, align 8
  br label %154

153:                                              ; preds = %145
  br label %154

154:                                              ; preds = %153, %151
  %155 = phi i32* [ %152, %151 ], [ null, %153 ]
  %156 = load i32, i32* @check_cancel, align 4
  %157 = load i32*, i32** %7, align 8
  %158 = call i32 @svn_repos_dump_fs4(i32* %126, i32* %127, i32 %128, i32 %129, i32 %132, i32 %135, i32 %136, i32 %137, i32* %146, i32* %147, i32* %155, %struct.dump_filter_baton_t* %14, i32 %156, i32* null, i32* %157)
  %159 = call i32 @SVN_ERR(i32 %158)
  %160 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %160, i32** %4, align 8
  br label %161

161:                                              ; preds = %154, %119
  %162 = load i32*, i32** %4, align 8
  ret i32* %162
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @SVN_ERR(i32) #2

declare dso_local i32 @parse_args(i32*, i32*, i32, i32, i32*) #2

declare dso_local i32 @open_repos(i32**, i32, %struct.svnadmin_opt_state*, i32*) #2

declare dso_local i32 @get_dump_range(i32*, i32*, i32*, %struct.svnadmin_opt_state*, i32*) #2

declare dso_local i32 @svn_io_file_open(i32**, i64, i32, i32, i32*) #2

declare dso_local i32* @svn_stream_from_aprfile2(i32*, i32, i32*) #2

declare dso_local i32 @svn_stream_for_stdout(i32**, i32*) #2

declare dso_local i32* @recode_stream_create(i32, i32*) #2

declare dso_local i32* @svn_error_createf(i32, i32*, i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @svn_repos_dump_fs4(i32*, i32*, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, %struct.dump_filter_baton_t*, i32, i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
