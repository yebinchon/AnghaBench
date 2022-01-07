; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_util.c_setup_serf_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_util.c_setup_serf_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i64, i32 }

@.str = private unnamed_addr constant [11 x i8] c"User-Agent\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Content-Type\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Connection\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"keep-alive\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Accept-Encoding\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"DAV\00", align 1
@SVN_DAV_NS_DAV_SVN_DEPTH = common dso_local global i8* null, align 8
@SVN_DAV_NS_DAV_SVN_MERGEINFO = common dso_local global i8* null, align 8
@SVN_DAV_NS_DAV_SVN_LOG_REVPROPS = common dso_local global i8* null, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32**, i32**, %struct.TYPE_3__*, i8*, i8*, i32*, i8*, i8*, i32, i32*, i32*)* @setup_serf_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @setup_serf_req(i32* %0, i32** %1, i32** %2, %struct.TYPE_3__* %3, i8* %4, i8* %5, i32* %6, i8* %7, i8* %8, i32 %9, i32* %10, i32* %11) #0 {
  %13 = alloca i32*, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i32**, align 8
  %16 = alloca %struct.TYPE_3__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  store i32* %0, i32** %13, align 8
  store i32** %1, i32*** %14, align 8
  store i32** %2, i32*** %15, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %16, align 8
  store i8* %4, i8** %17, align 8
  store i8* %5, i8** %18, align 8
  store i32* %6, i32** %19, align 8
  store i8* %7, i8** %20, align 8
  store i8* %8, i8** %21, align 8
  store i32 %9, i32* %22, align 4
  store i32* %10, i32** %23, align 8
  store i32* %11, i32** %24, align 8
  %28 = load i32*, i32** %13, align 8
  %29 = call i32* @serf_request_get_alloc(i32* %28)
  store i32* %29, i32** %25, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %12
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  br label %40

40:                                               ; preds = %34, %12
  %41 = phi i1 [ true, %12 ], [ %39, %34 ]
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %27, align 4
  %43 = load i32, i32* %27, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %61

45:                                               ; preds = %40
  %46 = load i32*, i32** %19, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %61

48:                                               ; preds = %45
  %49 = load i32*, i32** %19, align 8
  %50 = load i32*, i32** %23, align 8
  %51 = load i32*, i32** %24, align 8
  %52 = call i32 @svn_ra_serf__copy_into_spillbuf(i32** %26, i32* %49, i32* %50, i32* %51)
  %53 = call i32 @SVN_ERR(i32 %52)
  %54 = load i32*, i32** %19, align 8
  %55 = call i32 @serf_bucket_destroy(i32* %54)
  %56 = load i32*, i32** %26, align 8
  %57 = load i32*, i32** %25, align 8
  %58 = load i32*, i32** %23, align 8
  %59 = load i32*, i32** %24, align 8
  %60 = call i32* @svn_ra_serf__create_sb_bucket(i32* %56, i32* %57, i32* %58, i32* %59)
  store i32* %60, i32** %19, align 8
  br label %61

61:                                               ; preds = %48, %45, %40
  %62 = load i32*, i32** %13, align 8
  %63 = load i8*, i8** %17, align 8
  %64 = load i8*, i8** %18, align 8
  %65 = load i32*, i32** %19, align 8
  %66 = load i32*, i32** %25, align 8
  %67 = call i32* @serf_request_bucket_request_create(i32* %62, i8* %63, i8* %64, i32* %65, i32* %66)
  %68 = load i32**, i32*** %14, align 8
  store i32* %67, i32** %68, align 8
  %69 = load i32, i32* %27, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %85

71:                                               ; preds = %61
  %72 = load i32*, i32** %19, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load i32**, i32*** %14, align 8
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @serf_bucket_request_set_CL(i32* %76, i32 0)
  br label %84

78:                                               ; preds = %71
  %79 = load i32**, i32*** %14, align 8
  %80 = load i32*, i32** %79, align 8
  %81 = load i32*, i32** %26, align 8
  %82 = call i32 @svn_spillbuf__get_size(i32* %81)
  %83 = call i32 @serf_bucket_request_set_CL(i32* %80, i32 %82)
  br label %84

84:                                               ; preds = %78, %74
  br label %85

85:                                               ; preds = %84, %61
  %86 = load i32**, i32*** %14, align 8
  %87 = load i32*, i32** %86, align 8
  %88 = call i32* @serf_bucket_request_get_headers(i32* %87)
  %89 = load i32**, i32*** %15, align 8
  store i32* %88, i32** %89, align 8
  %90 = load i32**, i32*** %15, align 8
  %91 = load i32*, i32** %90, align 8
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @serf_bucket_headers_setn(i32* %91, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %94)
  %96 = load i8*, i8** %20, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %103

98:                                               ; preds = %85
  %99 = load i32**, i32*** %15, align 8
  %100 = load i32*, i32** %99, align 8
  %101 = load i8*, i8** %20, align 8
  %102 = call i32 @serf_bucket_headers_setn(i32* %100, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %101)
  br label %103

103:                                              ; preds = %98, %85
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %103
  %109 = load i32**, i32*** %15, align 8
  %110 = load i32*, i32** %109, align 8
  %111 = call i32 @serf_bucket_headers_setn(i32* %110, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %112

112:                                              ; preds = %108, %103
  %113 = load i8*, i8** %21, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %120

115:                                              ; preds = %112
  %116 = load i32**, i32*** %15, align 8
  %117 = load i32*, i32** %116, align 8
  %118 = load i8*, i8** %21, align 8
  %119 = call i32 @serf_bucket_headers_setn(i32* %117, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %118)
  br label %120

120:                                              ; preds = %115, %112
  %121 = load i32, i32* %22, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %136

123:                                              ; preds = %120
  %124 = load i32**, i32*** %15, align 8
  %125 = load i32*, i32** %124, align 8
  %126 = load i8*, i8** @SVN_DAV_NS_DAV_SVN_DEPTH, align 8
  %127 = call i32 @serf_bucket_headers_setn(i32* %125, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %126)
  %128 = load i32**, i32*** %15, align 8
  %129 = load i32*, i32** %128, align 8
  %130 = load i8*, i8** @SVN_DAV_NS_DAV_SVN_MERGEINFO, align 8
  %131 = call i32 @serf_bucket_headers_setn(i32* %129, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %130)
  %132 = load i32**, i32*** %15, align 8
  %133 = load i32*, i32** %132, align 8
  %134 = load i8*, i8** @SVN_DAV_NS_DAV_SVN_LOG_REVPROPS, align 8
  %135 = call i32 @serf_bucket_headers_setn(i32* %133, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %134)
  br label %136

136:                                              ; preds = %123, %120
  %137 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %137
}

declare dso_local i32* @serf_request_get_alloc(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_serf__copy_into_spillbuf(i32**, i32*, i32*, i32*) #1

declare dso_local i32 @serf_bucket_destroy(i32*) #1

declare dso_local i32* @svn_ra_serf__create_sb_bucket(i32*, i32*, i32*, i32*) #1

declare dso_local i32* @serf_request_bucket_request_create(i32*, i8*, i8*, i32*, i32*) #1

declare dso_local i32 @serf_bucket_request_set_CL(i32*, i32) #1

declare dso_local i32 @svn_spillbuf__get_size(i32*) #1

declare dso_local i32* @serf_bucket_request_get_headers(i32*) #1

declare dso_local i32 @serf_bucket_headers_setn(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
