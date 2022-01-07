; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_old-and-busted.c_read_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_old-and-busted.c_read_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i64, i32, i8*, i8*, i32, i32, i32, i32, i64, i64, i32, i32 }

@SVN_WC_ENTRY_THIS_DIR = common dso_local global i8* null, align 8
@ENTRIES_VALUE_FILE = common dso_local global i32 0, align 4
@svn_node_file = common dso_local global i32 0, align 4
@ENTRIES_VALUE_DIR = common dso_local global i32 0, align 4
@svn_node_dir = common dso_local global i32 0, align 4
@SVN_ERR_NODE_UNKNOWN_KIND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Entry '%s' has invalid node kind\00", align 1
@svn_node_none = common dso_local global i32 0, align 4
@SVN_ERR_WC_CORRUPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Entry for '%s' has invalid repository root\00", align 1
@svn_wc_schedule_normal = common dso_local global i32 0, align 4
@ENTRIES_VALUE_ADD = common dso_local global i32 0, align 4
@svn_wc_schedule_add = common dso_local global i32 0, align 4
@ENTRIES_VALUE_DELETE = common dso_local global i32 0, align 4
@svn_wc_schedule_delete = common dso_local global i32 0, align 4
@ENTRIES_VALUE_REPLACE = common dso_local global i32 0, align 4
@svn_wc_schedule_replace = common dso_local global i32 0, align 4
@SVN_ERR_ENTRY_ATTRIBUTE_INVALID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Entry '%s' has invalid 'schedule' value\00", align 1
@FALSE = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ENTRIES_BOOL_COPIED = common dso_local global i32 0, align 4
@ENTRIES_BOOL_DELETED = common dso_local global i32 0, align 4
@ENTRIES_BOOL_ABSENT = common dso_local global i32 0, align 4
@ENTRIES_BOOL_INCOMPLETE = common dso_local global i32 0, align 4
@ENTRIES_BOOL_KEEP_LOCAL = common dso_local global i32 0, align 4
@svn_depth_exclude = common dso_local global i32 0, align 4
@svn_depth_infinity = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"Entry '%s' has invalid 'depth' value\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@MAYBE_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_4__**, i8**, i8*, i32, i32*)* @read_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_entry(%struct.TYPE_4__** %0, i8** %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_4__**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %22 = load i32*, i32** %11, align 8
  %23 = call %struct.TYPE_4__* @alloc_entry(i32* %22)
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** %12, align 8
  %24 = load i8**, i8*** %8, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = call i32 @read_path(i8** %13, i8** %24, i8* %25, i32* %26)
  %28 = call i32 @SVN_ERR(i32 %27)
  %29 = load i8*, i8** %13, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %5
  %32 = load i8*, i8** %13, align 8
  br label %35

33:                                               ; preds = %5
  %34 = load i8*, i8** @SVN_WC_ENTRY_THIS_DIR, align 8
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i8* [ %32, %31 ], [ %34, %33 ]
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  %39 = load i8**, i8*** %8, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = call i32 @read_val(i8** %14, i8** %39, i8* %40)
  %42 = call i32 @SVN_ERR(i32 %41)
  %43 = load i8*, i8** %14, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %77

45:                                               ; preds = %35
  %46 = load i8*, i8** %14, align 8
  %47 = load i32, i32* @ENTRIES_VALUE_FILE, align 4
  %48 = call i64 @strcmp(i8* %46, i32 %47)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i32, i32* @svn_node_file, align 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 37
  store i32 %51, i32* %53, align 4
  br label %76

54:                                               ; preds = %45
  %55 = load i8*, i8** %14, align 8
  %56 = load i32, i32* @ENTRIES_VALUE_DIR, align 4
  %57 = call i64 @strcmp(i8* %55, i32 %56)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load i32, i32* @svn_node_dir, align 4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 37
  store i32 %60, i32* %62, align 4
  br label %75

63:                                               ; preds = %54
  %64 = load i32, i32* @SVN_ERR_NODE_UNKNOWN_KIND, align 4
  %65 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %66 = load i8*, i8** %13, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i8*, i8** %13, align 8
  br label %72

70:                                               ; preds = %63
  %71 = load i8*, i8** @SVN_WC_ENTRY_THIS_DIR, align 8
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi i8* [ %69, %68 ], [ %71, %70 ]
  %74 = call i32* @svn_error_createf(i32 %64, i32* null, i32 %65, i8* %73)
  store i32* %74, i32** %6, align 8
  br label %702

75:                                               ; preds = %59
  br label %76

76:                                               ; preds = %75, %50
  br label %81

77:                                               ; preds = %35
  %78 = load i32, i32* @svn_node_none, align 4
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 37
  store i32 %78, i32* %80, align 4
  br label %81

81:                                               ; preds = %77, %76
  %82 = load i8**, i8*** %8, align 8
  %83 = load i8*, i8** %82, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 12
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  br label %698

88:                                               ; preds = %81
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 36
  %91 = load i8**, i8*** %8, align 8
  %92 = load i8*, i8** %9, align 8
  %93 = load i32*, i32** %11, align 8
  %94 = call i32 @read_revnum(i32* %90, i8** %91, i8* %92, i32* %93)
  %95 = call i32 @SVN_ERR(i32 %94)
  %96 = load i8**, i8*** %8, align 8
  %97 = load i8*, i8** %96, align 8
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 12
  br i1 %100, label %101, label %102

101:                                              ; preds = %88
  br label %698

102:                                              ; preds = %88
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 34
  %105 = load i8**, i8*** %8, align 8
  %106 = load i8*, i8** %9, align 8
  %107 = load i32, i32* %10, align 4
  %108 = load i32*, i32** %11, align 8
  %109 = call i32 @read_url(i64* %104, i8** %105, i8* %106, i32 %107, i32* %108)
  %110 = call i32 @SVN_ERR(i32 %109)
  %111 = load i8**, i8*** %8, align 8
  %112 = load i8*, i8** %111, align 8
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %114, 12
  br i1 %115, label %116, label %117

116:                                              ; preds = %102
  br label %698

117:                                              ; preds = %102
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 35
  %120 = load i8**, i8*** %8, align 8
  %121 = load i8*, i8** %9, align 8
  %122 = load i32, i32* %10, align 4
  %123 = load i32*, i32** %11, align 8
  %124 = call i32 @read_url(i64* %119, i8** %120, i8* %121, i32 %122, i32* %123)
  %125 = call i32 @SVN_ERR(i32 %124)
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 35
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %156

130:                                              ; preds = %117
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 34
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %156

135:                                              ; preds = %130
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 35
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 34
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @svn_uri__is_ancestor(i64 %138, i64 %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %156, label %144

144:                                              ; preds = %135
  %145 = load i32, i32* @SVN_ERR_WC_CORRUPT, align 4
  %146 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %147 = load i8*, i8** %13, align 8
  %148 = icmp ne i8* %147, null
  br i1 %148, label %149, label %151

149:                                              ; preds = %144
  %150 = load i8*, i8** %13, align 8
  br label %153

151:                                              ; preds = %144
  %152 = load i8*, i8** @SVN_WC_ENTRY_THIS_DIR, align 8
  br label %153

153:                                              ; preds = %151, %149
  %154 = phi i8* [ %150, %149 ], [ %152, %151 ]
  %155 = call i32* @svn_error_createf(i32 %145, i32* null, i32 %146, i8* %154)
  store i32* %155, i32** %6, align 8
  br label %702

156:                                              ; preds = %135, %130, %117
  %157 = load i8**, i8*** %8, align 8
  %158 = load i8*, i8** %157, align 8
  %159 = load i8, i8* %158, align 1
  %160 = sext i8 %159 to i32
  %161 = icmp eq i32 %160, 12
  br i1 %161, label %162, label %163

162:                                              ; preds = %156
  br label %698

163:                                              ; preds = %156
  %164 = load i8**, i8*** %8, align 8
  %165 = load i8*, i8** %9, align 8
  %166 = call i32 @read_val(i8** %15, i8** %164, i8* %165)
  %167 = call i32 @SVN_ERR(i32 %166)
  %168 = load i32, i32* @svn_wc_schedule_normal, align 4
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 33
  store i32 %168, i32* %170, align 4
  %171 = load i8*, i8** %15, align 8
  %172 = icmp ne i8* %171, null
  br i1 %172, label %173, label %215

173:                                              ; preds = %163
  %174 = load i8*, i8** %15, align 8
  %175 = load i32, i32* @ENTRIES_VALUE_ADD, align 4
  %176 = call i64 @strcmp(i8* %174, i32 %175)
  %177 = icmp eq i64 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %173
  %179 = load i32, i32* @svn_wc_schedule_add, align 4
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 33
  store i32 %179, i32* %181, align 4
  br label %214

182:                                              ; preds = %173
  %183 = load i8*, i8** %15, align 8
  %184 = load i32, i32* @ENTRIES_VALUE_DELETE, align 4
  %185 = call i64 @strcmp(i8* %183, i32 %184)
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %182
  %188 = load i32, i32* @svn_wc_schedule_delete, align 4
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 33
  store i32 %188, i32* %190, align 4
  br label %213

191:                                              ; preds = %182
  %192 = load i8*, i8** %15, align 8
  %193 = load i32, i32* @ENTRIES_VALUE_REPLACE, align 4
  %194 = call i64 @strcmp(i8* %192, i32 %193)
  %195 = icmp eq i64 %194, 0
  br i1 %195, label %196, label %200

196:                                              ; preds = %191
  %197 = load i32, i32* @svn_wc_schedule_replace, align 4
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 33
  store i32 %197, i32* %199, align 4
  br label %212

200:                                              ; preds = %191
  %201 = load i32, i32* @SVN_ERR_ENTRY_ATTRIBUTE_INVALID, align 4
  %202 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %203 = load i8*, i8** %13, align 8
  %204 = icmp ne i8* %203, null
  br i1 %204, label %205, label %207

205:                                              ; preds = %200
  %206 = load i8*, i8** %13, align 8
  br label %209

207:                                              ; preds = %200
  %208 = load i8*, i8** @SVN_WC_ENTRY_THIS_DIR, align 8
  br label %209

209:                                              ; preds = %207, %205
  %210 = phi i8* [ %206, %205 ], [ %208, %207 ]
  %211 = call i32* @svn_error_createf(i32 %201, i32* null, i32 %202, i8* %210)
  store i32* %211, i32** %6, align 8
  br label %702

212:                                              ; preds = %196
  br label %213

213:                                              ; preds = %212, %187
  br label %214

214:                                              ; preds = %213, %178
  br label %215

215:                                              ; preds = %214, %163
  %216 = load i8**, i8*** %8, align 8
  %217 = load i8*, i8** %216, align 8
  %218 = load i8, i8* %217, align 1
  %219 = sext i8 %218 to i32
  %220 = icmp eq i32 %219, 12
  br i1 %220, label %221, label %222

221:                                              ; preds = %215
  br label %698

222:                                              ; preds = %215
  %223 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 32
  %225 = load i8**, i8*** %8, align 8
  %226 = load i8*, i8** %9, align 8
  %227 = load i32*, i32** %11, align 8
  %228 = call i32 @read_time(i32* %224, i8** %225, i8* %226, i32* %227)
  %229 = call i32 @SVN_ERR(i32 %228)
  %230 = load i8**, i8*** %8, align 8
  %231 = load i8*, i8** %230, align 8
  %232 = load i8, i8* %231, align 1
  %233 = sext i8 %232 to i32
  %234 = icmp eq i32 %233, 12
  br i1 %234, label %235, label %236

235:                                              ; preds = %222
  br label %698

236:                                              ; preds = %222
  %237 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 1
  %239 = load i8**, i8*** %8, align 8
  %240 = load i8*, i8** %9, align 8
  %241 = load i32*, i32** %11, align 8
  %242 = call i32 @read_str(i8** %238, i8** %239, i8* %240, i32* %241)
  %243 = call i32 @SVN_ERR(i32 %242)
  %244 = load i8**, i8*** %8, align 8
  %245 = load i8*, i8** %244, align 8
  %246 = load i8, i8* %245, align 1
  %247 = sext i8 %246 to i32
  %248 = icmp eq i32 %247, 12
  br i1 %248, label %249, label %250

249:                                              ; preds = %236
  br label %698

250:                                              ; preds = %236
  %251 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i32 0, i32 31
  %253 = load i8**, i8*** %8, align 8
  %254 = load i8*, i8** %9, align 8
  %255 = load i32*, i32** %11, align 8
  %256 = call i32 @read_time(i32* %252, i8** %253, i8* %254, i32* %255)
  %257 = call i32 @SVN_ERR(i32 %256)
  %258 = load i8**, i8*** %8, align 8
  %259 = load i8*, i8** %258, align 8
  %260 = load i8, i8* %259, align 1
  %261 = sext i8 %260 to i32
  %262 = icmp eq i32 %261, 12
  br i1 %262, label %263, label %264

263:                                              ; preds = %250
  br label %698

264:                                              ; preds = %250
  %265 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %266 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %265, i32 0, i32 30
  %267 = load i8**, i8*** %8, align 8
  %268 = load i8*, i8** %9, align 8
  %269 = load i32*, i32** %11, align 8
  %270 = call i32 @read_revnum(i32* %266, i8** %267, i8* %268, i32* %269)
  %271 = call i32 @SVN_ERR(i32 %270)
  %272 = load i8**, i8*** %8, align 8
  %273 = load i8*, i8** %272, align 8
  %274 = load i8, i8* %273, align 1
  %275 = sext i8 %274 to i32
  %276 = icmp eq i32 %275, 12
  br i1 %276, label %277, label %278

277:                                              ; preds = %264
  br label %698

278:                                              ; preds = %264
  %279 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %280 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %279, i32 0, i32 2
  %281 = load i8**, i8*** %8, align 8
  %282 = load i8*, i8** %9, align 8
  %283 = load i32*, i32** %11, align 8
  %284 = call i32 @read_str(i8** %280, i8** %281, i8* %282, i32* %283)
  %285 = call i32 @SVN_ERR(i32 %284)
  %286 = load i8**, i8*** %8, align 8
  %287 = load i8*, i8** %286, align 8
  %288 = load i8, i8* %287, align 1
  %289 = sext i8 %288 to i32
  %290 = icmp eq i32 %289, 12
  br i1 %290, label %291, label %292

291:                                              ; preds = %278
  br label %698

292:                                              ; preds = %278
  %293 = load i8**, i8*** %8, align 8
  %294 = load i8*, i8** %9, align 8
  %295 = call i32 @read_val(i8** %16, i8** %293, i8* %294)
  %296 = call i32 @SVN_ERR(i32 %295)
  %297 = load i8*, i8** @FALSE, align 8
  %298 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %299 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %298, i32 0, i32 29
  store i8* %297, i8** %299, align 8
  %300 = load i8**, i8*** %8, align 8
  %301 = load i8*, i8** %300, align 8
  %302 = load i8, i8* %301, align 1
  %303 = sext i8 %302 to i32
  %304 = icmp eq i32 %303, 12
  br i1 %304, label %305, label %306

305:                                              ; preds = %292
  br label %698

306:                                              ; preds = %292
  %307 = load i8**, i8*** %8, align 8
  %308 = load i8*, i8** %9, align 8
  %309 = call i32 @read_val(i8** %16, i8** %307, i8* %308)
  %310 = call i32 @SVN_ERR(i32 %309)
  %311 = load i8*, i8** @FALSE, align 8
  %312 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %313 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %312, i32 0, i32 28
  store i8* %311, i8** %313, align 8
  %314 = load i8**, i8*** %8, align 8
  %315 = load i8*, i8** %314, align 8
  %316 = load i8, i8* %315, align 1
  %317 = sext i8 %316 to i32
  %318 = icmp eq i32 %317, 12
  br i1 %318, label %319, label %320

319:                                              ; preds = %306
  br label %698

320:                                              ; preds = %306
  %321 = load i8**, i8*** %8, align 8
  %322 = load i8*, i8** %9, align 8
  %323 = call i32 @read_val(i8** %16, i8** %321, i8* %322)
  %324 = call i32 @SVN_ERR(i32 %323)
  %325 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %326 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %325, i32 0, i32 3
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %326, align 8
  %327 = load i8**, i8*** %8, align 8
  %328 = load i8*, i8** %327, align 8
  %329 = load i8, i8* %328, align 1
  %330 = sext i8 %329 to i32
  %331 = icmp eq i32 %330, 12
  br i1 %331, label %332, label %333

332:                                              ; preds = %320
  br label %698

333:                                              ; preds = %320
  %334 = load i8**, i8*** %8, align 8
  %335 = load i8*, i8** %9, align 8
  %336 = call i32 @read_val(i8** %16, i8** %334, i8* %335)
  %337 = call i32 @SVN_ERR(i32 %336)
  %338 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %339 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %338, i32 0, i32 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %339, align 8
  %340 = load i8**, i8*** %8, align 8
  %341 = load i8*, i8** %340, align 8
  %342 = load i8, i8* %341, align 1
  %343 = sext i8 %342 to i32
  %344 = icmp eq i32 %343, 12
  br i1 %344, label %345, label %346

345:                                              ; preds = %333
  br label %698

346:                                              ; preds = %333
  %347 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %348 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %347, i32 0, i32 5
  %349 = load i8**, i8*** %8, align 8
  %350 = load i8*, i8** %9, align 8
  %351 = load i32*, i32** %11, align 8
  %352 = call i32 @read_path(i8** %348, i8** %349, i8* %350, i32* %351)
  %353 = call i32 @SVN_ERR(i32 %352)
  %354 = load i8**, i8*** %8, align 8
  %355 = load i8*, i8** %354, align 8
  %356 = load i8, i8* %355, align 1
  %357 = sext i8 %356 to i32
  %358 = icmp eq i32 %357, 12
  br i1 %358, label %359, label %360

359:                                              ; preds = %346
  br label %698

360:                                              ; preds = %346
  %361 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %362 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %361, i32 0, i32 6
  %363 = load i8**, i8*** %8, align 8
  %364 = load i8*, i8** %9, align 8
  %365 = load i32*, i32** %11, align 8
  %366 = call i32 @read_path(i8** %362, i8** %363, i8* %364, i32* %365)
  %367 = call i32 @SVN_ERR(i32 %366)
  %368 = load i8**, i8*** %8, align 8
  %369 = load i8*, i8** %368, align 8
  %370 = load i8, i8* %369, align 1
  %371 = sext i8 %370 to i32
  %372 = icmp eq i32 %371, 12
  br i1 %372, label %373, label %374

373:                                              ; preds = %360
  br label %698

374:                                              ; preds = %360
  %375 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %376 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %375, i32 0, i32 7
  %377 = load i8**, i8*** %8, align 8
  %378 = load i8*, i8** %9, align 8
  %379 = load i32*, i32** %11, align 8
  %380 = call i32 @read_path(i8** %376, i8** %377, i8* %378, i32* %379)
  %381 = call i32 @SVN_ERR(i32 %380)
  %382 = load i8**, i8*** %8, align 8
  %383 = load i8*, i8** %382, align 8
  %384 = load i8, i8* %383, align 1
  %385 = sext i8 %384 to i32
  %386 = icmp eq i32 %385, 12
  br i1 %386, label %387, label %388

387:                                              ; preds = %374
  br label %698

388:                                              ; preds = %374
  %389 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %390 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %389, i32 0, i32 8
  %391 = load i8**, i8*** %8, align 8
  %392 = load i8*, i8** %9, align 8
  %393 = load i32*, i32** %11, align 8
  %394 = call i32 @read_path(i8** %390, i8** %391, i8* %392, i32* %393)
  %395 = call i32 @SVN_ERR(i32 %394)
  %396 = load i8**, i8*** %8, align 8
  %397 = load i8*, i8** %396, align 8
  %398 = load i8, i8* %397, align 1
  %399 = sext i8 %398 to i32
  %400 = icmp eq i32 %399, 12
  br i1 %400, label %401, label %402

401:                                              ; preds = %388
  br label %698

402:                                              ; preds = %388
  %403 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %404 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %403, i32 0, i32 27
  %405 = load i32, i32* @ENTRIES_BOOL_COPIED, align 4
  %406 = load i8**, i8*** %8, align 8
  %407 = load i8*, i8** %9, align 8
  %408 = call i32 @read_bool(i32* %404, i32 %405, i8** %406, i8* %407)
  %409 = call i32 @SVN_ERR(i32 %408)
  %410 = load i8**, i8*** %8, align 8
  %411 = load i8*, i8** %410, align 8
  %412 = load i8, i8* %411, align 1
  %413 = sext i8 %412 to i32
  %414 = icmp eq i32 %413, 12
  br i1 %414, label %415, label %416

415:                                              ; preds = %402
  br label %698

416:                                              ; preds = %402
  %417 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %418 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %417, i32 0, i32 26
  %419 = load i8**, i8*** %8, align 8
  %420 = load i8*, i8** %9, align 8
  %421 = load i32, i32* %10, align 4
  %422 = load i32*, i32** %11, align 8
  %423 = call i32 @read_url(i64* %418, i8** %419, i8* %420, i32 %421, i32* %422)
  %424 = call i32 @SVN_ERR(i32 %423)
  %425 = load i8**, i8*** %8, align 8
  %426 = load i8*, i8** %425, align 8
  %427 = load i8, i8* %426, align 1
  %428 = sext i8 %427 to i32
  %429 = icmp eq i32 %428, 12
  br i1 %429, label %430, label %431

430:                                              ; preds = %416
  br label %698

431:                                              ; preds = %416
  %432 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %433 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %432, i32 0, i32 25
  %434 = load i8**, i8*** %8, align 8
  %435 = load i8*, i8** %9, align 8
  %436 = load i32*, i32** %11, align 8
  %437 = call i32 @read_revnum(i32* %433, i8** %434, i8* %435, i32* %436)
  %438 = call i32 @SVN_ERR(i32 %437)
  %439 = load i8**, i8*** %8, align 8
  %440 = load i8*, i8** %439, align 8
  %441 = load i8, i8* %440, align 1
  %442 = sext i8 %441 to i32
  %443 = icmp eq i32 %442, 12
  br i1 %443, label %444, label %445

444:                                              ; preds = %431
  br label %698

445:                                              ; preds = %431
  %446 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %447 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %446, i32 0, i32 24
  %448 = load i32, i32* @ENTRIES_BOOL_DELETED, align 4
  %449 = load i8**, i8*** %8, align 8
  %450 = load i8*, i8** %9, align 8
  %451 = call i32 @read_bool(i32* %447, i32 %448, i8** %449, i8* %450)
  %452 = call i32 @SVN_ERR(i32 %451)
  %453 = load i8**, i8*** %8, align 8
  %454 = load i8*, i8** %453, align 8
  %455 = load i8, i8* %454, align 1
  %456 = sext i8 %455 to i32
  %457 = icmp eq i32 %456, 12
  br i1 %457, label %458, label %459

458:                                              ; preds = %445
  br label %698

459:                                              ; preds = %445
  %460 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %461 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %460, i32 0, i32 23
  %462 = load i32, i32* @ENTRIES_BOOL_ABSENT, align 4
  %463 = load i8**, i8*** %8, align 8
  %464 = load i8*, i8** %9, align 8
  %465 = call i32 @read_bool(i32* %461, i32 %462, i8** %463, i8* %464)
  %466 = call i32 @SVN_ERR(i32 %465)
  %467 = load i8**, i8*** %8, align 8
  %468 = load i8*, i8** %467, align 8
  %469 = load i8, i8* %468, align 1
  %470 = sext i8 %469 to i32
  %471 = icmp eq i32 %470, 12
  br i1 %471, label %472, label %473

472:                                              ; preds = %459
  br label %698

473:                                              ; preds = %459
  %474 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %475 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %474, i32 0, i32 22
  %476 = load i32, i32* @ENTRIES_BOOL_INCOMPLETE, align 4
  %477 = load i8**, i8*** %8, align 8
  %478 = load i8*, i8** %9, align 8
  %479 = call i32 @read_bool(i32* %475, i32 %476, i8** %477, i8* %478)
  %480 = call i32 @SVN_ERR(i32 %479)
  %481 = load i8**, i8*** %8, align 8
  %482 = load i8*, i8** %481, align 8
  %483 = load i8, i8* %482, align 1
  %484 = sext i8 %483 to i32
  %485 = icmp eq i32 %484, 12
  br i1 %485, label %486, label %487

486:                                              ; preds = %473
  br label %698

487:                                              ; preds = %473
  %488 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %489 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %488, i32 0, i32 9
  %490 = load i8**, i8*** %8, align 8
  %491 = load i8*, i8** %9, align 8
  %492 = load i32*, i32** %11, align 8
  %493 = call i32 @read_str(i8** %489, i8** %490, i8* %491, i32* %492)
  %494 = call i32 @SVN_ERR(i32 %493)
  %495 = load i8**, i8*** %8, align 8
  %496 = load i8*, i8** %495, align 8
  %497 = load i8, i8* %496, align 1
  %498 = sext i8 %497 to i32
  %499 = icmp eq i32 %498, 12
  br i1 %499, label %500, label %501

500:                                              ; preds = %487
  br label %698

501:                                              ; preds = %487
  %502 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %503 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %502, i32 0, i32 10
  %504 = load i8**, i8*** %8, align 8
  %505 = load i8*, i8** %9, align 8
  %506 = load i32*, i32** %11, align 8
  %507 = call i32 @read_str(i8** %503, i8** %504, i8* %505, i32* %506)
  %508 = call i32 @SVN_ERR(i32 %507)
  %509 = load i8**, i8*** %8, align 8
  %510 = load i8*, i8** %509, align 8
  %511 = load i8, i8* %510, align 1
  %512 = sext i8 %511 to i32
  %513 = icmp eq i32 %512, 12
  br i1 %513, label %514, label %515

514:                                              ; preds = %501
  br label %698

515:                                              ; preds = %501
  %516 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %517 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %516, i32 0, i32 11
  %518 = load i8**, i8*** %8, align 8
  %519 = load i8*, i8** %9, align 8
  %520 = load i32*, i32** %11, align 8
  %521 = call i32 @read_str(i8** %517, i8** %518, i8* %519, i32* %520)
  %522 = call i32 @SVN_ERR(i32 %521)
  %523 = load i8**, i8*** %8, align 8
  %524 = load i8*, i8** %523, align 8
  %525 = load i8, i8* %524, align 1
  %526 = sext i8 %525 to i32
  %527 = icmp eq i32 %526, 12
  br i1 %527, label %528, label %529

528:                                              ; preds = %515
  br label %698

529:                                              ; preds = %515
  %530 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %531 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %530, i32 0, i32 12
  %532 = load i8**, i8*** %8, align 8
  %533 = load i8*, i8** %9, align 8
  %534 = load i32*, i32** %11, align 8
  %535 = call i32 @read_str(i8** %531, i8** %532, i8* %533, i32* %534)
  %536 = call i32 @SVN_ERR(i32 %535)
  %537 = load i8**, i8*** %8, align 8
  %538 = load i8*, i8** %537, align 8
  %539 = load i8, i8* %538, align 1
  %540 = sext i8 %539 to i32
  %541 = icmp eq i32 %540, 12
  br i1 %541, label %542, label %543

542:                                              ; preds = %529
  br label %698

543:                                              ; preds = %529
  %544 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %545 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %544, i32 0, i32 21
  %546 = load i8**, i8*** %8, align 8
  %547 = load i8*, i8** %9, align 8
  %548 = load i32*, i32** %11, align 8
  %549 = call i32 @read_time(i32* %545, i8** %546, i8* %547, i32* %548)
  %550 = call i32 @SVN_ERR(i32 %549)
  %551 = load i8**, i8*** %8, align 8
  %552 = load i8*, i8** %551, align 8
  %553 = load i8, i8* %552, align 1
  %554 = sext i8 %553 to i32
  %555 = icmp eq i32 %554, 12
  br i1 %555, label %556, label %557

556:                                              ; preds = %543
  br label %698

557:                                              ; preds = %543
  %558 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %559 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %558, i32 0, i32 13
  %560 = load i8**, i8*** %8, align 8
  %561 = load i8*, i8** %9, align 8
  %562 = load i32*, i32** %11, align 8
  %563 = call i32 @read_str(i8** %559, i8** %560, i8* %561, i32* %562)
  %564 = call i32 @SVN_ERR(i32 %563)
  %565 = load i8**, i8*** %8, align 8
  %566 = load i8*, i8** %565, align 8
  %567 = load i8, i8* %566, align 1
  %568 = sext i8 %567 to i32
  %569 = icmp eq i32 %568, 12
  br i1 %569, label %570, label %571

570:                                              ; preds = %557
  br label %698

571:                                              ; preds = %557
  %572 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %573 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %572, i32 0, i32 20
  %574 = load i32, i32* @ENTRIES_BOOL_KEEP_LOCAL, align 4
  %575 = load i8**, i8*** %8, align 8
  %576 = load i8*, i8** %9, align 8
  %577 = call i32 @read_bool(i32* %573, i32 %574, i8** %575, i8* %576)
  %578 = call i32 @SVN_ERR(i32 %577)
  %579 = load i8**, i8*** %8, align 8
  %580 = load i8*, i8** %579, align 8
  %581 = load i8, i8* %580, align 1
  %582 = sext i8 %581 to i32
  %583 = icmp eq i32 %582, 12
  br i1 %583, label %584, label %585

584:                                              ; preds = %571
  br label %698

585:                                              ; preds = %571
  %586 = load i8**, i8*** %8, align 8
  %587 = load i8*, i8** %9, align 8
  %588 = call i32 @read_val(i8** %17, i8** %586, i8* %587)
  %589 = call i32 @SVN_ERR(i32 %588)
  %590 = load i8*, i8** %17, align 8
  %591 = icmp ne i8* %590, null
  br i1 %591, label %592, label %597

592:                                              ; preds = %585
  %593 = load i8*, i8** %17, align 8
  %594 = call i64 @apr_strtoi64(i8* %593, i32* null, i32 0)
  %595 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %596 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %595, i32 0, i32 19
  store i64 %594, i64* %596, align 8
  br label %597

597:                                              ; preds = %592, %585
  %598 = load i8**, i8*** %8, align 8
  %599 = load i8*, i8** %598, align 8
  %600 = load i8, i8* %599, align 1
  %601 = sext i8 %600 to i32
  %602 = icmp eq i32 %601, 12
  br i1 %602, label %603, label %604

603:                                              ; preds = %597
  br label %698

604:                                              ; preds = %597
  %605 = load i8**, i8*** %8, align 8
  %606 = load i8*, i8** %9, align 8
  %607 = call i32 @read_val(i8** %18, i8** %605, i8* %606)
  %608 = call i32 @SVN_ERR(i32 %607)
  %609 = load i8*, i8** %18, align 8
  %610 = icmp ne i8* %609, null
  br i1 %610, label %611, label %650

611:                                              ; preds = %604
  %612 = load i8*, i8** %18, align 8
  %613 = call i32 @svn_depth_from_word(i8* %612)
  %614 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %615 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %614, i32 0, i32 18
  store i32 %613, i32* %615, align 4
  %616 = load i8*, i8** %13, align 8
  %617 = icmp ne i8* %616, null
  %618 = xor i1 %617, true
  %619 = zext i1 %618 to i32
  store i32 %619, i32* %20, align 4
  %620 = load i32, i32* %20, align 4
  %621 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %622 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %621, i32 0, i32 18
  %623 = load i32, i32* %622, align 4
  %624 = load i32, i32* @svn_depth_exclude, align 4
  %625 = icmp ne i32 %623, %624
  %626 = zext i1 %625 to i32
  %627 = icmp ne i32 %620, %626
  %628 = zext i1 %627 to i32
  store i32 %628, i32* %19, align 4
  %629 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %630 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %629, i32 0, i32 18
  %631 = load i32, i32* %630, align 4
  %632 = load i32, i32* @svn_depth_infinity, align 4
  %633 = icmp ne i32 %631, %632
  br i1 %633, label %634, label %649

634:                                              ; preds = %611
  %635 = load i32, i32* %19, align 4
  %636 = icmp ne i32 %635, 0
  br i1 %636, label %637, label %649

637:                                              ; preds = %634
  %638 = load i32, i32* @SVN_ERR_ENTRY_ATTRIBUTE_INVALID, align 4
  %639 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %640 = load i8*, i8** %13, align 8
  %641 = icmp ne i8* %640, null
  br i1 %641, label %642, label %644

642:                                              ; preds = %637
  %643 = load i8*, i8** %13, align 8
  br label %646

644:                                              ; preds = %637
  %645 = load i8*, i8** @SVN_WC_ENTRY_THIS_DIR, align 8
  br label %646

646:                                              ; preds = %644, %642
  %647 = phi i8* [ %643, %642 ], [ %645, %644 ]
  %648 = call i32* @svn_error_createf(i32 %638, i32* null, i32 %639, i8* %647)
  store i32* %648, i32** %6, align 8
  br label %702

649:                                              ; preds = %634, %611
  br label %654

650:                                              ; preds = %604
  %651 = load i32, i32* @svn_depth_infinity, align 4
  %652 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %653 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %652, i32 0, i32 18
  store i32 %651, i32* %653, align 4
  br label %654

654:                                              ; preds = %650, %649
  %655 = load i8**, i8*** %8, align 8
  %656 = load i8*, i8** %655, align 8
  %657 = load i8, i8* %656, align 1
  %658 = sext i8 %657 to i32
  %659 = icmp eq i32 %658, 12
  br i1 %659, label %660, label %661

660:                                              ; preds = %654
  br label %698

661:                                              ; preds = %654
  %662 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %663 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %662, i32 0, i32 14
  %664 = load i8**, i8*** %8, align 8
  %665 = load i8*, i8** %9, align 8
  %666 = load i32*, i32** %11, align 8
  %667 = call i32 @read_str(i8** %663, i8** %664, i8* %665, i32* %666)
  %668 = call i32 @SVN_ERR(i32 %667)
  %669 = load i8**, i8*** %8, align 8
  %670 = load i8*, i8** %669, align 8
  %671 = load i8, i8* %670, align 1
  %672 = sext i8 %671 to i32
  %673 = icmp eq i32 %672, 12
  br i1 %673, label %674, label %675

674:                                              ; preds = %661
  br label %698

675:                                              ; preds = %661
  %676 = load i8**, i8*** %8, align 8
  %677 = load i8*, i8** %9, align 8
  %678 = load i32*, i32** %11, align 8
  %679 = call i32 @read_str(i8** %21, i8** %676, i8* %677, i32* %678)
  %680 = call i32 @SVN_ERR(i32 %679)
  %681 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %682 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %681, i32 0, i32 17
  %683 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %684 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %683, i32 0, i32 16
  %685 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %686 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %685, i32 0, i32 15
  %687 = load i8*, i8** %21, align 8
  %688 = load i32*, i32** %11, align 8
  %689 = call i32 @svn_wc__unserialize_file_external(i32* %682, i32* %684, i32* %686, i8* %687, i32* %688)
  %690 = call i32 @SVN_ERR(i32 %689)
  %691 = load i8**, i8*** %8, align 8
  %692 = load i8*, i8** %691, align 8
  %693 = load i8, i8* %692, align 1
  %694 = sext i8 %693 to i32
  %695 = icmp eq i32 %694, 12
  br i1 %695, label %696, label %697

696:                                              ; preds = %675
  br label %698

697:                                              ; preds = %675
  br label %698

698:                                              ; preds = %697, %696, %674, %660, %603, %584, %570, %556, %542, %528, %514, %500, %486, %472, %458, %444, %430, %415, %401, %387, %373, %359, %345, %332, %319, %305, %291, %277, %263, %249, %235, %221, %162, %116, %101, %87
  %699 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %700 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %7, align 8
  store %struct.TYPE_4__* %699, %struct.TYPE_4__** %700, align 8
  %701 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %701, i32** %6, align 8
  br label %702

702:                                              ; preds = %698, %646, %209, %153, %72
  %703 = load i32*, i32** %6, align 8
  ret i32* %703
}

declare dso_local %struct.TYPE_4__* @alloc_entry(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @read_path(i8**, i8**, i8*, i32*) #1

declare dso_local i32 @read_val(i8**, i8**, i8*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @read_revnum(i32*, i8**, i8*, i32*) #1

declare dso_local i32 @read_url(i64*, i8**, i8*, i32, i32*) #1

declare dso_local i32 @svn_uri__is_ancestor(i64, i64) #1

declare dso_local i32 @read_time(i32*, i8**, i8*, i32*) #1

declare dso_local i32 @read_str(i8**, i8**, i8*, i32*) #1

declare dso_local i32 @read_bool(i32*, i32, i8**, i8*) #1

declare dso_local i64 @apr_strtoi64(i8*, i32*, i32) #1

declare dso_local i32 @svn_depth_from_word(i8*) #1

declare dso_local i32 @svn_wc__unserialize_file_external(i32*, i32*, i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
