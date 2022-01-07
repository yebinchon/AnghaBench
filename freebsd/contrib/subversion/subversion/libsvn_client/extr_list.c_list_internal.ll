; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_list.c_list_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_list.c_list_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64 }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_25__ = type { i8*, i32*, i32 (i8*, i8*, %struct.TYPE_23__*, i32*, i8*, i8*, i8*, i32*)*, i32*, i8* }

@SVN_DIRENT_KIND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SVN_ERR_RA_NOT_IMPLEMENTED = common dso_local global i64 0, align 8
@list_receiver = common dso_local global i32 0, align 4
@SVN_ERR_UNSUPPORTED_FEATURE = common dso_local global i32 0, align 4
@SVN_ERR_FS_NOT_FOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"URL '%s' non-existent in revision %ld\00", align 1
@svn_node_dir = common dso_local global i64 0, align 8
@svn_depth_files = common dso_local global i32 0, align 4
@svn_depth_immediates = common dso_local global i32 0, align 4
@svn_depth_infinity = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_22__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_22__* (i8*, i32*, i32*, i32*, i32, i32, i64, i64, i8*, i8*, i32 (i8*, i8*, %struct.TYPE_23__*, i32*, i8*, i8*, i8*, i32*)*, i8*, i32*, i32*)* @list_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_22__* @list_internal(i8* %0, i32* %1, i32* %2, i32* %3, i32 %4, i32 %5, i64 %6, i64 %7, i8* %8, i8* %9, i32 (i8*, i8*, %struct.TYPE_23__*, i32*, i8*, i8*, i8*, i32*)* %10, i8* %11, i32* %12, i32* %13) #0 {
  %15 = alloca %struct.TYPE_22__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32 (i8*, i8*, %struct.TYPE_23__*, i32*, i8*, i8*, i8*, i32*)*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca %struct.TYPE_24__*, align 8
  %32 = alloca %struct.TYPE_23__*, align 8
  %33 = alloca i8*, align 8
  %34 = alloca %struct.TYPE_22__*, align 8
  %35 = alloca i32*, align 8
  %36 = alloca i32*, align 8
  %37 = alloca i32, align 4
  %38 = alloca %struct.TYPE_25__, align 8
  store i8* %0, i8** %16, align 8
  store i32* %1, i32** %17, align 8
  store i32* %2, i32** %18, align 8
  store i32* %3, i32** %19, align 8
  store i32 %4, i32* %20, align 4
  store i32 %5, i32* %21, align 4
  store i64 %6, i64* %22, align 8
  store i64 %7, i64* %23, align 8
  store i8* %8, i8** %24, align 8
  store i8* %9, i8** %25, align 8
  store i32 (i8*, i8*, %struct.TYPE_23__*, i32*, i8*, i8*, i8*, i32*)* %10, i32 (i8*, i8*, %struct.TYPE_23__*, i32*, i8*, i8*, i8*, i32*)** %26, align 8
  store i8* %11, i8** %27, align 8
  store i32* %12, i32** %28, align 8
  store i32* %13, i32** %29, align 8
  %39 = load i64, i64* %23, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %14
  %42 = load i32*, i32** %29, align 8
  %43 = call i32* @apr_hash_make(i32* %42)
  store i32* %43, i32** %36, align 8
  br label %45

44:                                               ; preds = %14
  store i32* null, i32** %36, align 8
  br label %45

45:                                               ; preds = %44, %41
  %46 = load i32, i32* @SVN_DIRENT_KIND, align 4
  %47 = load i32, i32* %21, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %21, align 4
  %49 = load i8*, i8** %16, align 8
  %50 = load i32*, i32** %17, align 8
  %51 = load i32*, i32** %18, align 8
  %52 = load i32*, i32** %28, align 8
  %53 = load i32*, i32** %29, align 8
  %54 = call i32 @svn_client__ra_session_from_path2(i32** %30, %struct.TYPE_24__** %31, i8* %49, i32* null, i32* %50, i32* %51, i32* %52, i32* %53)
  %55 = call i32 @SVN_ERR(i32 %54)
  %56 = load %struct.TYPE_24__*, %struct.TYPE_24__** %31, align 8
  %57 = load i32*, i32** %29, align 8
  %58 = call i8* @svn_client__pathrev_fspath(%struct.TYPE_24__* %56, i32* %57)
  store i8* %58, i8** %33, align 8
  %59 = load i64, i64* %22, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %85

61:                                               ; preds = %45
  %62 = load i32*, i32** %30, align 8
  %63 = load i32, i32* %20, align 4
  %64 = load i32*, i32** %29, align 8
  %65 = call %struct.TYPE_22__* @svn_ra_get_locks2(i32* %62, i32** %35, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %63, i32* %64)
  store %struct.TYPE_22__* %65, %struct.TYPE_22__** %34, align 8
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %34, align 8
  %67 = icmp ne %struct.TYPE_22__* %66, null
  br i1 %67, label %68, label %77

68:                                               ; preds = %61
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %34, align 8
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @SVN_ERR_RA_NOT_IMPLEMENTED, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %34, align 8
  %76 = call i32 @svn_error_clear(%struct.TYPE_22__* %75)
  store i32* null, i32** %35, align 8
  br label %84

77:                                               ; preds = %68, %61
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %34, align 8
  %79 = icmp ne %struct.TYPE_22__* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %34, align 8
  %82 = call %struct.TYPE_22__* @svn_error_trace(%struct.TYPE_22__* %81)
  store %struct.TYPE_22__* %82, %struct.TYPE_22__** %15, align 8
  br label %228

83:                                               ; preds = %77
  br label %84

84:                                               ; preds = %83, %74
  br label %86

85:                                               ; preds = %45
  store i32* null, i32** %35, align 8
  br label %86

86:                                               ; preds = %85, %84
  %87 = load i64, i64* %23, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %121, label %89

89:                                               ; preds = %86
  %90 = load i8*, i8** %27, align 8
  %91 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %38, i32 0, i32 4
  store i8* %90, i8** %91, align 8
  %92 = load i32*, i32** %28, align 8
  %93 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %38, i32 0, i32 3
  store i32* %92, i32** %93, align 8
  %94 = load i32 (i8*, i8*, %struct.TYPE_23__*, i32*, i8*, i8*, i8*, i32*)*, i32 (i8*, i8*, %struct.TYPE_23__*, i32*, i8*, i8*, i8*, i32*)** %26, align 8
  %95 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %38, i32 0, i32 2
  store i32 (i8*, i8*, %struct.TYPE_23__*, i32*, i8*, i8*, i8*, i32*)* %94, i32 (i8*, i8*, %struct.TYPE_23__*, i32*, i8*, i8*, i8*, i32*)** %95, align 8
  %96 = load i32*, i32** %35, align 8
  %97 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %38, i32 0, i32 1
  store i32* %96, i32** %97, align 8
  %98 = load i8*, i8** %33, align 8
  %99 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %38, i32 0, i32 0
  store i8* %98, i8** %99, align 8
  %100 = load i32*, i32** %30, align 8
  %101 = load %struct.TYPE_24__*, %struct.TYPE_24__** %31, align 8
  %102 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32*, i32** %19, align 8
  %105 = load i32, i32* %20, align 4
  %106 = load i32, i32* %21, align 4
  %107 = load i32, i32* @list_receiver, align 4
  %108 = load i32*, i32** %29, align 8
  %109 = call %struct.TYPE_22__* @svn_ra_list(i32* %100, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %103, i32* %104, i32 %105, i32 %106, i32 %107, %struct.TYPE_25__* %38, i32* %108)
  store %struct.TYPE_22__* %109, %struct.TYPE_22__** %34, align 8
  %110 = load %struct.TYPE_22__*, %struct.TYPE_22__** %34, align 8
  %111 = load i32, i32* @SVN_ERR_UNSUPPORTED_FEATURE, align 4
  %112 = call i64 @svn_error_find_cause(%struct.TYPE_22__* %110, i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %89
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %34, align 8
  %116 = call i32 @svn_error_clear(%struct.TYPE_22__* %115)
  br label %120

117:                                              ; preds = %89
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %34, align 8
  %119 = call %struct.TYPE_22__* @svn_error_trace(%struct.TYPE_22__* %118)
  store %struct.TYPE_22__* %119, %struct.TYPE_22__** %15, align 8
  br label %228

120:                                              ; preds = %114
  br label %121

121:                                              ; preds = %120, %86
  %122 = load i32*, i32** %30, align 8
  %123 = load %struct.TYPE_24__*, %struct.TYPE_24__** %31, align 8
  %124 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32*, i32** %29, align 8
  %127 = call i32 @svn_ra_stat(i32* %122, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %125, %struct.TYPE_23__** %32, i32* %126)
  %128 = call i32 @SVN_ERR(i32 %127)
  %129 = load %struct.TYPE_23__*, %struct.TYPE_23__** %32, align 8
  %130 = icmp ne %struct.TYPE_23__* %129, null
  br i1 %130, label %141, label %131

131:                                              ; preds = %121
  %132 = load i32, i32* @SVN_ERR_FS_NOT_FOUND, align 4
  %133 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %134 = load %struct.TYPE_24__*, %struct.TYPE_24__** %31, align 8
  %135 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_24__*, %struct.TYPE_24__** %31, align 8
  %138 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call %struct.TYPE_22__* @svn_error_createf(i32 %132, i32* null, i32 %133, i32 %136, i32 %139)
  store %struct.TYPE_22__* %140, %struct.TYPE_22__** %15, align 8
  br label %228

141:                                              ; preds = %121
  %142 = load i32*, i32** %29, align 8
  %143 = call i32 @svn_membuf__create(i32* %37, i32 256, i32* %142)
  %144 = load i8*, i8** %33, align 8
  %145 = load i32*, i32** %29, align 8
  %146 = call i32 @svn_dirent_dirname(i8* %144, i32* %145)
  %147 = load i32*, i32** %19, align 8
  %148 = call i64 @match_patterns(i32 %146, i32* %147, i32* %37)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %169

150:                                              ; preds = %141
  %151 = load i32 (i8*, i8*, %struct.TYPE_23__*, i32*, i8*, i8*, i8*, i32*)*, i32 (i8*, i8*, %struct.TYPE_23__*, i32*, i8*, i8*, i8*, i32*)** %26, align 8
  %152 = load i8*, i8** %27, align 8
  %153 = load %struct.TYPE_23__*, %struct.TYPE_23__** %32, align 8
  %154 = load i32*, i32** %35, align 8
  %155 = icmp ne i32* %154, null
  br i1 %155, label %156, label %160

156:                                              ; preds = %150
  %157 = load i32*, i32** %35, align 8
  %158 = load i8*, i8** %33, align 8
  %159 = call i32* @svn_hash_gets(i32* %157, i8* %158)
  br label %161

160:                                              ; preds = %150
  br label %161

161:                                              ; preds = %160, %156
  %162 = phi i32* [ %159, %156 ], [ null, %160 ]
  %163 = load i8*, i8** %33, align 8
  %164 = load i8*, i8** %24, align 8
  %165 = load i8*, i8** %25, align 8
  %166 = load i32*, i32** %29, align 8
  %167 = call i32 %151(i8* %152, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %struct.TYPE_23__* %153, i32* %162, i8* %163, i8* %164, i8* %165, i32* %166)
  %168 = call i32 @SVN_ERR(i32 %167)
  br label %169

169:                                              ; preds = %161, %141
  %170 = load %struct.TYPE_23__*, %struct.TYPE_23__** %32, align 8
  %171 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @svn_node_dir, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %207

175:                                              ; preds = %169
  %176 = load i32, i32* %20, align 4
  %177 = load i32, i32* @svn_depth_files, align 4
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %187, label %179

179:                                              ; preds = %175
  %180 = load i32, i32* %20, align 4
  %181 = load i32, i32* @svn_depth_immediates, align 4
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %187, label %183

183:                                              ; preds = %179
  %184 = load i32, i32* %20, align 4
  %185 = load i32, i32* @svn_depth_infinity, align 4
  %186 = icmp eq i32 %184, %185
  br i1 %186, label %187, label %207

187:                                              ; preds = %183, %179, %175
  %188 = load i32, i32* %21, align 4
  %189 = load %struct.TYPE_24__*, %struct.TYPE_24__** %31, align 8
  %190 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load i32*, i32** %30, align 8
  %193 = load i32*, i32** %35, align 8
  %194 = load i8*, i8** %33, align 8
  %195 = load i32*, i32** %19, align 8
  %196 = load i32, i32* %20, align 4
  %197 = load i32*, i32** %28, align 8
  %198 = load i32*, i32** %36, align 8
  %199 = load i8*, i8** %24, align 8
  %200 = load i8*, i8** %25, align 8
  %201 = load i32 (i8*, i8*, %struct.TYPE_23__*, i32*, i8*, i8*, i8*, i32*)*, i32 (i8*, i8*, %struct.TYPE_23__*, i32*, i8*, i8*, i8*, i32*)** %26, align 8
  %202 = load i8*, i8** %27, align 8
  %203 = load i32*, i32** %29, align 8
  %204 = load i32*, i32** %29, align 8
  %205 = call i32 @get_dir_contents(i32 %188, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %191, i32* %192, i32* %193, i8* %194, i32* %195, i32 %196, i32* %197, i32* %198, i8* %199, i8* %200, i32 (i8*, i8*, %struct.TYPE_23__*, i32*, i8*, i8*, i8*, i32*)* %201, i8* %202, i32* %37, i32* %203, i32* %204)
  %206 = call i32 @SVN_ERR(i32 %205)
  br label %207

207:                                              ; preds = %187, %183, %169
  %208 = load i64, i64* %23, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %226

210:                                              ; preds = %207
  %211 = load i32*, i32** %36, align 8
  %212 = call i64 @apr_hash_count(i32* %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %226

214:                                              ; preds = %210
  %215 = load i32*, i32** %36, align 8
  %216 = load i32*, i32** %19, align 8
  %217 = load i32, i32* %20, align 4
  %218 = load i32, i32* %21, align 4
  %219 = load i64, i64* %22, align 8
  %220 = load i32 (i8*, i8*, %struct.TYPE_23__*, i32*, i8*, i8*, i8*, i32*)*, i32 (i8*, i8*, %struct.TYPE_23__*, i32*, i8*, i8*, i8*, i32*)** %26, align 8
  %221 = load i8*, i8** %27, align 8
  %222 = load i32*, i32** %28, align 8
  %223 = load i32*, i32** %29, align 8
  %224 = call i32 @list_externals(i32* %215, i32* %216, i32 %217, i32 %218, i64 %219, i32 (i8*, i8*, %struct.TYPE_23__*, i32*, i8*, i8*, i8*, i32*)* %220, i8* %221, i32* %222, i32* %223)
  %225 = call i32 @SVN_ERR(i32 %224)
  br label %226

226:                                              ; preds = %214, %210, %207
  %227 = load %struct.TYPE_22__*, %struct.TYPE_22__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_22__* %227, %struct.TYPE_22__** %15, align 8
  br label %228

228:                                              ; preds = %226, %131, %117, %80
  %229 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  ret %struct.TYPE_22__* %229
}

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_client__ra_session_from_path2(i32**, %struct.TYPE_24__**, i8*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i8* @svn_client__pathrev_fspath(%struct.TYPE_24__*, i32*) #1

declare dso_local %struct.TYPE_22__* @svn_ra_get_locks2(i32*, i32**, i8*, i32, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_22__* @svn_error_trace(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_22__* @svn_ra_list(i32*, i8*, i32, i32*, i32, i32, i32, %struct.TYPE_25__*, i32*) #1

declare dso_local i64 @svn_error_find_cause(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @svn_ra_stat(i32*, i8*, i32, %struct.TYPE_23__**, i32*) #1

declare dso_local %struct.TYPE_22__* @svn_error_createf(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_membuf__create(i32*, i32, i32*) #1

declare dso_local i64 @match_patterns(i32, i32*, i32*) #1

declare dso_local i32 @svn_dirent_dirname(i8*, i32*) #1

declare dso_local i32* @svn_hash_gets(i32*, i8*) #1

declare dso_local i32 @get_dir_contents(i32, i8*, i32, i32*, i32*, i8*, i32*, i32, i32*, i32*, i8*, i8*, i32 (i8*, i8*, %struct.TYPE_23__*, i32*, i8*, i8*, i8*, i32*)*, i8*, i32*, i32*, i32*) #1

declare dso_local i64 @apr_hash_count(i32*) #1

declare dso_local i32 @list_externals(i32*, i32*, i32, i32, i64, i32 (i8*, i8*, %struct.TYPE_23__*, i32*, i8*, i8*, i8*, i32*)*, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
