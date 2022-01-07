; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_patch.c_install_patched_target.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_patch.c_install_patched_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, i64, i8*, i32, i64, %struct.TYPE_8__*, i32, i64, i64, i8*, i8*, i64 }
%struct.TYPE_8__ = type { i64, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@svn_node_dir = common dso_local global i64 0, align 8
@svn_node_file = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8
@svn_node_none = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"link \00", align 1
@svn_subst_eol_style_fixed = common dso_local global i64 0, align 8
@svn_subst_eol_style_native = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_10__*, i8*, %struct.TYPE_9__*, i32, i32*, i32*)* @install_patched_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @install_patched_target(%struct.TYPE_10__* %0, i8* %1, %struct.TYPE_9__* %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 11
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %46

24:                                               ; preds = %6
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %45, label %27

27:                                               ; preds = %24
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load i32, i32* @FALSE, align 4
  %35 = load i32, i32* @FALSE, align 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %12, align 8
  %43 = call i32 @svn_wc_delete4(i32 %30, i8* %33, i32 %34, i32 %35, i32 %38, i32 %41, i32* null, i32* null, i32* %42)
  %44 = call i32 @SVN_ERR(i32 %43)
  br label %45

45:                                               ; preds = %27, %24
  br label %321

46:                                               ; preds = %6
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %105

51:                                               ; preds = %46
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load i32*, i32** %12, align 8
  %56 = call i8* @svn_dirent_dirname(i8* %54, i32* %55)
  store i8* %56, i8** %14, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i8*, i8** %14, align 8
  %61 = load i32, i32* @FALSE, align 4
  %62 = load i32, i32* @FALSE, align 4
  %63 = load i32*, i32** %12, align 8
  %64 = call i32 @svn_wc_read_kind2(i64* %13, i32 %59, i8* %60, i32 %61, i32 %62, i32* %63)
  %65 = call i32 @SVN_ERR(i32 %64)
  %66 = load i64, i64* %13, align 8
  %67 = load i64, i64* @svn_node_dir, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %73, label %69

69:                                               ; preds = %51
  %70 = load i64, i64* %13, align 8
  %71 = load i64, i64* @svn_node_file, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %95

73:                                               ; preds = %69, %51
  %74 = load i64, i64* %13, align 8
  %75 = load i64, i64* @svn_node_dir, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = load i8*, i8** @TRUE, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 9
  store i8* %78, i8** %80, align 8
  br label %94

81:                                               ; preds = %73
  %82 = load i8*, i8** %14, align 8
  %83 = load i32*, i32** %12, align 8
  %84 = call i32 @svn_io_check_path(i8* %82, i64* %15, i32* %83)
  %85 = call i32 @SVN_ERR(i32 %84)
  %86 = load i64, i64* %15, align 8
  %87 = load i64, i64* @svn_node_dir, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %81
  %90 = load i8*, i8** @TRUE, align 8
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 9
  store i8* %90, i8** %92, align 8
  br label %93

93:                                               ; preds = %89, %81
  br label %94

94:                                               ; preds = %93, %77
  br label %104

95:                                               ; preds = %69
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %97 = load i8*, i8** %8, align 8
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %99 = load i32, i32* %10, align 4
  %100 = load i32*, i32** %11, align 8
  %101 = load i32*, i32** %12, align 8
  %102 = call i32 @create_missing_parents(%struct.TYPE_10__* %96, i8* %97, %struct.TYPE_9__* %98, i32 %99, i32* %100, i32* %101)
  %103 = call i32 @SVN_ERR(i32 %102)
  br label %104

104:                                              ; preds = %95, %94
  br label %143

105:                                              ; preds = %46
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = load i32, i32* @FALSE, align 4
  %113 = load i32, i32* @FALSE, align 4
  %114 = load i32*, i32** %12, align 8
  %115 = call i32 @svn_wc_read_kind2(i64* %16, i32 %108, i8* %111, i32 %112, i32 %113, i32* %114)
  %116 = call i32 @SVN_ERR(i32 %115)
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @svn_node_none, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %128, label %122

122:                                              ; preds = %105
  %123 = load i64, i64* %16, align 8
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %123, %126
  br i1 %127, label %128, label %142

128:                                              ; preds = %122, %105
  %129 = load i8*, i8** @TRUE, align 8
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 9
  store i8* %129, i8** %131, align 8
  %132 = load i64, i64* %16, align 8
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %132, %135
  br i1 %136, label %137, label %141

137:                                              ; preds = %128
  %138 = load i8*, i8** @TRUE, align 8
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 10
  store i8* %138, i8** %140, align 8
  br label %141

141:                                              ; preds = %137, %128
  br label %142

142:                                              ; preds = %141, %122
  br label %143

143:                                              ; preds = %142, %104
  %144 = load i32, i32* %10, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %320, label %146

146:                                              ; preds = %143
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 9
  %149 = load i8*, i8** %148, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %320, label %151

151:                                              ; preds = %146
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 8
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %191

156:                                              ; preds = %151
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 6
  %159 = load i32, i32* %158, align 8
  %160 = load i32*, i32** %12, align 8
  %161 = load i32*, i32** %12, align 8
  %162 = call i32 @svn_stream_open_readonly(i32** %18, i32 %159, i32* %160, i32* %161)
  %163 = call i32 @SVN_ERR(i32 %162)
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 0
  %166 = load i8*, i8** %165, align 8
  %167 = load i32*, i32** %12, align 8
  %168 = load i32*, i32** %12, align 8
  %169 = call i32 @svn_subst_create_specialfile(i32** %17, i8* %166, i32* %167, i32* %168)
  %170 = call i32 @SVN_ERR(i32 %169)
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 7
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %156
  %176 = load i32*, i32** %17, align 8
  %177 = call i32 @svn_stream_puts(i32* %176, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %178 = call i32 @SVN_ERR(i32 %177)
  br label %179

179:                                              ; preds = %175, %156
  %180 = load i32*, i32** %18, align 8
  %181 = load i32*, i32** %17, align 8
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load i32*, i32** %12, align 8
  %189 = call i32 @svn_stream_copy3(i32* %180, i32* %181, i32 %184, i32 %187, i32* %188)
  %190 = call i32 @SVN_ERR(i32 %189)
  br label %249

191:                                              ; preds = %151
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 5
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @svn_subst_eol_style_fixed, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %207, label %199

199:                                              ; preds = %191
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 5
  %202 = load %struct.TYPE_8__*, %struct.TYPE_8__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @svn_subst_eol_style_native, align 8
  %206 = icmp eq i64 %204, %205
  br label %207

207:                                              ; preds = %199, %191
  %208 = phi i1 [ true, %191 ], [ %206, %199 ]
  %209 = zext i1 %208 to i32
  store i32 %209, i32* %19, align 4
  %210 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 6
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 2
  %215 = load i8*, i8** %214, align 8
  %216 = icmp ne i8* %215, null
  br i1 %216, label %217, label %221

217:                                              ; preds = %207
  %218 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 2
  %220 = load i8*, i8** %219, align 8
  br label %225

221:                                              ; preds = %207
  %222 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 0
  %224 = load i8*, i8** %223, align 8
  br label %225

225:                                              ; preds = %221, %217
  %226 = phi i8* [ %220, %217 ], [ %224, %221 ]
  %227 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 5
  %229 = load %struct.TYPE_8__*, %struct.TYPE_8__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* %19, align 4
  %233 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %234 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %233, i32 0, i32 5
  %235 = load %struct.TYPE_8__*, %struct.TYPE_8__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 8
  %238 = load i8*, i8** @TRUE, align 8
  %239 = load i32, i32* @FALSE, align 4
  %240 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %241 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %244 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = load i32*, i32** %12, align 8
  %247 = call i32 @svn_subst_copy_and_translate4(i32 %212, i8* %226, i32 %231, i32 %232, i32 %237, i8* %238, i32 %239, i32 %242, i32 %245, i32* %246)
  %248 = call i32 @SVN_ERR(i32 %247)
  br label %249

249:                                              ; preds = %225, %179
  %250 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %251 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %250, i32 0, i32 4
  %252 = load i64, i64* %251, align 8
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %265

254:                                              ; preds = %249
  %255 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %256 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %259 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %258, i32 0, i32 0
  %260 = load i8*, i8** %259, align 8
  %261 = load i32, i32* @FALSE, align 4
  %262 = load i32*, i32** %12, align 8
  %263 = call i32 @svn_wc_add_from_disk3(i32 %257, i8* %260, i32* null, i32 %261, i32* null, i32* null, i32* %262)
  %264 = call i32 @SVN_ERR(i32 %263)
  br label %265

265:                                              ; preds = %254, %249
  %266 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %267 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %266, i32 0, i32 2
  %268 = load i8*, i8** %267, align 8
  %269 = icmp ne i8* %268, null
  br i1 %269, label %270, label %274

270:                                              ; preds = %265
  %271 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %272 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %271, i32 0, i32 2
  %273 = load i8*, i8** %272, align 8
  br label %278

274:                                              ; preds = %265
  %275 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %276 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %275, i32 0, i32 0
  %277 = load i8*, i8** %276, align 8
  br label %278

278:                                              ; preds = %274, %270
  %279 = phi i8* [ %273, %270 ], [ %277, %274 ]
  %280 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %281 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %280, i32 0, i32 3
  %282 = load i32, i32* %281, align 8
  %283 = load i32, i32* @FALSE, align 4
  %284 = load i32*, i32** %12, align 8
  %285 = call i32 @svn_io_set_file_executable(i8* %279, i32 %282, i32 %283, i32* %284)
  %286 = call i32 @SVN_ERR(i32 %285)
  %287 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %288 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %287, i32 0, i32 2
  %289 = load i8*, i8** %288, align 8
  %290 = icmp ne i8* %289, null
  br i1 %290, label %291, label %319

291:                                              ; preds = %278
  %292 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %293 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %292, i32 0, i32 2
  %294 = load i32, i32* %293, align 4
  %295 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %296 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %295, i32 0, i32 0
  %297 = load i8*, i8** %296, align 8
  %298 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %299 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %298, i32 0, i32 2
  %300 = load i8*, i8** %299, align 8
  %301 = load i8*, i8** @TRUE, align 8
  %302 = load i32, i32* @FALSE, align 4
  %303 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %304 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %307 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 4
  %309 = load i32*, i32** %12, align 8
  %310 = call i32 @svn_wc__move2(i32 %294, i8* %297, i8* %300, i8* %301, i32 %302, i32 %305, i32 %308, i32* null, i32* null, i32* %309)
  %311 = call i32 @SVN_ERR(i32 %310)
  %312 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %313 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %312, i32 0, i32 0
  %314 = load i8*, i8** %313, align 8
  %315 = load i32, i32* @FALSE, align 4
  %316 = load i32*, i32** %12, align 8
  %317 = call i32 @svn_io_remove_file2(i8* %314, i32 %315, i32* %316)
  %318 = call i32 @SVN_ERR(i32 %317)
  br label %319

319:                                              ; preds = %291, %278
  br label %320

320:                                              ; preds = %319, %146, %143
  br label %321

321:                                              ; preds = %320, %45
  %322 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %322
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc_delete4(i32, i8*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i8* @svn_dirent_dirname(i8*, i32*) #1

declare dso_local i32 @svn_wc_read_kind2(i64*, i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @svn_io_check_path(i8*, i64*, i32*) #1

declare dso_local i32 @create_missing_parents(%struct.TYPE_10__*, i8*, %struct.TYPE_9__*, i32, i32*, i32*) #1

declare dso_local i32 @svn_stream_open_readonly(i32**, i32, i32*, i32*) #1

declare dso_local i32 @svn_subst_create_specialfile(i32**, i8*, i32*, i32*) #1

declare dso_local i32 @svn_stream_puts(i32*, i8*) #1

declare dso_local i32 @svn_stream_copy3(i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @svn_subst_copy_and_translate4(i32, i8*, i32, i32, i32, i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @svn_wc_add_from_disk3(i32, i8*, i32*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @svn_io_set_file_executable(i8*, i32, i32, i32*) #1

declare dso_local i32 @svn_wc__move2(i32, i8*, i8*, i8*, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @svn_io_remove_file2(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
