; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_old-and-busted.c_atts_to_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_old-and-busted.c_atts_to_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i64, i64, i8*, i8*, i8*, i8*, i8*, i64, i8*, i8*, i64, i32, i32, i32, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8* }

@ENTRIES_ATTR_NAME = common dso_local global i32 0, align 4
@SVN_WC_ENTRY_THIS_DIR = common dso_local global i8* null, align 8
@ENTRIES_ATTR_REVISION = common dso_local global i32 0, align 4
@SVN_INVALID_REVNUM = common dso_local global i8* null, align 8
@ENTRIES_ATTR_URL = common dso_local global i32 0, align 4
@ENTRIES_ATTR_REPOS = common dso_local global i32 0, align 4
@SVN_ERR_WC_CORRUPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Entry for '%s' has invalid repository root\00", align 1
@ENTRIES_ATTR_KIND = common dso_local global i32 0, align 4
@svn_node_none = common dso_local global i32 0, align 4
@ENTRIES_VALUE_FILE = common dso_local global i8* null, align 8
@svn_node_file = common dso_local global i32 0, align 4
@ENTRIES_VALUE_DIR = common dso_local global i8* null, align 8
@svn_node_dir = common dso_local global i32 0, align 4
@SVN_ERR_NODE_UNKNOWN_KIND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Entry '%s' has invalid node kind\00", align 1
@ENTRIES_ATTR_SCHEDULE = common dso_local global i32 0, align 4
@svn_wc_schedule_normal = common dso_local global i8* null, align 8
@ENTRIES_VALUE_ADD = common dso_local global i8* null, align 8
@svn_wc_schedule_add = common dso_local global i8* null, align 8
@ENTRIES_VALUE_DELETE = common dso_local global i8* null, align 8
@svn_wc_schedule_delete = common dso_local global i8* null, align 8
@ENTRIES_VALUE_REPLACE = common dso_local global i8* null, align 8
@svn_wc_schedule_replace = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SVN_ERR_ENTRY_ATTRIBUTE_INVALID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"Entry '%s' has invalid 'schedule' value\00", align 1
@ENTRIES_ATTR_PREJFILE = common dso_local global i32 0, align 4
@ENTRIES_ATTR_CONFLICT_OLD = common dso_local global i32 0, align 4
@ENTRIES_ATTR_CONFLICT_NEW = common dso_local global i32 0, align 4
@ENTRIES_ATTR_CONFLICT_WRK = common dso_local global i32 0, align 4
@ENTRIES_ATTR_COPIED = common dso_local global i32 0, align 4
@ENTRIES_ATTR_COPYFROM_URL = common dso_local global i32 0, align 4
@ENTRIES_ATTR_COPYFROM_REV = common dso_local global i32 0, align 4
@ENTRIES_ATTR_DELETED = common dso_local global i32 0, align 4
@ENTRIES_ATTR_ABSENT = common dso_local global i32 0, align 4
@ENTRIES_ATTR_INCOMPLETE = common dso_local global i32 0, align 4
@ENTRIES_ATTR_TEXT_TIME = common dso_local global i32 0, align 4
@ENTRIES_ATTR_CHECKSUM = common dso_local global i32 0, align 4
@ENTRIES_ATTR_UUID = common dso_local global i32 0, align 4
@ENTRIES_ATTR_CMT_DATE = common dso_local global i32 0, align 4
@ENTRIES_ATTR_CMT_REV = common dso_local global i32 0, align 4
@ENTRIES_ATTR_CMT_AUTHOR = common dso_local global i32 0, align 4
@ENTRIES_ATTR_LOCK_TOKEN = common dso_local global i32 0, align 4
@ENTRIES_ATTR_LOCK_OWNER = common dso_local global i32 0, align 4
@ENTRIES_ATTR_LOCK_COMMENT = common dso_local global i32 0, align 4
@ENTRIES_ATTR_LOCK_CREATION_DATE = common dso_local global i32 0, align 4
@ENTRIES_ATTR_WORKING_SIZE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_4__**, i32*, i32*)* @atts_to_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @atts_to_entry(%struct.TYPE_4__** %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call %struct.TYPE_4__* @alloc_entry(i32* %19)
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %8, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* @ENTRIES_ATTR_NAME, align 4
  %23 = call i8* @svn_hash_gets(i32* %21, i32 %22)
  store i8* %23, i8** %9, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %3
  %27 = load i32*, i32** %7, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = call i8* @apr_pstrdup(i32* %27, i8* %28)
  br label %32

30:                                               ; preds = %3
  %31 = load i8*, i8** @SVN_WC_ENTRY_THIS_DIR, align 8
  br label %32

32:                                               ; preds = %30, %26
  %33 = phi i8* [ %29, %26 ], [ %31, %30 ]
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* @ENTRIES_ATTR_REVISION, align 4
  %38 = call i8* @svn_hash_gets(i32* %36, i32 %37)
  store i8* %38, i8** %10, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %32
  %42 = load i8*, i8** %10, align 8
  %43 = call i8* @SVN_STR_TO_REV(i8* %42)
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 26
  store i8* %43, i8** %45, align 8
  br label %50

46:                                               ; preds = %32
  %47 = load i8*, i8** @SVN_INVALID_REVNUM, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 26
  store i8* %47, i8** %49, align 8
  br label %50

50:                                               ; preds = %46, %41
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* @ENTRIES_ATTR_URL, align 4
  %53 = load i32*, i32** %7, align 8
  %54 = call i8* @extract_string(i32* %51, i32 %52, i32* %53)
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 24
  store i8* %54, i8** %56, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 24
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %69

61:                                               ; preds = %50
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 24
  %64 = load i8*, i8** %63, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = call i8* @svn_uri_canonicalize(i8* %64, i32* %65)
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 24
  store i8* %66, i8** %68, align 8
  br label %69

69:                                               ; preds = %61, %50
  %70 = load i32*, i32** %6, align 8
  %71 = load i32, i32* @ENTRIES_ATTR_REPOS, align 4
  %72 = load i32*, i32** %7, align 8
  %73 = call i8* @extract_string(i32* %70, i32 %71, i32* %72)
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 25
  store i8* %73, i8** %75, align 8
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 25
  %78 = load i8*, i8** %77, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %88

80:                                               ; preds = %69
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 25
  %83 = load i8*, i8** %82, align 8
  %84 = load i32*, i32** %7, align 8
  %85 = call i8* @svn_uri_canonicalize(i8* %83, i32* %84)
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 25
  store i8* %85, i8** %87, align 8
  br label %88

88:                                               ; preds = %80, %69
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 24
  %91 = load i8*, i8** %90, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %119

93:                                               ; preds = %88
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 25
  %96 = load i8*, i8** %95, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %119

98:                                               ; preds = %93
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 25
  %101 = load i8*, i8** %100, align 8
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 24
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @svn_uri__is_ancestor(i8* %101, i8* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %119, label %107

107:                                              ; preds = %98
  %108 = load i32, i32* @SVN_ERR_WC_CORRUPT, align 4
  %109 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %110 = load i8*, i8** %9, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %114

112:                                              ; preds = %107
  %113 = load i8*, i8** %9, align 8
  br label %116

114:                                              ; preds = %107
  %115 = load i8*, i8** @SVN_WC_ENTRY_THIS_DIR, align 8
  br label %116

116:                                              ; preds = %114, %112
  %117 = phi i8* [ %113, %112 ], [ %115, %114 ]
  %118 = call i32* @svn_error_createf(i32 %108, i32* null, i32 %109, i8* %117)
  store i32* %118, i32** %4, align 8
  br label %397

119:                                              ; preds = %98, %93, %88
  %120 = load i32*, i32** %6, align 8
  %121 = load i32, i32* @ENTRIES_ATTR_KIND, align 4
  %122 = call i8* @svn_hash_gets(i32* %120, i32 %121)
  store i8* %122, i8** %11, align 8
  %123 = load i32, i32* @svn_node_none, align 4
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 23
  store i32 %123, i32* %125, align 8
  %126 = load i8*, i8** %11, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %160

128:                                              ; preds = %119
  %129 = load i8*, i8** %11, align 8
  %130 = load i8*, i8** @ENTRIES_VALUE_FILE, align 8
  %131 = call i64 @strcmp(i8* %129, i8* %130)
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %128
  %134 = load i32, i32* @svn_node_file, align 4
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 23
  store i32 %134, i32* %136, align 8
  br label %159

137:                                              ; preds = %128
  %138 = load i8*, i8** %11, align 8
  %139 = load i8*, i8** @ENTRIES_VALUE_DIR, align 8
  %140 = call i64 @strcmp(i8* %138, i8* %139)
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %137
  %143 = load i32, i32* @svn_node_dir, align 4
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 23
  store i32 %143, i32* %145, align 8
  br label %158

146:                                              ; preds = %137
  %147 = load i32, i32* @SVN_ERR_NODE_UNKNOWN_KIND, align 4
  %148 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %149 = load i8*, i8** %9, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %151, label %153

151:                                              ; preds = %146
  %152 = load i8*, i8** %9, align 8
  br label %155

153:                                              ; preds = %146
  %154 = load i8*, i8** @SVN_WC_ENTRY_THIS_DIR, align 8
  br label %155

155:                                              ; preds = %153, %151
  %156 = phi i8* [ %152, %151 ], [ %154, %153 ]
  %157 = call i32* @svn_error_createf(i32 %147, i32* null, i32 %148, i8* %156)
  store i32* %157, i32** %4, align 8
  br label %397

158:                                              ; preds = %142
  br label %159

159:                                              ; preds = %158, %133
  br label %160

160:                                              ; preds = %159, %119
  %161 = load i32*, i32** %6, align 8
  %162 = load i32, i32* @ENTRIES_ATTR_SCHEDULE, align 4
  %163 = call i8* @svn_hash_gets(i32* %161, i32 %162)
  store i8* %163, i8** %12, align 8
  %164 = load i8*, i8** @svn_wc_schedule_normal, align 8
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 22
  store i8* %164, i8** %166, align 8
  %167 = load i8*, i8** %12, align 8
  %168 = icmp ne i8* %167, null
  br i1 %168, label %169, label %220

169:                                              ; preds = %160
  %170 = load i8*, i8** %12, align 8
  %171 = load i8*, i8** @ENTRIES_VALUE_ADD, align 8
  %172 = call i64 @strcmp(i8* %170, i8* %171)
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %169
  %175 = load i8*, i8** @svn_wc_schedule_add, align 8
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 22
  store i8* %175, i8** %177, align 8
  br label %219

178:                                              ; preds = %169
  %179 = load i8*, i8** %12, align 8
  %180 = load i8*, i8** @ENTRIES_VALUE_DELETE, align 8
  %181 = call i64 @strcmp(i8* %179, i8* %180)
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %178
  %184 = load i8*, i8** @svn_wc_schedule_delete, align 8
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 22
  store i8* %184, i8** %186, align 8
  br label %218

187:                                              ; preds = %178
  %188 = load i8*, i8** %12, align 8
  %189 = load i8*, i8** @ENTRIES_VALUE_REPLACE, align 8
  %190 = call i64 @strcmp(i8* %188, i8* %189)
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %187
  %193 = load i8*, i8** @svn_wc_schedule_replace, align 8
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 22
  store i8* %193, i8** %195, align 8
  br label %217

196:                                              ; preds = %187
  %197 = load i8*, i8** %12, align 8
  %198 = call i64 @strcmp(i8* %197, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %199 = icmp eq i64 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %196
  %201 = load i8*, i8** @svn_wc_schedule_normal, align 8
  %202 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 22
  store i8* %201, i8** %203, align 8
  br label %216

204:                                              ; preds = %196
  %205 = load i32, i32* @SVN_ERR_ENTRY_ATTRIBUTE_INVALID, align 4
  %206 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %207 = load i8*, i8** %9, align 8
  %208 = icmp ne i8* %207, null
  br i1 %208, label %209, label %211

209:                                              ; preds = %204
  %210 = load i8*, i8** %9, align 8
  br label %213

211:                                              ; preds = %204
  %212 = load i8*, i8** @SVN_WC_ENTRY_THIS_DIR, align 8
  br label %213

213:                                              ; preds = %211, %209
  %214 = phi i8* [ %210, %209 ], [ %212, %211 ]
  %215 = call i32* @svn_error_createf(i32 %205, i32* null, i32 %206, i8* %214)
  store i32* %215, i32** %4, align 8
  br label %397

216:                                              ; preds = %200
  br label %217

217:                                              ; preds = %216, %192
  br label %218

218:                                              ; preds = %217, %183
  br label %219

219:                                              ; preds = %218, %174
  br label %220

220:                                              ; preds = %219, %160
  %221 = load i32*, i32** %6, align 8
  %222 = load i32, i32* @ENTRIES_ATTR_PREJFILE, align 4
  %223 = load i32*, i32** %7, align 8
  %224 = call i8* @extract_string_normalize(i32* %221, i32 %222, i32* %223)
  %225 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 21
  store i8* %224, i8** %226, align 8
  %227 = load i32*, i32** %6, align 8
  %228 = load i32, i32* @ENTRIES_ATTR_CONFLICT_OLD, align 4
  %229 = load i32*, i32** %7, align 8
  %230 = call i8* @extract_string_normalize(i32* %227, i32 %228, i32* %229)
  %231 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 20
  store i8* %230, i8** %232, align 8
  %233 = load i32*, i32** %6, align 8
  %234 = load i32, i32* @ENTRIES_ATTR_CONFLICT_NEW, align 4
  %235 = load i32*, i32** %7, align 8
  %236 = call i8* @extract_string_normalize(i32* %233, i32 %234, i32* %235)
  %237 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 19
  store i8* %236, i8** %238, align 8
  %239 = load i32*, i32** %6, align 8
  %240 = load i32, i32* @ENTRIES_ATTR_CONFLICT_WRK, align 4
  %241 = load i32*, i32** %7, align 8
  %242 = call i8* @extract_string_normalize(i32* %239, i32 %240, i32* %241)
  %243 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %244 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %243, i32 0, i32 18
  store i8* %242, i8** %244, align 8
  %245 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 17
  %247 = load i32*, i32** %6, align 8
  %248 = load i32, i32* @ENTRIES_ATTR_COPIED, align 4
  %249 = load i8*, i8** %9, align 8
  %250 = call i32 @do_bool_attr(i32* %246, i32* %247, i32 %248, i8* %249)
  %251 = call i32 @SVN_ERR(i32 %250)
  %252 = load i32*, i32** %6, align 8
  %253 = load i32, i32* @ENTRIES_ATTR_COPYFROM_URL, align 4
  %254 = load i32*, i32** %7, align 8
  %255 = call i8* @extract_string(i32* %252, i32 %253, i32* %254)
  %256 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %257 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %256, i32 0, i32 16
  store i8* %255, i8** %257, align 8
  %258 = load i32*, i32** %6, align 8
  %259 = load i32, i32* @ENTRIES_ATTR_COPYFROM_REV, align 4
  %260 = call i8* @svn_hash_gets(i32* %258, i32 %259)
  store i8* %260, i8** %13, align 8
  %261 = load i8*, i8** %13, align 8
  %262 = icmp ne i8* %261, null
  br i1 %262, label %263, label %268

263:                                              ; preds = %220
  %264 = load i8*, i8** %13, align 8
  %265 = call i8* @SVN_STR_TO_REV(i8* %264)
  %266 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %267 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %266, i32 0, i32 15
  store i8* %265, i8** %267, align 8
  br label %268

268:                                              ; preds = %263, %220
  %269 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %270 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %269, i32 0, i32 14
  %271 = load i32*, i32** %6, align 8
  %272 = load i32, i32* @ENTRIES_ATTR_DELETED, align 4
  %273 = load i8*, i8** %9, align 8
  %274 = call i32 @do_bool_attr(i32* %270, i32* %271, i32 %272, i8* %273)
  %275 = call i32 @SVN_ERR(i32 %274)
  %276 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %277 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %276, i32 0, i32 13
  %278 = load i32*, i32** %6, align 8
  %279 = load i32, i32* @ENTRIES_ATTR_ABSENT, align 4
  %280 = load i8*, i8** %9, align 8
  %281 = call i32 @do_bool_attr(i32* %277, i32* %278, i32 %279, i8* %280)
  %282 = call i32 @SVN_ERR(i32 %281)
  %283 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %284 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %283, i32 0, i32 12
  %285 = load i32*, i32** %6, align 8
  %286 = load i32, i32* @ENTRIES_ATTR_INCOMPLETE, align 4
  %287 = load i8*, i8** %9, align 8
  %288 = call i32 @do_bool_attr(i32* %284, i32* %285, i32 %286, i8* %287)
  %289 = call i32 @SVN_ERR(i32 %288)
  %290 = load i32*, i32** %6, align 8
  %291 = load i32, i32* @ENTRIES_ATTR_TEXT_TIME, align 4
  %292 = call i8* @svn_hash_gets(i32* %290, i32 %291)
  store i8* %292, i8** %14, align 8
  %293 = load i8*, i8** %14, align 8
  %294 = icmp ne i8* %293, null
  br i1 %294, label %295, label %302

295:                                              ; preds = %268
  %296 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %297 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %296, i32 0, i32 11
  %298 = load i8*, i8** %14, align 8
  %299 = load i32*, i32** %7, align 8
  %300 = call i32 @svn_time_from_cstring(i64* %297, i8* %298, i32* %299)
  %301 = call i32 @SVN_ERR(i32 %300)
  br label %302

302:                                              ; preds = %295, %268
  %303 = load i32*, i32** %6, align 8
  %304 = load i32, i32* @ENTRIES_ATTR_CHECKSUM, align 4
  %305 = load i32*, i32** %7, align 8
  %306 = call i8* @extract_string(i32* %303, i32 %304, i32* %305)
  %307 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %308 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %307, i32 0, i32 10
  store i8* %306, i8** %308, align 8
  %309 = load i32*, i32** %6, align 8
  %310 = load i32, i32* @ENTRIES_ATTR_UUID, align 4
  %311 = load i32*, i32** %7, align 8
  %312 = call i8* @extract_string(i32* %309, i32 %310, i32* %311)
  %313 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %314 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %313, i32 0, i32 9
  store i8* %312, i8** %314, align 8
  %315 = load i32*, i32** %6, align 8
  %316 = load i32, i32* @ENTRIES_ATTR_CMT_DATE, align 4
  %317 = call i8* @svn_hash_gets(i32* %315, i32 %316)
  store i8* %317, i8** %15, align 8
  %318 = load i8*, i8** %15, align 8
  %319 = icmp ne i8* %318, null
  br i1 %319, label %320, label %327

320:                                              ; preds = %302
  %321 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %322 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %321, i32 0, i32 8
  %323 = load i8*, i8** %15, align 8
  %324 = load i32*, i32** %7, align 8
  %325 = call i32 @svn_time_from_cstring(i64* %322, i8* %323, i32* %324)
  %326 = call i32 @SVN_ERR(i32 %325)
  br label %330

327:                                              ; preds = %302
  %328 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %329 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %328, i32 0, i32 8
  store i64 0, i64* %329, align 8
  br label %330

330:                                              ; preds = %327, %320
  %331 = load i32*, i32** %6, align 8
  %332 = load i32, i32* @ENTRIES_ATTR_CMT_REV, align 4
  %333 = call i8* @svn_hash_gets(i32* %331, i32 %332)
  store i8* %333, i8** %16, align 8
  %334 = load i8*, i8** %16, align 8
  %335 = icmp ne i8* %334, null
  br i1 %335, label %336, label %341

336:                                              ; preds = %330
  %337 = load i8*, i8** %16, align 8
  %338 = call i8* @SVN_STR_TO_REV(i8* %337)
  %339 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %340 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %339, i32 0, i32 7
  store i8* %338, i8** %340, align 8
  br label %345

341:                                              ; preds = %330
  %342 = load i8*, i8** @SVN_INVALID_REVNUM, align 8
  %343 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %344 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %343, i32 0, i32 7
  store i8* %342, i8** %344, align 8
  br label %345

345:                                              ; preds = %341, %336
  %346 = load i32*, i32** %6, align 8
  %347 = load i32, i32* @ENTRIES_ATTR_CMT_AUTHOR, align 4
  %348 = load i32*, i32** %7, align 8
  %349 = call i8* @extract_string(i32* %346, i32 %347, i32* %348)
  %350 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %351 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %350, i32 0, i32 6
  store i8* %349, i8** %351, align 8
  %352 = load i32*, i32** %6, align 8
  %353 = load i32, i32* @ENTRIES_ATTR_LOCK_TOKEN, align 4
  %354 = load i32*, i32** %7, align 8
  %355 = call i8* @extract_string(i32* %352, i32 %353, i32* %354)
  %356 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %357 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %356, i32 0, i32 5
  store i8* %355, i8** %357, align 8
  %358 = load i32*, i32** %6, align 8
  %359 = load i32, i32* @ENTRIES_ATTR_LOCK_OWNER, align 4
  %360 = load i32*, i32** %7, align 8
  %361 = call i8* @extract_string(i32* %358, i32 %359, i32* %360)
  %362 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %363 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %362, i32 0, i32 4
  store i8* %361, i8** %363, align 8
  %364 = load i32*, i32** %6, align 8
  %365 = load i32, i32* @ENTRIES_ATTR_LOCK_COMMENT, align 4
  %366 = load i32*, i32** %7, align 8
  %367 = call i8* @extract_string(i32* %364, i32 %365, i32* %366)
  %368 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %369 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %368, i32 0, i32 3
  store i8* %367, i8** %369, align 8
  %370 = load i32*, i32** %6, align 8
  %371 = load i32, i32* @ENTRIES_ATTR_LOCK_CREATION_DATE, align 4
  %372 = call i8* @svn_hash_gets(i32* %370, i32 %371)
  store i8* %372, i8** %17, align 8
  %373 = load i8*, i8** %17, align 8
  %374 = icmp ne i8* %373, null
  br i1 %374, label %375, label %382

375:                                              ; preds = %345
  %376 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %377 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %376, i32 0, i32 2
  %378 = load i8*, i8** %17, align 8
  %379 = load i32*, i32** %7, align 8
  %380 = call i32 @svn_time_from_cstring(i64* %377, i8* %378, i32* %379)
  %381 = call i32 @SVN_ERR(i32 %380)
  br label %382

382:                                              ; preds = %375, %345
  %383 = load i32*, i32** %6, align 8
  %384 = load i32, i32* @ENTRIES_ATTR_WORKING_SIZE, align 4
  %385 = call i8* @svn_hash_gets(i32* %383, i32 %384)
  store i8* %385, i8** %18, align 8
  %386 = load i8*, i8** %18, align 8
  %387 = icmp ne i8* %386, null
  br i1 %387, label %388, label %393

388:                                              ; preds = %382
  %389 = load i8*, i8** %18, align 8
  %390 = call i64 @apr_strtoi64(i8* %389, i32* null, i32 0)
  %391 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %392 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %391, i32 0, i32 1
  store i64 %390, i64* %392, align 8
  br label %393

393:                                              ; preds = %388, %382
  %394 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %395 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  store %struct.TYPE_4__* %394, %struct.TYPE_4__** %395, align 8
  %396 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %396, i32** %4, align 8
  br label %397

397:                                              ; preds = %393, %213, %155, %116
  %398 = load i32*, i32** %4, align 8
  ret i32* %398
}

declare dso_local %struct.TYPE_4__* @alloc_entry(i32*) #1

declare dso_local i8* @svn_hash_gets(i32*, i32) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

declare dso_local i8* @SVN_STR_TO_REV(i8*) #1

declare dso_local i8* @extract_string(i32*, i32, i32*) #1

declare dso_local i8* @svn_uri_canonicalize(i8*, i32*) #1

declare dso_local i32 @svn_uri__is_ancestor(i8*, i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @extract_string_normalize(i32*, i32, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @do_bool_attr(i32*, i32*, i32, i8*) #1

declare dso_local i32 @svn_time_from_cstring(i64*, i8*, i32*) #1

declare dso_local i64 @apr_strtoi64(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
