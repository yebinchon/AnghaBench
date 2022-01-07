; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_process_head_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_process_head_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }
%struct.rar5 = type { %struct.TYPE_4__, %struct.TYPE_5__, %struct.TYPE_6__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i64, i32, i64 }
%struct.TYPE_6__ = type { i64, i64, i32, i64, i64, i64, i64 }
%struct.archive_entry = type { i32 }

@MAX_NAME_IN_BYTES = common dso_local global i32 0, align 4
@HFL_EXTRA_DATA = common dso_local global i64 0, align 8
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@HFL_DATA = common dso_local global i64 0, align 8
@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"no data found in file/service block\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_PROGRAMMER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Files with unknown unpacked size are not supported\00", align 1
@g_unpack_window_size = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"Declared dictionary size is not supported.\00", align 1
@AE_IFDIR = common dso_local global i32 0, align 4
@AE_IFREG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"rdonly,\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"hidden,\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"system,\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Unsupported Host OS: 0x%x\00", align 1
@MAX_NAME_IN_CHARS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"Filename is too long\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"No filename specified\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [33 x i8] c"File extra data size is not zero\00", align 1
@REDIR_TYPE_NONE = common dso_local global i64 0, align 8
@ARCHIVE_RETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.rar5*, %struct.archive_entry*, i64)* @process_head_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_head_file(%struct.archive_read* %0, %struct.rar5* %1, %struct.archive_entry* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive_read*, align 8
  %7 = alloca %struct.rar5*, align 8
  %8 = alloca %struct.archive_entry*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i8*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %6, align 8
  store %struct.rar5* %1, %struct.rar5** %7, align 8
  store %struct.archive_entry* %2, %struct.archive_entry** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %19, align 8
  store i64 0, i64* %20, align 8
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %32 = load i32, i32* @MAX_NAME_IN_BYTES, align 4
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %23, align 8
  %35 = alloca i8, i64 %33, align 16
  store i64 %33, i64* %24, align 8
  %36 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %37 = call i32 @archive_entry_clear(%struct.archive_entry* %36)
  %38 = load %struct.rar5*, %struct.rar5** %7, align 8
  %39 = getelementptr inbounds %struct.rar5, %struct.rar5* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %4
  %44 = load %struct.rar5*, %struct.rar5** %7, align 8
  %45 = call i32 @reset_file_context(%struct.rar5* %44)
  br label %46

46:                                               ; preds = %43, %4
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* @HFL_EXTRA_DATA, align 8
  %49 = and i64 %47, %48
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %46
  store i64 0, i64* %26, align 8
  %52 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %53 = call i32 @read_var_sized(%struct.archive_read* %52, i64* %26, i32* null)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %56, i32* %5, align 4
  store i32 1, i32* %27, align 4
  br label %458

57:                                               ; preds = %51
  %58 = load i64, i64* %26, align 8
  store i64 %58, i64* %10, align 8
  br label %59

59:                                               ; preds = %57, %46
  %60 = load i64, i64* %9, align 8
  %61 = load i64, i64* @HFL_DATA, align 8
  %62 = and i64 %60, %61
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %59
  %65 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %66 = call i32 @read_var_sized(%struct.archive_read* %65, i64* %11, i32* null)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %69, i32* %5, align 4
  store i32 1, i32* %27, align 4
  br label %458

70:                                               ; preds = %64
  %71 = load i64, i64* %11, align 8
  %72 = load %struct.rar5*, %struct.rar5** %7, align 8
  %73 = getelementptr inbounds %struct.rar5, %struct.rar5* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  store i64 %71, i64* %74, align 8
  br label %84

75:                                               ; preds = %59
  %76 = load %struct.rar5*, %struct.rar5** %7, align 8
  %77 = getelementptr inbounds %struct.rar5, %struct.rar5* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  store i64 0, i64* %78, align 8
  %79 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %80 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %79, i32 0, i32 0
  %81 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %82 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %80, i32 %81, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %83 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %83, i32* %5, align 4
  store i32 1, i32* %27, align 4
  br label %458

84:                                               ; preds = %70
  %85 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %86 = call i32 @read_var_sized(%struct.archive_read* %85, i64* %12, i32* null)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %84
  %89 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %89, i32* %5, align 4
  store i32 1, i32* %27, align 4
  br label %458

90:                                               ; preds = %84
  %91 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %92 = call i32 @read_var(%struct.archive_read* %91, i32* %17, i32* null)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %90
  %95 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %95, i32* %5, align 4
  store i32 1, i32* %27, align 4
  br label %458

96:                                               ; preds = %90
  %97 = load i64, i64* %12, align 8
  %98 = and i64 %97, 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %96
  %101 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %102 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %101, i32 0, i32 0
  %103 = load i32, i32* @ARCHIVE_ERRNO_PROGRAMMER, align 4
  %104 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %102, i32 %103, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %105 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %105, i32* %5, align 4
  store i32 1, i32* %27, align 4
  br label %458

106:                                              ; preds = %96
  %107 = load i64, i64* %12, align 8
  %108 = and i64 %107, 1
  %109 = icmp ugt i64 %108, 0
  %110 = zext i1 %109 to i32
  %111 = sext i32 %110 to i64
  %112 = load %struct.rar5*, %struct.rar5** %7, align 8
  %113 = getelementptr inbounds %struct.rar5, %struct.rar5* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  store i64 %111, i64* %114, align 8
  %115 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %116 = call i32 @read_var_sized(%struct.archive_read* %115, i64* %13, i32* null)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %120, label %118

118:                                              ; preds = %106
  %119 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %119, i32* %5, align 4
  store i32 1, i32* %27, align 4
  br label %458

120:                                              ; preds = %106
  %121 = load i64, i64* %12, align 8
  %122 = and i64 %121, 2
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %120
  %125 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %126 = call i32 @read_u32(%struct.archive_read* %125, i64* %19)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %124
  %129 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %129, i32* %5, align 4
  store i32 1, i32* %27, align 4
  br label %458

130:                                              ; preds = %124
  br label %131

131:                                              ; preds = %130, %120
  %132 = load i64, i64* %12, align 8
  %133 = and i64 %132, 4
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %131
  %136 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %137 = call i32 @read_u32(%struct.archive_read* %136, i64* %20)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %141, label %139

139:                                              ; preds = %135
  %140 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %140, i32* %5, align 4
  store i32 1, i32* %27, align 4
  br label %458

141:                                              ; preds = %135
  br label %142

142:                                              ; preds = %141, %131
  %143 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %144 = call i32 @read_var_sized(%struct.archive_read* %143, i64* %14, i32* null)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %148, label %146

146:                                              ; preds = %142
  %147 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %147, i32* %5, align 4
  store i32 1, i32* %27, align 4
  br label %458

148:                                              ; preds = %142
  %149 = load i64, i64* %14, align 8
  %150 = lshr i64 %149, 7
  %151 = trunc i64 %150 to i32
  %152 = and i32 %151, 7
  store i32 %152, i32* %21, align 4
  %153 = load i64, i64* %14, align 8
  %154 = and i64 %153, 63
  %155 = trunc i64 %154 to i32
  store i32 %155, i32* %22, align 4
  %156 = load %struct.rar5*, %struct.rar5** %7, align 8
  %157 = getelementptr inbounds %struct.rar5, %struct.rar5* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = icmp sgt i64 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %148
  br label %168

162:                                              ; preds = %148
  %163 = load i64, i64* @g_unpack_window_size, align 8
  %164 = load i64, i64* %14, align 8
  %165 = lshr i64 %164, 10
  %166 = and i64 %165, 15
  %167 = shl i64 %163, %166
  br label %168

168:                                              ; preds = %162, %161
  %169 = phi i64 [ 0, %161 ], [ %167, %162 ]
  %170 = trunc i64 %169 to i32
  store i32 %170, i32* %18, align 4
  %171 = load i32, i32* %21, align 4
  %172 = load %struct.rar5*, %struct.rar5** %7, align 8
  %173 = getelementptr inbounds %struct.rar5, %struct.rar5* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 0
  store i32 %171, i32* %174, align 8
  %175 = load i32, i32* %22, align 4
  %176 = add nsw i32 %175, 50
  %177 = load %struct.rar5*, %struct.rar5** %7, align 8
  %178 = getelementptr inbounds %struct.rar5, %struct.rar5* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 1
  store i32 %176, i32* %179, align 4
  %180 = load i32, i32* %18, align 4
  %181 = icmp sgt i32 %180, 67108864
  br i1 %181, label %191, label %182

182:                                              ; preds = %168
  %183 = load %struct.rar5*, %struct.rar5** %7, align 8
  %184 = getelementptr inbounds %struct.rar5, %struct.rar5* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = icmp eq i64 %186, 0
  br i1 %187, label %188, label %197

188:                                              ; preds = %182
  %189 = load i32, i32* %18, align 4
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %197

191:                                              ; preds = %188, %168
  %192 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %193 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %192, i32 0, i32 0
  %194 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %195 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %193, i32 %194, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %196 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %196, i32* %5, align 4
  store i32 1, i32* %27, align 4
  br label %458

197:                                              ; preds = %188, %182
  %198 = load i32, i32* %18, align 4
  %199 = sext i32 %198 to i64
  %200 = load %struct.rar5*, %struct.rar5** %7, align 8
  %201 = getelementptr inbounds %struct.rar5, %struct.rar5* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 6
  store i64 %199, i64* %202, align 8
  %203 = load %struct.rar5*, %struct.rar5** %7, align 8
  %204 = call i32 @init_window_mask(%struct.rar5* %203)
  %205 = load i64, i64* %14, align 8
  %206 = and i64 %205, 64
  %207 = icmp ugt i64 %206, 0
  %208 = zext i1 %207 to i32
  %209 = load %struct.rar5*, %struct.rar5** %7, align 8
  %210 = getelementptr inbounds %struct.rar5, %struct.rar5* %209, i32 0, i32 2
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 2
  store i32 %208, i32* %211, align 8
  %212 = load %struct.rar5*, %struct.rar5** %7, align 8
  %213 = getelementptr inbounds %struct.rar5, %struct.rar5* %212, i32 0, i32 2
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 6
  store i64 0, i64* %214, align 8
  %215 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %216 = call i32 @read_var_sized(%struct.archive_read* %215, i64* %15, i32* null)
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %220, label %218

218:                                              ; preds = %197
  %219 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %219, i32* %5, align 4
  store i32 1, i32* %27, align 4
  br label %458

220:                                              ; preds = %197
  %221 = load i64, i64* %15, align 8
  %222 = icmp eq i64 %221, 0
  br i1 %222, label %223, label %303

223:                                              ; preds = %220
  %224 = load i64, i64* %13, align 8
  %225 = and i64 %224, 16
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %238

227:                                              ; preds = %223
  %228 = load i64, i64* %13, align 8
  %229 = and i64 %228, 1
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %234

231:                                              ; preds = %227
  %232 = load i32, i32* @AE_IFDIR, align 4
  %233 = or i32 365, %232
  store i32 %233, i32* %28, align 4
  br label %237

234:                                              ; preds = %227
  %235 = load i32, i32* @AE_IFDIR, align 4
  %236 = or i32 493, %235
  store i32 %236, i32* %28, align 4
  br label %237

237:                                              ; preds = %234, %231
  br label %249

238:                                              ; preds = %223
  %239 = load i64, i64* %13, align 8
  %240 = and i64 %239, 1
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %245

242:                                              ; preds = %238
  %243 = load i32, i32* @AE_IFREG, align 4
  %244 = or i32 292, %243
  store i32 %244, i32* %28, align 4
  br label %248

245:                                              ; preds = %238
  %246 = load i32, i32* @AE_IFREG, align 4
  %247 = or i32 420, %246
  store i32 %247, i32* %28, align 4
  br label %248

248:                                              ; preds = %245, %242
  br label %249

249:                                              ; preds = %248, %237
  %250 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %251 = load i32, i32* %28, align 4
  %252 = call i32 @archive_entry_set_mode(%struct.archive_entry* %250, i32 %251)
  %253 = load i64, i64* %13, align 8
  %254 = and i64 %253, 7
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %302

256:                                              ; preds = %249
  %257 = call i8* @malloc(i32 22)
  store i8* %257, i8** %29, align 8
  %258 = load i8*, i8** %29, align 8
  %259 = icmp ne i8* %258, null
  br i1 %259, label %260, label %301

260:                                              ; preds = %256
  %261 = load i8*, i8** %29, align 8
  store i8* %261, i8** %30, align 8
  %262 = load i64, i64* %13, align 8
  %263 = and i64 %262, 1
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %270

265:                                              ; preds = %260
  %266 = load i8*, i8** %30, align 8
  %267 = call i32 @strcpy(i8* %266, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %268 = load i8*, i8** %30, align 8
  %269 = getelementptr inbounds i8, i8* %268, i64 7
  store i8* %269, i8** %30, align 8
  br label %270

270:                                              ; preds = %265, %260
  %271 = load i64, i64* %13, align 8
  %272 = and i64 %271, 2
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %279

274:                                              ; preds = %270
  %275 = load i8*, i8** %30, align 8
  %276 = call i32 @strcpy(i8* %275, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %277 = load i8*, i8** %30, align 8
  %278 = getelementptr inbounds i8, i8* %277, i64 7
  store i8* %278, i8** %30, align 8
  br label %279

279:                                              ; preds = %274, %270
  %280 = load i64, i64* %13, align 8
  %281 = and i64 %280, 4
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %288

283:                                              ; preds = %279
  %284 = load i8*, i8** %30, align 8
  %285 = call i32 @strcpy(i8* %284, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %286 = load i8*, i8** %30, align 8
  %287 = getelementptr inbounds i8, i8* %286, i64 7
  store i8* %287, i8** %30, align 8
  br label %288

288:                                              ; preds = %283, %279
  %289 = load i8*, i8** %30, align 8
  %290 = load i8*, i8** %29, align 8
  %291 = icmp ugt i8* %289, %290
  br i1 %291, label %292, label %298

292:                                              ; preds = %288
  %293 = load i8*, i8** %30, align 8
  %294 = getelementptr inbounds i8, i8* %293, i64 -1
  store i8 0, i8* %294, align 1
  %295 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %296 = load i8*, i8** %29, align 8
  %297 = call i32 @archive_entry_copy_fflags_text(%struct.archive_entry* %295, i8* %296)
  br label %298

298:                                              ; preds = %292, %288
  %299 = load i8*, i8** %29, align 8
  %300 = call i32 @free(i8* %299)
  br label %301

301:                                              ; preds = %298, %256
  br label %302

302:                                              ; preds = %301, %249
  br label %320

303:                                              ; preds = %220
  %304 = load i64, i64* %15, align 8
  %305 = icmp eq i64 %304, 1
  br i1 %305, label %306, label %311

306:                                              ; preds = %303
  %307 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %308 = load i64, i64* %13, align 8
  %309 = trunc i64 %308 to i32
  %310 = call i32 @archive_entry_set_mode(%struct.archive_entry* %307, i32 %309)
  br label %319

311:                                              ; preds = %303
  %312 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %313 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %312, i32 0, i32 0
  %314 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %315 = load i64, i64* %15, align 8
  %316 = trunc i64 %315 to i32
  %317 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %313, i32 %314, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %316)
  %318 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %318, i32* %5, align 4
  store i32 1, i32* %27, align 4
  br label %458

319:                                              ; preds = %306
  br label %320

320:                                              ; preds = %319, %302
  %321 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %322 = call i32 @read_var_sized(%struct.archive_read* %321, i64* %16, i32* null)
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %326, label %324

324:                                              ; preds = %320
  %325 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %325, i32* %5, align 4
  store i32 1, i32* %27, align 4
  br label %458

326:                                              ; preds = %320
  %327 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %328 = load i64, i64* %16, align 8
  %329 = call i32 @read_ahead(%struct.archive_read* %327, i64 %328, i64** %25)
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %333, label %331

331:                                              ; preds = %326
  %332 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %332, i32* %5, align 4
  store i32 1, i32* %27, align 4
  br label %458

333:                                              ; preds = %326
  %334 = load i64, i64* %16, align 8
  %335 = load i32, i32* @MAX_NAME_IN_CHARS, align 4
  %336 = sub nsw i32 %335, 1
  %337 = sext i32 %336 to i64
  %338 = icmp ugt i64 %334, %337
  br i1 %338, label %339, label %345

339:                                              ; preds = %333
  %340 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %341 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %340, i32 0, i32 0
  %342 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %343 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %341, i32 %342, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %344 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %344, i32* %5, align 4
  store i32 1, i32* %27, align 4
  br label %458

345:                                              ; preds = %333
  %346 = load i64, i64* %16, align 8
  %347 = icmp eq i64 %346, 0
  br i1 %347, label %348, label %354

348:                                              ; preds = %345
  %349 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %350 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %349, i32 0, i32 0
  %351 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %352 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %350, i32 %351, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  %353 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %353, i32* %5, align 4
  store i32 1, i32* %27, align 4
  br label %458

354:                                              ; preds = %345
  %355 = load i64*, i64** %25, align 8
  %356 = load i64, i64* %16, align 8
  %357 = call i32 @memcpy(i8* %35, i64* %355, i64 %356)
  %358 = load i64, i64* %16, align 8
  %359 = getelementptr inbounds i8, i8* %35, i64 %358
  store i8 0, i8* %359, align 1
  %360 = load i32, i32* @ARCHIVE_OK, align 4
  %361 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %362 = load i64, i64* %16, align 8
  %363 = call i32 @consume(%struct.archive_read* %361, i64 %362)
  %364 = icmp ne i32 %360, %363
  br i1 %364, label %365, label %367

365:                                              ; preds = %354
  %366 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %366, i32* %5, align 4
  store i32 1, i32* %27, align 4
  br label %458

367:                                              ; preds = %354
  %368 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %369 = call i32 @archive_entry_update_pathname_utf8(%struct.archive_entry* %368, i8* %35)
  %370 = load i64, i64* %10, align 8
  %371 = icmp sgt i64 %370, 0
  br i1 %371, label %372, label %393

372:                                              ; preds = %367
  %373 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %374 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %375 = load %struct.rar5*, %struct.rar5** %7, align 8
  %376 = load i64, i64* %10, align 8
  %377 = call i32 @process_head_file_extra(%struct.archive_read* %373, %struct.archive_entry* %374, %struct.rar5* %375, i64 %376)
  store i32 %377, i32* %31, align 4
  %378 = load i64, i64* %10, align 8
  %379 = icmp slt i64 %378, 0
  br i1 %379, label %380, label %386

380:                                              ; preds = %372
  %381 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %382 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %381, i32 0, i32 0
  %383 = load i32, i32* @ARCHIVE_ERRNO_PROGRAMMER, align 4
  %384 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %382, i32 %383, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  %385 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %385, i32* %5, align 4
  store i32 1, i32* %27, align 4
  br label %458

386:                                              ; preds = %372
  %387 = load i32, i32* %31, align 4
  %388 = load i32, i32* @ARCHIVE_OK, align 4
  %389 = icmp ne i32 %387, %388
  br i1 %389, label %390, label %392

390:                                              ; preds = %386
  %391 = load i32, i32* %31, align 4
  store i32 %391, i32* %5, align 4
  store i32 1, i32* %27, align 4
  br label %458

392:                                              ; preds = %386
  br label %393

393:                                              ; preds = %392, %367
  %394 = load i64, i64* %12, align 8
  %395 = and i64 %394, 8
  %396 = icmp eq i64 %395, 0
  br i1 %396, label %397, label %414

397:                                              ; preds = %393
  %398 = load i32, i32* %17, align 4
  %399 = sext i32 %398 to i64
  %400 = load %struct.rar5*, %struct.rar5** %7, align 8
  %401 = getelementptr inbounds %struct.rar5, %struct.rar5* %400, i32 0, i32 2
  %402 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %401, i32 0, i32 5
  store i64 %399, i64* %402, align 8
  %403 = load %struct.rar5*, %struct.rar5** %7, align 8
  %404 = getelementptr inbounds %struct.rar5, %struct.rar5* %403, i32 0, i32 2
  %405 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %404, i32 0, i32 3
  %406 = load i64, i64* %405, align 8
  %407 = load i64, i64* @REDIR_TYPE_NONE, align 8
  %408 = icmp eq i64 %406, %407
  br i1 %408, label %409, label %413

409:                                              ; preds = %397
  %410 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %411 = load i32, i32* %17, align 4
  %412 = call i32 @archive_entry_set_size(%struct.archive_entry* %410, i32 %411)
  br label %413

413:                                              ; preds = %409, %397
  br label %414

414:                                              ; preds = %413, %393
  %415 = load i64, i64* %12, align 8
  %416 = and i64 %415, 2
  %417 = icmp ne i64 %416, 0
  br i1 %417, label %418, label %423

418:                                              ; preds = %414
  %419 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %420 = load i64, i64* %19, align 8
  %421 = trunc i64 %420 to i32
  %422 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %419, i32 %421, i32 0)
  br label %423

423:                                              ; preds = %418, %414
  %424 = load i64, i64* %12, align 8
  %425 = and i64 %424, 4
  %426 = icmp ne i64 %425, 0
  br i1 %426, label %427, label %432

427:                                              ; preds = %423
  %428 = load i64, i64* %20, align 8
  %429 = load %struct.rar5*, %struct.rar5** %7, align 8
  %430 = getelementptr inbounds %struct.rar5, %struct.rar5* %429, i32 0, i32 2
  %431 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %430, i32 0, i32 4
  store i64 %428, i64* %431, align 8
  br label %432

432:                                              ; preds = %427, %423
  %433 = load %struct.rar5*, %struct.rar5** %7, align 8
  %434 = getelementptr inbounds %struct.rar5, %struct.rar5* %433, i32 0, i32 1
  %435 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %434, i32 0, i32 5
  %436 = load i32, i32* %435, align 8
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %448, label %438

438:                                              ; preds = %432
  %439 = load %struct.rar5*, %struct.rar5** %7, align 8
  %440 = getelementptr inbounds %struct.rar5, %struct.rar5* %439, i32 0, i32 1
  %441 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %440, i32 0, i32 2
  store i32 1, i32* %441, align 8
  %442 = load %struct.rar5*, %struct.rar5** %7, align 8
  %443 = getelementptr inbounds %struct.rar5, %struct.rar5* %442, i32 0, i32 1
  %444 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %443, i32 0, i32 3
  store i32 1, i32* %444, align 4
  %445 = load %struct.rar5*, %struct.rar5** %7, align 8
  %446 = getelementptr inbounds %struct.rar5, %struct.rar5* %445, i32 0, i32 1
  %447 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %446, i32 0, i32 4
  store i64 0, i64* %447, align 8
  br label %448

448:                                              ; preds = %438, %432
  %449 = load %struct.rar5*, %struct.rar5** %7, align 8
  %450 = getelementptr inbounds %struct.rar5, %struct.rar5* %449, i32 0, i32 0
  %451 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %450, i32 0, i32 0
  %452 = load i64, i64* %451, align 8
  %453 = icmp sgt i64 %452, 0
  br i1 %453, label %454, label %456

454:                                              ; preds = %448
  %455 = load i32, i32* @ARCHIVE_RETRY, align 4
  store i32 %455, i32* %5, align 4
  store i32 1, i32* %27, align 4
  br label %458

456:                                              ; preds = %448
  %457 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %457, i32* %5, align 4
  store i32 1, i32* %27, align 4
  br label %458

458:                                              ; preds = %456, %454, %390, %380, %365, %348, %339, %331, %324, %311, %218, %191, %146, %139, %128, %118, %100, %94, %88, %75, %68, %55
  %459 = load i8*, i8** %23, align 8
  call void @llvm.stackrestore(i8* %459)
  %460 = load i32, i32* %5, align 4
  ret i32 %460
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @archive_entry_clear(%struct.archive_entry*) #2

declare dso_local i32 @reset_file_context(%struct.rar5*) #2

declare dso_local i32 @read_var_sized(%struct.archive_read*, i64*, i32*) #2

declare dso_local i32 @archive_set_error(i32*, i32, i8*, ...) #2

declare dso_local i32 @read_var(%struct.archive_read*, i32*, i32*) #2

declare dso_local i32 @read_u32(%struct.archive_read*, i64*) #2

declare dso_local i32 @init_window_mask(%struct.rar5*) #2

declare dso_local i32 @archive_entry_set_mode(%struct.archive_entry*, i32) #2

declare dso_local i8* @malloc(i32) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @archive_entry_copy_fflags_text(%struct.archive_entry*, i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @read_ahead(%struct.archive_read*, i64, i64**) #2

declare dso_local i32 @memcpy(i8*, i64*, i64) #2

declare dso_local i32 @consume(%struct.archive_read*, i64) #2

declare dso_local i32 @archive_entry_update_pathname_utf8(%struct.archive_entry*, i8*) #2

declare dso_local i32 @process_head_file_extra(%struct.archive_read*, %struct.archive_entry*, %struct.rar5*, i64) #2

declare dso_local i32 @archive_entry_set_size(%struct.archive_entry*, i32) #2

declare dso_local i32 @archive_entry_set_mtime(%struct.archive_entry*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
