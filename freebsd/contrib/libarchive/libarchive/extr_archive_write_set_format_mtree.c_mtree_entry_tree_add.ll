; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_mtree.c_mtree_entry_tree_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_mtree.c_mtree_entry_tree_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i32, i64 }
%struct.mtree_entry = type { %struct.TYPE_11__*, %struct.mtree_entry*, %struct.TYPE_13__, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_13__ = type { i64, i8* }
%struct.TYPE_12__ = type { i8* }
%struct.mtree_writer = type { %struct.TYPE_13__, %struct.mtree_entry*, %struct.mtree_entry* }
%struct.archive_string = type { i8*, i32 }
%struct.archive_rb_node = type { i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"Internal programming error in generating canonical name for %s\00", align 1
@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"A name buffer is too small\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"`%s' is not directory, we cannot insert `%s' \00", align 1
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c".\00", align 1
@NAME_MAX = common dso_local global i32 0, align 4
@_MAX_FNAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*, %struct.mtree_entry**)* @mtree_entry_tree_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtree_entry_tree_add(%struct.archive_write* %0, %struct.mtree_entry** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_write*, align 8
  %5 = alloca %struct.mtree_entry**, align 8
  %6 = alloca [256 x i8], align 16
  %7 = alloca %struct.mtree_writer*, align 8
  %8 = alloca %struct.mtree_entry*, align 8
  %9 = alloca %struct.mtree_entry*, align 8
  %10 = alloca %struct.mtree_entry*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.mtree_entry*, align 8
  %16 = alloca %struct.archive_string, align 8
  store %struct.archive_write* %0, %struct.archive_write** %4, align 8
  store %struct.mtree_entry** %1, %struct.mtree_entry*** %5, align 8
  %17 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %18 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.mtree_writer*
  store %struct.mtree_writer* %20, %struct.mtree_writer** %7, align 8
  %21 = load %struct.mtree_entry**, %struct.mtree_entry*** %5, align 8
  %22 = load %struct.mtree_entry*, %struct.mtree_entry** %21, align 8
  store %struct.mtree_entry* %22, %struct.mtree_entry** %9, align 8
  %23 = load %struct.mtree_entry*, %struct.mtree_entry** %9, align 8
  %24 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %63

28:                                               ; preds = %2
  %29 = load %struct.mtree_entry*, %struct.mtree_entry** %9, align 8
  %30 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 1
  br i1 %33, label %34, label %63

34:                                               ; preds = %28
  %35 = load %struct.mtree_entry*, %struct.mtree_entry** %9, align 8
  %36 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 46
  br i1 %42, label %43, label %63

43:                                               ; preds = %34
  %44 = load %struct.mtree_entry*, %struct.mtree_entry** %9, align 8
  %45 = load %struct.mtree_entry*, %struct.mtree_entry** %9, align 8
  %46 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %45, i32 0, i32 1
  store %struct.mtree_entry* %44, %struct.mtree_entry** %46, align 8
  %47 = load %struct.mtree_writer*, %struct.mtree_writer** %7, align 8
  %48 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %47, i32 0, i32 2
  %49 = load %struct.mtree_entry*, %struct.mtree_entry** %48, align 8
  %50 = icmp ne %struct.mtree_entry* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %43
  %52 = load %struct.mtree_writer*, %struct.mtree_writer** %7, align 8
  %53 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %52, i32 0, i32 2
  %54 = load %struct.mtree_entry*, %struct.mtree_entry** %53, align 8
  store %struct.mtree_entry* %54, %struct.mtree_entry** %10, align 8
  br label %424

55:                                               ; preds = %43
  %56 = load %struct.mtree_entry*, %struct.mtree_entry** %9, align 8
  %57 = load %struct.mtree_writer*, %struct.mtree_writer** %7, align 8
  %58 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %57, i32 0, i32 2
  store %struct.mtree_entry* %56, %struct.mtree_entry** %58, align 8
  %59 = load %struct.mtree_writer*, %struct.mtree_writer** %7, align 8
  %60 = load %struct.mtree_entry*, %struct.mtree_entry** %9, align 8
  %61 = call i32 @mtree_entry_register_add(%struct.mtree_writer* %59, %struct.mtree_entry* %60)
  %62 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %62, i32* %3, align 4
  br label %450

63:                                               ; preds = %34, %28, %2
  %64 = load %struct.mtree_entry*, %struct.mtree_entry** %9, align 8
  %65 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %63
  %70 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %71 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %70, i32 0, i32 0
  %72 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %73 = load %struct.mtree_entry*, %struct.mtree_entry** %9, align 8
  %74 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %71, i32 %72, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i8* %76)
  %78 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %78, i32* %3, align 4
  br label %450

79:                                               ; preds = %63
  %80 = load %struct.mtree_entry*, %struct.mtree_entry** %9, align 8
  %81 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 1
  %83 = load i8*, i8** %82, align 8
  store i8* %83, i8** %12, align 8
  store i8* %83, i8** %11, align 8
  %84 = load %struct.mtree_writer*, %struct.mtree_writer** %7, align 8
  %85 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %84, i32 0, i32 0
  %86 = call i64 @archive_strlen(%struct.TYPE_13__* %85)
  %87 = load %struct.mtree_entry*, %struct.mtree_entry** %9, align 8
  %88 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %87, i32 0, i32 3
  %89 = call i64 @archive_strlen(%struct.TYPE_13__* %88)
  %90 = icmp eq i64 %86, %89
  br i1 %90, label %91, label %133

91:                                               ; preds = %79
  %92 = load %struct.mtree_writer*, %struct.mtree_writer** %7, align 8
  %93 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 1
  %95 = load i8*, i8** %94, align 8
  %96 = load i8*, i8** %11, align 8
  %97 = call i64 @strcmp(i8* %95, i8* %96)
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %133

99:                                               ; preds = %91
  %100 = load %struct.mtree_writer*, %struct.mtree_writer** %7, align 8
  %101 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %100, i32 0, i32 1
  %102 = load %struct.mtree_entry*, %struct.mtree_entry** %101, align 8
  %103 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %102, i32 0, i32 0
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 1
  %106 = load %struct.mtree_entry*, %struct.mtree_entry** %9, align 8
  %107 = bitcast %struct.mtree_entry* %106 to %struct.archive_rb_node*
  %108 = call i32 @__archive_rb_tree_insert_node(i32* %105, %struct.archive_rb_node* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %123, label %110

110:                                              ; preds = %99
  %111 = load %struct.mtree_writer*, %struct.mtree_writer** %7, align 8
  %112 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %111, i32 0, i32 1
  %113 = load %struct.mtree_entry*, %struct.mtree_entry** %112, align 8
  %114 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %113, i32 0, i32 0
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 1
  %117 = load %struct.mtree_entry*, %struct.mtree_entry** %9, align 8
  %118 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  %121 = call i64 @__archive_rb_tree_find_node(i32* %116, i8* %120)
  %122 = inttoptr i64 %121 to %struct.mtree_entry*
  store %struct.mtree_entry* %122, %struct.mtree_entry** %10, align 8
  br label %424

123:                                              ; preds = %99
  %124 = load %struct.mtree_writer*, %struct.mtree_writer** %7, align 8
  %125 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %124, i32 0, i32 1
  %126 = load %struct.mtree_entry*, %struct.mtree_entry** %125, align 8
  %127 = load %struct.mtree_entry*, %struct.mtree_entry** %9, align 8
  %128 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %127, i32 0, i32 1
  store %struct.mtree_entry* %126, %struct.mtree_entry** %128, align 8
  %129 = load %struct.mtree_writer*, %struct.mtree_writer** %7, align 8
  %130 = load %struct.mtree_entry*, %struct.mtree_entry** %9, align 8
  %131 = call i32 @mtree_entry_register_add(%struct.mtree_writer* %129, %struct.mtree_entry* %130)
  %132 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %132, i32* %3, align 4
  br label %450

133:                                              ; preds = %91, %79
  %134 = load %struct.mtree_writer*, %struct.mtree_writer** %7, align 8
  %135 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %134, i32 0, i32 2
  %136 = load %struct.mtree_entry*, %struct.mtree_entry** %135, align 8
  store %struct.mtree_entry* %136, %struct.mtree_entry** %8, align 8
  br label %137

137:                                              ; preds = %229, %183, %133
  %138 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %139 = load i8*, i8** %11, align 8
  %140 = call i32 @get_path_component(i8* %138, i32 256, i8* %139)
  store i32 %140, i32* %13, align 4
  %141 = load i32, i32* %13, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %137
  store %struct.mtree_entry* null, %struct.mtree_entry** %10, align 8
  br label %231

144:                                              ; preds = %137
  %145 = load i32, i32* %13, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %144
  %148 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %149 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %148, i32 0, i32 0
  %150 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %151 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %149, i32 %150, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %152 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %152, i32* %3, align 4
  br label %450

153:                                              ; preds = %144
  %154 = load i32, i32* %13, align 4
  %155 = icmp eq i32 %154, 1
  br i1 %155, label %156, label %184

156:                                              ; preds = %153
  %157 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %158 = load i8, i8* %157, align 16
  %159 = sext i8 %158 to i32
  %160 = icmp eq i32 %159, 46
  br i1 %160, label %161, label %184

161:                                              ; preds = %156
  %162 = load %struct.mtree_entry*, %struct.mtree_entry** %8, align 8
  %163 = icmp ne %struct.mtree_entry* %162, null
  br i1 %163, label %164, label %184

164:                                              ; preds = %161
  %165 = load %struct.mtree_entry*, %struct.mtree_entry** %8, align 8
  %166 = load %struct.mtree_writer*, %struct.mtree_writer** %7, align 8
  %167 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %166, i32 0, i32 2
  %168 = load %struct.mtree_entry*, %struct.mtree_entry** %167, align 8
  %169 = icmp eq %struct.mtree_entry* %165, %168
  br i1 %169, label %170, label %184

170:                                              ; preds = %164
  %171 = load i32, i32* %13, align 4
  %172 = load i8*, i8** %11, align 8
  %173 = sext i32 %171 to i64
  %174 = getelementptr inbounds i8, i8* %172, i64 %173
  store i8* %174, i8** %11, align 8
  %175 = load i8*, i8** %11, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 0
  %177 = load i8, i8* %176, align 1
  %178 = sext i8 %177 to i32
  %179 = icmp eq i32 %178, 47
  br i1 %179, label %180, label %183

180:                                              ; preds = %170
  %181 = load i8*, i8** %11, align 8
  %182 = getelementptr inbounds i8, i8* %181, i32 1
  store i8* %182, i8** %11, align 8
  br label %183

183:                                              ; preds = %180, %170
  br label %137

184:                                              ; preds = %164, %161, %156, %153
  %185 = load %struct.mtree_entry*, %struct.mtree_entry** %8, align 8
  %186 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %187 = call %struct.mtree_entry* @mtree_entry_find_child(%struct.mtree_entry* %185, i8* %186)
  store %struct.mtree_entry* %187, %struct.mtree_entry** %10, align 8
  %188 = load %struct.mtree_entry*, %struct.mtree_entry** %10, align 8
  %189 = icmp eq %struct.mtree_entry* %188, null
  br i1 %189, label %196, label %190

190:                                              ; preds = %184
  %191 = load i8*, i8** %11, align 8
  %192 = getelementptr inbounds i8, i8* %191, i64 0
  %193 = load i8, i8* %192, align 1
  %194 = sext i8 %193 to i32
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %190, %184
  br label %231

197:                                              ; preds = %190
  %198 = load %struct.mtree_entry*, %struct.mtree_entry** %10, align 8
  %199 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %198, i32 0, i32 0
  %200 = load %struct.TYPE_11__*, %struct.TYPE_11__** %199, align 8
  %201 = icmp ne %struct.TYPE_11__* %200, null
  br i1 %201, label %216, label %202

202:                                              ; preds = %197
  %203 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %204 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %203, i32 0, i32 0
  %205 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %206 = load %struct.mtree_entry*, %struct.mtree_entry** %10, align 8
  %207 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %206, i32 0, i32 4
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 0
  %209 = load i8*, i8** %208, align 8
  %210 = load %struct.mtree_entry*, %struct.mtree_entry** %9, align 8
  %211 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %210, i32 0, i32 4
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i32 0, i32 0
  %213 = load i8*, i8** %212, align 8
  %214 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %204, i32 %205, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i8* %209, i8* %213)
  %215 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %215, i32* %3, align 4
  br label %450

216:                                              ; preds = %197
  %217 = load i32, i32* %13, align 4
  %218 = load i8*, i8** %11, align 8
  %219 = sext i32 %217 to i64
  %220 = getelementptr inbounds i8, i8* %218, i64 %219
  store i8* %220, i8** %11, align 8
  %221 = load i8*, i8** %11, align 8
  %222 = getelementptr inbounds i8, i8* %221, i64 0
  %223 = load i8, i8* %222, align 1
  %224 = sext i8 %223 to i32
  %225 = icmp eq i32 %224, 47
  br i1 %225, label %226, label %229

226:                                              ; preds = %216
  %227 = load i8*, i8** %11, align 8
  %228 = getelementptr inbounds i8, i8* %227, i32 1
  store i8* %228, i8** %11, align 8
  br label %229

229:                                              ; preds = %226, %216
  %230 = load %struct.mtree_entry*, %struct.mtree_entry** %10, align 8
  store %struct.mtree_entry* %230, %struct.mtree_entry** %8, align 8
  br label %137

231:                                              ; preds = %196, %143
  %232 = load %struct.mtree_entry*, %struct.mtree_entry** %10, align 8
  %233 = icmp eq %struct.mtree_entry* %232, null
  br i1 %233, label %234, label %423

234:                                              ; preds = %231
  br label %235

235:                                              ; preds = %341, %234
  %236 = load i8*, i8** %11, align 8
  %237 = getelementptr inbounds i8, i8* %236, i64 0
  %238 = load i8, i8* %237, align 1
  %239 = sext i8 %238 to i32
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %343

241:                                              ; preds = %235
  %242 = call i32 @archive_string_init(%struct.archive_string* %16)
  %243 = load i8*, i8** %12, align 8
  %244 = load i8*, i8** %11, align 8
  %245 = load i8*, i8** %12, align 8
  %246 = ptrtoint i8* %244 to i64
  %247 = ptrtoint i8* %245 to i64
  %248 = sub i64 %246, %247
  %249 = load i32, i32* %13, align 4
  %250 = sext i32 %249 to i64
  %251 = add nsw i64 %248, %250
  %252 = trunc i64 %251 to i32
  %253 = call i32 @archive_strncat(%struct.archive_string* %16, i8* %243, i32 %252)
  %254 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %16, i32 0, i32 0
  %255 = load i8*, i8** %254, align 8
  %256 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %16, i32 0, i32 1
  %257 = load i32, i32* %256, align 8
  %258 = sub nsw i32 %257, 1
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i8, i8* %255, i64 %259
  %261 = load i8, i8* %260, align 1
  %262 = sext i8 %261 to i32
  %263 = icmp eq i32 %262, 47
  br i1 %263, label %264, label %275

264:                                              ; preds = %241
  %265 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %16, i32 0, i32 0
  %266 = load i8*, i8** %265, align 8
  %267 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %16, i32 0, i32 1
  %268 = load i32, i32* %267, align 8
  %269 = sub nsw i32 %268, 1
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i8, i8* %266, i64 %270
  store i8 0, i8* %271, align 1
  %272 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %16, i32 0, i32 1
  %273 = load i32, i32* %272, align 8
  %274 = add nsw i32 %273, -1
  store i32 %274, i32* %272, align 8
  br label %275

275:                                              ; preds = %264, %241
  %276 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %277 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %16, i32 0, i32 0
  %278 = load i8*, i8** %277, align 8
  %279 = call i32 @mtree_entry_create_virtual_dir(%struct.archive_write* %276, i8* %278, %struct.mtree_entry** %15)
  store i32 %279, i32* %14, align 4
  %280 = call i32 @archive_string_free(%struct.archive_string* %16)
  %281 = load i32, i32* %14, align 4
  %282 = load i32, i32* @ARCHIVE_WARN, align 4
  %283 = icmp slt i32 %281, %282
  br i1 %283, label %284, label %286

284:                                              ; preds = %275
  %285 = load i32, i32* %14, align 4
  store i32 %285, i32* %3, align 4
  br label %450

286:                                              ; preds = %275
  %287 = load %struct.mtree_entry*, %struct.mtree_entry** %15, align 8
  %288 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %287, i32 0, i32 4
  %289 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %288, i32 0, i32 0
  %290 = load i8*, i8** %289, align 8
  %291 = call i64 @strcmp(i8* %290, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %292 = icmp eq i64 %291, 0
  br i1 %292, label %293, label %300

293:                                              ; preds = %286
  %294 = load %struct.mtree_entry*, %struct.mtree_entry** %15, align 8
  %295 = load %struct.mtree_entry*, %struct.mtree_entry** %15, align 8
  %296 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %295, i32 0, i32 1
  store %struct.mtree_entry* %294, %struct.mtree_entry** %296, align 8
  %297 = load %struct.mtree_entry*, %struct.mtree_entry** %15, align 8
  %298 = load %struct.mtree_writer*, %struct.mtree_writer** %7, align 8
  %299 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %298, i32 0, i32 2
  store %struct.mtree_entry* %297, %struct.mtree_entry** %299, align 8
  br label %311

300:                                              ; preds = %286
  %301 = load %struct.mtree_entry*, %struct.mtree_entry** %8, align 8
  %302 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %301, i32 0, i32 0
  %303 = load %struct.TYPE_11__*, %struct.TYPE_11__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %303, i32 0, i32 1
  %305 = load %struct.mtree_entry*, %struct.mtree_entry** %15, align 8
  %306 = bitcast %struct.mtree_entry* %305 to %struct.archive_rb_node*
  %307 = call i32 @__archive_rb_tree_insert_node(i32* %304, %struct.archive_rb_node* %306)
  %308 = load %struct.mtree_entry*, %struct.mtree_entry** %8, align 8
  %309 = load %struct.mtree_entry*, %struct.mtree_entry** %15, align 8
  %310 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %309, i32 0, i32 1
  store %struct.mtree_entry* %308, %struct.mtree_entry** %310, align 8
  br label %311

311:                                              ; preds = %300, %293
  %312 = load %struct.mtree_writer*, %struct.mtree_writer** %7, align 8
  %313 = load %struct.mtree_entry*, %struct.mtree_entry** %15, align 8
  %314 = call i32 @mtree_entry_register_add(%struct.mtree_writer* %312, %struct.mtree_entry* %313)
  %315 = load %struct.mtree_entry*, %struct.mtree_entry** %15, align 8
  store %struct.mtree_entry* %315, %struct.mtree_entry** %10, align 8
  %316 = load i32, i32* %13, align 4
  %317 = load i8*, i8** %11, align 8
  %318 = sext i32 %316 to i64
  %319 = getelementptr inbounds i8, i8* %317, i64 %318
  store i8* %319, i8** %11, align 8
  %320 = load i8*, i8** %11, align 8
  %321 = getelementptr inbounds i8, i8* %320, i64 0
  %322 = load i8, i8* %321, align 1
  %323 = sext i8 %322 to i32
  %324 = icmp eq i32 %323, 47
  br i1 %324, label %325, label %328

325:                                              ; preds = %311
  %326 = load i8*, i8** %11, align 8
  %327 = getelementptr inbounds i8, i8* %326, i32 1
  store i8* %327, i8** %11, align 8
  br label %328

328:                                              ; preds = %325, %311
  %329 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %330 = load i8*, i8** %11, align 8
  %331 = call i32 @get_path_component(i8* %329, i32 256, i8* %330)
  store i32 %331, i32* %13, align 4
  %332 = load i32, i32* %13, align 4
  %333 = icmp slt i32 %332, 0
  br i1 %333, label %334, label %341

334:                                              ; preds = %328
  %335 = call i32 @archive_string_free(%struct.archive_string* %16)
  %336 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %337 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %336, i32 0, i32 0
  %338 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %339 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %337, i32 %338, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %340 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %340, i32* %3, align 4
  br label %450

341:                                              ; preds = %328
  %342 = load %struct.mtree_entry*, %struct.mtree_entry** %10, align 8
  store %struct.mtree_entry* %342, %struct.mtree_entry** %8, align 8
  br label %235

343:                                              ; preds = %235
  %344 = load %struct.mtree_entry*, %struct.mtree_entry** %8, align 8
  %345 = load %struct.mtree_writer*, %struct.mtree_writer** %7, align 8
  %346 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %345, i32 0, i32 1
  store %struct.mtree_entry* %344, %struct.mtree_entry** %346, align 8
  %347 = load %struct.mtree_writer*, %struct.mtree_writer** %7, align 8
  %348 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %347, i32 0, i32 0
  %349 = call i32 @archive_string_empty(%struct.TYPE_13__* %348)
  %350 = load %struct.mtree_writer*, %struct.mtree_writer** %7, align 8
  %351 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %350, i32 0, i32 0
  %352 = load %struct.mtree_entry*, %struct.mtree_entry** %8, align 8
  %353 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %352, i32 0, i32 3
  %354 = call i64 @archive_strlen(%struct.TYPE_13__* %353)
  %355 = load %struct.mtree_entry*, %struct.mtree_entry** %8, align 8
  %356 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %355, i32 0, i32 2
  %357 = call i64 @archive_strlen(%struct.TYPE_13__* %356)
  %358 = add nsw i64 %354, %357
  %359 = add nsw i64 %358, 2
  %360 = call i32 @archive_string_ensure(%struct.TYPE_13__* %351, i64 %359)
  %361 = load %struct.mtree_entry*, %struct.mtree_entry** %8, align 8
  %362 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %361, i32 0, i32 3
  %363 = call i64 @archive_strlen(%struct.TYPE_13__* %362)
  %364 = load %struct.mtree_entry*, %struct.mtree_entry** %8, align 8
  %365 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %364, i32 0, i32 2
  %366 = call i64 @archive_strlen(%struct.TYPE_13__* %365)
  %367 = add nsw i64 %363, %366
  %368 = icmp eq i64 %367, 0
  br i1 %368, label %369, label %375

369:                                              ; preds = %343
  %370 = load %struct.mtree_writer*, %struct.mtree_writer** %7, align 8
  %371 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %370, i32 0, i32 0
  %372 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %371, i32 0, i32 1
  %373 = load i8*, i8** %372, align 8
  %374 = getelementptr inbounds i8, i8* %373, i64 0
  store i8 0, i8* %374, align 1
  br label %395

375:                                              ; preds = %343
  %376 = load %struct.mtree_entry*, %struct.mtree_entry** %8, align 8
  %377 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %376, i32 0, i32 3
  %378 = call i64 @archive_strlen(%struct.TYPE_13__* %377)
  %379 = icmp sgt i64 %378, 0
  br i1 %379, label %380, label %389

380:                                              ; preds = %375
  %381 = load %struct.mtree_writer*, %struct.mtree_writer** %7, align 8
  %382 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %381, i32 0, i32 0
  %383 = load %struct.mtree_entry*, %struct.mtree_entry** %8, align 8
  %384 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %383, i32 0, i32 3
  %385 = call i32 @archive_string_copy(%struct.TYPE_13__* %382, %struct.TYPE_13__* %384)
  %386 = load %struct.mtree_writer*, %struct.mtree_writer** %7, align 8
  %387 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %386, i32 0, i32 0
  %388 = call i32 @archive_strappend_char(%struct.TYPE_13__* %387, i8 signext 47)
  br label %389

389:                                              ; preds = %380, %375
  %390 = load %struct.mtree_writer*, %struct.mtree_writer** %7, align 8
  %391 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %390, i32 0, i32 0
  %392 = load %struct.mtree_entry*, %struct.mtree_entry** %8, align 8
  %393 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %392, i32 0, i32 2
  %394 = call i32 @archive_string_concat(%struct.TYPE_13__* %391, %struct.TYPE_13__* %393)
  br label %395

395:                                              ; preds = %389, %369
  %396 = load %struct.mtree_entry*, %struct.mtree_entry** %8, align 8
  %397 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %396, i32 0, i32 0
  %398 = load %struct.TYPE_11__*, %struct.TYPE_11__** %397, align 8
  %399 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %398, i32 0, i32 1
  %400 = load %struct.mtree_entry*, %struct.mtree_entry** %9, align 8
  %401 = bitcast %struct.mtree_entry* %400 to %struct.archive_rb_node*
  %402 = call i32 @__archive_rb_tree_insert_node(i32* %399, %struct.archive_rb_node* %401)
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %415, label %404

404:                                              ; preds = %395
  %405 = load %struct.mtree_entry*, %struct.mtree_entry** %8, align 8
  %406 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %405, i32 0, i32 0
  %407 = load %struct.TYPE_11__*, %struct.TYPE_11__** %406, align 8
  %408 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %407, i32 0, i32 1
  %409 = load %struct.mtree_entry*, %struct.mtree_entry** %9, align 8
  %410 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %409, i32 0, i32 2
  %411 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %410, i32 0, i32 1
  %412 = load i8*, i8** %411, align 8
  %413 = call i64 @__archive_rb_tree_find_node(i32* %408, i8* %412)
  %414 = inttoptr i64 %413 to %struct.mtree_entry*
  store %struct.mtree_entry* %414, %struct.mtree_entry** %10, align 8
  br label %424

415:                                              ; preds = %395
  %416 = load %struct.mtree_entry*, %struct.mtree_entry** %8, align 8
  %417 = load %struct.mtree_entry*, %struct.mtree_entry** %9, align 8
  %418 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %417, i32 0, i32 1
  store %struct.mtree_entry* %416, %struct.mtree_entry** %418, align 8
  %419 = load %struct.mtree_writer*, %struct.mtree_writer** %7, align 8
  %420 = load %struct.mtree_entry*, %struct.mtree_entry** %9, align 8
  %421 = call i32 @mtree_entry_register_add(%struct.mtree_writer* %419, %struct.mtree_entry* %420)
  %422 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %422, i32* %3, align 4
  br label %450

423:                                              ; preds = %231
  br label %424

424:                                              ; preds = %423, %404, %110, %51
  %425 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %426 = load %struct.mtree_entry*, %struct.mtree_entry** %10, align 8
  %427 = load %struct.mtree_entry*, %struct.mtree_entry** %9, align 8
  %428 = call i32 @mtree_entry_exchange_same_entry(%struct.archive_write* %425, %struct.mtree_entry* %426, %struct.mtree_entry* %427)
  store i32 %428, i32* %14, align 4
  %429 = load i32, i32* %14, align 4
  %430 = load i32, i32* @ARCHIVE_WARN, align 4
  %431 = icmp slt i32 %429, %430
  br i1 %431, label %432, label %434

432:                                              ; preds = %424
  %433 = load i32, i32* %14, align 4
  store i32 %433, i32* %3, align 4
  br label %450

434:                                              ; preds = %424
  %435 = load %struct.mtree_entry*, %struct.mtree_entry** %10, align 8
  %436 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %435, i32 0, i32 0
  %437 = load %struct.TYPE_11__*, %struct.TYPE_11__** %436, align 8
  %438 = icmp ne %struct.TYPE_11__* %437, null
  br i1 %438, label %439, label %444

439:                                              ; preds = %434
  %440 = load %struct.mtree_entry*, %struct.mtree_entry** %10, align 8
  %441 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %440, i32 0, i32 0
  %442 = load %struct.TYPE_11__*, %struct.TYPE_11__** %441, align 8
  %443 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %442, i32 0, i32 0
  store i64 0, i64* %443, align 8
  br label %444

444:                                              ; preds = %439, %434
  %445 = load %struct.mtree_entry*, %struct.mtree_entry** %10, align 8
  %446 = load %struct.mtree_entry**, %struct.mtree_entry*** %5, align 8
  store %struct.mtree_entry* %445, %struct.mtree_entry** %446, align 8
  %447 = load %struct.mtree_entry*, %struct.mtree_entry** %9, align 8
  %448 = call i32 @mtree_entry_free(%struct.mtree_entry* %447)
  %449 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %449, i32* %3, align 4
  br label %450

450:                                              ; preds = %444, %432, %415, %334, %284, %202, %147, %123, %69, %55
  %451 = load i32, i32* %3, align 4
  ret i32 %451
}

declare dso_local i32 @mtree_entry_register_add(%struct.mtree_writer*, %struct.mtree_entry*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*, ...) #1

declare dso_local i64 @archive_strlen(%struct.TYPE_13__*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @__archive_rb_tree_insert_node(i32*, %struct.archive_rb_node*) #1

declare dso_local i64 @__archive_rb_tree_find_node(i32*, i8*) #1

declare dso_local i32 @get_path_component(i8*, i32, i8*) #1

declare dso_local %struct.mtree_entry* @mtree_entry_find_child(%struct.mtree_entry*, i8*) #1

declare dso_local i32 @archive_string_init(%struct.archive_string*) #1

declare dso_local i32 @archive_strncat(%struct.archive_string*, i8*, i32) #1

declare dso_local i32 @mtree_entry_create_virtual_dir(%struct.archive_write*, i8*, %struct.mtree_entry**) #1

declare dso_local i32 @archive_string_free(%struct.archive_string*) #1

declare dso_local i32 @archive_string_empty(%struct.TYPE_13__*) #1

declare dso_local i32 @archive_string_ensure(%struct.TYPE_13__*, i64) #1

declare dso_local i32 @archive_string_copy(%struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local i32 @archive_strappend_char(%struct.TYPE_13__*, i8 signext) #1

declare dso_local i32 @archive_string_concat(%struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local i32 @mtree_entry_exchange_same_entry(%struct.archive_write*, %struct.mtree_entry*, %struct.mtree_entry*) #1

declare dso_local i32 @mtree_entry_free(%struct.mtree_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
