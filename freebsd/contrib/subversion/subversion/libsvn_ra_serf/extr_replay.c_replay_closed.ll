; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_replay.c_replay_closed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_replay.c_replay_closed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.revision_report_t = type { %struct.replay_node_t*, %struct.TYPE_2__*, i32, %struct.replay_node_t*, i32*, i32, i32, i32, i32 (i32, i32, %struct.TYPE_2__*, i32, i32, i32*)* }
%struct.TYPE_2__ = type { i32 (i32, i8*, i32*, i32*)*, i32 (i32, i8*, i32*, i32*)*, i32 (i8*, i32, i32, i32*)*, i32 (i32, i32*)*, i32 (i32, i8*, i32*)*, i32 (i8*, i32, i8*, i32, i32*, i32*)*, i32 (i8*, i32, i8*, i32, i32*, i32*)*, i32 (i8*, i32, i32, i32*, i32*)*, i32 (i8*, i32, i32, i32*, i32*)*, i32 (i32, i32, i32*, i32*)*, i32 (i32, i32, i32*)* }
%struct.replay_node_t = type { i32, i32*, i32, i32*, %struct.replay_node_t* }

@REPLAY_REPORT = common dso_local global i32 0, align 4
@SVN_ERR_XML_MALFORMED = common dso_local global i32 0, align 4
@REPLAY_TARGET_REVISION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"rev\00", align 1
@REPLAY_OPEN_ROOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"copyfrom-rev\00", align 1
@SVN_INVALID_REVNUM = common dso_local global i64 0, align 8
@FALSE = common dso_local global i8* null, align 8
@TRUE = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"copyfrom-path\00", align 1
@REPLAY_CLOSE_FILE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"checksum\00", align 1
@REPLAY_CLOSE_DIRECTORY = common dso_local global i32 0, align 4
@REPLAY_DELETE_ENTRY = common dso_local global i32 0, align 4
@REPLAY_CHANGE_FILE_PROP = common dso_local global i32 0, align 4
@REPLAY_CHANGE_DIRECTORY_PROP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"del\00", align 1
@REPLAY_APPLY_TEXTDELTA = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i32, i32*, i32*, i32*)* @replay_closed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @replay_closed(i32* %0, i8* %1, i32 %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.revision_report_t*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.replay_node_t*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca %struct.replay_node_t*, align 8
  %26 = alloca %struct.replay_node_t*, align 8
  %27 = alloca %struct.replay_node_t*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i64, align 8
  %31 = alloca %struct.replay_node_t*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i32*, align 8
  %34 = alloca %struct.replay_node_t*, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = bitcast i8* %35 to %struct.revision_report_t*
  store %struct.revision_report_t* %36, %struct.revision_report_t** %14, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @REPLAY_REPORT, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %76

40:                                               ; preds = %6
  %41 = load %struct.revision_report_t*, %struct.revision_report_t** %14, align 8
  %42 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %41, i32 0, i32 0
  %43 = load %struct.replay_node_t*, %struct.replay_node_t** %42, align 8
  %44 = icmp ne %struct.replay_node_t* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* @SVN_ERR_XML_MALFORMED, align 4
  %47 = call i32* @svn_error_create(i32 %46, i32* null, i32* null)
  store i32* %47, i32** %7, align 8
  br label %586

48:                                               ; preds = %40
  %49 = load %struct.revision_report_t*, %struct.revision_report_t** %14, align 8
  %50 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %49, i32 0, i32 8
  %51 = load i32 (i32, i32, %struct.TYPE_2__*, i32, i32, i32*)*, i32 (i32, i32, %struct.TYPE_2__*, i32, i32, i32*)** %50, align 8
  %52 = icmp ne i32 (i32, i32, %struct.TYPE_2__*, i32, i32, i32*)* %51, null
  br i1 %52, label %53, label %75

53:                                               ; preds = %48
  %54 = load %struct.revision_report_t*, %struct.revision_report_t** %14, align 8
  %55 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %54, i32 0, i32 8
  %56 = load i32 (i32, i32, %struct.TYPE_2__*, i32, i32, i32*)*, i32 (i32, i32, %struct.TYPE_2__*, i32, i32, i32*)** %55, align 8
  %57 = load %struct.revision_report_t*, %struct.revision_report_t** %14, align 8
  %58 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %57, i32 0, i32 7
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.revision_report_t*, %struct.revision_report_t** %14, align 8
  %61 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.revision_report_t*, %struct.revision_report_t** %14, align 8
  %64 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load %struct.revision_report_t*, %struct.revision_report_t** %14, align 8
  %67 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.revision_report_t*, %struct.revision_report_t** %14, align 8
  %70 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 8
  %72 = load i32*, i32** %13, align 8
  %73 = call i32 %56(i32 %59, i32 %62, %struct.TYPE_2__* %65, i32 %68, i32 %71, i32* %72)
  %74 = call i32 @SVN_ERR(i32 %73)
  br label %75

75:                                               ; preds = %53, %48
  br label %584

76:                                               ; preds = %6
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* @REPLAY_TARGET_REVISION, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %99

80:                                               ; preds = %76
  %81 = load i32*, i32** %12, align 8
  %82 = call i8* @svn_hash_gets(i32* %81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %82, i8** %15, align 8
  %83 = load i8*, i8** %15, align 8
  %84 = call i32 @svn_cstring_atoi64(i64* %16, i8* %83)
  %85 = call i32 @SVN_ERR(i32 %84)
  %86 = load %struct.revision_report_t*, %struct.revision_report_t** %14, align 8
  %87 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %86, i32 0, i32 1
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 10
  %90 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %89, align 8
  %91 = load %struct.revision_report_t*, %struct.revision_report_t** %14, align 8
  %92 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load i64, i64* %16, align 8
  %95 = trunc i64 %94 to i32
  %96 = load i32*, i32** %13, align 8
  %97 = call i32 %90(i32 %93, i32 %95, i32* %96)
  %98 = call i32 @SVN_ERR(i32 %97)
  br label %583

99:                                               ; preds = %76
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* @REPLAY_OPEN_ROOT, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %158

103:                                              ; preds = %99
  %104 = load i32*, i32** %12, align 8
  %105 = call i8* @svn_hash_gets(i32* %104, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %105, i8** %17, align 8
  %106 = load %struct.revision_report_t*, %struct.revision_report_t** %14, align 8
  %107 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %106, i32 0, i32 4
  %108 = load i32*, i32** %107, align 8
  %109 = call i32* @svn_pool_create(i32* %108)
  store i32* %109, i32** %19, align 8
  %110 = load %struct.revision_report_t*, %struct.revision_report_t** %14, align 8
  %111 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %110, i32 0, i32 0
  %112 = load %struct.replay_node_t*, %struct.replay_node_t** %111, align 8
  %113 = icmp ne %struct.replay_node_t* %112, null
  br i1 %113, label %119, label %114

114:                                              ; preds = %103
  %115 = load %struct.revision_report_t*, %struct.revision_report_t** %14, align 8
  %116 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %115, i32 0, i32 3
  %117 = load %struct.replay_node_t*, %struct.replay_node_t** %116, align 8
  %118 = icmp ne %struct.replay_node_t* %117, null
  br i1 %118, label %119, label %122

119:                                              ; preds = %114, %103
  %120 = load i32, i32* @SVN_ERR_XML_MALFORMED, align 4
  %121 = call i32* @svn_error_create(i32 %120, i32* null, i32* null)
  store i32* %121, i32** %7, align 8
  br label %586

122:                                              ; preds = %114
  %123 = load i32*, i32** %19, align 8
  %124 = call i8* @apr_pcalloc(i32* %123, i32 40)
  %125 = bitcast i8* %124 to %struct.replay_node_t*
  %126 = load %struct.revision_report_t*, %struct.revision_report_t** %14, align 8
  %127 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %126, i32 0, i32 3
  store %struct.replay_node_t* %125, %struct.replay_node_t** %127, align 8
  %128 = load i32*, i32** %19, align 8
  %129 = load %struct.revision_report_t*, %struct.revision_report_t** %14, align 8
  %130 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %129, i32 0, i32 3
  %131 = load %struct.replay_node_t*, %struct.replay_node_t** %130, align 8
  %132 = getelementptr inbounds %struct.replay_node_t, %struct.replay_node_t* %131, i32 0, i32 3
  store i32* %128, i32** %132, align 8
  %133 = load %struct.revision_report_t*, %struct.revision_report_t** %14, align 8
  %134 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %133, i32 0, i32 3
  %135 = load %struct.replay_node_t*, %struct.replay_node_t** %134, align 8
  %136 = load %struct.revision_report_t*, %struct.revision_report_t** %14, align 8
  %137 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %136, i32 0, i32 0
  store %struct.replay_node_t* %135, %struct.replay_node_t** %137, align 8
  %138 = load i8*, i8** %17, align 8
  %139 = call i32 @svn_cstring_atoi64(i64* %18, i8* %138)
  %140 = call i32 @SVN_ERR(i32 %139)
  %141 = load %struct.revision_report_t*, %struct.revision_report_t** %14, align 8
  %142 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %141, i32 0, i32 1
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 9
  %145 = load i32 (i32, i32, i32*, i32*)*, i32 (i32, i32, i32*, i32*)** %144, align 8
  %146 = load %struct.revision_report_t*, %struct.revision_report_t** %14, align 8
  %147 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = load i64, i64* %18, align 8
  %150 = trunc i64 %149 to i32
  %151 = load i32*, i32** %19, align 8
  %152 = load %struct.revision_report_t*, %struct.revision_report_t** %14, align 8
  %153 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %152, i32 0, i32 0
  %154 = load %struct.replay_node_t*, %struct.replay_node_t** %153, align 8
  %155 = getelementptr inbounds %struct.replay_node_t, %struct.replay_node_t* %154, i32 0, i32 2
  %156 = call i32 %145(i32 %148, i32 %150, i32* %151, i32* %155)
  %157 = call i32 @SVN_ERR(i32 %156)
  br label %582

158:                                              ; preds = %99
  %159 = load i32, i32* %10, align 4
  %160 = icmp eq i32 %159, 129
  br i1 %160, label %170, label %161

161:                                              ; preds = %158
  %162 = load i32, i32* %10, align 4
  %163 = icmp eq i32 %162, 128
  br i1 %163, label %170, label %164

164:                                              ; preds = %161
  %165 = load i32, i32* %10, align 4
  %166 = icmp eq i32 %165, 131
  br i1 %166, label %170, label %167

167:                                              ; preds = %164
  %168 = load i32, i32* %10, align 4
  %169 = icmp eq i32 %168, 130
  br i1 %169, label %170, label %349

170:                                              ; preds = %167, %164, %161, %158
  %171 = load i32*, i32** %12, align 8
  %172 = call i8* @svn_hash_gets(i32* %171, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %172, i8** %22, align 8
  %173 = load %struct.revision_report_t*, %struct.revision_report_t** %14, align 8
  %174 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %173, i32 0, i32 0
  %175 = load %struct.replay_node_t*, %struct.replay_node_t** %174, align 8
  %176 = icmp ne %struct.replay_node_t* %175, null
  br i1 %176, label %177, label %184

177:                                              ; preds = %170
  %178 = load %struct.revision_report_t*, %struct.revision_report_t** %14, align 8
  %179 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %178, i32 0, i32 0
  %180 = load %struct.replay_node_t*, %struct.replay_node_t** %179, align 8
  %181 = getelementptr inbounds %struct.replay_node_t, %struct.replay_node_t* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %177, %170
  %185 = load i32, i32* @SVN_ERR_XML_MALFORMED, align 4
  %186 = call i32* @svn_error_create(i32 %185, i32* null, i32* null)
  store i32* %186, i32** %7, align 8
  br label %586

187:                                              ; preds = %177
  %188 = load %struct.revision_report_t*, %struct.revision_report_t** %14, align 8
  %189 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %188, i32 0, i32 0
  %190 = load %struct.replay_node_t*, %struct.replay_node_t** %189, align 8
  %191 = getelementptr inbounds %struct.replay_node_t, %struct.replay_node_t* %190, i32 0, i32 3
  %192 = load i32*, i32** %191, align 8
  %193 = call i32* @svn_pool_create(i32* %192)
  store i32* %193, i32** %21, align 8
  %194 = load i32*, i32** %21, align 8
  %195 = call i8* @apr_pcalloc(i32* %194, i32 40)
  %196 = bitcast i8* %195 to %struct.replay_node_t*
  store %struct.replay_node_t* %196, %struct.replay_node_t** %20, align 8
  %197 = load i32*, i32** %21, align 8
  %198 = load %struct.replay_node_t*, %struct.replay_node_t** %20, align 8
  %199 = getelementptr inbounds %struct.replay_node_t, %struct.replay_node_t* %198, i32 0, i32 3
  store i32* %197, i32** %199, align 8
  %200 = load %struct.revision_report_t*, %struct.revision_report_t** %14, align 8
  %201 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %200, i32 0, i32 0
  %202 = load %struct.replay_node_t*, %struct.replay_node_t** %201, align 8
  %203 = load %struct.replay_node_t*, %struct.replay_node_t** %20, align 8
  %204 = getelementptr inbounds %struct.replay_node_t, %struct.replay_node_t* %203, i32 0, i32 4
  store %struct.replay_node_t* %202, %struct.replay_node_t** %204, align 8
  %205 = load i32, i32* %10, align 4
  %206 = icmp eq i32 %205, 129
  br i1 %206, label %210, label %207

207:                                              ; preds = %187
  %208 = load i32, i32* %10, align 4
  %209 = icmp eq i32 %208, 128
  br i1 %209, label %210, label %213

210:                                              ; preds = %207, %187
  %211 = load i32*, i32** %12, align 8
  %212 = call i8* @svn_hash_gets(i32* %211, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %212, i8** %23, align 8
  br label %216

213:                                              ; preds = %207
  %214 = load i32*, i32** %12, align 8
  %215 = call i8* @svn_hash_gets(i32* %214, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i8* %215, i8** %23, align 8
  br label %216

216:                                              ; preds = %213, %210
  %217 = load i8*, i8** %23, align 8
  %218 = icmp ne i8* %217, null
  br i1 %218, label %219, label %223

219:                                              ; preds = %216
  %220 = load i8*, i8** %23, align 8
  %221 = call i32 @svn_cstring_atoi64(i64* %24, i8* %220)
  %222 = call i32 @SVN_ERR(i32 %221)
  br label %225

223:                                              ; preds = %216
  %224 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  store i64 %224, i64* %24, align 8
  br label %225

225:                                              ; preds = %223, %219
  %226 = load i32, i32* %10, align 4
  switch i32 %226, label %345 [
    i32 129, label %227
    i32 128, label %252
    i32 131, label %277
    i32 130, label %311
  ]

227:                                              ; preds = %225
  %228 = load i8*, i8** @FALSE, align 8
  %229 = ptrtoint i8* %228 to i32
  %230 = load %struct.replay_node_t*, %struct.replay_node_t** %20, align 8
  %231 = getelementptr inbounds %struct.replay_node_t, %struct.replay_node_t* %230, i32 0, i32 0
  store i32 %229, i32* %231, align 8
  %232 = load %struct.revision_report_t*, %struct.revision_report_t** %14, align 8
  %233 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %232, i32 0, i32 1
  %234 = load %struct.TYPE_2__*, %struct.TYPE_2__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %234, i32 0, i32 8
  %236 = load i32 (i8*, i32, i32, i32*, i32*)*, i32 (i8*, i32, i32, i32*, i32*)** %235, align 8
  %237 = load i8*, i8** %22, align 8
  %238 = load %struct.revision_report_t*, %struct.revision_report_t** %14, align 8
  %239 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %238, i32 0, i32 0
  %240 = load %struct.replay_node_t*, %struct.replay_node_t** %239, align 8
  %241 = getelementptr inbounds %struct.replay_node_t, %struct.replay_node_t* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 8
  %243 = load i64, i64* %24, align 8
  %244 = trunc i64 %243 to i32
  %245 = load %struct.replay_node_t*, %struct.replay_node_t** %20, align 8
  %246 = getelementptr inbounds %struct.replay_node_t, %struct.replay_node_t* %245, i32 0, i32 3
  %247 = load i32*, i32** %246, align 8
  %248 = load %struct.replay_node_t*, %struct.replay_node_t** %20, align 8
  %249 = getelementptr inbounds %struct.replay_node_t, %struct.replay_node_t* %248, i32 0, i32 2
  %250 = call i32 %236(i8* %237, i32 %242, i32 %244, i32* %247, i32* %249)
  %251 = call i32 @SVN_ERR(i32 %250)
  br label %345

252:                                              ; preds = %225
  %253 = load i8*, i8** @TRUE, align 8
  %254 = ptrtoint i8* %253 to i32
  %255 = load %struct.replay_node_t*, %struct.replay_node_t** %20, align 8
  %256 = getelementptr inbounds %struct.replay_node_t, %struct.replay_node_t* %255, i32 0, i32 0
  store i32 %254, i32* %256, align 8
  %257 = load %struct.revision_report_t*, %struct.revision_report_t** %14, align 8
  %258 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %257, i32 0, i32 1
  %259 = load %struct.TYPE_2__*, %struct.TYPE_2__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %259, i32 0, i32 7
  %261 = load i32 (i8*, i32, i32, i32*, i32*)*, i32 (i8*, i32, i32, i32*, i32*)** %260, align 8
  %262 = load i8*, i8** %22, align 8
  %263 = load %struct.revision_report_t*, %struct.revision_report_t** %14, align 8
  %264 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %263, i32 0, i32 0
  %265 = load %struct.replay_node_t*, %struct.replay_node_t** %264, align 8
  %266 = getelementptr inbounds %struct.replay_node_t, %struct.replay_node_t* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 8
  %268 = load i64, i64* %24, align 8
  %269 = trunc i64 %268 to i32
  %270 = load %struct.replay_node_t*, %struct.replay_node_t** %20, align 8
  %271 = getelementptr inbounds %struct.replay_node_t, %struct.replay_node_t* %270, i32 0, i32 3
  %272 = load i32*, i32** %271, align 8
  %273 = load %struct.replay_node_t*, %struct.replay_node_t** %20, align 8
  %274 = getelementptr inbounds %struct.replay_node_t, %struct.replay_node_t* %273, i32 0, i32 2
  %275 = call i32 %261(i8* %262, i32 %267, i32 %269, i32* %272, i32* %274)
  %276 = call i32 @SVN_ERR(i32 %275)
  br label %345

277:                                              ; preds = %225
  %278 = load i8*, i8** @FALSE, align 8
  %279 = ptrtoint i8* %278 to i32
  %280 = load %struct.replay_node_t*, %struct.replay_node_t** %20, align 8
  %281 = getelementptr inbounds %struct.replay_node_t, %struct.replay_node_t* %280, i32 0, i32 0
  store i32 %279, i32* %281, align 8
  %282 = load %struct.revision_report_t*, %struct.revision_report_t** %14, align 8
  %283 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %282, i32 0, i32 1
  %284 = load %struct.TYPE_2__*, %struct.TYPE_2__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %284, i32 0, i32 6
  %286 = load i32 (i8*, i32, i8*, i32, i32*, i32*)*, i32 (i8*, i32, i8*, i32, i32*, i32*)** %285, align 8
  %287 = load i8*, i8** %22, align 8
  %288 = load %struct.revision_report_t*, %struct.revision_report_t** %14, align 8
  %289 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %288, i32 0, i32 0
  %290 = load %struct.replay_node_t*, %struct.replay_node_t** %289, align 8
  %291 = getelementptr inbounds %struct.replay_node_t, %struct.replay_node_t* %290, i32 0, i32 2
  %292 = load i32, i32* %291, align 8
  %293 = load i64, i64* %24, align 8
  %294 = call i32 @SVN_IS_VALID_REVNUM(i64 %293)
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %299

296:                                              ; preds = %277
  %297 = load i32*, i32** %12, align 8
  %298 = call i8* @svn_hash_gets(i32* %297, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %300

299:                                              ; preds = %277
  br label %300

300:                                              ; preds = %299, %296
  %301 = phi i8* [ %298, %296 ], [ null, %299 ]
  %302 = load i64, i64* %24, align 8
  %303 = trunc i64 %302 to i32
  %304 = load %struct.replay_node_t*, %struct.replay_node_t** %20, align 8
  %305 = getelementptr inbounds %struct.replay_node_t, %struct.replay_node_t* %304, i32 0, i32 3
  %306 = load i32*, i32** %305, align 8
  %307 = load %struct.replay_node_t*, %struct.replay_node_t** %20, align 8
  %308 = getelementptr inbounds %struct.replay_node_t, %struct.replay_node_t* %307, i32 0, i32 2
  %309 = call i32 %286(i8* %287, i32 %292, i8* %301, i32 %303, i32* %306, i32* %308)
  %310 = call i32 @SVN_ERR(i32 %309)
  br label %345

311:                                              ; preds = %225
  %312 = load i8*, i8** @TRUE, align 8
  %313 = ptrtoint i8* %312 to i32
  %314 = load %struct.replay_node_t*, %struct.replay_node_t** %20, align 8
  %315 = getelementptr inbounds %struct.replay_node_t, %struct.replay_node_t* %314, i32 0, i32 0
  store i32 %313, i32* %315, align 8
  %316 = load %struct.revision_report_t*, %struct.revision_report_t** %14, align 8
  %317 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %316, i32 0, i32 1
  %318 = load %struct.TYPE_2__*, %struct.TYPE_2__** %317, align 8
  %319 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %318, i32 0, i32 5
  %320 = load i32 (i8*, i32, i8*, i32, i32*, i32*)*, i32 (i8*, i32, i8*, i32, i32*, i32*)** %319, align 8
  %321 = load i8*, i8** %22, align 8
  %322 = load %struct.revision_report_t*, %struct.revision_report_t** %14, align 8
  %323 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %322, i32 0, i32 0
  %324 = load %struct.replay_node_t*, %struct.replay_node_t** %323, align 8
  %325 = getelementptr inbounds %struct.replay_node_t, %struct.replay_node_t* %324, i32 0, i32 2
  %326 = load i32, i32* %325, align 8
  %327 = load i64, i64* %24, align 8
  %328 = call i32 @SVN_IS_VALID_REVNUM(i64 %327)
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %333

330:                                              ; preds = %311
  %331 = load i32*, i32** %12, align 8
  %332 = call i8* @svn_hash_gets(i32* %331, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %334

333:                                              ; preds = %311
  br label %334

334:                                              ; preds = %333, %330
  %335 = phi i8* [ %332, %330 ], [ null, %333 ]
  %336 = load i64, i64* %24, align 8
  %337 = trunc i64 %336 to i32
  %338 = load %struct.replay_node_t*, %struct.replay_node_t** %20, align 8
  %339 = getelementptr inbounds %struct.replay_node_t, %struct.replay_node_t* %338, i32 0, i32 3
  %340 = load i32*, i32** %339, align 8
  %341 = load %struct.replay_node_t*, %struct.replay_node_t** %20, align 8
  %342 = getelementptr inbounds %struct.replay_node_t, %struct.replay_node_t* %341, i32 0, i32 2
  %343 = call i32 %320(i8* %321, i32 %326, i8* %335, i32 %337, i32* %340, i32* %342)
  %344 = call i32 @SVN_ERR(i32 %343)
  br label %345

345:                                              ; preds = %225, %334, %300, %252, %227
  %346 = load %struct.replay_node_t*, %struct.replay_node_t** %20, align 8
  %347 = load %struct.revision_report_t*, %struct.revision_report_t** %14, align 8
  %348 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %347, i32 0, i32 0
  store %struct.replay_node_t* %346, %struct.replay_node_t** %348, align 8
  br label %581

349:                                              ; preds = %167
  %350 = load i32, i32* %10, align 4
  %351 = load i32, i32* @REPLAY_CLOSE_FILE, align 4
  %352 = icmp eq i32 %350, %351
  br i1 %352, label %353, label %392

353:                                              ; preds = %349
  %354 = load %struct.revision_report_t*, %struct.revision_report_t** %14, align 8
  %355 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %354, i32 0, i32 0
  %356 = load %struct.replay_node_t*, %struct.replay_node_t** %355, align 8
  store %struct.replay_node_t* %356, %struct.replay_node_t** %25, align 8
  %357 = load %struct.replay_node_t*, %struct.replay_node_t** %25, align 8
  %358 = icmp ne %struct.replay_node_t* %357, null
  br i1 %358, label %359, label %364

359:                                              ; preds = %353
  %360 = load %struct.replay_node_t*, %struct.replay_node_t** %25, align 8
  %361 = getelementptr inbounds %struct.replay_node_t, %struct.replay_node_t* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 8
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %367, label %364

364:                                              ; preds = %359, %353
  %365 = load i32, i32* @SVN_ERR_XML_MALFORMED, align 4
  %366 = call i32* @svn_error_create(i32 %365, i32* null, i32* null)
  store i32* %366, i32** %7, align 8
  br label %586

367:                                              ; preds = %359
  %368 = load %struct.revision_report_t*, %struct.revision_report_t** %14, align 8
  %369 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %368, i32 0, i32 1
  %370 = load %struct.TYPE_2__*, %struct.TYPE_2__** %369, align 8
  %371 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %370, i32 0, i32 4
  %372 = load i32 (i32, i8*, i32*)*, i32 (i32, i8*, i32*)** %371, align 8
  %373 = load %struct.replay_node_t*, %struct.replay_node_t** %25, align 8
  %374 = getelementptr inbounds %struct.replay_node_t, %struct.replay_node_t* %373, i32 0, i32 2
  %375 = load i32, i32* %374, align 8
  %376 = load i32*, i32** %12, align 8
  %377 = call i8* @svn_hash_gets(i32* %376, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %378 = load %struct.replay_node_t*, %struct.replay_node_t** %25, align 8
  %379 = getelementptr inbounds %struct.replay_node_t, %struct.replay_node_t* %378, i32 0, i32 3
  %380 = load i32*, i32** %379, align 8
  %381 = call i32 %372(i32 %375, i8* %377, i32* %380)
  %382 = call i32 @SVN_ERR(i32 %381)
  %383 = load %struct.replay_node_t*, %struct.replay_node_t** %25, align 8
  %384 = getelementptr inbounds %struct.replay_node_t, %struct.replay_node_t* %383, i32 0, i32 4
  %385 = load %struct.replay_node_t*, %struct.replay_node_t** %384, align 8
  %386 = load %struct.revision_report_t*, %struct.revision_report_t** %14, align 8
  %387 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %386, i32 0, i32 0
  store %struct.replay_node_t* %385, %struct.replay_node_t** %387, align 8
  %388 = load %struct.replay_node_t*, %struct.replay_node_t** %25, align 8
  %389 = getelementptr inbounds %struct.replay_node_t, %struct.replay_node_t* %388, i32 0, i32 3
  %390 = load i32*, i32** %389, align 8
  %391 = call i32 @svn_pool_destroy(i32* %390)
  br label %580

392:                                              ; preds = %349
  %393 = load i32, i32* %10, align 4
  %394 = load i32, i32* @REPLAY_CLOSE_DIRECTORY, align 4
  %395 = icmp eq i32 %393, %394
  br i1 %395, label %396, label %433

396:                                              ; preds = %392
  %397 = load %struct.revision_report_t*, %struct.revision_report_t** %14, align 8
  %398 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %397, i32 0, i32 0
  %399 = load %struct.replay_node_t*, %struct.replay_node_t** %398, align 8
  store %struct.replay_node_t* %399, %struct.replay_node_t** %26, align 8
  %400 = load %struct.replay_node_t*, %struct.replay_node_t** %26, align 8
  %401 = icmp ne %struct.replay_node_t* %400, null
  br i1 %401, label %402, label %407

402:                                              ; preds = %396
  %403 = load %struct.replay_node_t*, %struct.replay_node_t** %26, align 8
  %404 = getelementptr inbounds %struct.replay_node_t, %struct.replay_node_t* %403, i32 0, i32 0
  %405 = load i32, i32* %404, align 8
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %407, label %410

407:                                              ; preds = %402, %396
  %408 = load i32, i32* @SVN_ERR_XML_MALFORMED, align 4
  %409 = call i32* @svn_error_create(i32 %408, i32* null, i32* null)
  store i32* %409, i32** %7, align 8
  br label %586

410:                                              ; preds = %402
  %411 = load %struct.revision_report_t*, %struct.revision_report_t** %14, align 8
  %412 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %411, i32 0, i32 1
  %413 = load %struct.TYPE_2__*, %struct.TYPE_2__** %412, align 8
  %414 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %413, i32 0, i32 3
  %415 = load i32 (i32, i32*)*, i32 (i32, i32*)** %414, align 8
  %416 = load %struct.replay_node_t*, %struct.replay_node_t** %26, align 8
  %417 = getelementptr inbounds %struct.replay_node_t, %struct.replay_node_t* %416, i32 0, i32 2
  %418 = load i32, i32* %417, align 8
  %419 = load %struct.replay_node_t*, %struct.replay_node_t** %26, align 8
  %420 = getelementptr inbounds %struct.replay_node_t, %struct.replay_node_t* %419, i32 0, i32 3
  %421 = load i32*, i32** %420, align 8
  %422 = call i32 %415(i32 %418, i32* %421)
  %423 = call i32 @SVN_ERR(i32 %422)
  %424 = load %struct.replay_node_t*, %struct.replay_node_t** %26, align 8
  %425 = getelementptr inbounds %struct.replay_node_t, %struct.replay_node_t* %424, i32 0, i32 4
  %426 = load %struct.replay_node_t*, %struct.replay_node_t** %425, align 8
  %427 = load %struct.revision_report_t*, %struct.revision_report_t** %14, align 8
  %428 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %427, i32 0, i32 0
  store %struct.replay_node_t* %426, %struct.replay_node_t** %428, align 8
  %429 = load %struct.replay_node_t*, %struct.replay_node_t** %26, align 8
  %430 = getelementptr inbounds %struct.replay_node_t, %struct.replay_node_t* %429, i32 0, i32 3
  %431 = load i32*, i32** %430, align 8
  %432 = call i32 @svn_pool_destroy(i32* %431)
  br label %579

433:                                              ; preds = %392
  %434 = load i32, i32* %10, align 4
  %435 = load i32, i32* @REPLAY_DELETE_ENTRY, align 4
  %436 = icmp eq i32 %434, %435
  br i1 %436, label %437, label %473

437:                                              ; preds = %433
  %438 = load %struct.revision_report_t*, %struct.revision_report_t** %14, align 8
  %439 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %438, i32 0, i32 0
  %440 = load %struct.replay_node_t*, %struct.replay_node_t** %439, align 8
  store %struct.replay_node_t* %440, %struct.replay_node_t** %27, align 8
  %441 = load i32*, i32** %12, align 8
  %442 = call i8* @svn_hash_gets(i32* %441, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %442, i8** %28, align 8
  %443 = load i32*, i32** %12, align 8
  %444 = call i8* @svn_hash_gets(i32* %443, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %444, i8** %29, align 8
  %445 = load %struct.replay_node_t*, %struct.replay_node_t** %27, align 8
  %446 = icmp ne %struct.replay_node_t* %445, null
  br i1 %446, label %447, label %452

447:                                              ; preds = %437
  %448 = load %struct.replay_node_t*, %struct.replay_node_t** %27, align 8
  %449 = getelementptr inbounds %struct.replay_node_t, %struct.replay_node_t* %448, i32 0, i32 0
  %450 = load i32, i32* %449, align 8
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %452, label %455

452:                                              ; preds = %447, %437
  %453 = load i32, i32* @SVN_ERR_XML_MALFORMED, align 4
  %454 = call i32* @svn_error_create(i32 %453, i32* null, i32* null)
  store i32* %454, i32** %7, align 8
  br label %586

455:                                              ; preds = %447
  %456 = load i8*, i8** %29, align 8
  %457 = call i32 @svn_cstring_atoi64(i64* %30, i8* %456)
  %458 = call i32 @SVN_ERR(i32 %457)
  %459 = load %struct.revision_report_t*, %struct.revision_report_t** %14, align 8
  %460 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %459, i32 0, i32 1
  %461 = load %struct.TYPE_2__*, %struct.TYPE_2__** %460, align 8
  %462 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %461, i32 0, i32 2
  %463 = load i32 (i8*, i32, i32, i32*)*, i32 (i8*, i32, i32, i32*)** %462, align 8
  %464 = load i8*, i8** %28, align 8
  %465 = load i64, i64* %30, align 8
  %466 = trunc i64 %465 to i32
  %467 = load %struct.replay_node_t*, %struct.replay_node_t** %27, align 8
  %468 = getelementptr inbounds %struct.replay_node_t, %struct.replay_node_t* %467, i32 0, i32 2
  %469 = load i32, i32* %468, align 8
  %470 = load i32*, i32** %13, align 8
  %471 = call i32 %463(i8* %464, i32 %466, i32 %469, i32* %470)
  %472 = call i32 @SVN_ERR(i32 %471)
  br label %578

473:                                              ; preds = %433
  %474 = load i32, i32* %10, align 4
  %475 = load i32, i32* @REPLAY_CHANGE_FILE_PROP, align 4
  %476 = icmp eq i32 %474, %475
  br i1 %476, label %481, label %477

477:                                              ; preds = %473
  %478 = load i32, i32* %10, align 4
  %479 = load i32, i32* @REPLAY_CHANGE_DIRECTORY_PROP, align 4
  %480 = icmp eq i32 %478, %479
  br i1 %480, label %481, label %544

481:                                              ; preds = %477, %473
  %482 = load %struct.revision_report_t*, %struct.revision_report_t** %14, align 8
  %483 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %482, i32 0, i32 0
  %484 = load %struct.replay_node_t*, %struct.replay_node_t** %483, align 8
  store %struct.replay_node_t* %484, %struct.replay_node_t** %31, align 8
  %485 = load %struct.replay_node_t*, %struct.replay_node_t** %31, align 8
  %486 = icmp ne %struct.replay_node_t* %485, null
  br i1 %486, label %487, label %496

487:                                              ; preds = %481
  %488 = load %struct.replay_node_t*, %struct.replay_node_t** %31, align 8
  %489 = getelementptr inbounds %struct.replay_node_t, %struct.replay_node_t* %488, i32 0, i32 0
  %490 = load i32, i32* %489, align 8
  %491 = load i32, i32* %10, align 4
  %492 = load i32, i32* @REPLAY_CHANGE_FILE_PROP, align 4
  %493 = icmp eq i32 %491, %492
  %494 = zext i1 %493 to i32
  %495 = icmp ne i32 %490, %494
  br i1 %495, label %496, label %499

496:                                              ; preds = %487, %481
  %497 = load i32, i32* @SVN_ERR_XML_MALFORMED, align 4
  %498 = call i32* @svn_error_create(i32 %497, i32* null, i32* null)
  store i32* %498, i32** %7, align 8
  br label %586

499:                                              ; preds = %487
  %500 = load i32*, i32** %12, align 8
  %501 = call i8* @svn_hash_gets(i32* %500, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %501, i8** %32, align 8
  %502 = load i32*, i32** %12, align 8
  %503 = call i8* @svn_hash_gets(i32* %502, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %504 = icmp ne i8* %503, null
  br i1 %504, label %505, label %506

505:                                              ; preds = %499
  store i32* null, i32** %33, align 8
  br label %510

506:                                              ; preds = %499
  %507 = load i32*, i32** %11, align 8
  %508 = load i32*, i32** %13, align 8
  %509 = call i32* @svn_base64_decode_string(i32* %507, i32* %508)
  store i32* %509, i32** %33, align 8
  br label %510

510:                                              ; preds = %506, %505
  %511 = load %struct.replay_node_t*, %struct.replay_node_t** %31, align 8
  %512 = getelementptr inbounds %struct.replay_node_t, %struct.replay_node_t* %511, i32 0, i32 0
  %513 = load i32, i32* %512, align 8
  %514 = icmp ne i32 %513, 0
  br i1 %514, label %515, label %529

515:                                              ; preds = %510
  %516 = load %struct.revision_report_t*, %struct.revision_report_t** %14, align 8
  %517 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %516, i32 0, i32 1
  %518 = load %struct.TYPE_2__*, %struct.TYPE_2__** %517, align 8
  %519 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %518, i32 0, i32 1
  %520 = load i32 (i32, i8*, i32*, i32*)*, i32 (i32, i8*, i32*, i32*)** %519, align 8
  %521 = load %struct.replay_node_t*, %struct.replay_node_t** %31, align 8
  %522 = getelementptr inbounds %struct.replay_node_t, %struct.replay_node_t* %521, i32 0, i32 2
  %523 = load i32, i32* %522, align 8
  %524 = load i8*, i8** %32, align 8
  %525 = load i32*, i32** %33, align 8
  %526 = load i32*, i32** %13, align 8
  %527 = call i32 %520(i32 %523, i8* %524, i32* %525, i32* %526)
  %528 = call i32 @SVN_ERR(i32 %527)
  br label %543

529:                                              ; preds = %510
  %530 = load %struct.revision_report_t*, %struct.revision_report_t** %14, align 8
  %531 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %530, i32 0, i32 1
  %532 = load %struct.TYPE_2__*, %struct.TYPE_2__** %531, align 8
  %533 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %532, i32 0, i32 0
  %534 = load i32 (i32, i8*, i32*, i32*)*, i32 (i32, i8*, i32*, i32*)** %533, align 8
  %535 = load %struct.replay_node_t*, %struct.replay_node_t** %31, align 8
  %536 = getelementptr inbounds %struct.replay_node_t, %struct.replay_node_t* %535, i32 0, i32 2
  %537 = load i32, i32* %536, align 8
  %538 = load i8*, i8** %32, align 8
  %539 = load i32*, i32** %33, align 8
  %540 = load i32*, i32** %13, align 8
  %541 = call i32 %534(i32 %537, i8* %538, i32* %539, i32* %540)
  %542 = call i32 @SVN_ERR(i32 %541)
  br label %543

543:                                              ; preds = %529, %515
  br label %577

544:                                              ; preds = %477
  %545 = load i32, i32* %10, align 4
  %546 = load i32, i32* @REPLAY_APPLY_TEXTDELTA, align 4
  %547 = icmp eq i32 %545, %546
  br i1 %547, label %548, label %576

548:                                              ; preds = %544
  %549 = load %struct.revision_report_t*, %struct.revision_report_t** %14, align 8
  %550 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %549, i32 0, i32 0
  %551 = load %struct.replay_node_t*, %struct.replay_node_t** %550, align 8
  store %struct.replay_node_t* %551, %struct.replay_node_t** %34, align 8
  %552 = load %struct.replay_node_t*, %struct.replay_node_t** %34, align 8
  %553 = icmp ne %struct.replay_node_t* %552, null
  br i1 %553, label %554, label %559

554:                                              ; preds = %548
  %555 = load %struct.replay_node_t*, %struct.replay_node_t** %34, align 8
  %556 = getelementptr inbounds %struct.replay_node_t, %struct.replay_node_t* %555, i32 0, i32 0
  %557 = load i32, i32* %556, align 8
  %558 = icmp ne i32 %557, 0
  br i1 %558, label %562, label %559

559:                                              ; preds = %554, %548
  %560 = load i32, i32* @SVN_ERR_XML_MALFORMED, align 4
  %561 = call i32* @svn_error_create(i32 %560, i32* null, i32* null)
  store i32* %561, i32** %7, align 8
  br label %586

562:                                              ; preds = %554
  %563 = load %struct.replay_node_t*, %struct.replay_node_t** %34, align 8
  %564 = getelementptr inbounds %struct.replay_node_t, %struct.replay_node_t* %563, i32 0, i32 1
  %565 = load i32*, i32** %564, align 8
  %566 = icmp ne i32* %565, null
  br i1 %566, label %567, label %573

567:                                              ; preds = %562
  %568 = load %struct.replay_node_t*, %struct.replay_node_t** %34, align 8
  %569 = getelementptr inbounds %struct.replay_node_t, %struct.replay_node_t* %568, i32 0, i32 1
  %570 = load i32*, i32** %569, align 8
  %571 = call i32 @svn_stream_close(i32* %570)
  %572 = call i32 @SVN_ERR(i32 %571)
  br label %573

573:                                              ; preds = %567, %562
  %574 = load %struct.replay_node_t*, %struct.replay_node_t** %34, align 8
  %575 = getelementptr inbounds %struct.replay_node_t, %struct.replay_node_t* %574, i32 0, i32 1
  store i32* null, i32** %575, align 8
  br label %576

576:                                              ; preds = %573, %544
  br label %577

577:                                              ; preds = %576, %543
  br label %578

578:                                              ; preds = %577, %455
  br label %579

579:                                              ; preds = %578, %410
  br label %580

580:                                              ; preds = %579, %367
  br label %581

581:                                              ; preds = %580, %345
  br label %582

582:                                              ; preds = %581, %122
  br label %583

583:                                              ; preds = %582, %80
  br label %584

584:                                              ; preds = %583, %75
  %585 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %585, i32** %7, align 8
  br label %586

586:                                              ; preds = %584, %559, %496, %452, %407, %364, %184, %119, %45
  %587 = load i32*, i32** %7, align 8
  ret i32* %587
}

declare dso_local i32* @svn_error_create(i32, i32*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i8* @svn_hash_gets(i32*, i8*) #1

declare dso_local i32 @svn_cstring_atoi64(i64*, i8*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i8* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @SVN_IS_VALID_REVNUM(i64) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i32* @svn_base64_decode_string(i32*, i32*) #1

declare dso_local i32 @svn_stream_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
