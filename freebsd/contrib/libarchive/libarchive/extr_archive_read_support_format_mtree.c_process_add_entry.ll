; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_mtree.c_process_add_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_mtree.c_process_add_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }
%struct.mtree = type { i32, %struct.mtree_entry* }
%struct.mtree_entry = type { i8*, i32*, %struct.mtree_entry*, i32, i64, %struct.mtree_entry*, i64 }
%struct.mtree_option = type { i8*, %struct.mtree_option* }

@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Can't allocate memory\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c" \09\0D\0A\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.mtree*, %struct.mtree_option**, i8*, i32, %struct.mtree_entry**, i32)* @process_add_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_add_entry(%struct.archive_read* %0, %struct.mtree* %1, %struct.mtree_option** %2, i8* %3, i32 %4, %struct.mtree_entry** %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.archive_read*, align 8
  %10 = alloca %struct.mtree*, align 8
  %11 = alloca %struct.mtree_option**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.mtree_entry**, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.mtree_entry*, align 8
  %17 = alloca %struct.mtree_option*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i8, align 1
  %27 = alloca %struct.mtree_entry*, align 8
  store %struct.archive_read* %0, %struct.archive_read** %9, align 8
  store %struct.mtree* %1, %struct.mtree** %10, align 8
  store %struct.mtree_option** %2, %struct.mtree_option*** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store %struct.mtree_entry** %5, %struct.mtree_entry*** %14, align 8
  store i32 %6, i32* %15, align 4
  %28 = call i8* @malloc(i64 56)
  %29 = bitcast i8* %28 to %struct.mtree_entry*
  store %struct.mtree_entry* %29, %struct.mtree_entry** %16, align 8
  %30 = icmp eq %struct.mtree_entry* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %7
  %32 = load %struct.archive_read*, %struct.archive_read** %9, align 8
  %33 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %32, i32 0, i32 0
  %34 = load i32, i32* @errno, align 4
  %35 = call i32 @archive_set_error(i32* %33, i32 %34, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %36, i32* %8, align 4
  br label %327

37:                                               ; preds = %7
  %38 = load %struct.mtree_entry*, %struct.mtree_entry** %16, align 8
  %39 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %38, i32 0, i32 5
  store %struct.mtree_entry* null, %struct.mtree_entry** %39, align 8
  %40 = load %struct.mtree_entry*, %struct.mtree_entry** %16, align 8
  %41 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %40, i32 0, i32 1
  store i32* null, i32** %41, align 8
  %42 = load %struct.mtree_entry*, %struct.mtree_entry** %16, align 8
  %43 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %42, i32 0, i32 0
  store i8* null, i8** %43, align 8
  %44 = load %struct.mtree_entry*, %struct.mtree_entry** %16, align 8
  %45 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %44, i32 0, i32 6
  store i64 0, i64* %45, align 8
  %46 = load %struct.mtree_entry*, %struct.mtree_entry** %16, align 8
  %47 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %46, i32 0, i32 4
  store i64 0, i64* %47, align 8
  %48 = load %struct.mtree_entry**, %struct.mtree_entry*** %14, align 8
  %49 = load %struct.mtree_entry*, %struct.mtree_entry** %48, align 8
  %50 = icmp eq %struct.mtree_entry* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %37
  %52 = load %struct.mtree_entry*, %struct.mtree_entry** %16, align 8
  %53 = load %struct.mtree*, %struct.mtree** %10, align 8
  %54 = getelementptr inbounds %struct.mtree, %struct.mtree* %53, i32 0, i32 1
  store %struct.mtree_entry* %52, %struct.mtree_entry** %54, align 8
  br label %60

55:                                               ; preds = %37
  %56 = load %struct.mtree_entry*, %struct.mtree_entry** %16, align 8
  %57 = load %struct.mtree_entry**, %struct.mtree_entry*** %14, align 8
  %58 = load %struct.mtree_entry*, %struct.mtree_entry** %57, align 8
  %59 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %58, i32 0, i32 5
  store %struct.mtree_entry* %56, %struct.mtree_entry** %59, align 8
  br label %60

60:                                               ; preds = %55, %51
  %61 = load %struct.mtree_entry*, %struct.mtree_entry** %16, align 8
  %62 = load %struct.mtree_entry**, %struct.mtree_entry*** %14, align 8
  store %struct.mtree_entry* %61, %struct.mtree_entry** %62, align 8
  %63 = load i32, i32* %15, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %154

65:                                               ; preds = %60
  br label %66

66:                                               ; preds = %95, %65
  %67 = load i32, i32* %13, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %96

69:                                               ; preds = %66
  %70 = load i8*, i8** %12, align 8
  %71 = load i32, i32* %13, align 4
  %72 = sub nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %70, i64 %73
  %75 = load i8, i8* %74, align 1
  store i8 %75, i8* %26, align 1
  %76 = load i8, i8* %26, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 13
  br i1 %78, label %91, label %79

79:                                               ; preds = %69
  %80 = load i8, i8* %26, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 10
  br i1 %82, label %91, label %83

83:                                               ; preds = %79
  %84 = load i8, i8* %26, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 9
  br i1 %86, label %91, label %87

87:                                               ; preds = %83
  %88 = load i8, i8* %26, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 32
  br i1 %90, label %91, label %94

91:                                               ; preds = %87, %83, %79, %69
  %92 = load i32, i32* %13, align 4
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %13, align 4
  br label %95

94:                                               ; preds = %87
  br label %96

95:                                               ; preds = %91
  br label %66

96:                                               ; preds = %94, %66
  %97 = load i8*, i8** %12, align 8
  store i8* %97, i8** %20, align 8
  store i32 0, i32* %25, align 4
  br label %98

98:                                               ; preds = %141, %96
  %99 = load i32, i32* %25, align 4
  %100 = load i32, i32* %13, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %144

102:                                              ; preds = %98
  %103 = load i8*, i8** %12, align 8
  %104 = load i32, i32* %25, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 %108, 13
  br i1 %109, label %134, label %110

110:                                              ; preds = %102
  %111 = load i8*, i8** %12, align 8
  %112 = load i32, i32* %25, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %111, i64 %113
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 10
  br i1 %117, label %134, label %118

118:                                              ; preds = %110
  %119 = load i8*, i8** %12, align 8
  %120 = load i32, i32* %25, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %119, i64 %121
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 9
  br i1 %125, label %134, label %126

126:                                              ; preds = %118
  %127 = load i8*, i8** %12, align 8
  %128 = load i32, i32* %25, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %127, i64 %129
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp eq i32 %132, 32
  br i1 %133, label %134, label %140

134:                                              ; preds = %126, %118, %110, %102
  %135 = load i8*, i8** %12, align 8
  %136 = load i32, i32* %25, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %135, i64 %137
  %139 = getelementptr inbounds i8, i8* %138, i64 1
  store i8* %139, i8** %20, align 8
  br label %140

140:                                              ; preds = %134, %126
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %25, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %25, align 4
  br label %98

144:                                              ; preds = %98
  %145 = load i8*, i8** %12, align 8
  %146 = load i32, i32* %13, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %145, i64 %147
  %149 = load i8*, i8** %20, align 8
  %150 = ptrtoint i8* %148 to i64
  %151 = ptrtoint i8* %149 to i64
  %152 = sub i64 %150, %151
  store i64 %152, i64* %22, align 8
  %153 = load i8*, i8** %20, align 8
  store i8* %153, i8** %21, align 8
  br label %165

154:                                              ; preds = %60
  %155 = load i8*, i8** %12, align 8
  %156 = call i64 @strcspn(i8* %155, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i64 %156, i64* %22, align 8
  %157 = load i8*, i8** %12, align 8
  store i8* %157, i8** %20, align 8
  %158 = load i64, i64* %22, align 8
  %159 = load i8*, i8** %12, align 8
  %160 = getelementptr inbounds i8, i8* %159, i64 %158
  store i8* %160, i8** %12, align 8
  %161 = load i8*, i8** %12, align 8
  %162 = load i32, i32* %13, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8, i8* %161, i64 %163
  store i8* %164, i8** %21, align 8
  br label %165

165:                                              ; preds = %154, %144
  %166 = load i64, i64* %22, align 8
  %167 = add i64 %166, 1
  %168 = call i8* @malloc(i64 %167)
  %169 = load %struct.mtree_entry*, %struct.mtree_entry** %16, align 8
  %170 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %169, i32 0, i32 0
  store i8* %168, i8** %170, align 8
  %171 = icmp eq i8* %168, null
  br i1 %171, label %172, label %178

172:                                              ; preds = %165
  %173 = load %struct.archive_read*, %struct.archive_read** %9, align 8
  %174 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %173, i32 0, i32 0
  %175 = load i32, i32* @errno, align 4
  %176 = call i32 @archive_set_error(i32* %174, i32 %175, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %177 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %177, i32* %8, align 4
  br label %327

178:                                              ; preds = %165
  %179 = load %struct.mtree_entry*, %struct.mtree_entry** %16, align 8
  %180 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %179, i32 0, i32 0
  %181 = load i8*, i8** %180, align 8
  %182 = load i8*, i8** %20, align 8
  %183 = load i64, i64* %22, align 8
  %184 = call i32 @memcpy(i8* %181, i8* %182, i64 %183)
  %185 = load %struct.mtree_entry*, %struct.mtree_entry** %16, align 8
  %186 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %185, i32 0, i32 0
  %187 = load i8*, i8** %186, align 8
  %188 = load i64, i64* %22, align 8
  %189 = getelementptr inbounds i8, i8* %187, i64 %188
  store i8 0, i8* %189, align 1
  %190 = load %struct.mtree_entry*, %struct.mtree_entry** %16, align 8
  %191 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %190, i32 0, i32 0
  %192 = load i8*, i8** %191, align 8
  %193 = load %struct.mtree_entry*, %struct.mtree_entry** %16, align 8
  %194 = call i32 @parse_escapes(i8* %192, %struct.mtree_entry* %193)
  %195 = load %struct.mtree_entry*, %struct.mtree_entry** %16, align 8
  %196 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %195, i32 0, i32 2
  store %struct.mtree_entry* null, %struct.mtree_entry** %196, align 8
  %197 = load %struct.mtree_entry*, %struct.mtree_entry** %16, align 8
  %198 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %197, i32 0, i32 4
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %230

201:                                              ; preds = %178
  %202 = load %struct.mtree*, %struct.mtree** %10, align 8
  %203 = getelementptr inbounds %struct.mtree, %struct.mtree* %202, i32 0, i32 0
  %204 = load %struct.mtree_entry*, %struct.mtree_entry** %16, align 8
  %205 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %204, i32 0, i32 3
  %206 = call i32 @__archive_rb_tree_insert_node(i32* %203, i32* %205)
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %229, label %208

208:                                              ; preds = %201
  %209 = load %struct.mtree*, %struct.mtree** %10, align 8
  %210 = getelementptr inbounds %struct.mtree, %struct.mtree* %209, i32 0, i32 0
  %211 = load %struct.mtree_entry*, %struct.mtree_entry** %16, align 8
  %212 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %211, i32 0, i32 0
  %213 = load i8*, i8** %212, align 8
  %214 = call i64 @__archive_rb_tree_find_node(i32* %210, i8* %213)
  %215 = inttoptr i64 %214 to %struct.mtree_entry*
  store %struct.mtree_entry* %215, %struct.mtree_entry** %27, align 8
  br label %216

216:                                              ; preds = %221, %208
  %217 = load %struct.mtree_entry*, %struct.mtree_entry** %27, align 8
  %218 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %217, i32 0, i32 2
  %219 = load %struct.mtree_entry*, %struct.mtree_entry** %218, align 8
  %220 = icmp ne %struct.mtree_entry* %219, null
  br i1 %220, label %221, label %225

221:                                              ; preds = %216
  %222 = load %struct.mtree_entry*, %struct.mtree_entry** %27, align 8
  %223 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %222, i32 0, i32 2
  %224 = load %struct.mtree_entry*, %struct.mtree_entry** %223, align 8
  store %struct.mtree_entry* %224, %struct.mtree_entry** %27, align 8
  br label %216

225:                                              ; preds = %216
  %226 = load %struct.mtree_entry*, %struct.mtree_entry** %16, align 8
  %227 = load %struct.mtree_entry*, %struct.mtree_entry** %27, align 8
  %228 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %227, i32 0, i32 2
  store %struct.mtree_entry* %226, %struct.mtree_entry** %228, align 8
  br label %229

229:                                              ; preds = %225, %201
  br label %230

230:                                              ; preds = %229, %178
  %231 = load %struct.mtree_option**, %struct.mtree_option*** %11, align 8
  %232 = load %struct.mtree_option*, %struct.mtree_option** %231, align 8
  store %struct.mtree_option* %232, %struct.mtree_option** %17, align 8
  br label %233

233:                                              ; preds = %254, %230
  %234 = load %struct.mtree_option*, %struct.mtree_option** %17, align 8
  %235 = icmp ne %struct.mtree_option* %234, null
  br i1 %235, label %236, label %258

236:                                              ; preds = %233
  %237 = load %struct.archive_read*, %struct.archive_read** %9, align 8
  %238 = load %struct.mtree_entry*, %struct.mtree_entry** %16, align 8
  %239 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %238, i32 0, i32 1
  %240 = load %struct.mtree_option*, %struct.mtree_option** %17, align 8
  %241 = getelementptr inbounds %struct.mtree_option, %struct.mtree_option* %240, i32 0, i32 0
  %242 = load i8*, i8** %241, align 8
  %243 = load %struct.mtree_option*, %struct.mtree_option** %17, align 8
  %244 = getelementptr inbounds %struct.mtree_option, %struct.mtree_option* %243, i32 0, i32 0
  %245 = load i8*, i8** %244, align 8
  %246 = call i32 @strlen(i8* %245)
  %247 = call i32 @add_option(%struct.archive_read* %237, i32** %239, i8* %242, i32 %246)
  store i32 %247, i32* %24, align 4
  %248 = load i32, i32* %24, align 4
  %249 = load i32, i32* @ARCHIVE_OK, align 4
  %250 = icmp ne i32 %248, %249
  br i1 %250, label %251, label %253

251:                                              ; preds = %236
  %252 = load i32, i32* %24, align 4
  store i32 %252, i32* %8, align 4
  br label %327

253:                                              ; preds = %236
  br label %254

254:                                              ; preds = %253
  %255 = load %struct.mtree_option*, %struct.mtree_option** %17, align 8
  %256 = getelementptr inbounds %struct.mtree_option, %struct.mtree_option* %255, i32 0, i32 1
  %257 = load %struct.mtree_option*, %struct.mtree_option** %256, align 8
  store %struct.mtree_option* %257, %struct.mtree_option** %17, align 8
  br label %233

258:                                              ; preds = %233
  br label %259

259:                                              ; preds = %325, %258
  %260 = load i8*, i8** %12, align 8
  %261 = load i8*, i8** %12, align 8
  %262 = call i32 @strspn(i8* %261, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i8, i8* %260, i64 %263
  store i8* %264, i8** %18, align 8
  %265 = load i8*, i8** %18, align 8
  %266 = load i8, i8* %265, align 1
  %267 = sext i8 %266 to i32
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %271

269:                                              ; preds = %259
  %270 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %270, i32* %8, align 4
  br label %327

271:                                              ; preds = %259
  %272 = load i8*, i8** %18, align 8
  %273 = load i8*, i8** %21, align 8
  %274 = icmp uge i8* %272, %273
  br i1 %274, label %275, label %277

275:                                              ; preds = %271
  %276 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %276, i32* %8, align 4
  br label %327

277:                                              ; preds = %271
  %278 = load i8*, i8** %18, align 8
  store i8* %278, i8** %12, align 8
  %279 = load i8*, i8** %12, align 8
  %280 = load i8*, i8** %12, align 8
  %281 = call i64 @strcspn(i8* %280, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %282 = getelementptr inbounds i8, i8* %279, i64 %281
  store i8* %282, i8** %18, align 8
  %283 = load i8*, i8** %12, align 8
  %284 = call i8* @strchr(i8* %283, i8 signext 61)
  store i8* %284, i8** %19, align 8
  %285 = load i8*, i8** %19, align 8
  %286 = icmp eq i8* %285, null
  br i1 %286, label %291, label %287

287:                                              ; preds = %277
  %288 = load i8*, i8** %19, align 8
  %289 = load i8*, i8** %18, align 8
  %290 = icmp ugt i8* %288, %289
  br i1 %290, label %291, label %297

291:                                              ; preds = %287, %277
  %292 = load i8*, i8** %18, align 8
  %293 = load i8*, i8** %12, align 8
  %294 = ptrtoint i8* %292 to i64
  %295 = ptrtoint i8* %293 to i64
  %296 = sub i64 %294, %295
  store i64 %296, i64* %23, align 8
  br label %303

297:                                              ; preds = %287
  %298 = load i8*, i8** %19, align 8
  %299 = load i8*, i8** %12, align 8
  %300 = ptrtoint i8* %298 to i64
  %301 = ptrtoint i8* %299 to i64
  %302 = sub i64 %300, %301
  store i64 %302, i64* %23, align 8
  br label %303

303:                                              ; preds = %297, %291
  %304 = load %struct.mtree_entry*, %struct.mtree_entry** %16, align 8
  %305 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %304, i32 0, i32 1
  %306 = load i8*, i8** %12, align 8
  %307 = load i64, i64* %23, align 8
  %308 = call i32 @remove_option(i32** %305, i8* %306, i64 %307)
  %309 = load %struct.archive_read*, %struct.archive_read** %9, align 8
  %310 = load %struct.mtree_entry*, %struct.mtree_entry** %16, align 8
  %311 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %310, i32 0, i32 1
  %312 = load i8*, i8** %12, align 8
  %313 = load i8*, i8** %18, align 8
  %314 = load i8*, i8** %12, align 8
  %315 = ptrtoint i8* %313 to i64
  %316 = ptrtoint i8* %314 to i64
  %317 = sub i64 %315, %316
  %318 = trunc i64 %317 to i32
  %319 = call i32 @add_option(%struct.archive_read* %309, i32** %311, i8* %312, i32 %318)
  store i32 %319, i32* %24, align 4
  %320 = load i32, i32* %24, align 4
  %321 = load i32, i32* @ARCHIVE_OK, align 4
  %322 = icmp ne i32 %320, %321
  br i1 %322, label %323, label %325

323:                                              ; preds = %303
  %324 = load i32, i32* %24, align 4
  store i32 %324, i32* %8, align 4
  br label %327

325:                                              ; preds = %303
  %326 = load i8*, i8** %18, align 8
  store i8* %326, i8** %12, align 8
  br label %259

327:                                              ; preds = %323, %275, %269, %251, %172, %31
  %328 = load i32, i32* %8, align 4
  ret i32 %328
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @parse_escapes(i8*, %struct.mtree_entry*) #1

declare dso_local i32 @__archive_rb_tree_insert_node(i32*, i32*) #1

declare dso_local i64 @__archive_rb_tree_find_node(i32*, i8*) #1

declare dso_local i32 @add_option(%struct.archive_read*, i32**, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strspn(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @remove_option(i32**, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
