; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_commit.c_apply_textdelta_stream.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_commit.c_apply_textdelta_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i8*, i32, i64, %struct.TYPE_11__*, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_15__ = type { i32*, i8*, i32, i32, i32 }
%struct.TYPE_13__ = type { i8*, %struct.TYPE_12__, %struct.TYPE_16__*, i32, i32, %struct.TYPE_15__*, i32, %struct.TYPE_14__*, i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_16__*, %struct.TYPE_13__* }

@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"PUT\00", align 1
@put_response_handler = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@create_body_from_txdelta_stream = common dso_local global i32 0, align 4
@SVN_SVNDIFF_MIME_TYPE = common dso_local global i32 0, align 4
@setup_put_headers = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i8*, i32, i8*, i32*)* @apply_textdelta_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @apply_textdelta_stream(i32* %0, i8* %1, i8* %2, i32 %3, i8* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_16__*, align 8
  %15 = alloca %struct.TYPE_15__, align 8
  %16 = alloca %struct.TYPE_13__*, align 8
  %17 = alloca %struct.TYPE_14__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %21, %struct.TYPE_16__** %14, align 8
  %22 = bitcast %struct.TYPE_15__* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %22, i8 0, i64 32, i1 false)
  %23 = load i32, i32* @TRUE, align 4
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 5
  store i32 %23, i32* %25, align 4
  %26 = load i8*, i8** %10, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 3
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %13, align 8
  %35 = call %struct.TYPE_13__* @svn_ra_serf__create_handler(i32 %33, i32* %34)
  store %struct.TYPE_13__* %35, %struct.TYPE_13__** %16, align 8
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %37, align 8
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 9
  store i32 %40, i32* %42, align 4
  %43 = load i32*, i32** %13, align 8
  %44 = call %struct.TYPE_14__* @apr_pcalloc(i32* %43, i32 16)
  store %struct.TYPE_14__* %44, %struct.TYPE_14__** %17, align 8
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 1
  store %struct.TYPE_13__* %45, %struct.TYPE_13__** %47, align 8
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  store %struct.TYPE_16__* %48, %struct.TYPE_16__** %50, align 8
  %51 = load i32, i32* @put_response_handler, align 4
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 8
  store i32 %51, i32* %53, align 8
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 7
  store %struct.TYPE_14__* %54, %struct.TYPE_14__** %56, align 8
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 3
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 3
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* %11, align 4
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 2
  store i32 %63, i32* %64, align 8
  %65 = load i8*, i8** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  store i8* %65, i8** %66, align 8
  %67 = load i32*, i32** @SVN_NO_ERROR, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  store i32* %67, i32** %68, align 8
  %69 = load i32, i32* @create_body_from_txdelta_stream, align 4
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 6
  store i32 %69, i32* %71, align 8
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 5
  store %struct.TYPE_15__* %15, %struct.TYPE_15__** %73, align 8
  %74 = load i32, i32* @SVN_SVNDIFF_MIME_TYPE, align 4
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* @setup_put_headers, align 4
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 8
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 2
  store %struct.TYPE_16__* %80, %struct.TYPE_16__** %82, align 8
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %84 = load i32*, i32** %13, align 8
  %85 = call i32* @svn_ra_serf__context_run_one(%struct.TYPE_13__* %83, i32* %84)
  store i32* %85, i32** %19, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %95

89:                                               ; preds = %6
  %90 = load i32*, i32** %19, align 8
  %91 = call i32 @svn_error_clear(i32* %90)
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = call i32* @svn_error_trace(i32* %93)
  store i32* %94, i32** %7, align 8
  br label %127

95:                                               ; preds = %6
  %96 = load i32*, i32** %19, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load i32*, i32** %19, align 8
  %100 = call i32* @svn_error_trace(i32* %99)
  store i32* %100, i32** %7, align 8
  br label %127

101:                                              ; preds = %95
  br label %102

102:                                              ; preds = %101
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %102
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %107
  store i32 201, i32* %18, align 4
  br label %114

113:                                              ; preds = %107, %102
  store i32 204, i32* %18, align 4
  br label %114

114:                                              ; preds = %113, %112
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %18, align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %114
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %123 = call i32* @svn_ra_serf__unexpected_status(%struct.TYPE_13__* %122)
  %124 = call i32* @svn_error_trace(i32* %123)
  store i32* %124, i32** %7, align 8
  br label %127

125:                                              ; preds = %114
  %126 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %126, i32** %7, align 8
  br label %127

127:                                              ; preds = %125, %121, %98, %89
  %128 = load i32*, i32** %7, align 8
  ret i32* %128
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.TYPE_13__* @svn_ra_serf__create_handler(i32, i32*) #2

declare dso_local %struct.TYPE_14__* @apr_pcalloc(i32*, i32) #2

declare dso_local i32* @svn_ra_serf__context_run_one(%struct.TYPE_13__*, i32*) #2

declare dso_local i32 @svn_error_clear(i32*) #2

declare dso_local i32* @svn_error_trace(i32*) #2

declare dso_local i32* @svn_ra_serf__unexpected_status(%struct.TYPE_13__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
