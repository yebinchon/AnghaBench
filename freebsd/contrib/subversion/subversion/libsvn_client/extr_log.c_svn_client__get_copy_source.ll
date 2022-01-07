; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_log.c_svn_client__get_copy_source.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_log.c_svn_client__get_copy_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64 }
%struct.TYPE_23__ = type { i8*, i8*, i32*, i32, i32 }
%struct.TYPE_22__ = type { i8*, i32 }

@TRUE = common dso_local global i32 0, align 4
@SVN_INVALID_REVNUM = common dso_local global i8* null, align 8
@SVN_ERR_ENTRY_MISSING_URL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"'%s' has no URL\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@copyfrom_info_receiver = common dso_local global i32 0, align 4
@SVN_ERR_FS_NOT_FOUND = common dso_local global i64 0, align 8
@SVN_ERR_RA_DAV_REQUEST_FAILED = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_21__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_21__* @svn_client__get_copy_source(i8** %0, i8** %1, i8* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_21__*, align 8
  %19 = alloca %struct.TYPE_23__, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_22__*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  store i8** %0, i8*** %10, align 8
  store i8** %1, i8*** %11, align 8
  store i8* %2, i8** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %24 = bitcast %struct.TYPE_23__* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %24, i8 0, i64 32, i1 false)
  %25 = load i32*, i32** %17, align 8
  %26 = call i32* @svn_pool_create(i32* %25)
  store i32* %26, i32** %20, align 8
  store i8* null, i8** %22, align 8
  %27 = load i32, i32* @TRUE, align 4
  %28 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 3
  store i32 %27, i32* %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 0
  store i8* null, i8** %29, align 8
  %30 = load i8*, i8** @SVN_INVALID_REVNUM, align 8
  %31 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 1
  store i8* %30, i8** %31, align 8
  %32 = load i32*, i32** %16, align 8
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 2
  store i32* %32, i32** %33, align 8
  %34 = load i32*, i32** %14, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %44, label %36

36:                                               ; preds = %8
  %37 = load i8*, i8** %12, align 8
  %38 = load i32*, i32** %13, align 8
  %39 = load i32*, i32** %13, align 8
  %40 = load i32*, i32** %15, align 8
  %41 = load i32*, i32** %20, align 8
  %42 = call %struct.TYPE_21__* @svn_client__ra_session_from_path2(i32** %14, %struct.TYPE_22__** %21, i8* %37, i32* null, i32* %38, i32* %39, i32* %40, i32* %41)
  %43 = call i32 @SVN_ERR(%struct.TYPE_21__* %42)
  br label %94

44:                                               ; preds = %8
  %45 = load i8*, i8** %12, align 8
  %46 = call i64 @svn_path_is_url(i8* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i8*, i8** %12, align 8
  store i8* %49, i8** %23, align 8
  br label %65

50:                                               ; preds = %44
  %51 = load i8*, i8** %12, align 8
  %52 = load i32*, i32** %15, align 8
  %53 = load i32*, i32** %20, align 8
  %54 = load i32*, i32** %20, align 8
  %55 = call %struct.TYPE_21__* @svn_client_url_from_path2(i8** %23, i8* %51, i32* %52, i32* %53, i32* %54)
  %56 = call i32 @SVN_ERR(%struct.TYPE_21__* %55)
  %57 = load i8*, i8** %23, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %64, label %59

59:                                               ; preds = %50
  %60 = load i32, i32* @SVN_ERR_ENTRY_MISSING_URL, align 4
  %61 = call i32 @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %62 = load i8*, i8** %12, align 8
  %63 = call %struct.TYPE_21__* @svn_error_createf(i32 %60, i32* null, i32 %61, i8* %62)
  store %struct.TYPE_21__* %63, %struct.TYPE_21__** %9, align 8
  br label %150

64:                                               ; preds = %50
  br label %65

65:                                               ; preds = %64, %48
  %66 = load i32*, i32** %14, align 8
  %67 = load i8*, i8** %23, align 8
  %68 = load i32*, i32** %20, align 8
  %69 = call %struct.TYPE_21__* @svn_client__ensure_ra_session_url(i8** %22, i32* %66, i8* %67, i32* %68)
  %70 = call i32 @SVN_ERR(%struct.TYPE_21__* %69)
  %71 = load i32*, i32** %14, align 8
  %72 = load i8*, i8** %12, align 8
  %73 = load i32*, i32** %13, align 8
  %74 = load i32*, i32** %13, align 8
  %75 = load i32*, i32** %15, align 8
  %76 = load i32*, i32** %20, align 8
  %77 = call %struct.TYPE_21__* @svn_client__resolve_rev_and_url(%struct.TYPE_22__** %21, i32* %71, i8* %72, i32* %73, i32* %74, i32* %75, i32* %76)
  store %struct.TYPE_21__* %77, %struct.TYPE_21__** %18, align 8
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %79 = load i32*, i32** %14, align 8
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %81 = icmp ne %struct.TYPE_21__* %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %65
  %83 = load i8*, i8** %22, align 8
  br label %88

84:                                               ; preds = %65
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  br label %88

88:                                               ; preds = %84, %82
  %89 = phi i8* [ %83, %82 ], [ %87, %84 ]
  %90 = load i32*, i32** %20, align 8
  %91 = call i32 @svn_ra_reparent(i32* %79, i8* %89, i32* %90)
  %92 = call %struct.TYPE_21__* @svn_error_compose_create(%struct.TYPE_21__* %78, i32 %91)
  %93 = call i32 @SVN_ERR(%struct.TYPE_21__* %92)
  br label %94

94:                                               ; preds = %88, %36
  %95 = load i32*, i32** %14, align 8
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load i8*, i8** @SVN_INVALID_REVNUM, align 8
  %103 = load i32, i32* @copyfrom_info_receiver, align 4
  %104 = load i32*, i32** %17, align 8
  %105 = call %struct.TYPE_21__* @svn_ra_get_location_segments(i32* %95, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %98, i32 %101, i8* %102, i32 %103, %struct.TYPE_23__* %19, i32* %104)
  store %struct.TYPE_21__* %105, %struct.TYPE_21__** %18, align 8
  %106 = load i8*, i8** %22, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %115

108:                                              ; preds = %94
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %110 = load i32*, i32** %14, align 8
  %111 = load i8*, i8** %22, align 8
  %112 = load i32*, i32** %20, align 8
  %113 = call i32 @svn_ra_reparent(i32* %110, i8* %111, i32* %112)
  %114 = call %struct.TYPE_21__* @svn_error_compose_create(%struct.TYPE_21__* %109, i32 %113)
  store %struct.TYPE_21__* %114, %struct.TYPE_21__** %18, align 8
  br label %115

115:                                              ; preds = %108, %94
  %116 = load i32*, i32** %20, align 8
  %117 = call i32 @svn_pool_destroy(i32* %116)
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %119 = icmp ne %struct.TYPE_21__* %118, null
  br i1 %119, label %120, label %142

120:                                              ; preds = %115
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @SVN_ERR_FS_NOT_FOUND, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %132, label %126

126:                                              ; preds = %120
  %127 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @SVN_ERR_RA_DAV_REQUEST_FAILED, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %139

132:                                              ; preds = %126, %120
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %134 = call i32 @svn_error_clear(%struct.TYPE_21__* %133)
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_21__* %135, %struct.TYPE_21__** %18, align 8
  %136 = load i8**, i8*** %10, align 8
  store i8* null, i8** %136, align 8
  %137 = load i8*, i8** @SVN_INVALID_REVNUM, align 8
  %138 = load i8**, i8*** %11, align 8
  store i8* %137, i8** %138, align 8
  br label %139

139:                                              ; preds = %132, %126
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %141 = call %struct.TYPE_21__* @svn_error_trace(%struct.TYPE_21__* %140)
  store %struct.TYPE_21__* %141, %struct.TYPE_21__** %9, align 8
  br label %150

142:                                              ; preds = %115
  %143 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = load i8**, i8*** %10, align 8
  store i8* %144, i8** %145, align 8
  %146 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 1
  %147 = load i8*, i8** %146, align 8
  %148 = load i8**, i8*** %11, align 8
  store i8* %147, i8** %148, align 8
  %149 = load %struct.TYPE_21__*, %struct.TYPE_21__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_21__* %149, %struct.TYPE_21__** %9, align 8
  br label %150

150:                                              ; preds = %142, %139, %59
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  ret %struct.TYPE_21__* %151
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @svn_pool_create(i32*) #2

declare dso_local i32 @SVN_ERR(%struct.TYPE_21__*) #2

declare dso_local %struct.TYPE_21__* @svn_client__ra_session_from_path2(i32**, %struct.TYPE_22__**, i8*, i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i64 @svn_path_is_url(i8*) #2

declare dso_local %struct.TYPE_21__* @svn_client_url_from_path2(i8**, i8*, i32*, i32*, i32*) #2

declare dso_local %struct.TYPE_21__* @svn_error_createf(i32, i32*, i32, i8*) #2

declare dso_local i32 @_(i8*) #2

declare dso_local %struct.TYPE_21__* @svn_client__ensure_ra_session_url(i8**, i32*, i8*, i32*) #2

declare dso_local %struct.TYPE_21__* @svn_client__resolve_rev_and_url(%struct.TYPE_22__**, i32*, i8*, i32*, i32*, i32*, i32*) #2

declare dso_local %struct.TYPE_21__* @svn_error_compose_create(%struct.TYPE_21__*, i32) #2

declare dso_local i32 @svn_ra_reparent(i32*, i8*, i32*) #2

declare dso_local %struct.TYPE_21__* @svn_ra_get_location_segments(i32*, i8*, i32, i32, i8*, i32, %struct.TYPE_23__*, i32*) #2

declare dso_local i32 @svn_pool_destroy(i32*) #2

declare dso_local i32 @svn_error_clear(%struct.TYPE_21__*) #2

declare dso_local %struct.TYPE_21__* @svn_error_trace(%struct.TYPE_21__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
