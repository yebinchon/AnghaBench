; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_update.c_update_opened.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_update.c_update_opened.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__*, %struct.TYPE_12__*, i8*, i8* }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_12__ = type { i8*, i8*, i32, i32, i32, i32, i32, i8*, i32, i8*, i8* }
%struct.TYPE_13__ = type { i8*, i8*, i8*, i32, i8* }

@.str = private unnamed_addr constant [13 x i8] c"inline-props\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@TRUE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"send-all\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"rev\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"copyfrom-path\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"copyfrom-rev\00", align 1
@SVN_ERR_XML_ATTRIB_NOT_FOUND = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [23 x i8] c"Missing '%s' attribute\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"sha1-checksum\00", align 1
@svn_checksum_sha1 = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [14 x i8] c"base-checksum\00", align 1
@svn_checksum_md5 = common dso_local global i32 0, align 4
@svn_delta_noop_window_handler = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i32, i32*, i32*)* @update_opened to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @update_opened(i32* %0, i8* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_13__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca %struct.TYPE_12__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca %struct.TYPE_12__*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = bitcast i8* %28 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %29, %struct.TYPE_11__** %12, align 8
  %30 = load i32, i32* %9, align 4
  switch i32 %30, label %318 [
    i32 128, label %31
    i32 131, label %63
    i32 134, label %63
    i32 130, label %137
    i32 133, label %137
    i32 129, label %230
    i32 132, label %294
  ]

31:                                               ; preds = %5
  %32 = load i32*, i32** %7, align 8
  %33 = call i32* @svn_ra_serf__xml_gather_since(i32* %32, i32 128)
  store i32* %33, i32** %13, align 8
  %34 = load i32*, i32** %13, align 8
  %35 = call i8* @svn_hash_gets(i32* %34, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i8* %35, i8** %14, align 8
  %36 = load i8*, i8** %14, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %31
  %39 = load i8*, i8** %14, align 8
  %40 = call i32 @strcmp(i8* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i8*, i8** @TRUE, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 3
  store i8* %43, i8** %45, align 8
  br label %46

46:                                               ; preds = %42, %38, %31
  %47 = load i32*, i32** %13, align 8
  %48 = call i8* @svn_hash_gets(i32* %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i8* %48, i8** %14, align 8
  %49 = load i8*, i8** %14, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %62

51:                                               ; preds = %46
  %52 = load i8*, i8** %14, align 8
  %53 = call i32 @strcmp(i8* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %51
  %56 = load i8*, i8** @TRUE, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 2
  store i8* %56, i8** %58, align 8
  %59 = load i8*, i8** @TRUE, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 3
  store i8* %59, i8** %61, align 8
  br label %62

62:                                               ; preds = %55, %51, %46
  br label %318

63:                                               ; preds = %5, %5
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* %9, align 4
  %66 = call i32* @svn_ra_serf__xml_gather_since(i32* %64, i32 %65)
  store i32* %66, i32** %13, align 8
  %67 = load i32*, i32** %13, align 8
  %68 = call i8* @svn_hash_gets(i32* %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i8* %68, i8** %16, align 8
  %69 = load i8*, i8** %16, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %63
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8** %16, align 8
  br label %72

72:                                               ; preds = %71, %63
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %74 = load i8*, i8** %16, align 8
  %75 = load i32*, i32** %11, align 8
  %76 = call i32 @create_dir_baton(%struct.TYPE_13__** %15, %struct.TYPE_11__* %73, i8* %74, i32* %75)
  %77 = call i32 @SVN_ERR(i32 %76)
  %78 = load i32, i32* %9, align 4
  %79 = icmp eq i32 %78, 131
  br i1 %79, label %80, label %90

80:                                               ; preds = %72
  %81 = load i32*, i32** %13, align 8
  %82 = call i8* @svn_hash_gets(i32* %81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %83 = call i32 @svn_cstring_atoi64(i32* %17, i8* %82)
  %84 = call i32 @SVN_ERR(i32 %83)
  %85 = load i32, i32* %17, align 4
  %86 = sext i32 %85 to i64
  %87 = inttoptr i64 %86 to i8*
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 4
  store i8* %87, i8** %89, align 8
  br label %136

90:                                               ; preds = %72
  %91 = load i32*, i32** %13, align 8
  %92 = call i8* @svn_hash_gets(i32* %91, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  store i8* %92, i8** %94, align 8
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %126

99:                                               ; preds = %90
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = call i8* @svn_fspath__canonicalize(i8* %102, i32 %105)
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 0
  store i8* %106, i8** %108, align 8
  %109 = load i32*, i32** %13, align 8
  %110 = call i8* @svn_hash_gets(i32* %109, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  store i8* %110, i8** %19, align 8
  %111 = load i8*, i8** %19, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %117, label %113

113:                                              ; preds = %99
  %114 = load i32, i32* @SVN_ERR_XML_ATTRIB_NOT_FOUND, align 4
  %115 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  %116 = call i32* @svn_error_createf(i32 %114, i32* null, i32 %115, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  store i32* %116, i32** %6, align 8
  br label %320

117:                                              ; preds = %99
  %118 = load i8*, i8** %19, align 8
  %119 = call i32 @svn_cstring_atoi64(i32* %18, i8* %118)
  %120 = call i32 @SVN_ERR(i32 %119)
  %121 = load i32, i32* %18, align 4
  %122 = sext i32 %121 to i64
  %123 = inttoptr i64 %122 to i8*
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 2
  store i8* %123, i8** %125, align 8
  br label %126

126:                                              ; preds = %117, %90
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 3
  %129 = load i8*, i8** %128, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %135, label %131

131:                                              ; preds = %126
  %132 = load i8*, i8** @TRUE, align 8
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 1
  store i8* %132, i8** %134, align 8
  br label %135

135:                                              ; preds = %131, %126
  br label %136

136:                                              ; preds = %135, %80
  br label %318

137:                                              ; preds = %5, %5
  %138 = load i32*, i32** %7, align 8
  %139 = load i32, i32* %9, align 4
  %140 = call i32* @svn_ra_serf__xml_gather_since(i32* %138, i32 %139)
  store i32* %140, i32** %13, align 8
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %142 = load i32*, i32** %13, align 8
  %143 = call i8* @svn_hash_gets(i32* %142, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %144 = load i32*, i32** %11, align 8
  %145 = call i32 @create_file_baton(%struct.TYPE_12__** %20, %struct.TYPE_11__* %141, i8* %143, i32* %144)
  %146 = call i32 @SVN_ERR(i32 %145)
  %147 = load i32, i32* %9, align 4
  %148 = icmp eq i32 %147, 130
  br i1 %148, label %149, label %159

149:                                              ; preds = %137
  %150 = load i32*, i32** %13, align 8
  %151 = call i8* @svn_hash_gets(i32* %150, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %152 = call i32 @svn_cstring_atoi64(i32* %21, i8* %151)
  %153 = call i32 @SVN_ERR(i32 %152)
  %154 = load i32, i32* %21, align 4
  %155 = sext i32 %154 to i64
  %156 = inttoptr i64 %155 to i8*
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 10
  store i8* %156, i8** %158, align 8
  br label %229

159:                                              ; preds = %137
  %160 = load i32*, i32** %13, align 8
  %161 = call i8* @svn_hash_gets(i32* %160, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 0
  store i8* %161, i8** %163, align 8
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 0
  %166 = load i8*, i8** %165, align 8
  %167 = icmp ne i8* %166, null
  br i1 %167, label %168, label %195

168:                                              ; preds = %159
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 0
  %171 = load i8*, i8** %170, align 8
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = call i8* @svn_fspath__canonicalize(i8* %171, i32 %174)
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 0
  store i8* %175, i8** %177, align 8
  %178 = load i32*, i32** %13, align 8
  %179 = call i8* @svn_hash_gets(i32* %178, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  store i8* %179, i8** %24, align 8
  %180 = load i8*, i8** %24, align 8
  %181 = icmp ne i8* %180, null
  br i1 %181, label %186, label %182

182:                                              ; preds = %168
  %183 = load i32, i32* @SVN_ERR_XML_ATTRIB_NOT_FOUND, align 4
  %184 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  %185 = call i32* @svn_error_createf(i32 %183, i32* null, i32 %184, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  store i32* %185, i32** %6, align 8
  br label %320

186:                                              ; preds = %168
  %187 = load i8*, i8** %24, align 8
  %188 = call i32 @svn_cstring_atoi64(i32* %23, i8* %187)
  %189 = call i32 @SVN_ERR(i32 %188)
  %190 = load i32, i32* %23, align 4
  %191 = sext i32 %190 to i64
  %192 = inttoptr i64 %191 to i8*
  %193 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 9
  store i8* %192, i8** %194, align 8
  br label %195

195:                                              ; preds = %186, %159
  %196 = load i32*, i32** %13, align 8
  %197 = call i8* @svn_hash_gets(i32* %196, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  store i8* %197, i8** %22, align 8
  %198 = load i8*, i8** %22, align 8
  %199 = icmp ne i8* %198, null
  br i1 %199, label %200, label %210

200:                                              ; preds = %195
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 8
  %203 = load i32, i32* @svn_checksum_sha1, align 4
  %204 = load i8*, i8** %22, align 8
  %205 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @svn_checksum_parse_hex(i32* %202, i32 %203, i8* %204, i32 %207)
  %209 = call i32 @SVN_ERR(i32 %208)
  br label %210

210:                                              ; preds = %200, %195
  %211 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 2
  %213 = load i8*, i8** %212, align 8
  %214 = icmp ne i8* %213, null
  br i1 %214, label %219, label %215

215:                                              ; preds = %210
  %216 = load i8*, i8** @TRUE, align 8
  %217 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 7
  store i8* %216, i8** %218, align 8
  br label %219

219:                                              ; preds = %215, %210
  %220 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %221 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %220, i32 0, i32 3
  %222 = load i8*, i8** %221, align 8
  %223 = icmp ne i8* %222, null
  br i1 %223, label %228, label %224

224:                                              ; preds = %219
  %225 = load i8*, i8** @TRUE, align 8
  %226 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %227 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %226, i32 0, i32 1
  store i8* %225, i8** %227, align 8
  br label %228

228:                                              ; preds = %224, %219
  br label %229

229:                                              ; preds = %228, %149
  br label %318

230:                                              ; preds = %5
  %231 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %232 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %231, i32 0, i32 1
  %233 = load %struct.TYPE_12__*, %struct.TYPE_12__** %232, align 8
  store %struct.TYPE_12__* %233, %struct.TYPE_12__** %25, align 8
  %234 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %235 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %234, i32 0, i32 2
  %236 = load i8*, i8** %235, align 8
  %237 = icmp ne i8* %236, null
  br i1 %237, label %239, label %238

238:                                              ; preds = %230
  br label %318

239:                                              ; preds = %230
  %240 = load i8*, i8** @FALSE, align 8
  %241 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %242 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i32 0, i32 7
  store i8* %240, i8** %242, align 8
  %243 = load i32*, i32** %7, align 8
  %244 = load i32, i32* %9, align 4
  %245 = call i32* @svn_ra_serf__xml_gather_since(i32* %243, i32 %244)
  store i32* %245, i32** %13, align 8
  %246 = load i32*, i32** %13, align 8
  %247 = call i8* @svn_hash_gets(i32* %246, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  store i8* %247, i8** %26, align 8
  %248 = load i8*, i8** %26, align 8
  %249 = icmp ne i8* %248, null
  br i1 %249, label %250, label %260

250:                                              ; preds = %239
  %251 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i32 0, i32 6
  %253 = load i32, i32* @svn_checksum_md5, align 4
  %254 = load i8*, i8** %26, align 8
  %255 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %256 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 8
  %258 = call i32 @svn_checksum_parse_hex(i32* %252, i32 %253, i8* %254, i32 %257)
  %259 = call i32 @SVN_ERR(i32 %258)
  br label %260

260:                                              ; preds = %250, %239
  %261 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %262 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %261, i32 0, i32 1
  %263 = load %struct.TYPE_12__*, %struct.TYPE_12__** %262, align 8
  %264 = load i32*, i32** %11, align 8
  %265 = call i32 @open_file_txdelta(%struct.TYPE_12__* %263, i32* %264)
  %266 = call i32 @SVN_ERR(i32 %265)
  %267 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %268 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %267, i32 0, i32 1
  %269 = load %struct.TYPE_12__*, %struct.TYPE_12__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %269, i32 0, i32 5
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* @svn_delta_noop_window_handler, align 4
  %273 = icmp ne i32 %271, %272
  br i1 %273, label %274, label %293

274:                                              ; preds = %260
  %275 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %276 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %275, i32 0, i32 5
  %277 = load i32, i32* %276, align 4
  %278 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %279 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %278, i32 0, i32 4
  %280 = load i32, i32* %279, align 8
  %281 = load i8*, i8** @TRUE, align 8
  %282 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %283 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %282, i32 0, i32 2
  %284 = load i32, i32* %283, align 8
  %285 = call i32* @svn_txdelta_parse_svndiff(i32 %277, i32 %280, i8* %281, i32 %284)
  store i32* %285, i32** %27, align 8
  %286 = load i32*, i32** %27, align 8
  %287 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %288 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 8
  %290 = call i32 @svn_base64_decode(i32* %286, i32 %289)
  %291 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %292 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %291, i32 0, i32 3
  store i32 %290, i32* %292, align 4
  br label %293

293:                                              ; preds = %274, %260
  br label %318

294:                                              ; preds = %5
  %295 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %296 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %295, i32 0, i32 1
  %297 = load %struct.TYPE_12__*, %struct.TYPE_12__** %296, align 8
  %298 = icmp ne %struct.TYPE_12__* %297, null
  br i1 %298, label %299, label %305

299:                                              ; preds = %294
  %300 = load i8*, i8** @TRUE, align 8
  %301 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %302 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %301, i32 0, i32 1
  %303 = load %struct.TYPE_12__*, %struct.TYPE_12__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %303, i32 0, i32 1
  store i8* %300, i8** %304, align 8
  br label %317

305:                                              ; preds = %294
  %306 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %307 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %306, i32 0, i32 0
  %308 = load %struct.TYPE_10__*, %struct.TYPE_10__** %307, align 8
  %309 = icmp ne %struct.TYPE_10__* %308, null
  br i1 %309, label %310, label %316

310:                                              ; preds = %305
  %311 = load i8*, i8** @TRUE, align 8
  %312 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %313 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %312, i32 0, i32 0
  %314 = load %struct.TYPE_10__*, %struct.TYPE_10__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %314, i32 0, i32 0
  store i8* %311, i8** %315, align 8
  br label %316

316:                                              ; preds = %310, %305
  br label %317

317:                                              ; preds = %316, %299
  br label %318

318:                                              ; preds = %5, %317, %293, %238, %229, %136, %62
  %319 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %319, i32** %6, align 8
  br label %320

320:                                              ; preds = %318, %182, %113
  %321 = load i32*, i32** %6, align 8
  ret i32* %321
}

declare dso_local i32* @svn_ra_serf__xml_gather_since(i32*, i32) #1

declare dso_local i8* @svn_hash_gets(i32*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @create_dir_baton(%struct.TYPE_13__**, %struct.TYPE_11__*, i8*, i32*) #1

declare dso_local i32 @svn_cstring_atoi64(i32*, i8*) #1

declare dso_local i8* @svn_fspath__canonicalize(i8*, i32) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @create_file_baton(%struct.TYPE_12__**, %struct.TYPE_11__*, i8*, i32*) #1

declare dso_local i32 @svn_checksum_parse_hex(i32*, i32, i8*, i32) #1

declare dso_local i32 @open_file_txdelta(%struct.TYPE_12__*, i32*) #1

declare dso_local i32* @svn_txdelta_parse_svndiff(i32, i32, i8*, i32) #1

declare dso_local i32 @svn_base64_decode(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
