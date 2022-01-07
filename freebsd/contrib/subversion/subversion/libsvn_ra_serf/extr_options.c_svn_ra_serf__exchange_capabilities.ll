; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_options.c_svn_ra_serf__exchange_capabilities.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_options.c_svn_ra_serf__exchange_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i8* }
%struct.TYPE_13__ = type { i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_11__, i32*, i32 }
%struct.TYPE_11__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@SVN_ERR_RA_DAV_RESPONSE_HEADER_BADNESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Location header not set on redirect response\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_ERR_RA_SESSION_URL_MISMATCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Repository moved permanently to '%s'\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Repository moved temporarily to '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_ra_serf__exchange_capabilities(%struct.TYPE_12__* %0, i8** %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_14__, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i8**, i8*** %7, align 8
  %13 = icmp ne i8** %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = load i8**, i8*** %7, align 8
  store i8* null, i8** %15, align 8
  br label %16

16:                                               ; preds = %14, %4
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = call i32 @create_options_req(%struct.TYPE_13__** %10, %struct.TYPE_12__* %17, i32* %18)
  %20 = call i32 @SVN_ERR(i32 %19)
  %21 = load i32, i32* @TRUE, align 4
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 2
  store i32 %21, i32* %25, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = call i32 @svn_ra_serf__context_run_one(%struct.TYPE_15__* %28, i32* %29)
  %31 = call i32 @SVN_ERR(i32 %30)
  %32 = load i8**, i8*** %7, align 8
  %33 = icmp ne i8** %32, null
  br i1 %33, label %34, label %94

34:                                               ; preds = %16
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 301
  br i1 %41, label %42, label %94

42:                                               ; preds = %34
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %57

49:                                               ; preds = %42
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %49, %42
  %58 = load i32, i32* @SVN_ERR_RA_DAV_RESPONSE_HEADER_BADNESS, align 4
  %59 = call i32 @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %60 = call i32* @svn_error_create(i32 %58, i32* null, i32 %59)
  store i32* %60, i32** %5, align 8
  br label %163

61:                                               ; preds = %49
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = call i64 @svn_path_is_url(i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %61
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32*, i32** %8, align 8
  %76 = call i8* @svn_uri_canonicalize(i32* %74, i32* %75)
  %77 = load i8**, i8*** %7, align 8
  store i8* %76, i8** %77, align 8
  br label %91

78:                                               ; preds = %61
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 2
  %81 = bitcast %struct.TYPE_14__* %11 to i8*
  %82 = bitcast %struct.TYPE_14__* %80 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %81, i8* align 8 %82, i64 8, i1 false)
  %83 = load i8**, i8*** %7, align 8
  %84 = bitcast i8** %83 to i8*
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  store i8* %84, i8** %85, align 8
  %86 = load i32*, i32** %9, align 8
  %87 = call i32* @apr_uri_unparse(i32* %86, %struct.TYPE_14__* %11, i32 0)
  %88 = load i32*, i32** %8, align 8
  %89 = call i8* @svn_uri_canonicalize(i32* %87, i32* %88)
  %90 = load i8**, i8*** %7, align 8
  store i8* %89, i8** %90, align 8
  br label %91

91:                                               ; preds = %78, %69
  br label %92

92:                                               ; preds = %91
  %93 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %93, i32** %5, align 8
  br label %163

94:                                               ; preds = %34, %16
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp sge i32 %100, 300
  br i1 %101, label %102, label %131

102:                                              ; preds = %94
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp slt i32 %108, 399
  br i1 %109, label %110, label %131

110:                                              ; preds = %102
  %111 = load i32, i32* @SVN_ERR_RA_SESSION_URL_MISMATCH, align 4
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp eq i32 %117, 301
  br i1 %118, label %119, label %121

119:                                              ; preds = %110
  %120 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %123

121:                                              ; preds = %110
  %122 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %123

123:                                              ; preds = %121, %119
  %124 = phi i32 [ %120, %119 ], [ %122, %121 ]
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = call i32* @svn_error_createf(i32 %111, i32* null, i32 %124, i32* %129)
  store i32* %130, i32** %5, align 8
  br label %163

131:                                              ; preds = %102, %94
  br label %132

132:                                              ; preds = %131
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp ne i32 %138, 200
  br i1 %139, label %140, label %146

140:                                              ; preds = %132
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 1
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %142, align 8
  %144 = call i32 @svn_ra_serf__unexpected_status(%struct.TYPE_15__* %143)
  %145 = call i32* @svn_error_trace(i32 %144)
  store i32* %145, i32** %5, align 8
  br label %163

146:                                              ; preds = %132
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %161

151:                                              ; preds = %146
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = call i32 @apr_pstrdup(i32 %154, i64 %157)
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 1
  store i32 %158, i32* %160, align 4
  br label %161

161:                                              ; preds = %151, %146
  %162 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %162, i32** %5, align 8
  br label %163

163:                                              ; preds = %161, %140, %123, %92, %57
  %164 = load i32*, i32** %5, align 8
  ret i32* %164
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @create_options_req(%struct.TYPE_13__**, %struct.TYPE_12__*, i32*) #1

declare dso_local i32 @svn_ra_serf__context_run_one(%struct.TYPE_15__*, i32*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @svn_path_is_url(i32*) #1

declare dso_local i8* @svn_uri_canonicalize(i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @apr_uri_unparse(i32*, %struct.TYPE_14__*, i32) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_ra_serf__unexpected_status(%struct.TYPE_15__*) #1

declare dso_local i32 @apr_pstrdup(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
