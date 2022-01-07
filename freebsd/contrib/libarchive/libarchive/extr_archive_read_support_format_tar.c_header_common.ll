; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_tar.c_header_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_tar.c_header_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.tar = type { i64, i64, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.archive_entry = type { i32 }
%struct.archive_entry_header_ustar = type { i8*, i32, i32, i32, i32, i32, i64* }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Tar entry has negative size\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@INT64_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"Tar entry size overflow\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Linkname\00", align 1
@AE_IFREG = common dso_local global i32 0, align 4
@ARCHIVE_FORMAT_TAR_PAX_INTERCHANGE = common dso_local global i32 0, align 4
@ARCHIVE_FORMAT_TAR = common dso_local global i32 0, align 4
@ARCHIVE_FORMAT_TAR_GNUTAR = common dso_local global i32 0, align 4
@AE_IFLNK = common dso_local global i32 0, align 4
@AE_IFCHR = common dso_local global i32 0, align 4
@AE_IFBLK = common dso_local global i32 0, align 4
@AE_IFDIR = common dso_local global i32 0, align 4
@AE_IFIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.tar*, %struct.archive_entry*, i8*)* @header_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @header_common(%struct.archive_read* %0, %struct.tar* %1, %struct.archive_entry* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive_read*, align 8
  %7 = alloca %struct.tar*, align 8
  %8 = alloca %struct.archive_entry*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.archive_entry_header_ustar*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %6, align 8
  store %struct.tar* %1, %struct.tar** %7, align 8
  store %struct.archive_entry* %2, %struct.archive_entry** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %13, i32* %12, align 4
  %14 = load i8*, i8** %9, align 8
  %15 = bitcast i8* %14 to %struct.archive_entry_header_ustar*
  store %struct.archive_entry_header_ustar* %15, %struct.archive_entry_header_ustar** %10, align 8
  %16 = load %struct.archive_entry_header_ustar*, %struct.archive_entry_header_ustar** %10, align 8
  %17 = getelementptr inbounds %struct.archive_entry_header_ustar, %struct.archive_entry_header_ustar* %16, i32 0, i32 6
  %18 = load i64*, i64** %17, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %4
  %23 = load %struct.tar*, %struct.tar** %7, align 8
  %24 = getelementptr inbounds %struct.tar, %struct.tar* %23, i32 0, i32 4
  %25 = load %struct.archive_entry_header_ustar*, %struct.archive_entry_header_ustar** %10, align 8
  %26 = getelementptr inbounds %struct.archive_entry_header_ustar, %struct.archive_entry_header_ustar* %25, i32 0, i32 6
  %27 = load i64*, i64** %26, align 8
  %28 = call i32 @archive_strncpy(%struct.TYPE_5__* %24, i64* %27, i32 8)
  br label %33

29:                                               ; preds = %4
  %30 = load %struct.tar*, %struct.tar** %7, align 8
  %31 = getelementptr inbounds %struct.tar, %struct.tar* %30, i32 0, i32 4
  %32 = call i32 @archive_string_empty(%struct.TYPE_5__* %31)
  br label %33

33:                                               ; preds = %29, %22
  %34 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %35 = load %struct.archive_entry_header_ustar*, %struct.archive_entry_header_ustar** %10, align 8
  %36 = getelementptr inbounds %struct.archive_entry_header_ustar, %struct.archive_entry_header_ustar* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @tar_atol(i32 %37, i32 4)
  %39 = trunc i64 %38 to i32
  %40 = call i32 @archive_entry_set_mode(%struct.archive_entry* %34, i32 %39)
  %41 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %42 = load %struct.archive_entry_header_ustar*, %struct.archive_entry_header_ustar** %10, align 8
  %43 = getelementptr inbounds %struct.archive_entry_header_ustar, %struct.archive_entry_header_ustar* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @tar_atol(i32 %44, i32 4)
  %46 = call i32 @archive_entry_set_uid(%struct.archive_entry* %41, i64 %45)
  %47 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %48 = load %struct.archive_entry_header_ustar*, %struct.archive_entry_header_ustar** %10, align 8
  %49 = getelementptr inbounds %struct.archive_entry_header_ustar, %struct.archive_entry_header_ustar* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @tar_atol(i32 %50, i32 4)
  %52 = call i32 @archive_entry_set_gid(%struct.archive_entry* %47, i64 %51)
  %53 = load %struct.archive_entry_header_ustar*, %struct.archive_entry_header_ustar** %10, align 8
  %54 = getelementptr inbounds %struct.archive_entry_header_ustar, %struct.archive_entry_header_ustar* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @tar_atol(i32 %55, i32 4)
  %57 = load %struct.tar*, %struct.tar** %7, align 8
  %58 = getelementptr inbounds %struct.tar, %struct.tar* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = load %struct.tar*, %struct.tar** %7, align 8
  %60 = getelementptr inbounds %struct.tar, %struct.tar* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %33
  %64 = load %struct.tar*, %struct.tar** %7, align 8
  %65 = getelementptr inbounds %struct.tar, %struct.tar* %64, i32 0, i32 0
  store i64 0, i64* %65, align 8
  %66 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %67 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %66, i32 0, i32 0
  %68 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %69 = call i32 @archive_set_error(%struct.TYPE_6__* %67, i32 %68, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %70 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %70, i32* %5, align 4
  br label %272

71:                                               ; preds = %33
  %72 = load %struct.tar*, %struct.tar** %7, align 8
  %73 = getelementptr inbounds %struct.tar, %struct.tar* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @INT64_MAX, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %71
  %78 = load %struct.tar*, %struct.tar** %7, align 8
  %79 = getelementptr inbounds %struct.tar, %struct.tar* %78, i32 0, i32 0
  store i64 0, i64* %79, align 8
  %80 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %81 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %80, i32 0, i32 0
  %82 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %83 = call i32 @archive_set_error(%struct.TYPE_6__* %81, i32 %82, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %84 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %84, i32* %5, align 4
  br label %272

85:                                               ; preds = %71
  %86 = load %struct.tar*, %struct.tar** %7, align 8
  %87 = getelementptr inbounds %struct.tar, %struct.tar* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.tar*, %struct.tar** %7, align 8
  %90 = getelementptr inbounds %struct.tar, %struct.tar* %89, i32 0, i32 1
  store i64 %88, i64* %90, align 8
  %91 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %92 = load %struct.tar*, %struct.tar** %7, align 8
  %93 = getelementptr inbounds %struct.tar, %struct.tar* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @archive_entry_set_size(%struct.archive_entry* %91, i64 %94)
  %96 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %97 = load %struct.archive_entry_header_ustar*, %struct.archive_entry_header_ustar** %10, align 8
  %98 = getelementptr inbounds %struct.archive_entry_header_ustar, %struct.archive_entry_header_ustar* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i64 @tar_atol(i32 %99, i32 4)
  %101 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %96, i64 %100, i32 0)
  %102 = load %struct.archive_entry_header_ustar*, %struct.archive_entry_header_ustar** %10, align 8
  %103 = getelementptr inbounds %struct.archive_entry_header_ustar, %struct.archive_entry_header_ustar* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 0
  %106 = load i8, i8* %105, align 1
  store i8 %106, i8* %11, align 1
  %107 = load i8, i8* %11, align 1
  %108 = sext i8 %107 to i32
  switch i32 %108, label %266 [
    i32 49, label %109
    i32 50, label %188
    i32 51, label %222
    i32 52, label %230
    i32 53, label %238
    i32 54, label %246
    i32 68, label %254
    i32 77, label %258
    i32 78, label %259
    i32 83, label %263
    i32 48, label %263
  ]

109:                                              ; preds = %85
  %110 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %111 = load %struct.tar*, %struct.tar** %7, align 8
  %112 = getelementptr inbounds %struct.tar, %struct.tar* %111, i32 0, i32 4
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.tar*, %struct.tar** %7, align 8
  %116 = getelementptr inbounds %struct.tar, %struct.tar* %115, i32 0, i32 4
  %117 = call i32 @archive_strlen(%struct.TYPE_5__* %116)
  %118 = load %struct.tar*, %struct.tar** %7, align 8
  %119 = getelementptr inbounds %struct.tar, %struct.tar* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @archive_entry_copy_hardlink_l(%struct.archive_entry* %110, i32 %114, i32 %117, i32 %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %135

123:                                              ; preds = %109
  %124 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %125 = load %struct.tar*, %struct.tar** %7, align 8
  %126 = getelementptr inbounds %struct.tar, %struct.tar* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @set_conversion_failed_error(%struct.archive_read* %124, i32 %127, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i32 %128, i32* %12, align 4
  %129 = load i32, i32* %12, align 4
  %130 = load i32, i32* @ARCHIVE_FATAL, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %123
  %133 = load i32, i32* %12, align 4
  store i32 %133, i32* %5, align 4
  br label %272

134:                                              ; preds = %123
  br label %135

135:                                              ; preds = %134, %109
  %136 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %137 = call i32 @archive_entry_size(%struct.archive_entry* %136)
  %138 = icmp sgt i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %135
  %140 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %141 = load i32, i32* @AE_IFREG, align 4
  %142 = call i32 @archive_entry_set_filetype(%struct.archive_entry* %140, i32 %141)
  br label %143

143:                                              ; preds = %139, %135
  %144 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %145 = call i32 @archive_entry_size(%struct.archive_entry* %144)
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %143
  br label %187

148:                                              ; preds = %143
  %149 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %150 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @ARCHIVE_FORMAT_TAR_PAX_INTERCHANGE, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %148
  br label %186

156:                                              ; preds = %148
  %157 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %158 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @ARCHIVE_FORMAT_TAR, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %170, label %163

163:                                              ; preds = %156
  %164 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %165 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @ARCHIVE_FORMAT_TAR_GNUTAR, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %175

170:                                              ; preds = %163, %156
  %171 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %172 = call i32 @archive_entry_set_size(%struct.archive_entry* %171, i64 0)
  %173 = load %struct.tar*, %struct.tar** %7, align 8
  %174 = getelementptr inbounds %struct.tar, %struct.tar* %173, i32 0, i32 0
  store i64 0, i64* %174, align 8
  br label %185

175:                                              ; preds = %163
  %176 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %177 = call i32 @archive_read_format_tar_bid(%struct.archive_read* %176, i32 50)
  %178 = icmp sgt i32 %177, 50
  br i1 %178, label %179, label %184

179:                                              ; preds = %175
  %180 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %181 = call i32 @archive_entry_set_size(%struct.archive_entry* %180, i64 0)
  %182 = load %struct.tar*, %struct.tar** %7, align 8
  %183 = getelementptr inbounds %struct.tar, %struct.tar* %182, i32 0, i32 0
  store i64 0, i64* %183, align 8
  br label %184

184:                                              ; preds = %179, %175
  br label %185

185:                                              ; preds = %184, %170
  br label %186

186:                                              ; preds = %185, %155
  br label %187

187:                                              ; preds = %186, %147
  br label %270

188:                                              ; preds = %85
  %189 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %190 = load i32, i32* @AE_IFLNK, align 4
  %191 = call i32 @archive_entry_set_filetype(%struct.archive_entry* %189, i32 %190)
  %192 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %193 = call i32 @archive_entry_set_size(%struct.archive_entry* %192, i64 0)
  %194 = load %struct.tar*, %struct.tar** %7, align 8
  %195 = getelementptr inbounds %struct.tar, %struct.tar* %194, i32 0, i32 0
  store i64 0, i64* %195, align 8
  %196 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %197 = load %struct.tar*, %struct.tar** %7, align 8
  %198 = getelementptr inbounds %struct.tar, %struct.tar* %197, i32 0, i32 4
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.tar*, %struct.tar** %7, align 8
  %202 = getelementptr inbounds %struct.tar, %struct.tar* %201, i32 0, i32 4
  %203 = call i32 @archive_strlen(%struct.TYPE_5__* %202)
  %204 = load %struct.tar*, %struct.tar** %7, align 8
  %205 = getelementptr inbounds %struct.tar, %struct.tar* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @archive_entry_copy_symlink_l(%struct.archive_entry* %196, i32 %200, i32 %203, i32 %206)
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %221

209:                                              ; preds = %188
  %210 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %211 = load %struct.tar*, %struct.tar** %7, align 8
  %212 = getelementptr inbounds %struct.tar, %struct.tar* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @set_conversion_failed_error(%struct.archive_read* %210, i32 %213, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i32 %214, i32* %12, align 4
  %215 = load i32, i32* %12, align 4
  %216 = load i32, i32* @ARCHIVE_FATAL, align 4
  %217 = icmp eq i32 %215, %216
  br i1 %217, label %218, label %220

218:                                              ; preds = %209
  %219 = load i32, i32* %12, align 4
  store i32 %219, i32* %5, align 4
  br label %272

220:                                              ; preds = %209
  br label %221

221:                                              ; preds = %220, %188
  br label %270

222:                                              ; preds = %85
  %223 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %224 = load i32, i32* @AE_IFCHR, align 4
  %225 = call i32 @archive_entry_set_filetype(%struct.archive_entry* %223, i32 %224)
  %226 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %227 = call i32 @archive_entry_set_size(%struct.archive_entry* %226, i64 0)
  %228 = load %struct.tar*, %struct.tar** %7, align 8
  %229 = getelementptr inbounds %struct.tar, %struct.tar* %228, i32 0, i32 0
  store i64 0, i64* %229, align 8
  br label %270

230:                                              ; preds = %85
  %231 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %232 = load i32, i32* @AE_IFBLK, align 4
  %233 = call i32 @archive_entry_set_filetype(%struct.archive_entry* %231, i32 %232)
  %234 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %235 = call i32 @archive_entry_set_size(%struct.archive_entry* %234, i64 0)
  %236 = load %struct.tar*, %struct.tar** %7, align 8
  %237 = getelementptr inbounds %struct.tar, %struct.tar* %236, i32 0, i32 0
  store i64 0, i64* %237, align 8
  br label %270

238:                                              ; preds = %85
  %239 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %240 = load i32, i32* @AE_IFDIR, align 4
  %241 = call i32 @archive_entry_set_filetype(%struct.archive_entry* %239, i32 %240)
  %242 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %243 = call i32 @archive_entry_set_size(%struct.archive_entry* %242, i64 0)
  %244 = load %struct.tar*, %struct.tar** %7, align 8
  %245 = getelementptr inbounds %struct.tar, %struct.tar* %244, i32 0, i32 0
  store i64 0, i64* %245, align 8
  br label %270

246:                                              ; preds = %85
  %247 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %248 = load i32, i32* @AE_IFIFO, align 4
  %249 = call i32 @archive_entry_set_filetype(%struct.archive_entry* %247, i32 %248)
  %250 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %251 = call i32 @archive_entry_set_size(%struct.archive_entry* %250, i64 0)
  %252 = load %struct.tar*, %struct.tar** %7, align 8
  %253 = getelementptr inbounds %struct.tar, %struct.tar* %252, i32 0, i32 0
  store i64 0, i64* %253, align 8
  br label %270

254:                                              ; preds = %85
  %255 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %256 = load i32, i32* @AE_IFDIR, align 4
  %257 = call i32 @archive_entry_set_filetype(%struct.archive_entry* %255, i32 %256)
  br label %270

258:                                              ; preds = %85
  br label %270

259:                                              ; preds = %85
  %260 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %261 = load i32, i32* @AE_IFREG, align 4
  %262 = call i32 @archive_entry_set_filetype(%struct.archive_entry* %260, i32 %261)
  br label %270

263:                                              ; preds = %85, %85
  %264 = load %struct.tar*, %struct.tar** %7, align 8
  %265 = getelementptr inbounds %struct.tar, %struct.tar* %264, i32 0, i32 2
  store i32 1, i32* %265, align 8
  br label %266

266:                                              ; preds = %85, %263
  %267 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %268 = load i32, i32* @AE_IFREG, align 4
  %269 = call i32 @archive_entry_set_filetype(%struct.archive_entry* %267, i32 %268)
  br label %270

270:                                              ; preds = %266, %259, %258, %254, %246, %238, %230, %222, %221, %187
  %271 = load i32, i32* %12, align 4
  store i32 %271, i32* %5, align 4
  br label %272

272:                                              ; preds = %270, %218, %132, %77, %63
  %273 = load i32, i32* %5, align 4
  ret i32 %273
}

declare dso_local i32 @archive_strncpy(%struct.TYPE_5__*, i64*, i32) #1

declare dso_local i32 @archive_string_empty(%struct.TYPE_5__*) #1

declare dso_local i32 @archive_entry_set_mode(%struct.archive_entry*, i32) #1

declare dso_local i64 @tar_atol(i32, i32) #1

declare dso_local i32 @archive_entry_set_uid(%struct.archive_entry*, i64) #1

declare dso_local i32 @archive_entry_set_gid(%struct.archive_entry*, i64) #1

declare dso_local i32 @archive_set_error(%struct.TYPE_6__*, i32, i8*) #1

declare dso_local i32 @archive_entry_set_size(%struct.archive_entry*, i64) #1

declare dso_local i32 @archive_entry_set_mtime(%struct.archive_entry*, i64, i32) #1

declare dso_local i32 @archive_entry_copy_hardlink_l(%struct.archive_entry*, i32, i32, i32) #1

declare dso_local i32 @archive_strlen(%struct.TYPE_5__*) #1

declare dso_local i32 @set_conversion_failed_error(%struct.archive_read*, i32, i8*) #1

declare dso_local i32 @archive_entry_size(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_set_filetype(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_read_format_tar_bid(%struct.archive_read*, i32) #1

declare dso_local i32 @archive_entry_copy_symlink_l(%struct.archive_entry*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
