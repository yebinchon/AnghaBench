; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_client.c_ra_svn_replay_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_client.c_ra_svn_replay_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Server doesn't support the replay-range command\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"wl\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"revprops\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"failure\00", align 1
@SVN_ERR_RA_SVN_MALFORMED_DATA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"Expected 'revprops', found '%s'\00", align 1
@TRUE = common dso_local global i32 0, align 4
@SVN_ERR_RA_SVN_EDIT_ABORTED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"Error while replaying commit\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_7__*, i64, i64, i64, i32, i32 (i64, i8*, i32**, i8**, i32*, i32*)*, i32 (i64, i8*, i32*, i8*, i32*, i32*)*, i8*, i32*)* @ra_svn_replay_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ra_svn_replay_range(%struct.TYPE_7__* %0, i64 %1, i64 %2, i64 %3, i32 %4, i32 (i64, i8*, i32**, i8**, i32*, i32*)* %5, i32 (i64, i8*, i32*, i8*, i32*, i32*)* %6, i8* %7, i32* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32 (i64, i8*, i32**, i8**, i32*, i32*)*, align 8
  %17 = alloca i32 (i64, i8*, i32*, i8*, i32*, i32*)*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_6__*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %11, align 8
  store i64 %1, i64* %12, align 8
  store i64 %2, i64* %13, align 8
  store i64 %3, i64* %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 (i64, i8*, i32**, i8**, i32*, i32*)* %5, i32 (i64, i8*, i32**, i8**, i32*, i32*)** %16, align 8
  store i32 (i64, i8*, i32*, i8*, i32*, i32*)* %6, i32 (i64, i8*, i32*, i8*, i32*, i32*)** %17, align 8
  store i8* %7, i8** %18, align 8
  store i32* %8, i32** %19, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  store %struct.TYPE_6__* %31, %struct.TYPE_6__** %20, align 8
  %32 = load i32, i32* @FALSE, align 4
  store i32 %32, i32* %23, align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %34 = load i32*, i32** %19, align 8
  %35 = call i32 @ensure_exact_server_parent(%struct.TYPE_7__* %33, i32* %34)
  %36 = call i32 @SVN_ERR(i32 %35)
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %19, align 8
  %41 = load i64, i64* %12, align 8
  %42 = load i64, i64* %13, align 8
  %43 = load i64, i64* %14, align 8
  %44 = load i32, i32* %15, align 4
  %45 = call i32 @svn_ra_svn__write_cmd_replay_range(i32 %39, i32* %40, i64 %41, i64 %42, i64 %43, i32 %44)
  %46 = call i32 @SVN_ERR(i32 %45)
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %48 = load i32*, i32** %19, align 8
  %49 = call i32 @handle_auth_request(%struct.TYPE_6__* %47, i32* %48)
  %50 = call i32 @N_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %51 = call i32 @handle_unsupported_cmd(i32 %49, i32 %50)
  %52 = call i32 @SVN_ERR(i32 %51)
  %53 = load i32*, i32** %19, align 8
  %54 = call i32* @svn_pool_create(i32* %53)
  store i32* %54, i32** %21, align 8
  %55 = load i64, i64* %12, align 8
  store i64 %55, i64* %22, align 8
  br label %56

56:                                               ; preds = %124, %9
  %57 = load i64, i64* %22, align 8
  %58 = load i64, i64* %13, align 8
  %59 = icmp sle i64 %57, %58
  br i1 %59, label %60, label %127

60:                                               ; preds = %56
  %61 = load i32*, i32** %21, align 8
  %62 = call i32 @svn_pool_clear(i32* %61)
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %21, align 8
  %67 = call i32 @svn_ra_svn__read_tuple(i32 %65, i32* %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %27, i32** %28)
  %68 = call i32 @SVN_ERR(i32 %67)
  %69 = load i8*, i8** %27, align 8
  %70 = call i64 @strcmp(i8* %69, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %60
  %73 = load i8*, i8** %27, align 8
  %74 = call i64 @strcmp(i8* %73, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = load i32*, i32** %28, align 8
  %78 = call i32 @svn_ra_svn__handle_failure_status(i32* %77)
  %79 = call i32 @SVN_ERR(i32 %78)
  br label %80

80:                                               ; preds = %76, %72
  %81 = load i32, i32* @SVN_ERR_RA_SVN_MALFORMED_DATA, align 4
  %82 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %83 = load i8*, i8** %27, align 8
  %84 = call i32* @svn_error_createf(i32 %81, i32* null, i32 %82, i8* %83)
  store i32* %84, i32** %10, align 8
  br label %136

85:                                               ; preds = %60
  %86 = load i32*, i32** %28, align 8
  %87 = load i32*, i32** %21, align 8
  %88 = call i32 @svn_ra_svn__parse_proplist(i32* %86, i32* %87, i32** %26)
  %89 = call i32 @SVN_ERR(i32 %88)
  %90 = load i32 (i64, i8*, i32**, i8**, i32*, i32*)*, i32 (i64, i8*, i32**, i8**, i32*, i32*)** %16, align 8
  %91 = load i64, i64* %22, align 8
  %92 = load i8*, i8** %18, align 8
  %93 = load i32*, i32** %26, align 8
  %94 = load i32*, i32** %21, align 8
  %95 = call i32 %90(i64 %91, i8* %92, i32** %24, i8** %25, i32* %93, i32* %94)
  %96 = call i32 @SVN_ERR(i32 %95)
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** %21, align 8
  %101 = load i32*, i32** %24, align 8
  %102 = load i8*, i8** %25, align 8
  %103 = load i32, i32* @TRUE, align 4
  %104 = call i32 @svn_ra_svn_drive_editor2(i32 %99, i32* %100, i32* %101, i8* %102, i32* %23, i32 %103)
  %105 = call i32 @SVN_ERR(i32 %104)
  %106 = load i32, i32* %23, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %85
  %109 = load i32*, i32** %21, align 8
  %110 = call i32 @svn_pool_destroy(i32* %109)
  %111 = load i32, i32* @SVN_ERR_RA_SVN_EDIT_ABORTED, align 4
  %112 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %113 = call i32* @svn_error_create(i32 %111, i32* null, i32 %112)
  store i32* %113, i32** %10, align 8
  br label %136

114:                                              ; preds = %85
  %115 = load i32 (i64, i8*, i32*, i8*, i32*, i32*)*, i32 (i64, i8*, i32*, i8*, i32*, i32*)** %17, align 8
  %116 = load i64, i64* %22, align 8
  %117 = load i8*, i8** %18, align 8
  %118 = load i32*, i32** %24, align 8
  %119 = load i8*, i8** %25, align 8
  %120 = load i32*, i32** %26, align 8
  %121 = load i32*, i32** %21, align 8
  %122 = call i32 %115(i64 %116, i8* %117, i32* %118, i8* %119, i32* %120, i32* %121)
  %123 = call i32 @SVN_ERR(i32 %122)
  br label %124

124:                                              ; preds = %114
  %125 = load i64, i64* %22, align 8
  %126 = add nsw i64 %125, 1
  store i64 %126, i64* %22, align 8
  br label %56

127:                                              ; preds = %56
  %128 = load i32*, i32** %21, align 8
  %129 = call i32 @svn_pool_destroy(i32* %128)
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32*, i32** %19, align 8
  %134 = call i32 @svn_ra_svn__read_cmd_response(i32 %132, i32* %133, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0))
  %135 = call i32* @svn_error_trace(i32 %134)
  store i32* %135, i32** %10, align 8
  br label %136

136:                                              ; preds = %127, %108, %80
  %137 = load i32*, i32** %10, align 8
  ret i32* %137
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @ensure_exact_server_parent(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @svn_ra_svn__write_cmd_replay_range(i32, i32*, i64, i64, i64, i32) #1

declare dso_local i32 @handle_unsupported_cmd(i32, i32) #1

declare dso_local i32 @handle_auth_request(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @svn_ra_svn__read_tuple(i32, i32*, i8*, i8**, i32**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @svn_ra_svn__handle_failure_status(i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_ra_svn__parse_proplist(i32*, i32*, i32**) #1

declare dso_local i32 @svn_ra_svn_drive_editor2(i32, i32*, i32*, i8*, i32*, i32) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_ra_svn__read_cmd_response(i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
