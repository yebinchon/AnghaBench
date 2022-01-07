; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_util.c_svn_ra_serf__discover_vcc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_util.c_svn_ra_serf__discover_vcc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { i8*, i32, i8*, %struct.TYPE_16__, i64, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i8* }
%struct.TYPE_17__ = type { i32 }

@SVN_NO_ERROR = common dso_local global %struct.TYPE_19__* null, align 8
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@base_props = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"DAV:\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"version-controlled-configuration\00", align 1
@SVN_DAV_PROP_NS_DAV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"baseline-relative-path\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"repository-uuid\00", align 1
@SVN_ERR_FS_NOT_FOUND = common dso_local global i64 0, align 8
@SVN_ERR_RA_DAV_FORBIDDEN = common dso_local global i64 0, align 8
@SVN_ERR_RA_DAV_OPTIONS_REQ_FAILED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [91 x i8] c"The PROPFIND response did not include the requested version-controlled-configuration value\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_19__* @svn_ra_serf__discover_vcc(i8** %0, %struct.TYPE_18__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_19__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_17__*, align 8
  store i8** %0, i8*** %5, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %3
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load i8**, i8*** %5, align 8
  store i8* %27, i8** %28, align 8
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_19__* %29, %struct.TYPE_19__** %4, align 8
  br label %184

30:                                               ; preds = %19, %3
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %8, align 8
  %35 = load i8**, i8*** %5, align 8
  store i8* null, i8** %35, align 8
  store i8* null, i8** %10, align 8
  br label %36

36:                                               ; preds = %103, %30
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %40 = load i32, i32* @base_props, align 4
  %41 = load i32*, i32** %7, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = call %struct.TYPE_19__* @svn_ra_serf__fetch_node_props(i32** %11, %struct.TYPE_18__* %37, i8* %38, i32 %39, i32 %40, i32* %41, i32* %42)
  store %struct.TYPE_19__* %43, %struct.TYPE_19__** %12, align 8
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %45 = icmp ne %struct.TYPE_19__* %44, null
  br i1 %45, label %59, label %46

46:                                               ; preds = %36
  %47 = load i32*, i32** %11, align 8
  %48 = call i32* @apr_hash_get(i32* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  store i32* %48, i32** %13, align 8
  %49 = load i32*, i32** %13, align 8
  %50 = call i8* @svn_prop_get_value(i32* %49, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i8**, i8*** %5, align 8
  store i8* %50, i8** %51, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = load i32, i32* @SVN_DAV_PROP_NS_DAV, align 4
  %54 = call i32* @svn_hash_gets(i32* %52, i32 %53)
  store i32* %54, i32** %13, align 8
  %55 = load i32*, i32** %13, align 8
  %56 = call i8* @svn_prop_get_value(i32* %55, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store i8* %56, i8** %9, align 8
  %57 = load i32*, i32** %13, align 8
  %58 = call i8* @svn_prop_get_value(i32* %57, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  store i8* %58, i8** %10, align 8
  br label %105

59:                                               ; preds = %36
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @SVN_ERR_FS_NOT_FOUND, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %59
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @SVN_ERR_RA_DAV_FORBIDDEN, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %73 = call %struct.TYPE_19__* @svn_error_trace(%struct.TYPE_19__* %72)
  store %struct.TYPE_19__* %73, %struct.TYPE_19__** %4, align 8
  br label %184

74:                                               ; preds = %65, %59
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %76 = call i32 @svn_error_clear(%struct.TYPE_19__* %75)
  %77 = load i8*, i8** %8, align 8
  %78 = load i32*, i32** %7, align 8
  %79 = call i8* @svn_urlpath__dirname(i8* %77, i32* %78)
  store i8* %79, i8** %8, align 8
  br label %80

80:                                               ; preds = %74
  br label %81

81:                                               ; preds = %80
  br label %82

82:                                               ; preds = %81
  %83 = load i8*, i8** %8, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 0
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %103

88:                                               ; preds = %82
  %89 = load i8*, i8** %8, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 0
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 47
  br i1 %93, label %94, label %100

94:                                               ; preds = %88
  %95 = load i8*, i8** %8, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 1
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 0
  br label %100

100:                                              ; preds = %94, %88
  %101 = phi i1 [ false, %88 ], [ %99, %94 ]
  %102 = xor i1 %101, true
  br label %103

103:                                              ; preds = %100, %82
  %104 = phi i1 [ false, %82 ], [ %102, %100 ]
  br i1 %104, label %36, label %105

105:                                              ; preds = %103, %46
  %106 = load i8**, i8*** %5, align 8
  %107 = load i8*, i8** %106, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %113, label %109

109:                                              ; preds = %105
  %110 = load i32, i32* @SVN_ERR_RA_DAV_OPTIONS_REQ_FAILED, align 4
  %111 = call i32 @_(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.4, i64 0, i64 0))
  %112 = call %struct.TYPE_19__* @svn_error_create(i32 %110, i32* null, i32 %111)
  store %struct.TYPE_19__* %112, %struct.TYPE_19__** %4, align 8
  br label %184

113:                                              ; preds = %105
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %127, label %118

118:                                              ; preds = %113
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load i8**, i8*** %5, align 8
  %123 = load i8*, i8** %122, align 8
  %124 = call i8* @apr_pstrdup(i32 %121, i8* %123)
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 0
  store i8* %124, i8** %126, align 8
  br label %127

127:                                              ; preds = %118, %113
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 4
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %169, label %132

132:                                              ; preds = %127
  %133 = load i8*, i8** %8, align 8
  %134 = load i32*, i32** %7, align 8
  %135 = call %struct.TYPE_17__* @svn_stringbuf_create(i8* %133, i32* %134)
  store %struct.TYPE_17__* %135, %struct.TYPE_17__** %14, align 8
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %137 = load i8*, i8** %9, align 8
  %138 = call i32 @svn_path_component_count(i8* %137)
  %139 = call i32 @svn_path_remove_components(%struct.TYPE_17__* %136, i32 %138)
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 3
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 5
  %144 = bitcast %struct.TYPE_16__* %141 to i8*
  %145 = bitcast %struct.TYPE_16__* %143 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %144, i8* align 8 %145, i64 8, i1 false)
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = call i64 @svn_fspath__canonicalize(i32 %148, i32 %151)
  %153 = inttoptr i64 %152 to i8*
  %154 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 0
  store i8* %153, i8** %156, align 8
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 3
  %162 = call i32 @apr_uri_unparse(i32 %159, %struct.TYPE_16__* %161, i32 0)
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = call i64 @svn_urlpath__canonicalize(i32 %162, i32 %165)
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %167, i32 0, i32 4
  store i64 %166, i64* %168, align 8
  br label %169

169:                                              ; preds = %132, %127
  %170 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %170, i32 0, i32 2
  %172 = load i8*, i8** %171, align 8
  %173 = icmp ne i8* %172, null
  br i1 %173, label %182, label %174

174:                                              ; preds = %169
  %175 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = load i8*, i8** %10, align 8
  %179 = call i8* @apr_pstrdup(i32 %177, i8* %178)
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %180, i32 0, i32 2
  store i8* %179, i8** %181, align 8
  br label %182

182:                                              ; preds = %174, %169
  %183 = load %struct.TYPE_19__*, %struct.TYPE_19__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_19__* %183, %struct.TYPE_19__** %4, align 8
  br label %184

184:                                              ; preds = %182, %109, %71, %24
  %185 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  ret %struct.TYPE_19__* %185
}

declare dso_local %struct.TYPE_19__* @svn_ra_serf__fetch_node_props(i32**, %struct.TYPE_18__*, i8*, i32, i32, i32*, i32*) #1

declare dso_local i32* @apr_hash_get(i32*, i8*, i32) #1

declare dso_local i8* @svn_prop_get_value(i32*, i8*) #1

declare dso_local i32* @svn_hash_gets(i32*, i32) #1

declare dso_local %struct.TYPE_19__* @svn_error_trace(%struct.TYPE_19__*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_19__*) #1

declare dso_local i8* @svn_urlpath__dirname(i8*, i32*) #1

declare dso_local %struct.TYPE_19__* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @apr_pstrdup(i32, i8*) #1

declare dso_local %struct.TYPE_17__* @svn_stringbuf_create(i8*, i32*) #1

declare dso_local i32 @svn_path_remove_components(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @svn_path_component_count(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @svn_fspath__canonicalize(i32, i32) #1

declare dso_local i64 @svn_urlpath__canonicalize(i32, i32) #1

declare dso_local i32 @apr_uri_unparse(i32, %struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
