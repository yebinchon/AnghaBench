; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_property.c_propfind_closed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_property.c_propfind_closed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8* }
%struct.TYPE_11__ = type { i8*, i8*, i32*, i32, i32 (i32, i8*, i8*, i8*, %struct.TYPE_10__*, i32*)* }

@MULTISTATUS = common dso_local global i32 0, align 4
@HREF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@RESPONSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@D_ = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"href\00", align 1
@COLLECTION = common dso_local global i32 0, align 4
@PROPVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"altvalue\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"collection\00", align 1
@HREF_VALUE = common dso_local global i32 0, align 4
@STATUS = common dso_local global i32 0, align 4
@PROPSTAT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"ignore-prop\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"V:encoding\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"base64\00", align 1
@SVN_ERR_RA_DAV_MALFORMED_DATA = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [31 x i8] c"Got unrecognized encoding '%s'\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"ns\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i32, %struct.TYPE_10__*, i32*, i32*)* @propfind_closed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @propfind_closed(i32* %0, i8* %1, i32 %2, %struct.TYPE_10__* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_10__*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = bitcast i8* %31 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %32, %struct.TYPE_11__** %14, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @MULTISTATUS, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %6
  br label %240

37:                                               ; preds = %6
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @HREF, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %74

41:                                               ; preds = %37
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i64 @strcmp(i8* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load i32*, i32** %13, align 8
  %52 = call i8* @svn_urlpath__canonicalize(i8* %50, i32* %51)
  store i8* %52, i8** %15, align 8
  br label %57

53:                                               ; preds = %41
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %15, align 8
  br label %57

57:                                               ; preds = %53, %47
  %58 = load i32*, i32** %8, align 8
  %59 = load i32, i32* @RESPONSE, align 4
  %60 = load i8*, i8** %15, align 8
  %61 = call i32 @svn_ra_serf__xml_note(i32* %58, i32 %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %60)
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 4
  %64 = load i32 (i32, i8*, i8*, i8*, %struct.TYPE_10__*, i32*)*, i32 (i32, i8*, i8*, i8*, %struct.TYPE_10__*, i32*)** %63, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = load i8*, i8** %15, align 8
  %69 = load i8*, i8** @D_, align 8
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %71 = load i32*, i32** %13, align 8
  %72 = call i32 %64(i32 %67, i8* %68, i8* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_10__* %70, i32* %71)
  %73 = call i32 @SVN_ERR(i32 %72)
  br label %239

74:                                               ; preds = %37
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* @COLLECTION, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load i32*, i32** %8, align 8
  %80 = load i32, i32* @PROPVAL, align 4
  %81 = call i32 @svn_ra_serf__xml_note(i32* %79, i32 %80, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  br label %238

82:                                               ; preds = %74
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* @HREF_VALUE, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %82
  %87 = load i32*, i32** %8, align 8
  %88 = load i32, i32* @PROPVAL, align 4
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @svn_ra_serf__xml_note(i32* %87, i32 %88, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %91)
  br label %237

93:                                               ; preds = %82
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* @STATUS, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %109

97:                                               ; preds = %93
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @parse_status_code(i8* %100)
  store i32 %101, i32* %16, align 4
  %102 = load i32, i32* %16, align 4
  %103 = icmp ne i32 %102, 200
  br i1 %103, label %104, label %108

104:                                              ; preds = %97
  %105 = load i32*, i32** %8, align 8
  %106 = load i32, i32* @PROPSTAT, align 4
  %107 = call i32 @svn_ra_serf__xml_note(i32* %105, i32 %106, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %108

108:                                              ; preds = %104, %97
  br label %236

109:                                              ; preds = %93
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* @PROPVAL, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %157

113:                                              ; preds = %109
  %114 = load i32*, i32** %12, align 8
  %115 = call i8* @svn_hash_gets(i32* %114, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i8* %115, i8** %21, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %117, label %121

117:                                              ; preds = %113
  %118 = load i8*, i8** %21, align 8
  %119 = load i32*, i32** %13, align 8
  %120 = call %struct.TYPE_10__* @svn_string_create(i8* %118, i32* %119)
  store %struct.TYPE_10__* %120, %struct.TYPE_10__** %18, align 8
  br label %141

121:                                              ; preds = %113
  %122 = load i32*, i32** %12, align 8
  %123 = call i8* @svn_hash_gets(i32* %122, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  store i8* %123, i8** %17, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %125, label %138

125:                                              ; preds = %121
  %126 = load i8*, i8** %17, align 8
  %127 = call i64 @strcmp(i8* %126, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %125
  %130 = load i32, i32* @SVN_ERR_RA_DAV_MALFORMED_DATA, align 4
  %131 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  %132 = load i8*, i8** %17, align 8
  %133 = call i32* @svn_error_createf(i32 %130, i32* null, i32 %131, i8* %132)
  store i32* %133, i32** %7, align 8
  br label %242

134:                                              ; preds = %125
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %136 = load i32*, i32** %13, align 8
  %137 = call %struct.TYPE_10__* @svn_base64_decode_string(%struct.TYPE_10__* %135, i32* %136)
  store %struct.TYPE_10__* %137, %struct.TYPE_10__** %18, align 8
  br label %140

138:                                              ; preds = %121
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  store %struct.TYPE_10__* %139, %struct.TYPE_10__** %18, align 8
  br label %140

140:                                              ; preds = %138, %134
  br label %141

141:                                              ; preds = %140, %117
  %142 = load i32*, i32** %12, align 8
  %143 = call i8* @svn_hash_gets(i32* %142, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  store i8* %143, i8** %19, align 8
  %144 = load i32*, i32** %12, align 8
  %145 = call i8* @svn_hash_gets(i32* %144, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  store i8* %145, i8** %20, align 8
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 2
  %148 = load i32*, i32** %147, align 8
  %149 = load i8*, i8** %19, align 8
  %150 = load i8*, i8** %20, align 8
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 2
  %154 = load i32*, i32** %153, align 8
  %155 = call i32 @apr_hash_pool_get(i32* %154)
  %156 = call i32 @set_ns_prop(i32* %148, i8* %149, i8* %150, %struct.TYPE_10__* %151, i32 %155)
  br label %235

157:                                              ; preds = %109
  %158 = load i32, i32* %10, align 4
  %159 = load i32, i32* @PROPSTAT, align 4
  %160 = icmp eq i32 %158, %159
  %161 = zext i1 %160 to i32
  %162 = call i32 @SVN_ERR_ASSERT(i32 %161)
  %163 = load i32*, i32** %8, align 8
  %164 = load i32, i32* @RESPONSE, align 4
  %165 = call i32* @svn_ra_serf__xml_gather_since(i32* %163, i32 %164)
  store i32* %165, i32** %22, align 8
  %166 = load i32*, i32** %22, align 8
  %167 = call i8* @svn_hash_gets(i32* %166, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %168 = icmp ne i8* %167, null
  br i1 %168, label %232, label %169

169:                                              ; preds = %157
  %170 = load i32*, i32** %13, align 8
  %171 = call i32* @svn_pool_create(i32* %170)
  store i32* %171, i32** %25, align 8
  %172 = load i32*, i32** %22, align 8
  %173 = call i8* @svn_hash_gets(i32* %172, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %173, i8** %24, align 8
  %174 = load i8*, i8** %24, align 8
  %175 = icmp ne i8* %174, null
  br i1 %175, label %180, label %176

176:                                              ; preds = %169
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 1
  %179 = load i8*, i8** %178, align 8
  store i8* %179, i8** %24, align 8
  br label %180

180:                                              ; preds = %176, %169
  %181 = load i32*, i32** %13, align 8
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 2
  %184 = load i32*, i32** %183, align 8
  %185 = call i32* @apr_hash_first(i32* %181, i32* %184)
  store i32* %185, i32** %23, align 8
  br label %186

186:                                              ; preds = %226, %180
  %187 = load i32*, i32** %23, align 8
  %188 = icmp ne i32* %187, null
  br i1 %188, label %189, label %229

189:                                              ; preds = %186
  %190 = load i32*, i32** %23, align 8
  %191 = call i8* @apr_hash_this_key(i32* %190)
  store i8* %191, i8** %26, align 8
  %192 = load i32*, i32** %23, align 8
  %193 = call i8* @apr_hash_this_val(i32* %192)
  %194 = bitcast i8* %193 to i32*
  store i32* %194, i32** %27, align 8
  %195 = load i32*, i32** %25, align 8
  %196 = call i32 @svn_pool_clear(i32* %195)
  %197 = load i32*, i32** %25, align 8
  %198 = load i32*, i32** %27, align 8
  %199 = call i32* @apr_hash_first(i32* %197, i32* %198)
  store i32* %199, i32** %28, align 8
  br label %200

200:                                              ; preds = %222, %189
  %201 = load i32*, i32** %28, align 8
  %202 = icmp ne i32* %201, null
  br i1 %202, label %203, label %225

203:                                              ; preds = %200
  %204 = load i32*, i32** %28, align 8
  %205 = call i8* @apr_hash_this_key(i32* %204)
  store i8* %205, i8** %29, align 8
  %206 = load i32*, i32** %28, align 8
  %207 = call i8* @apr_hash_this_val(i32* %206)
  %208 = bitcast i8* %207 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %208, %struct.TYPE_10__** %30, align 8
  %209 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 4
  %211 = load i32 (i32, i8*, i8*, i8*, %struct.TYPE_10__*, i32*)*, i32 (i32, i8*, i8*, i8*, %struct.TYPE_10__*, i32*)** %210, align 8
  %212 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 8
  %215 = load i8*, i8** %24, align 8
  %216 = load i8*, i8** %26, align 8
  %217 = load i8*, i8** %29, align 8
  %218 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %219 = load i32*, i32** %25, align 8
  %220 = call i32 %211(i32 %214, i8* %215, i8* %216, i8* %217, %struct.TYPE_10__* %218, i32* %219)
  %221 = call i32 @SVN_ERR(i32 %220)
  br label %222

222:                                              ; preds = %203
  %223 = load i32*, i32** %28, align 8
  %224 = call i32* @apr_hash_next(i32* %223)
  store i32* %224, i32** %28, align 8
  br label %200

225:                                              ; preds = %200
  br label %226

226:                                              ; preds = %225
  %227 = load i32*, i32** %23, align 8
  %228 = call i32* @apr_hash_next(i32* %227)
  store i32* %228, i32** %23, align 8
  br label %186

229:                                              ; preds = %186
  %230 = load i32*, i32** %25, align 8
  %231 = call i32 @svn_pool_destroy(i32* %230)
  br label %232

232:                                              ; preds = %229, %157
  %233 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %233, i32 0, i32 2
  store i32* null, i32** %234, align 8
  br label %235

235:                                              ; preds = %232, %141
  br label %236

236:                                              ; preds = %235, %108
  br label %237

237:                                              ; preds = %236, %86
  br label %238

238:                                              ; preds = %237, %78
  br label %239

239:                                              ; preds = %238, %57
  br label %240

240:                                              ; preds = %239, %36
  %241 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %241, i32** %7, align 8
  br label %242

242:                                              ; preds = %240, %129
  %243 = load i32*, i32** %7, align 8
  ret i32* %243
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @svn_urlpath__canonicalize(i8*, i32*) #1

declare dso_local i32 @svn_ra_serf__xml_note(i32*, i32, i8*, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @parse_status_code(i8*) #1

declare dso_local i8* @svn_hash_gets(i32*, i8*) #1

declare dso_local %struct.TYPE_10__* @svn_string_create(i8*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.TYPE_10__* @svn_base64_decode_string(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @set_ns_prop(i32*, i8*, i8*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @apr_hash_pool_get(i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32* @svn_ra_serf__xml_gather_since(i32*, i32) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local i8* @apr_hash_this_val(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
