; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_client.c_perform_get_location_segments.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_client.c_perform_get_location_segments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_17__ = type { i8*, i8*, i8* }
%struct.TYPE_15__ = type { i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"w(c(?r)(?r)(?r))\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"get-location-segments\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"'get-location-segments' not implemented\00", align 1
@FALSE = common dso_local global i32 0, align 4
@SVN_RA_SVN_LIST = common dso_local global i64 0, align 8
@SVN_ERR_RA_SVN_MALFORMED_DATA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Location segment entry not a list\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"rr(?c)\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Expected valid revision range\00", align 1
@SVN_ERR_CEASE_INVOCATION = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, %struct.TYPE_16__*, i8*, i8*, i8*, i8*, i32 (%struct.TYPE_17__*, i8*, i32*)*, i8*, i32*)* @perform_get_location_segments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @perform_get_location_segments(i32** %0, %struct.TYPE_16__* %1, i8* %2, i8* %3, i8* %4, i8* %5, i32 (%struct.TYPE_17__*, i8*, i32*)* %6, i8* %7, i32* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32 (%struct.TYPE_17__*, i8*, i32*)*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_14__*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca %struct.TYPE_15__*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca %struct.TYPE_17__*, align 8
  %29 = alloca i32*, align 8
  store i32** %0, i32*** %11, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %12, align 8
  store i8* %2, i8** %13, align 8
  store i8* %3, i8** %14, align 8
  store i8* %4, i8** %15, align 8
  store i8* %5, i8** %16, align 8
  store i32 (%struct.TYPE_17__*, i8*, i32*)* %6, i32 (%struct.TYPE_17__*, i8*, i32*)** %17, align 8
  store i8* %7, i8** %18, align 8
  store i32* %8, i32** %19, align 8
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %31, align 8
  store %struct.TYPE_14__* %32, %struct.TYPE_14__** %20, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %21, align 8
  %36 = load i32*, i32** %19, align 8
  %37 = call i32* @svn_pool_create(i32* %36)
  store i32* %37, i32** %23, align 8
  %38 = load i32*, i32** %21, align 8
  %39 = load i32*, i32** %19, align 8
  %40 = load i8*, i8** %13, align 8
  %41 = load i8*, i8** %14, align 8
  %42 = load i8*, i8** %15, align 8
  %43 = load i8*, i8** %16, align 8
  %44 = call i32* @svn_ra_svn__write_tuple(i32* %38, i32* %39, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %40, i8* %41, i8* %42, i8* %43)
  %45 = call i32 @SVN_ERR(i32* %44)
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %47 = load i32*, i32** %19, align 8
  %48 = call i32 @handle_auth_request(%struct.TYPE_14__* %46, i32* %47)
  %49 = call i32 @N_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %50 = call i32* @handle_unsupported_cmd(i32 %48, i32 %49)
  %51 = call i32 @SVN_ERR(i32* %50)
  %52 = load i32, i32* @FALSE, align 4
  store i32 %52, i32* %22, align 4
  br label %53

53:                                               ; preds = %137, %9
  %54 = load i32, i32* %22, align 4
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  br i1 %56, label %57, label %138

57:                                               ; preds = %53
  %58 = load i32*, i32** %23, align 8
  %59 = call i32 @svn_pool_clear(i32* %58)
  %60 = load i32*, i32** %21, align 8
  %61 = load i32*, i32** %23, align 8
  %62 = call i32* @svn_ra_svn__read_item(i32* %60, i32* %61, %struct.TYPE_15__** %26)
  %63 = call i32 @SVN_ERR(i32* %62)
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %65 = call i64 @is_done_response(%struct.TYPE_15__* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  store i32 1, i32* %22, align 4
  br label %137

68:                                               ; preds = %57
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @SVN_RA_SVN_LIST, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load i32, i32* @SVN_ERR_RA_SVN_MALFORMED_DATA, align 4
  %76 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %77 = call i32* @svn_error_create(i32 %75, i32* null, i32 %76)
  store i32* %77, i32** %10, align 8
  br label %146

78:                                               ; preds = %68
  %79 = load i32*, i32** %23, align 8
  %80 = call %struct.TYPE_17__* @apr_pcalloc(i32* %79, i32 24)
  store %struct.TYPE_17__* %80, %struct.TYPE_17__** %28, align 8
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = call i32* @svn_ra_svn__parse_tuple(i32* %83, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %24, i8** %25, i8** %27)
  %85 = call i32 @SVN_ERR(i32* %84)
  %86 = load i8*, i8** %24, align 8
  %87 = call i64 @SVN_IS_VALID_REVNUM(i8* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %78
  %90 = load i8*, i8** %25, align 8
  %91 = call i64 @SVN_IS_VALID_REVNUM(i8* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %89, %78
  %94 = load i32, i32* @SVN_ERR_RA_SVN_MALFORMED_DATA, align 4
  %95 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %96 = call i32* @svn_error_create(i32 %94, i32* null, i32 %95)
  store i32* %96, i32** %10, align 8
  br label %146

97:                                               ; preds = %89
  %98 = load i8*, i8** %27, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = load i8*, i8** %27, align 8
  %102 = load i32*, i32** %23, align 8
  %103 = call i8* @svn_relpath_canonicalize(i8* %101, i32* %102)
  store i8* %103, i8** %27, align 8
  br label %104

104:                                              ; preds = %100, %97
  %105 = load i8*, i8** %27, align 8
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 0
  store i8* %105, i8** %107, align 8
  %108 = load i8*, i8** %24, align 8
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 2
  store i8* %108, i8** %110, align 8
  %111 = load i8*, i8** %25, align 8
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 1
  store i8* %111, i8** %113, align 8
  %114 = load i32**, i32*** %11, align 8
  %115 = load i32*, i32** %114, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %135, label %117

117:                                              ; preds = %104
  %118 = load i32 (%struct.TYPE_17__*, i8*, i32*)*, i32 (%struct.TYPE_17__*, i8*, i32*)** %17, align 8
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %120 = load i8*, i8** %18, align 8
  %121 = load i32*, i32** %23, align 8
  %122 = call i32 %118(%struct.TYPE_17__* %119, i8* %120, i32* %121)
  %123 = call i32* @svn_error_trace(i32 %122)
  store i32* %123, i32** %29, align 8
  %124 = load i32*, i32** %29, align 8
  %125 = load i32, i32* @SVN_ERR_CEASE_INVOCATION, align 4
  %126 = call i64 @svn_error_find_cause(i32* %124, i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %117
  %129 = load i32*, i32** %29, align 8
  %130 = load i32**, i32*** %11, align 8
  store i32* %129, i32** %130, align 8
  br label %134

131:                                              ; preds = %117
  %132 = load i32*, i32** %29, align 8
  %133 = call i32 @SVN_ERR(i32* %132)
  br label %134

134:                                              ; preds = %131, %128
  br label %135

135:                                              ; preds = %134, %104
  br label %136

136:                                              ; preds = %135
  br label %137

137:                                              ; preds = %136, %67
  br label %53

138:                                              ; preds = %53
  %139 = load i32*, i32** %23, align 8
  %140 = call i32 @svn_pool_destroy(i32* %139)
  %141 = load i32*, i32** %21, align 8
  %142 = load i32*, i32** %19, align 8
  %143 = call i32* @svn_ra_svn__read_cmd_response(i32* %141, i32* %142, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0))
  %144 = call i32 @SVN_ERR(i32* %143)
  %145 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %145, i32** %10, align 8
  br label %146

146:                                              ; preds = %138, %93, %74
  %147 = load i32*, i32** %10, align 8
  ret i32* %147
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @SVN_ERR(i32*) #1

declare dso_local i32* @svn_ra_svn__write_tuple(i32*, i32*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32* @handle_unsupported_cmd(i32, i32) #1

declare dso_local i32 @handle_auth_request(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32* @svn_ra_svn__read_item(i32*, i32*, %struct.TYPE_15__**) #1

declare dso_local i64 @is_done_response(%struct.TYPE_15__*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.TYPE_17__* @apr_pcalloc(i32*, i32) #1

declare dso_local i32* @svn_ra_svn__parse_tuple(i32*, i8*, i8**, i8**, i8**) #1

declare dso_local i64 @SVN_IS_VALID_REVNUM(i8*) #1

declare dso_local i8* @svn_relpath_canonicalize(i8*, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i64 @svn_error_find_cause(i32*, i32) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i32* @svn_ra_svn__read_cmd_response(i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
