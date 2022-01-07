; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_xml.c_xml_cb_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_xml.c_xml_cb_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i32, i32, i32 (%struct.TYPE_15__*, i32, i64, %struct.TYPE_18__*, i32)*, %struct.TYPE_15__*, %struct.TYPE_14__* }
%struct.TYPE_18__ = type { i8*, i8* }
%struct.TYPE_15__ = type { i64, %struct.TYPE_18__, %struct.TYPE_15__*, i32, i64, i32, i32, i32* }
%struct.TYPE_14__ = type { i8*, i64, i8*, i8**, i64, i64, i64 }
%struct.TYPE_17__ = type { i8*, i8* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@lazy_create_pool = common dso_local global i32 0, align 4
@XML_STATE_INITIAL = common dso_local global i64 0, align 8
@SVN_ERR_XML_UNEXPECTED_ELEMENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"XML Parsing failed: Unexpected root element '%s'\00", align 1
@SVN_ERR_XML_ATTRIB_NOT_FOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Missing XML attribute '%s' on '%s' element\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_16__*, i8*, i8**)* @xml_cb_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @xml_cb_start(%struct.TYPE_16__* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_17__, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 4
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  store %struct.TYPE_15__* %18, %struct.TYPE_15__** %8, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %3
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, 1
  store i64 %27, i64* %25, align 8
  %28 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %28, i32** %4, align 8
  br label %293

29:                                               ; preds = %3
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 3
  %32 = load i8**, i8*** %7, align 8
  %33 = load i32, i32* @lazy_create_pool, align 4
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %35 = call i32 @define_namespaces(i32* %31, i8** %32, i32 %33, %struct.TYPE_15__* %34)
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @expand_ns(%struct.TYPE_17__* %9, i32 %38, i8* %39)
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 5
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %42, align 8
  store %struct.TYPE_14__* %43, %struct.TYPE_14__** %10, align 8
  br label %44

44:                                               ; preds = %84, %29
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %87

49:                                               ; preds = %44
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %52, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %84

58:                                               ; preds = %49
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 2
  %61 = load i8*, i8** %60, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 42
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  br label %87

66:                                               ; preds = %58
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 2
  %71 = load i8*, i8** %70, align 8
  %72 = call i64 @strcmp(i8* %68, i8* %71)
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %66
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i64 @strcmp(i8* %76, i8* %79)
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  br label %87

83:                                               ; preds = %74, %66
  br label %84

84:                                               ; preds = %83, %57
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 1
  store %struct.TYPE_14__* %86, %struct.TYPE_14__** %10, align 8
  br label %44

87:                                               ; preds = %82, %65, %44
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = icmp eq i8* %90, null
  br i1 %91, label %92, label %110

92:                                               ; preds = %87
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @XML_STATE_INITIAL, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %92
  %99 = load i32, i32* @SVN_ERR_XML_UNEXPECTED_ELEMENT, align 4
  %100 = call i32 @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = call i32* (i32, i32*, i32, i8*, ...) @svn_error_createf(i32 %99, i32* null, i32 %100, i8* %102)
  store i32* %103, i32** %4, align 8
  br label %293

104:                                              ; preds = %92
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %107, 1
  store i64 %108, i64* %106, align 8
  %109 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %109, i32** %4, align 8
  br label %293

110:                                              ; preds = %87
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 6
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %110
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 5
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br label %120

120:                                              ; preds = %115, %110
  %121 = phi i1 [ true, %110 ], [ %119, %115 ]
  %122 = zext i1 %121 to i32
  %123 = call i32 @SVN_ERR_ASSERT(i32 %122)
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %125 = call i32* @xes_pool(%struct.TYPE_15__* %124)
  store i32* %125, i32** %11, align 8
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 6
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %137, label %130

130:                                              ; preds = %120
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 3
  %133 = load i8**, i8*** %132, align 8
  %134 = getelementptr inbounds i8*, i8** %133, i64 0
  %135 = load i8*, i8** %134, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %137, label %222

137:                                              ; preds = %130, %120
  %138 = load i32*, i32** %11, align 8
  %139 = call i32* @svn_pool_create(i32* %138)
  store i32* %139, i32** %11, align 8
  %140 = load i32*, i32** %11, align 8
  %141 = call %struct.TYPE_15__* @apr_pcalloc(i32* %140, i32 64)
  store %struct.TYPE_15__* %141, %struct.TYPE_15__** %12, align 8
  %142 = load i32*, i32** %11, align 8
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 7
  store i32* %142, i32** %144, align 8
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 6
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %137
  %150 = load i32*, i32** %11, align 8
  %151 = call i32 @svn_stringbuf_create_empty(i32* %150)
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 6
  store i32 %151, i32* %153, align 4
  br label %154

154:                                              ; preds = %149, %137
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 3
  %157 = load i8**, i8*** %156, align 8
  %158 = getelementptr inbounds i8*, i8** %157, i64 0
  %159 = load i8*, i8** %158, align 8
  %160 = icmp ne i8* %159, null
  br i1 %160, label %161, label %221

161:                                              ; preds = %154
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 3
  %164 = load i8**, i8*** %163, align 8
  %165 = getelementptr inbounds i8*, i8** %164, i64 0
  store i8** %165, i8*** %13, align 8
  %166 = load i32*, i32** %11, align 8
  %167 = call i32 @apr_hash_make(i32* %166)
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 5
  store i32 %167, i32* %169, align 8
  br label %170

170:                                              ; preds = %217, %161
  %171 = load i8**, i8*** %13, align 8
  %172 = load i8*, i8** %171, align 8
  %173 = icmp ne i8* %172, null
  br i1 %173, label %174, label %220

174:                                              ; preds = %170
  %175 = load i8**, i8*** %13, align 8
  %176 = load i8*, i8** %175, align 8
  %177 = load i8, i8* %176, align 1
  %178 = sext i8 %177 to i32
  %179 = icmp eq i32 %178, 63
  br i1 %179, label %180, label %187

180:                                              ; preds = %174
  %181 = load i8**, i8*** %13, align 8
  %182 = load i8*, i8** %181, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 1
  store i8* %183, i8** %14, align 8
  %184 = load i8*, i8** %14, align 8
  %185 = load i8**, i8*** %7, align 8
  %186 = call i8* @svn_xml_get_attr_value(i8* %184, i8** %185)
  store i8* %186, i8** %15, align 8
  br label %204

187:                                              ; preds = %174
  %188 = load i8**, i8*** %13, align 8
  %189 = load i8*, i8** %188, align 8
  store i8* %189, i8** %14, align 8
  %190 = load i8*, i8** %14, align 8
  %191 = load i8**, i8*** %7, align 8
  %192 = call i8* @svn_xml_get_attr_value(i8* %190, i8** %191)
  store i8* %192, i8** %15, align 8
  %193 = load i8*, i8** %15, align 8
  %194 = icmp eq i8* %193, null
  br i1 %194, label %195, label %203

195:                                              ; preds = %187
  %196 = load i32, i32* @SVN_ERR_XML_ATTRIB_NOT_FOUND, align 4
  %197 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %198 = load i8*, i8** %14, align 8
  %199 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 2
  %201 = load i8*, i8** %200, align 8
  %202 = call i32* (i32, i32*, i32, i8*, ...) @svn_error_createf(i32 %196, i32* null, i32 %197, i8* %198, i8* %201)
  store i32* %202, i32** %4, align 8
  br label %293

203:                                              ; preds = %187
  br label %204

204:                                              ; preds = %203, %180
  %205 = load i8*, i8** %15, align 8
  %206 = icmp ne i8* %205, null
  br i1 %206, label %207, label %216

207:                                              ; preds = %204
  %208 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %209 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %208, i32 0, i32 5
  %210 = load i32, i32* %209, align 8
  %211 = load i8*, i8** %14, align 8
  %212 = load i32*, i32** %11, align 8
  %213 = load i8*, i8** %15, align 8
  %214 = call i8* @apr_pstrdup(i32* %212, i8* %213)
  %215 = call i32 @svn_hash_sets(i32 %210, i8* %211, i8* %214)
  br label %216

216:                                              ; preds = %207, %204
  br label %217

217:                                              ; preds = %216
  %218 = load i8**, i8*** %13, align 8
  %219 = getelementptr inbounds i8*, i8** %218, i32 1
  store i8** %219, i8*** %13, align 8
  br label %170

220:                                              ; preds = %170
  br label %221

221:                                              ; preds = %220, %154
  br label %225

222:                                              ; preds = %130
  %223 = load i32*, i32** %11, align 8
  %224 = call %struct.TYPE_15__* @apr_pcalloc(i32* %223, i32 64)
  store %struct.TYPE_15__* %224, %struct.TYPE_15__** %12, align 8
  br label %225

225:                                              ; preds = %222, %221
  %226 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %227 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %226, i32 0, i32 4
  %228 = load i64, i64* %227, align 8
  %229 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %230 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %229, i32 0, i32 0
  store i64 %228, i64* %230, align 8
  %231 = load i32*, i32** %11, align 8
  %232 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  %233 = load i8*, i8** %232, align 8
  %234 = call i8* @apr_pstrdup(i32* %231, i8* %233)
  %235 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %236 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %236, i32 0, i32 1
  store i8* %234, i8** %237, align 8
  %238 = load i32*, i32** %11, align 8
  %239 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 1
  %240 = load i8*, i8** %239, align 8
  %241 = call i8* @apr_pstrdup(i32* %238, i8* %240)
  %242 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %243 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %243, i32 0, i32 0
  store i8* %241, i8** %244, align 8
  %245 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %246 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %245, i32 0, i32 5
  %247 = load i64, i64* %246, align 8
  %248 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %249 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %248, i32 0, i32 4
  store i64 %247, i64* %249, align 8
  %250 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %251 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %250, i32 0, i32 3
  %252 = load i32, i32* %251, align 8
  %253 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %254 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %253, i32 0, i32 3
  store i32 %252, i32* %254, align 8
  %255 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %256 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %257 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %256, i32 0, i32 2
  store %struct.TYPE_15__* %255, %struct.TYPE_15__** %257, align 8
  %258 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %259 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %260 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %259, i32 0, i32 4
  store %struct.TYPE_15__* %258, %struct.TYPE_15__** %260, align 8
  %261 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %262 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %261, i32 0, i32 3
  %263 = load i32 (%struct.TYPE_15__*, i32, i64, %struct.TYPE_18__*, i32)*, i32 (%struct.TYPE_15__*, i32, i64, %struct.TYPE_18__*, i32)** %262, align 8
  %264 = icmp ne i32 (%struct.TYPE_15__*, i32, i64, %struct.TYPE_18__*, i32)* %263, null
  br i1 %264, label %265, label %291

265:                                              ; preds = %225
  %266 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %267 = call i32 @START_CALLBACK(%struct.TYPE_16__* %266)
  %268 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %268, i32 0, i32 3
  %270 = load i32 (%struct.TYPE_15__*, i32, i64, %struct.TYPE_18__*, i32)*, i32 (%struct.TYPE_15__*, i32, i64, %struct.TYPE_18__*, i32)** %269, align 8
  %271 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %272 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %273 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %272, i32 0, i32 2
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %276 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %279 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %278, i32 0, i32 1
  %280 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %281 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 8
  %283 = call i32 %270(%struct.TYPE_15__* %271, i32 %274, i64 %277, %struct.TYPE_18__* %279, i32 %282)
  %284 = call i32 @SVN_ERR(i32 %283)
  %285 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %286 = call i32 @END_CALLBACK(%struct.TYPE_16__* %285)
  %287 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %288 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 8
  %290 = call i32 @svn_pool_clear(i32 %289)
  br label %291

291:                                              ; preds = %265, %225
  %292 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %292, i32** %4, align 8
  br label %293

293:                                              ; preds = %291, %195, %104, %98, %23
  %294 = load i32*, i32** %4, align 8
  ret i32* %294
}

declare dso_local i32 @define_namespaces(i32*, i8**, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @expand_ns(%struct.TYPE_17__*, i32, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32* @xes_pool(%struct.TYPE_15__*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local %struct.TYPE_15__* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @svn_stringbuf_create_empty(i32*) #1

declare dso_local i32 @apr_hash_make(i32*) #1

declare dso_local i8* @svn_xml_get_attr_value(i8*, i8**) #1

declare dso_local i32 @svn_hash_sets(i32, i8*, i8*) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

declare dso_local i32 @START_CALLBACK(%struct.TYPE_16__*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @END_CALLBACK(%struct.TYPE_16__*) #1

declare dso_local i32 @svn_pool_clear(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
