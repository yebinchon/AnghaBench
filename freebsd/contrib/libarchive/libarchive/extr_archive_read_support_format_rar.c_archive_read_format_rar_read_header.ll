; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar.c_archive_read_format_rar_read_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar.c_archive_read_format_rar_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i8*, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.archive_entry = type { i32 }
%struct.rar = type { i64, i32, i64, i8, i32, i32 }

@ARCHIVE_FORMAT_RAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"RAR\00", align 1
@ARCHIVE_READ_FORMAT_ENCRYPTION_DONT_KNOW = common dso_local global i64 0, align 8
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"\7FELF\00", align 1
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@RAR_SIGNATURE = common dso_local global i8* null, align 8
@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Invalid marker header\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Invalid header size\00", align 1
@MHD_ENCRYPTVER = common dso_local global i32 0, align 4
@MHD_PASSWORD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"RAR encryption support unavailable.\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"Header CRC error\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Invalid header size too small\00", align 1
@HD_ADD_SIZE_PRESENT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"Bad RAR file\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.archive_entry*)* @archive_read_format_rar_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_read_format_rar_read_header(%struct.archive_read* %0, %struct.archive_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca %struct.archive_entry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.rar*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.archive_read* %0, %struct.archive_read** %4, align 8
  store %struct.archive_entry* %1, %struct.archive_entry** %5, align 8
  %17 = load i32, i32* @ARCHIVE_FORMAT_RAR, align 4
  %18 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %19 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  store i32 %17, i32* %20, align 8
  %21 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %22 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %28 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %29, align 8
  br label %30

30:                                               ; preds = %26, %2
  %31 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %32 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.rar*
  store %struct.rar* %36, %struct.rar** %8, align 8
  %37 = load %struct.rar*, %struct.rar** %8, align 8
  %38 = getelementptr inbounds %struct.rar, %struct.rar* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ARCHIVE_READ_FORMAT_ENCRYPTION_DONT_KNOW, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %30
  %43 = load %struct.rar*, %struct.rar** %8, align 8
  %44 = getelementptr inbounds %struct.rar, %struct.rar* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  br label %45

45:                                               ; preds = %42, %30
  %46 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %47 = call i8* @__archive_read_ahead(%struct.archive_read* %46, i64 7, i64* null)
  store i8* %47, i8** %6, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %50, i32* %3, align 4
  br label %336

51:                                               ; preds = %45
  %52 = load i8*, i8** %6, align 8
  store i8* %52, i8** %7, align 8
  %53 = load %struct.rar*, %struct.rar** %8, align 8
  %54 = getelementptr inbounds %struct.rar, %struct.rar* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %82

57:                                               ; preds = %51
  %58 = load i8*, i8** %7, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 77
  br i1 %62, label %63, label %69

63:                                               ; preds = %57
  %64 = load i8*, i8** %7, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 90
  br i1 %68, label %73, label %69

69:                                               ; preds = %63, %57
  %70 = load i8*, i8** %7, align 8
  %71 = call i64 @memcmp(i8* %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %69, %63
  %74 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %75 = call i32 @skip_sfx(%struct.archive_read* %74)
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* @ARCHIVE_WARN, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = load i32, i32* %11, align 4
  store i32 %80, i32* %3, align 4
  br label %336

81:                                               ; preds = %73
  br label %82

82:                                               ; preds = %81, %69, %51
  %83 = load %struct.rar*, %struct.rar** %8, align 8
  %84 = getelementptr inbounds %struct.rar, %struct.rar* %83, i32 0, i32 1
  store i32 1, i32* %84, align 8
  br label %85

85:                                               ; preds = %82, %335
  %86 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %87 = call i8* @__archive_read_ahead(%struct.archive_read* %86, i64 7, i64* null)
  store i8* %87, i8** %6, align 8
  %88 = icmp eq i8* %87, null
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %90, i32* %3, align 4
  br label %336

91:                                               ; preds = %85
  %92 = load i8*, i8** %6, align 8
  store i8* %92, i8** %7, align 8
  %93 = load i8*, i8** %7, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 2
  %95 = load i8, i8* %94, align 1
  store i8 %95, i8* %10, align 1
  %96 = load i8, i8* %10, align 1
  %97 = sext i8 %96 to i32
  switch i32 %97, label %329 [
    i32 132, label %98
    i32 133, label %112
    i32 134, label %217
    i32 136, label %222
    i32 137, label %222
    i32 128, label %222
    i32 130, label %222
    i32 129, label %222
    i32 135, label %222
    i32 131, label %319
  ]

98:                                               ; preds = %91
  %99 = load i8*, i8** %7, align 8
  %100 = load i8*, i8** @RAR_SIGNATURE, align 8
  %101 = call i64 @memcmp(i8* %99, i8* %100, i32 7)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %98
  %104 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %105 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %104, i32 0, i32 0
  %106 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %107 = call i32 @archive_set_error(%struct.TYPE_4__* %105, i32 %106, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %108 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %108, i32* %3, align 4
  br label %336

109:                                              ; preds = %98
  %110 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %111 = call i32 @__archive_read_consume(%struct.archive_read* %110, i64 7)
  br label %335

112:                                              ; preds = %91
  %113 = load i8*, i8** %7, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 3
  %115 = call i64 @archive_le16dec(i8* %114)
  %116 = load %struct.rar*, %struct.rar** %8, align 8
  %117 = getelementptr inbounds %struct.rar, %struct.rar* %116, i32 0, i32 2
  store i64 %115, i64* %117, align 8
  %118 = load i8*, i8** %7, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 5
  %120 = call i64 @archive_le16dec(i8* %119)
  store i64 %120, i64* %9, align 8
  %121 = load i64, i64* %9, align 8
  %122 = icmp ult i64 %121, 15
  br i1 %122, label %123, label %129

123:                                              ; preds = %112
  %124 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %125 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %124, i32 0, i32 0
  %126 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %127 = call i32 @archive_set_error(%struct.TYPE_4__* %125, i32 %126, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %128 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %128, i32* %3, align 4
  br label %336

129:                                              ; preds = %112
  %130 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %131 = load i64, i64* %9, align 8
  %132 = call i8* @__archive_read_ahead(%struct.archive_read* %130, i64 %131, i64* null)
  store i8* %132, i8** %6, align 8
  %133 = icmp eq i8* %132, null
  br i1 %133, label %134, label %136

134:                                              ; preds = %129
  %135 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %135, i32* %3, align 4
  br label %336

136:                                              ; preds = %129
  %137 = load i8*, i8** %6, align 8
  store i8* %137, i8** %7, align 8
  %138 = load %struct.rar*, %struct.rar** %8, align 8
  %139 = getelementptr inbounds %struct.rar, %struct.rar* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 8
  %141 = load i8*, i8** %7, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 7
  %143 = call i32 @memcpy(i32 %140, i8* %142, i32 4)
  %144 = load %struct.rar*, %struct.rar** %8, align 8
  %145 = getelementptr inbounds %struct.rar, %struct.rar* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 4
  %147 = load i8*, i8** %7, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 7
  %149 = getelementptr inbounds i8, i8* %148, i64 4
  %150 = call i32 @memcpy(i32 %146, i8* %149, i32 4)
  %151 = load %struct.rar*, %struct.rar** %8, align 8
  %152 = getelementptr inbounds %struct.rar, %struct.rar* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = load i32, i32* @MHD_ENCRYPTVER, align 4
  %155 = sext i32 %154 to i64
  %156 = and i64 %153, %155
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %175

158:                                              ; preds = %136
  %159 = load i64, i64* %9, align 8
  %160 = icmp ult i64 %159, 16
  br i1 %160, label %161, label %167

161:                                              ; preds = %158
  %162 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %163 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %162, i32 0, i32 0
  %164 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %165 = call i32 @archive_set_error(%struct.TYPE_4__* %163, i32 %164, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %166 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %166, i32* %3, align 4
  br label %336

167:                                              ; preds = %158
  %168 = load i8*, i8** %7, align 8
  %169 = getelementptr inbounds i8, i8* %168, i64 7
  %170 = getelementptr inbounds i8, i8* %169, i64 4
  %171 = getelementptr inbounds i8, i8* %170, i64 4
  %172 = load i8, i8* %171, align 1
  %173 = load %struct.rar*, %struct.rar** %8, align 8
  %174 = getelementptr inbounds %struct.rar, %struct.rar* %173, i32 0, i32 3
  store i8 %172, i8* %174, align 8
  br label %175

175:                                              ; preds = %167, %136
  %176 = load %struct.rar*, %struct.rar** %8, align 8
  %177 = getelementptr inbounds %struct.rar, %struct.rar* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = load i32, i32* @MHD_PASSWORD, align 4
  %180 = sext i32 %179 to i64
  %181 = and i64 %178, %180
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %195

183:                                              ; preds = %175
  %184 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %185 = call i32 @archive_entry_set_is_metadata_encrypted(%struct.archive_entry* %184, i32 1)
  %186 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %187 = call i32 @archive_entry_set_is_data_encrypted(%struct.archive_entry* %186, i32 1)
  %188 = load %struct.rar*, %struct.rar** %8, align 8
  %189 = getelementptr inbounds %struct.rar, %struct.rar* %188, i32 0, i32 0
  store i64 1, i64* %189, align 8
  %190 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %191 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %190, i32 0, i32 0
  %192 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %193 = call i32 @archive_set_error(%struct.TYPE_4__* %191, i32 %192, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %194 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %194, i32* %3, align 4
  br label %336

195:                                              ; preds = %175
  %196 = load i8*, i8** %7, align 8
  %197 = getelementptr inbounds i8, i8* %196, i64 2
  %198 = load i64, i64* %9, align 8
  %199 = trunc i64 %198 to i32
  %200 = sub i32 %199, 2
  %201 = call i64 @crc32(i64 0, i8* %197, i32 %200)
  store i64 %201, i64* %14, align 8
  %202 = load i64, i64* %14, align 8
  %203 = and i64 %202, 65535
  %204 = load i8*, i8** %7, align 8
  %205 = call i64 @archive_le16dec(i8* %204)
  %206 = icmp ne i64 %203, %205
  br i1 %206, label %207, label %213

207:                                              ; preds = %195
  %208 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %209 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %208, i32 0, i32 0
  %210 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %211 = call i32 @archive_set_error(%struct.TYPE_4__* %209, i32 %210, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %212 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %212, i32* %3, align 4
  br label %336

213:                                              ; preds = %195
  %214 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %215 = load i64, i64* %9, align 8
  %216 = call i32 @__archive_read_consume(%struct.archive_read* %214, i64 %215)
  br label %335

217:                                              ; preds = %91
  %218 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %219 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %220 = load i8, i8* %10, align 1
  %221 = call i32 @read_header(%struct.archive_read* %218, %struct.archive_entry* %219, i8 signext %220)
  store i32 %221, i32* %3, align 4
  br label %336

222:                                              ; preds = %91, %91, %91, %91, %91, %91
  %223 = load i8*, i8** %7, align 8
  %224 = getelementptr inbounds i8, i8* %223, i64 3
  %225 = call i64 @archive_le16dec(i8* %224)
  %226 = trunc i64 %225 to i32
  store i32 %226, i32* %12, align 4
  %227 = load i8*, i8** %7, align 8
  %228 = getelementptr inbounds i8, i8* %227, i64 5
  %229 = call i64 @archive_le16dec(i8* %228)
  store i64 %229, i64* %9, align 8
  %230 = load i64, i64* %9, align 8
  %231 = icmp ult i64 %230, 7
  br i1 %231, label %232, label %238

232:                                              ; preds = %222
  %233 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %234 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %233, i32 0, i32 0
  %235 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %236 = call i32 @archive_set_error(%struct.TYPE_4__* %234, i32 %235, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %237 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %237, i32* %3, align 4
  br label %336

238:                                              ; preds = %222
  %239 = load i32, i32* %12, align 4
  %240 = load i32, i32* @HD_ADD_SIZE_PRESENT, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %266

243:                                              ; preds = %238
  %244 = load i64, i64* %9, align 8
  %245 = icmp ult i64 %244, 11
  br i1 %245, label %246, label %252

246:                                              ; preds = %243
  %247 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %248 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %247, i32 0, i32 0
  %249 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %250 = call i32 @archive_set_error(%struct.TYPE_4__* %248, i32 %249, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %251 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %251, i32* %3, align 4
  br label %336

252:                                              ; preds = %243
  %253 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %254 = load i64, i64* %9, align 8
  %255 = call i8* @__archive_read_ahead(%struct.archive_read* %253, i64 %254, i64* null)
  store i8* %255, i8** %6, align 8
  %256 = icmp eq i8* %255, null
  br i1 %256, label %257, label %259

257:                                              ; preds = %252
  %258 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %258, i32* %3, align 4
  br label %336

259:                                              ; preds = %252
  %260 = load i8*, i8** %6, align 8
  store i8* %260, i8** %7, align 8
  %261 = load i8*, i8** %7, align 8
  %262 = getelementptr inbounds i8, i8* %261, i64 7
  %263 = call i64 @archive_le32dec(i8* %262)
  %264 = load i64, i64* %9, align 8
  %265 = add i64 %264, %263
  store i64 %265, i64* %9, align 8
  br label %266

266:                                              ; preds = %259, %238
  %267 = load i8*, i8** %7, align 8
  %268 = call i64 @archive_le16dec(i8* %267)
  store i64 %268, i64* %13, align 8
  %269 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %270 = call i32 @__archive_read_consume(%struct.archive_read* %269, i64 2)
  %271 = load i64, i64* %9, align 8
  %272 = sub i64 %271, 2
  store i64 %272, i64* %9, align 8
  store i64 0, i64* %14, align 8
  br label %273

273:                                              ; preds = %288, %266
  %274 = load i64, i64* %9, align 8
  %275 = icmp ugt i64 %274, 0
  br i1 %275, label %276, label %301

276:                                              ; preds = %273
  %277 = load i64, i64* %9, align 8
  store i64 %277, i64* %15, align 8
  %278 = load i64, i64* %15, align 8
  %279 = icmp ugt i64 %278, 32768
  br i1 %279, label %280, label %281

280:                                              ; preds = %276
  store i64 32768, i64* %15, align 8
  br label %281

281:                                              ; preds = %280, %276
  %282 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %283 = load i64, i64* %15, align 8
  %284 = call i8* @__archive_read_ahead(%struct.archive_read* %282, i64 %283, i64* %16)
  store i8* %284, i8** %6, align 8
  %285 = icmp eq i8* %284, null
  br i1 %285, label %286, label %288

286:                                              ; preds = %281
  %287 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %287, i32* %3, align 4
  br label %336

288:                                              ; preds = %281
  %289 = load i8*, i8** %6, align 8
  store i8* %289, i8** %7, align 8
  %290 = load i64, i64* %14, align 8
  %291 = load i8*, i8** %7, align 8
  %292 = load i64, i64* %16, align 8
  %293 = trunc i64 %292 to i32
  %294 = call i64 @crc32(i64 %290, i8* %291, i32 %293)
  store i64 %294, i64* %14, align 8
  %295 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %296 = load i64, i64* %16, align 8
  %297 = call i32 @__archive_read_consume(%struct.archive_read* %295, i64 %296)
  %298 = load i64, i64* %16, align 8
  %299 = load i64, i64* %9, align 8
  %300 = sub i64 %299, %298
  store i64 %300, i64* %9, align 8
  br label %273

301:                                              ; preds = %273
  %302 = load i64, i64* %14, align 8
  %303 = and i64 %302, 65535
  %304 = load i64, i64* %13, align 8
  %305 = icmp ne i64 %303, %304
  br i1 %305, label %306, label %312

306:                                              ; preds = %301
  %307 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %308 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %307, i32 0, i32 0
  %309 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %310 = call i32 @archive_set_error(%struct.TYPE_4__* %308, i32 %309, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %311 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %311, i32* %3, align 4
  br label %336

312:                                              ; preds = %301
  %313 = load i8, i8* %10, align 1
  %314 = sext i8 %313 to i32
  %315 = icmp eq i32 %314, 135
  br i1 %315, label %316, label %318

316:                                              ; preds = %312
  %317 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %317, i32* %3, align 4
  br label %336

318:                                              ; preds = %312
  br label %335

319:                                              ; preds = %91
  %320 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %321 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %322 = load i8, i8* %10, align 1
  %323 = call i32 @read_header(%struct.archive_read* %320, %struct.archive_entry* %321, i8 signext %322)
  store i32 %323, i32* %11, align 4
  %324 = load i32, i32* @ARCHIVE_WARN, align 4
  %325 = icmp slt i32 %323, %324
  br i1 %325, label %326, label %328

326:                                              ; preds = %319
  %327 = load i32, i32* %11, align 4
  store i32 %327, i32* %3, align 4
  br label %336

328:                                              ; preds = %319
  br label %335

329:                                              ; preds = %91
  %330 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %331 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %330, i32 0, i32 0
  %332 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %333 = call i32 @archive_set_error(%struct.TYPE_4__* %331, i32 %332, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %334 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %334, i32* %3, align 4
  br label %336

335:                                              ; preds = %328, %318, %213, %109
  br label %85

336:                                              ; preds = %329, %326, %316, %306, %286, %257, %246, %232, %217, %207, %183, %161, %134, %123, %103, %89, %79, %49
  %337 = load i32, i32* %3, align 4
  ret i32 %337
}

declare dso_local i8* @__archive_read_ahead(%struct.archive_read*, i64, i64*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @skip_sfx(%struct.archive_read*) #1

declare dso_local i32 @archive_set_error(%struct.TYPE_4__*, i32, i8*) #1

declare dso_local i32 @__archive_read_consume(%struct.archive_read*, i64) #1

declare dso_local i64 @archive_le16dec(i8*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @archive_entry_set_is_metadata_encrypted(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_set_is_data_encrypted(%struct.archive_entry*, i32) #1

declare dso_local i64 @crc32(i64, i8*, i32) #1

declare dso_local i32 @read_header(%struct.archive_read*, %struct.archive_entry*, i8 signext) #1

declare dso_local i64 @archive_le32dec(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
