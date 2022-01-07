; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_update.c_link_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_update.c_link_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

@SVN_ERR_RA_DAV_MALFORMED_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Unable to parse URL '%s'\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@SVN_VA_NULL = common dso_local global i32 0, align 4
@svn_xml_protect_pcdata = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"S:entry\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"rev\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"lock-token\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"depth\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"linkpath\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"start-empty\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@APR_SUCCESS = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i8*, i32, i32, i64, i8*, i32*)* @link_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @link_path(i8* %0, i8* %1, i8* %2, i32 %3, i32 %4, i64 %5, i8* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_9__*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.TYPE_10__, align 4
  %22 = alloca i64, align 8
  %23 = alloca %struct.TYPE_8__*, align 8
  store i8* %0, i8** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i64 %5, i64* %15, align 8
  store i8* %6, i8** %16, align 8
  store i32* %7, i32** %17, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = bitcast i8* %24 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %25, %struct.TYPE_9__** %18, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %23, align 8
  %26 = load i32*, i32** %17, align 8
  %27 = load i8*, i8** %12, align 8
  %28 = call i64 @apr_uri_parse(i32* %26, i8* %27, %struct.TYPE_10__* %21)
  store i64 %28, i64* %22, align 8
  %29 = load i64, i64* %22, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %8
  %32 = load i32, i32* @SVN_ERR_RA_DAV_MALFORMED_DATA, align 4
  %33 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %34 = load i8*, i8** %12, align 8
  %35 = call i32* @svn_error_createf(i32 %32, i32* null, i32 %33, i8* %34)
  store i32* %35, i32** %9, align 8
  br label %125

36:                                               ; preds = %8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %17, align 8
  %41 = call i32 @svn_ra_serf__report_resource(i8** %20, i32 %39, i32* %40)
  %42 = call i32 @SVN_ERR(i32 %41)
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %17, align 8
  %49 = call i32 @svn_ra_serf__get_relative_path(i8** %19, i32 %44, i32 %47, i32* %48)
  %50 = call i32 @SVN_ERR(i32 %49)
  %51 = load i32*, i32** %17, align 8
  %52 = load i8*, i8** %19, align 8
  %53 = load i32, i32* @SVN_VA_NULL, align 4
  %54 = call i8* @apr_pstrcat(i32* %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* %52, i32 %53)
  store i8* %54, i8** %19, align 8
  %55 = load i32*, i32** %17, align 8
  %56 = load i32, i32* @svn_xml_protect_pcdata, align 4
  %57 = load i32*, i32** %17, align 8
  %58 = load i32, i32* %13, align 4
  %59 = call i32 @apr_ltoa(i32* %57, i32 %58)
  %60 = load i8*, i8** %16, align 8
  %61 = load i32, i32* %14, align 4
  %62 = call i32 @svn_depth_to_word(i32 %61)
  %63 = load i8*, i8** %19, align 8
  %64 = load i64, i64* %15, align 8
  %65 = icmp ne i64 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* null
  %68 = load i32, i32* @SVN_VA_NULL, align 4
  %69 = call i32 @svn_xml_make_open_tag(%struct.TYPE_8__** %23, i32* %55, i32 %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %59, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %62, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* %63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8* %67, i32 %68)
  %70 = load i8*, i8** %11, align 8
  %71 = load i32*, i32** %17, align 8
  %72 = call i32 @svn_xml_escape_cdata_cstring(%struct.TYPE_8__** %23, i8* %70, i32* %71)
  %73 = load i32*, i32** %17, align 8
  %74 = call i32 @svn_xml_make_close_tag(%struct.TYPE_8__** %23, i32* %73, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = call i32 @svn_stream_write(i32 %77, i32 %80, i32* %82)
  %84 = call i32 @SVN_ERR(i32 %83)
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load i8*, i8** %11, align 8
  %89 = call i8* @apr_pstrdup(i32 %87, i8* %88)
  store i8* %89, i8** %11, align 8
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load i8*, i8** %19, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 1
  %95 = call i8* @apr_pstrdup(i32 %92, i8* %94)
  store i8* %95, i8** %19, align 8
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load i8*, i8** %11, align 8
  %100 = load i8*, i8** %19, align 8
  %101 = call i32 @svn_hash_sets(i32 %98, i8* %99, i8* %100)
  %102 = load i8*, i8** %11, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 0
  %104 = load i8, i8* %103, align 1
  %105 = icmp ne i8 %104, 0
  br i1 %105, label %123, label %106

106:                                              ; preds = %36
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 0
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %106
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = load i8*, i8** %19, align 8
  %122 = call i32 @svn_hash_sets(i32 %117, i8* %120, i8* %121)
  br label %123

123:                                              ; preds = %114, %106, %36
  %124 = load i32*, i32** @APR_SUCCESS, align 8
  store i32* %124, i32** %9, align 8
  br label %125

125:                                              ; preds = %123, %31
  %126 = load i32*, i32** %9, align 8
  ret i32* %126
}

declare dso_local i64 @apr_uri_parse(i32*, i8*, %struct.TYPE_10__*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_serf__report_resource(i8**, i32, i32*) #1

declare dso_local i32 @svn_ra_serf__get_relative_path(i8**, i32, i32, i32*) #1

declare dso_local i8* @apr_pstrcat(i32*, i8*, i8*, i32) #1

declare dso_local i32 @svn_xml_make_open_tag(%struct.TYPE_8__**, i32*, i32, i8*, i8*, i32, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @apr_ltoa(i32*, i32) #1

declare dso_local i32 @svn_depth_to_word(i32) #1

declare dso_local i32 @svn_xml_escape_cdata_cstring(%struct.TYPE_8__**, i8*, i32*) #1

declare dso_local i32 @svn_xml_make_close_tag(%struct.TYPE_8__**, i32*, i8*) #1

declare dso_local i32 @svn_stream_write(i32, i32, i32*) #1

declare dso_local i8* @apr_pstrdup(i32, i8*) #1

declare dso_local i32 @svn_hash_sets(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
