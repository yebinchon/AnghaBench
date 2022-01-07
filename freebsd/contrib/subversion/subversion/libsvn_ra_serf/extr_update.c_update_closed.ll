; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_update.c_update_closed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_update.c_update_closed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i8* }
%struct.TYPE_21__ = type { %struct.TYPE_23__*, %struct.TYPE_19__*, %struct.TYPE_22__*, i32, i32, i32, i8* }
%struct.TYPE_23__ = type { i32, i32, i32, i8*, %struct.TYPE_23__*, i32, i8*, i32 }
%struct.TYPE_19__ = type { i32 (i32, i8*, %struct.TYPE_20__*, i32*)*, i32 (i32, i8*, %struct.TYPE_20__*, i32*)*, i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)*, i32 (i32, i32, i32, i32*)*, i32 (i32, i32, i32*)* }
%struct.TYPE_22__ = type { i32, i32*, i8*, i32, i32, i32, i32, i32, i8*, i8*, i32 }

@TRUE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"rev\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"encoding\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"base64\00", align 1
@SVN_ERR_XML_UNKNOWN_ENCODING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"Got unrecognized encoding '%s'\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SVN_ERR_RA_DAV_MALFORMED_DATA = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [67 x i8] c"The REPORT response did not include the requested checked-in value\00", align 1
@svn_checksum_md5 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"base-checksum\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"sha1-checksum\00", align 1
@svn_checksum_sha1 = common dso_local global i32 0, align 4
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@SVN_PROP_ENTRY_COMMITTED_REV = common dso_local global i8* null, align 8
@SVN_PROP_ENTRY_COMMITTED_DATE = common dso_local global i8* null, align 8
@SVN_PROP_ENTRY_LAST_AUTHOR = common dso_local global i8* null, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i32, %struct.TYPE_20__*, i32*, i32*)* @update_closed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @update_closed(i32* %0, i8* %1, i32 %2, %struct.TYPE_20__* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_21__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.TYPE_20__*, align 8
  %20 = alloca %struct.TYPE_22__*, align 8
  %21 = alloca %struct.TYPE_23__*, align 8
  %22 = alloca %struct.TYPE_23__*, align 8
  %23 = alloca %struct.TYPE_22__*, align 8
  %24 = alloca %struct.TYPE_22__*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca %struct.TYPE_22__*, align 8
  %33 = alloca i8*, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.TYPE_20__* %3, %struct.TYPE_20__** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = bitcast i8* %34 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %35, %struct.TYPE_21__** %14, align 8
  %36 = load i32, i32* %10, align 4
  switch i32 %36, label %582 [
    i32 129, label %37
    i32 131, label %41
    i32 141, label %59
    i32 132, label %93
    i32 133, label %93
    i32 135, label %241
    i32 143, label %241
    i32 134, label %280
    i32 142, label %280
    i32 136, label %325
    i32 137, label %341
    i32 138, label %389
    i32 145, label %431
    i32 144, label %461
    i32 130, label %491
    i32 128, label %508
    i32 140, label %508
    i32 139, label %508
  ]

37:                                               ; preds = %6
  %38 = load i8*, i8** @TRUE, align 8
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 6
  store i8* %38, i8** %40, align 8
  br label %582

41:                                               ; preds = %6
  %42 = load i32*, i32** %12, align 8
  %43 = call i8* @svn_hash_gets(i32* %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %43, i8** %15, align 8
  %44 = load i8*, i8** %15, align 8
  %45 = call i32 @svn_cstring_atoi64(i32* %16, i8* %44)
  %46 = call i32 @SVN_ERR(i32 %45)
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 5
  %51 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %50, align 8
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %16, align 4
  %56 = load i32*, i32** %13, align 8
  %57 = call i32 %51(i32 %54, i32 %55, i32* %56)
  %58 = call i32 @SVN_ERR(i32 %57)
  br label %582

59:                                               ; preds = %6
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %61, align 8
  %63 = icmp ne %struct.TYPE_22__* %62, null
  br i1 %63, label %64, label %78

64:                                               ; preds = %59
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i8* @apr_pstrdup(i32 %69, i8* %72)
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %76, i32 0, i32 8
  store i8* %73, i8** %77, align 8
  br label %92

78:                                               ; preds = %59
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = call i8* @apr_pstrdup(i32 %83, i8* %86)
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_23__*, %struct.TYPE_23__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 3
  store i8* %87, i8** %91, align 8
  br label %92

92:                                               ; preds = %78, %64
  br label %582

93:                                               ; preds = %6, %6
  %94 = load i32*, i32** %12, align 8
  %95 = call i8* @svn_hash_gets(i32* %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %95, i8** %17, align 8
  %96 = load i32, i32* %10, align 4
  %97 = icmp eq i32 %96, 133
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %19, align 8
  br label %119

99:                                               ; preds = %93
  %100 = load i32*, i32** %12, align 8
  %101 = call i8* @svn_hash_gets(i32* %100, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i8* %101, i8** %18, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %116

103:                                              ; preds = %99
  %104 = load i8*, i8** %18, align 8
  %105 = call i32 @strcmp(i8* %104, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %103
  %108 = load i32, i32* @SVN_ERR_XML_UNKNOWN_ENCODING, align 4
  %109 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %110 = load i8*, i8** %18, align 8
  %111 = call i32* @svn_error_createf(i32 %108, i32* null, i32 %109, i8* %110)
  store i32* %111, i32** %7, align 8
  br label %584

112:                                              ; preds = %103
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %114 = load i32*, i32** %13, align 8
  %115 = call %struct.TYPE_20__* @svn_base64_decode_string(%struct.TYPE_20__* %113, i32* %114)
  store %struct.TYPE_20__* %115, %struct.TYPE_20__** %19, align 8
  br label %118

116:                                              ; preds = %99
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  store %struct.TYPE_20__* %117, %struct.TYPE_20__** %19, align 8
  br label %118

118:                                              ; preds = %116, %112
  br label %119

119:                                              ; preds = %118, %98
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 2
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %121, align 8
  %123 = icmp ne %struct.TYPE_22__* %122, null
  br i1 %123, label %124, label %182

124:                                              ; preds = %119
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 2
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %126, align 8
  store %struct.TYPE_22__* %127, %struct.TYPE_22__** %20, align 8
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %129 = icmp ne %struct.TYPE_20__* %128, null
  br i1 %129, label %141, label %130

130:                                              ; preds = %124
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %132 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %141, label %135

135:                                              ; preds = %130
  %136 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %137 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %136, i32 0, i32 10
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @SVN_IS_VALID_REVNUM(i32 %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %159

141:                                              ; preds = %135, %130, %124
  %142 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %143 = load i32*, i32** %13, align 8
  %144 = call i32 @ensure_file_opened(%struct.TYPE_22__* %142, i32* %143)
  %145 = call i32 @SVN_ERR(i32 %144)
  %146 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %147 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 1
  %150 = load i32 (i32, i8*, %struct.TYPE_20__*, i32*)*, i32 (i32, i8*, %struct.TYPE_20__*, i32*)** %149, align 8
  %151 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %152 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i8*, i8** %17, align 8
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %156 = load i32*, i32** %13, align 8
  %157 = call i32 %150(i32 %153, i8* %154, %struct.TYPE_20__* %155, i32* %156)
  %158 = call i32 @SVN_ERR(i32 %157)
  br label %181

159:                                              ; preds = %135
  %160 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %161 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %160, i32 0, i32 9
  %162 = load i8*, i8** %161, align 8
  %163 = icmp ne i8* %162, null
  br i1 %163, label %171, label %164

164:                                              ; preds = %159
  %165 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %166 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 8
  %168 = call i8* @apr_hash_make(i32 %167)
  %169 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %170 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %169, i32 0, i32 9
  store i8* %168, i8** %170, align 8
  br label %171

171:                                              ; preds = %164, %159
  %172 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %173 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %172, i32 0, i32 9
  %174 = load i8*, i8** %173, align 8
  %175 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %176 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 8
  %178 = load i8*, i8** %17, align 8
  %179 = call i8* @apr_pstrdup(i32 %177, i8* %178)
  %180 = call i32 @svn_hash_sets(i8* %174, i8* %179, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0))
  br label %181

181:                                              ; preds = %171, %141
  br label %240

182:                                              ; preds = %119
  %183 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %184 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %183, i32 0, i32 0
  %185 = load %struct.TYPE_23__*, %struct.TYPE_23__** %184, align 8
  store %struct.TYPE_23__* %185, %struct.TYPE_23__** %21, align 8
  %186 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %187 = icmp ne %struct.TYPE_20__* %186, null
  br i1 %187, label %199, label %188

188:                                              ; preds = %182
  %189 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %190 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %199, label %193

193:                                              ; preds = %188
  %194 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %195 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %194, i32 0, i32 7
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @SVN_IS_VALID_REVNUM(i32 %196)
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %217

199:                                              ; preds = %193, %188, %182
  %200 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %201 = load i32*, i32** %13, align 8
  %202 = call i32 @ensure_dir_opened(%struct.TYPE_23__* %200, i32* %201)
  %203 = call i32 @SVN_ERR(i32 %202)
  %204 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %205 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %204, i32 0, i32 1
  %206 = load %struct.TYPE_19__*, %struct.TYPE_19__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %206, i32 0, i32 0
  %208 = load i32 (i32, i8*, %struct.TYPE_20__*, i32*)*, i32 (i32, i8*, %struct.TYPE_20__*, i32*)** %207, align 8
  %209 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %210 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = load i8*, i8** %17, align 8
  %213 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %214 = load i32*, i32** %13, align 8
  %215 = call i32 %208(i32 %211, i8* %212, %struct.TYPE_20__* %213, i32* %214)
  %216 = call i32 @SVN_ERR(i32 %215)
  br label %239

217:                                              ; preds = %193
  %218 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %219 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %218, i32 0, i32 6
  %220 = load i8*, i8** %219, align 8
  %221 = icmp ne i8* %220, null
  br i1 %221, label %229, label %222

222:                                              ; preds = %217
  %223 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %224 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %223, i32 0, i32 5
  %225 = load i32, i32* %224, align 8
  %226 = call i8* @apr_hash_make(i32 %225)
  %227 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %228 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %227, i32 0, i32 6
  store i8* %226, i8** %228, align 8
  br label %229

229:                                              ; preds = %222, %217
  %230 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %231 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %230, i32 0, i32 6
  %232 = load i8*, i8** %231, align 8
  %233 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %234 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %233, i32 0, i32 5
  %235 = load i32, i32* %234, align 8
  %236 = load i8*, i8** %17, align 8
  %237 = call i8* @apr_pstrdup(i32 %235, i8* %236)
  %238 = call i32 @svn_hash_sets(i8* %232, i8* %237, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0))
  br label %239

239:                                              ; preds = %229, %199
  br label %240

240:                                              ; preds = %239, %181
  br label %582

241:                                              ; preds = %6, %6
  %242 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %243 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %242, i32 0, i32 0
  %244 = load %struct.TYPE_23__*, %struct.TYPE_23__** %243, align 8
  store %struct.TYPE_23__* %244, %struct.TYPE_23__** %22, align 8
  %245 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %246 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %245, i32 0, i32 0
  %247 = load %struct.TYPE_23__*, %struct.TYPE_23__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %247, i32 0, i32 4
  %249 = load %struct.TYPE_23__*, %struct.TYPE_23__** %248, align 8
  %250 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %251 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %250, i32 0, i32 0
  store %struct.TYPE_23__* %249, %struct.TYPE_23__** %251, align 8
  %252 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %253 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 8
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %265

256:                                              ; preds = %241
  %257 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %258 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %257, i32 0, i32 3
  %259 = load i8*, i8** %258, align 8
  %260 = icmp ne i8* %259, null
  br i1 %260, label %265, label %261

261:                                              ; preds = %256
  %262 = load i32, i32* @SVN_ERR_RA_DAV_MALFORMED_DATA, align 4
  %263 = call i32 @_(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.6, i64 0, i64 0))
  %264 = call i32* @svn_error_create(i32 %262, i32* null, i32 %263)
  store i32* %264, i32** %7, align 8
  br label %584

265:                                              ; preds = %256, %241
  %266 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %267 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 8
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %274, label %270

270:                                              ; preds = %265
  %271 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %272 = call i32 @maybe_close_dir(%struct.TYPE_23__* %271)
  %273 = call i32 @SVN_ERR(i32 %272)
  br label %582

274:                                              ; preds = %265
  %275 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %276 = load i32*, i32** %13, align 8
  %277 = call i32 @fetch_for_dir(%struct.TYPE_23__* %275, i32* %276)
  %278 = call i32 @SVN_ERR(i32 %277)
  br label %279

279:                                              ; preds = %274
  br label %582

280:                                              ; preds = %6, %6
  %281 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %282 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %281, i32 0, i32 2
  %283 = load %struct.TYPE_22__*, %struct.TYPE_22__** %282, align 8
  store %struct.TYPE_22__* %283, %struct.TYPE_22__** %23, align 8
  %284 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %285 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %284, i32 0, i32 2
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %285, align 8
  %286 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %287 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %286, i32 0, i32 2
  %288 = load i8*, i8** %287, align 8
  %289 = icmp ne i8* %288, null
  br i1 %289, label %295, label %290

290:                                              ; preds = %280
  %291 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %292 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %291, i32 0, i32 7
  %293 = load i32, i32* %292, align 8
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %304

295:                                              ; preds = %290, %280
  %296 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %297 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %296, i32 0, i32 8
  %298 = load i8*, i8** %297, align 8
  %299 = icmp ne i8* %298, null
  br i1 %299, label %304, label %300

300:                                              ; preds = %295
  %301 = load i32, i32* @SVN_ERR_RA_DAV_MALFORMED_DATA, align 4
  %302 = call i32 @_(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.6, i64 0, i64 0))
  %303 = call i32* @svn_error_create(i32 %301, i32* null, i32 %302)
  store i32* %303, i32** %7, align 8
  br label %584

304:                                              ; preds = %295, %290
  %305 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %306 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %305, i32 0, i32 2
  %307 = load i8*, i8** %306, align 8
  %308 = icmp ne i8* %307, null
  br i1 %308, label %319, label %309

309:                                              ; preds = %304
  %310 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %311 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %310, i32 0, i32 7
  %312 = load i32, i32* %311, align 8
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %319, label %314

314:                                              ; preds = %309
  %315 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %316 = load i32*, i32** %13, align 8
  %317 = call i32 @close_file(%struct.TYPE_22__* %315, i32* %316)
  %318 = call i32 @SVN_ERR(i32 %317)
  br label %582

319:                                              ; preds = %309, %304
  %320 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %321 = load i32*, i32** %13, align 8
  %322 = call i32 @fetch_for_file(%struct.TYPE_22__* %320, i32* %321)
  %323 = call i32 @SVN_ERR(i32 %322)
  br label %324

324:                                              ; preds = %319
  br label %582

325:                                              ; preds = %6
  %326 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %327 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %326, i32 0, i32 2
  %328 = load %struct.TYPE_22__*, %struct.TYPE_22__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %328, i32 0, i32 6
  %330 = load i32, i32* @svn_checksum_md5, align 4
  %331 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %332 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %331, i32 0, i32 0
  %333 = load i8*, i8** %332, align 8
  %334 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %335 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %334, i32 0, i32 2
  %336 = load %struct.TYPE_22__*, %struct.TYPE_22__** %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %336, i32 0, i32 3
  %338 = load i32, i32* %337, align 8
  %339 = call i32 @svn_checksum_parse_hex(i32* %329, i32 %330, i8* %333, i32 %338)
  %340 = call i32 @SVN_ERR(i32 %339)
  br label %582

341:                                              ; preds = %6
  %342 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %343 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %342, i32 0, i32 2
  %344 = load %struct.TYPE_22__*, %struct.TYPE_22__** %343, align 8
  store %struct.TYPE_22__* %344, %struct.TYPE_22__** %24, align 8
  %345 = load i32*, i32** %12, align 8
  %346 = call i8* @svn_hash_gets(i32* %345, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  store i8* %346, i8** %25, align 8
  %347 = load i32*, i32** %12, align 8
  %348 = call i8* @svn_hash_gets(i32* %347, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  store i8* %348, i8** %26, align 8
  %349 = load i8*, i8** %25, align 8
  %350 = icmp ne i8* %349, null
  br i1 %350, label %351, label %361

351:                                              ; preds = %341
  %352 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %353 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %352, i32 0, i32 5
  %354 = load i32, i32* @svn_checksum_md5, align 4
  %355 = load i8*, i8** %25, align 8
  %356 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %357 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %356, i32 0, i32 3
  %358 = load i32, i32* %357, align 8
  %359 = call i32 @svn_checksum_parse_hex(i32* %353, i32 %354, i8* %355, i32 %358)
  %360 = call i32 @SVN_ERR(i32 %359)
  br label %361

361:                                              ; preds = %351, %341
  %362 = load i8*, i8** %26, align 8
  %363 = icmp ne i8* %362, null
  br i1 %363, label %364, label %379

364:                                              ; preds = %361
  %365 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %366 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %365, i32 0, i32 4
  %367 = load i32, i32* %366, align 4
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %379, label %369

369:                                              ; preds = %364
  %370 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %371 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %370, i32 0, i32 4
  %372 = load i32, i32* @svn_checksum_sha1, align 4
  %373 = load i8*, i8** %26, align 8
  %374 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %375 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %374, i32 0, i32 3
  %376 = load i32, i32* %375, align 8
  %377 = call i32 @svn_checksum_parse_hex(i32* %371, i32 %372, i8* %373, i32 %376)
  %378 = call i32 @SVN_ERR(i32 %377)
  br label %379

379:                                              ; preds = %369, %364, %361
  %380 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %381 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %380, i32 0, i32 3
  %382 = load i32, i32* %381, align 8
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %388, label %384

384:                                              ; preds = %379
  %385 = load i8*, i8** @TRUE, align 8
  %386 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %387 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %386, i32 0, i32 2
  store i8* %385, i8** %387, align 8
  br label %388

388:                                              ; preds = %384, %379
  br label %582

389:                                              ; preds = %6
  %390 = load i32*, i32** %12, align 8
  %391 = call i8* @svn_hash_gets(i32* %390, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %391, i8** %27, align 8
  %392 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %393 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %392, i32 0, i32 0
  %394 = load %struct.TYPE_23__*, %struct.TYPE_23__** %393, align 8
  %395 = load i32*, i32** %13, align 8
  %396 = call i32 @ensure_dir_opened(%struct.TYPE_23__* %394, i32* %395)
  %397 = call i32 @SVN_ERR(i32 %396)
  %398 = load i32*, i32** %12, align 8
  %399 = call i8* @svn_hash_gets(i32* %398, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %399, i8** %28, align 8
  %400 = load i8*, i8** %28, align 8
  %401 = icmp ne i8* %400, null
  br i1 %401, label %402, label %406

402:                                              ; preds = %389
  %403 = load i8*, i8** %28, align 8
  %404 = call i32 @svn_cstring_atoi64(i32* %29, i8* %403)
  %405 = call i32 @SVN_ERR(i32 %404)
  br label %408

406:                                              ; preds = %389
  %407 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  store i32 %407, i32* %29, align 4
  br label %408

408:                                              ; preds = %406, %402
  %409 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %410 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %409, i32 0, i32 1
  %411 = load %struct.TYPE_19__*, %struct.TYPE_19__** %410, align 8
  %412 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %411, i32 0, i32 4
  %413 = load i32 (i32, i32, i32, i32*)*, i32 (i32, i32, i32, i32*)** %412, align 8
  %414 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %415 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %414, i32 0, i32 0
  %416 = load %struct.TYPE_23__*, %struct.TYPE_23__** %415, align 8
  %417 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %416, i32 0, i32 1
  %418 = load i32, i32* %417, align 4
  %419 = load i8*, i8** %27, align 8
  %420 = load i32*, i32** %13, align 8
  %421 = call i32 @svn_relpath_join(i32 %418, i8* %419, i32* %420)
  %422 = load i32, i32* %29, align 4
  %423 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %424 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %423, i32 0, i32 0
  %425 = load %struct.TYPE_23__*, %struct.TYPE_23__** %424, align 8
  %426 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %425, i32 0, i32 0
  %427 = load i32, i32* %426, align 8
  %428 = load i32*, i32** %13, align 8
  %429 = call i32 %413(i32 %421, i32 %422, i32 %427, i32* %428)
  %430 = call i32 @SVN_ERR(i32 %429)
  br label %582

431:                                              ; preds = %6
  %432 = load i32*, i32** %12, align 8
  %433 = call i8* @svn_hash_gets(i32* %432, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %433, i8** %30, align 8
  %434 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %435 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %434, i32 0, i32 0
  %436 = load %struct.TYPE_23__*, %struct.TYPE_23__** %435, align 8
  %437 = load i32*, i32** %13, align 8
  %438 = call i32 @ensure_dir_opened(%struct.TYPE_23__* %436, i32* %437)
  %439 = call i32 @SVN_ERR(i32 %438)
  %440 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %441 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %440, i32 0, i32 1
  %442 = load %struct.TYPE_19__*, %struct.TYPE_19__** %441, align 8
  %443 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %442, i32 0, i32 3
  %444 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %443, align 8
  %445 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %446 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %445, i32 0, i32 0
  %447 = load %struct.TYPE_23__*, %struct.TYPE_23__** %446, align 8
  %448 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %447, i32 0, i32 1
  %449 = load i32, i32* %448, align 4
  %450 = load i8*, i8** %30, align 8
  %451 = load i32*, i32** %13, align 8
  %452 = call i32 @svn_relpath_join(i32 %449, i8* %450, i32* %451)
  %453 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %454 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %453, i32 0, i32 0
  %455 = load %struct.TYPE_23__*, %struct.TYPE_23__** %454, align 8
  %456 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %455, i32 0, i32 0
  %457 = load i32, i32* %456, align 8
  %458 = load i32*, i32** %13, align 8
  %459 = call i32 %444(i32 %452, i32 %457, i32* %458)
  %460 = call i32 @SVN_ERR(i32 %459)
  br label %582

461:                                              ; preds = %6
  %462 = load i32*, i32** %12, align 8
  %463 = call i8* @svn_hash_gets(i32* %462, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %463, i8** %31, align 8
  %464 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %465 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %464, i32 0, i32 0
  %466 = load %struct.TYPE_23__*, %struct.TYPE_23__** %465, align 8
  %467 = load i32*, i32** %13, align 8
  %468 = call i32 @ensure_dir_opened(%struct.TYPE_23__* %466, i32* %467)
  %469 = call i32 @SVN_ERR(i32 %468)
  %470 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %471 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %470, i32 0, i32 1
  %472 = load %struct.TYPE_19__*, %struct.TYPE_19__** %471, align 8
  %473 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %472, i32 0, i32 2
  %474 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %473, align 8
  %475 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %476 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %475, i32 0, i32 0
  %477 = load %struct.TYPE_23__*, %struct.TYPE_23__** %476, align 8
  %478 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %477, i32 0, i32 1
  %479 = load i32, i32* %478, align 4
  %480 = load i8*, i8** %31, align 8
  %481 = load i32*, i32** %13, align 8
  %482 = call i32 @svn_relpath_join(i32 %479, i8* %480, i32* %481)
  %483 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %484 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %483, i32 0, i32 0
  %485 = load %struct.TYPE_23__*, %struct.TYPE_23__** %484, align 8
  %486 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %485, i32 0, i32 0
  %487 = load i32, i32* %486, align 8
  %488 = load i32*, i32** %13, align 8
  %489 = call i32 %474(i32 %482, i32 %487, i32* %488)
  %490 = call i32 @SVN_ERR(i32 %489)
  br label %582

491:                                              ; preds = %6
  %492 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %493 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %492, i32 0, i32 2
  %494 = load %struct.TYPE_22__*, %struct.TYPE_22__** %493, align 8
  store %struct.TYPE_22__* %494, %struct.TYPE_22__** %32, align 8
  %495 = load %struct.TYPE_22__*, %struct.TYPE_22__** %32, align 8
  %496 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %495, i32 0, i32 1
  %497 = load i32*, i32** %496, align 8
  %498 = icmp ne i32* %497, null
  br i1 %498, label %499, label %507

499:                                              ; preds = %491
  %500 = load %struct.TYPE_22__*, %struct.TYPE_22__** %32, align 8
  %501 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %500, i32 0, i32 1
  %502 = load i32*, i32** %501, align 8
  %503 = call i32 @svn_stream_close(i32* %502)
  %504 = call i32 @SVN_ERR(i32 %503)
  %505 = load %struct.TYPE_22__*, %struct.TYPE_22__** %32, align 8
  %506 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %505, i32 0, i32 1
  store i32* null, i32** %506, align 8
  br label %507

507:                                              ; preds = %499, %491
  br label %582

508:                                              ; preds = %6, %6, %6
  %509 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %510 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %509, i32 0, i32 2
  %511 = load %struct.TYPE_22__*, %struct.TYPE_22__** %510, align 8
  %512 = icmp ne %struct.TYPE_22__* %511, null
  br i1 %512, label %513, label %520

513:                                              ; preds = %508
  %514 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %515 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %514, i32 0, i32 2
  %516 = load %struct.TYPE_22__*, %struct.TYPE_22__** %515, align 8
  %517 = load i32*, i32** %13, align 8
  %518 = call i32 @ensure_file_opened(%struct.TYPE_22__* %516, i32* %517)
  %519 = call i32 @SVN_ERR(i32 %518)
  br label %534

520:                                              ; preds = %508
  %521 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %522 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %521, i32 0, i32 0
  %523 = load %struct.TYPE_23__*, %struct.TYPE_23__** %522, align 8
  %524 = icmp ne %struct.TYPE_23__* %523, null
  br i1 %524, label %525, label %532

525:                                              ; preds = %520
  %526 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %527 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %526, i32 0, i32 0
  %528 = load %struct.TYPE_23__*, %struct.TYPE_23__** %527, align 8
  %529 = load i32*, i32** %13, align 8
  %530 = call i32 @ensure_dir_opened(%struct.TYPE_23__* %528, i32* %529)
  %531 = call i32 @SVN_ERR(i32 %530)
  br label %533

532:                                              ; preds = %520
  br label %582

533:                                              ; preds = %525
  br label %534

534:                                              ; preds = %533, %513
  %535 = load i32, i32* %10, align 4
  switch i32 %535, label %542 [
    i32 128, label %536
    i32 140, label %538
    i32 139, label %540
  ]

536:                                              ; preds = %534
  %537 = load i8*, i8** @SVN_PROP_ENTRY_COMMITTED_REV, align 8
  store i8* %537, i8** %33, align 8
  br label %544

538:                                              ; preds = %534
  %539 = load i8*, i8** @SVN_PROP_ENTRY_COMMITTED_DATE, align 8
  store i8* %539, i8** %33, align 8
  br label %544

540:                                              ; preds = %534
  %541 = load i8*, i8** @SVN_PROP_ENTRY_LAST_AUTHOR, align 8
  store i8* %541, i8** %33, align 8
  br label %544

542:                                              ; preds = %534
  %543 = call i32 (...) @SVN_ERR_MALFUNCTION()
  br label %544

544:                                              ; preds = %542, %540, %538, %536
  %545 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %546 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %545, i32 0, i32 2
  %547 = load %struct.TYPE_22__*, %struct.TYPE_22__** %546, align 8
  %548 = icmp ne %struct.TYPE_22__* %547, null
  br i1 %548, label %549, label %565

549:                                              ; preds = %544
  %550 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %551 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %550, i32 0, i32 1
  %552 = load %struct.TYPE_19__*, %struct.TYPE_19__** %551, align 8
  %553 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %552, i32 0, i32 1
  %554 = load i32 (i32, i8*, %struct.TYPE_20__*, i32*)*, i32 (i32, i8*, %struct.TYPE_20__*, i32*)** %553, align 8
  %555 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %556 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %555, i32 0, i32 2
  %557 = load %struct.TYPE_22__*, %struct.TYPE_22__** %556, align 8
  %558 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %557, i32 0, i32 0
  %559 = load i32, i32* %558, align 8
  %560 = load i8*, i8** %33, align 8
  %561 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %562 = load i32*, i32** %13, align 8
  %563 = call i32 %554(i32 %559, i8* %560, %struct.TYPE_20__* %561, i32* %562)
  %564 = call i32 @SVN_ERR(i32 %563)
  br label %581

565:                                              ; preds = %544
  %566 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %567 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %566, i32 0, i32 1
  %568 = load %struct.TYPE_19__*, %struct.TYPE_19__** %567, align 8
  %569 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %568, i32 0, i32 0
  %570 = load i32 (i32, i8*, %struct.TYPE_20__*, i32*)*, i32 (i32, i8*, %struct.TYPE_20__*, i32*)** %569, align 8
  %571 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %572 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %571, i32 0, i32 0
  %573 = load %struct.TYPE_23__*, %struct.TYPE_23__** %572, align 8
  %574 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %573, i32 0, i32 0
  %575 = load i32, i32* %574, align 8
  %576 = load i8*, i8** %33, align 8
  %577 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %578 = load i32*, i32** %13, align 8
  %579 = call i32 %570(i32 %575, i8* %576, %struct.TYPE_20__* %577, i32* %578)
  %580 = call i32 @SVN_ERR(i32 %579)
  br label %581

581:                                              ; preds = %565, %549
  br label %582

582:                                              ; preds = %6, %581, %532, %507, %461, %431, %408, %388, %325, %324, %314, %279, %270, %240, %92, %41, %37
  %583 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %583, i32** %7, align 8
  br label %584

584:                                              ; preds = %582, %300, %261, %107
  %585 = load i32*, i32** %7, align 8
  ret i32* %585
}

declare dso_local i8* @svn_hash_gets(i32*, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_cstring_atoi64(i32*, i8*) #1

declare dso_local i8* @apr_pstrdup(i32, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.TYPE_20__* @svn_base64_decode_string(%struct.TYPE_20__*, i32*) #1

declare dso_local i32 @SVN_IS_VALID_REVNUM(i32) #1

declare dso_local i32 @ensure_file_opened(%struct.TYPE_22__*, i32*) #1

declare dso_local i8* @apr_hash_make(i32) #1

declare dso_local i32 @svn_hash_sets(i8*, i8*, i8*) #1

declare dso_local i32 @ensure_dir_opened(%struct.TYPE_23__*, i32*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @maybe_close_dir(%struct.TYPE_23__*) #1

declare dso_local i32 @fetch_for_dir(%struct.TYPE_23__*, i32*) #1

declare dso_local i32 @close_file(%struct.TYPE_22__*, i32*) #1

declare dso_local i32 @fetch_for_file(%struct.TYPE_22__*, i32*) #1

declare dso_local i32 @svn_checksum_parse_hex(i32*, i32, i8*, i32) #1

declare dso_local i32 @svn_relpath_join(i32, i8*, i32*) #1

declare dso_local i32 @svn_stream_close(i32*) #1

declare dso_local i32 @SVN_ERR_MALFUNCTION(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
