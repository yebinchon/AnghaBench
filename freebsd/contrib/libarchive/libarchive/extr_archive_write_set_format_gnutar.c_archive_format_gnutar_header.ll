; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_gnutar.c_archive_format_gnutar_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_gnutar.c_archive_format_gnutar_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i32, i64 }
%struct.archive_entry = type { i32 }
%struct.gnutar = type { i8*, i64, i64, i8*, i8*, i64, i8*, i64 }

@template_header = common dso_local global i8 0, align 1
@GNUTAR_name_size = common dso_local global i64 0, align 8
@GNUTAR_name_offset = common dso_local global i32 0, align 4
@GNUTAR_linkname_size = common dso_local global i64 0, align 8
@GNUTAR_linkname_offset = common dso_local global i32 0, align 4
@GNUTAR_uname_size = common dso_local global i64 0, align 8
@GNUTAR_uname_offset = common dso_local global i32 0, align 4
@GNUTAR_gname_size = common dso_local global i64 0, align 8
@GNUTAR_gname_offset = common dso_local global i32 0, align 4
@GNUTAR_mode_offset = common dso_local global i32 0, align 4
@GNUTAR_mode_size = common dso_local global i32 0, align 4
@GNUTAR_uid_offset = common dso_local global i32 0, align 4
@GNUTAR_uid_size = common dso_local global i32 0, align 4
@GNUTAR_uid_max_size = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Numeric user ID %jd too large\00", align 1
@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@GNUTAR_gid_offset = common dso_local global i32 0, align 4
@GNUTAR_gid_size = common dso_local global i32 0, align 4
@GNUTAR_gid_max_size = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Numeric group ID %jd too large\00", align 1
@GNUTAR_size_offset = common dso_local global i32 0, align 4
@GNUTAR_size_size = common dso_local global i32 0, align 4
@GNUTAR_size_max_size = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"File size out of range\00", align 1
@GNUTAR_mtime_offset = common dso_local global i32 0, align 4
@GNUTAR_mtime_size = common dso_local global i32 0, align 4
@AE_IFBLK = common dso_local global i64 0, align 8
@AE_IFCHR = common dso_local global i64 0, align 8
@GNUTAR_rdevmajor_offset = common dso_local global i32 0, align 4
@GNUTAR_rdevmajor_size = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Major device number too large\00", align 1
@GNUTAR_rdevminor_offset = common dso_local global i32 0, align 4
@GNUTAR_rdevminor_size = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"Minor device number too large\00", align 1
@GNUTAR_typeflag_offset = common dso_local global i64 0, align 8
@GNUTAR_checksum_offset = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*, i8*, %struct.archive_entry*, i32)* @archive_format_gnutar_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_format_gnutar_header(%struct.archive_write* %0, i8* %1, %struct.archive_entry* %2, i32 %3) #0 {
  %5 = alloca %struct.archive_write*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.archive_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.gnutar*, align 8
  store %struct.archive_write* %0, %struct.archive_write** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.archive_entry* %2, %struct.archive_entry** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %16 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.gnutar*
  store %struct.gnutar* %18, %struct.gnutar** %14, align 8
  store i32 0, i32* %11, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @memcpy(i8* %19, i8* @template_header, i64 512)
  %21 = load i32, i32* %8, align 4
  %22 = icmp eq i32 %21, 75
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* %8, align 4
  %25 = icmp eq i32 %24, 76
  br i1 %25, label %26, label %31

26:                                               ; preds = %23, %4
  %27 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %28 = call i8* @archive_entry_pathname(%struct.archive_entry* %27)
  store i8* %28, i8** %13, align 8
  %29 = load i8*, i8** %13, align 8
  %30 = call i64 @strlen(i8* %29)
  store i64 %30, i64* %12, align 8
  br label %38

31:                                               ; preds = %23
  %32 = load %struct.gnutar*, %struct.gnutar** %14, align 8
  %33 = getelementptr inbounds %struct.gnutar, %struct.gnutar* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %13, align 8
  %35 = load %struct.gnutar*, %struct.gnutar** %14, align 8
  %36 = getelementptr inbounds %struct.gnutar, %struct.gnutar* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %12, align 8
  br label %38

38:                                               ; preds = %31, %26
  %39 = load i64, i64* %12, align 8
  %40 = load i64, i64* @GNUTAR_name_size, align 8
  %41 = icmp ugt i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i64, i64* @GNUTAR_name_size, align 8
  store i64 %43, i64* %12, align 8
  br label %44

44:                                               ; preds = %42, %38
  %45 = load i8*, i8** %6, align 8
  %46 = load i32, i32* @GNUTAR_name_offset, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load i8*, i8** %13, align 8
  %50 = load i64, i64* %12, align 8
  %51 = call i32 @memcpy(i8* %48, i8* %49, i64 %50)
  %52 = load %struct.gnutar*, %struct.gnutar** %14, align 8
  %53 = getelementptr inbounds %struct.gnutar, %struct.gnutar* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %12, align 8
  %55 = icmp ugt i64 %54, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %44
  %57 = load i64, i64* %12, align 8
  %58 = load i64, i64* @GNUTAR_linkname_size, align 8
  %59 = icmp ugt i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i64, i64* @GNUTAR_linkname_size, align 8
  store i64 %61, i64* %12, align 8
  br label %62

62:                                               ; preds = %60, %56
  %63 = load i8*, i8** %6, align 8
  %64 = load i32, i32* @GNUTAR_linkname_offset, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = load %struct.gnutar*, %struct.gnutar** %14, align 8
  %68 = getelementptr inbounds %struct.gnutar, %struct.gnutar* %67, i32 0, i32 3
  %69 = load i8*, i8** %68, align 8
  %70 = load i64, i64* %12, align 8
  %71 = call i32 @memcpy(i8* %66, i8* %69, i64 %70)
  br label %72

72:                                               ; preds = %62, %44
  %73 = load i32, i32* %8, align 4
  %74 = icmp eq i32 %73, 75
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* %8, align 4
  %77 = icmp eq i32 %76, 76
  br i1 %77, label %78, label %83

78:                                               ; preds = %75, %72
  %79 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %80 = call i8* @archive_entry_uname(%struct.archive_entry* %79)
  store i8* %80, i8** %13, align 8
  %81 = load i8*, i8** %13, align 8
  %82 = call i64 @strlen(i8* %81)
  store i64 %82, i64* %12, align 8
  br label %90

83:                                               ; preds = %75
  %84 = load %struct.gnutar*, %struct.gnutar** %14, align 8
  %85 = getelementptr inbounds %struct.gnutar, %struct.gnutar* %84, i32 0, i32 4
  %86 = load i8*, i8** %85, align 8
  store i8* %86, i8** %13, align 8
  %87 = load %struct.gnutar*, %struct.gnutar** %14, align 8
  %88 = getelementptr inbounds %struct.gnutar, %struct.gnutar* %87, i32 0, i32 5
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* %12, align 8
  br label %90

90:                                               ; preds = %83, %78
  %91 = load i64, i64* %12, align 8
  %92 = icmp ugt i64 %91, 0
  br i1 %92, label %93, label %107

93:                                               ; preds = %90
  %94 = load i64, i64* %12, align 8
  %95 = load i64, i64* @GNUTAR_uname_size, align 8
  %96 = icmp ugt i64 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = load i64, i64* @GNUTAR_uname_size, align 8
  store i64 %98, i64* %12, align 8
  br label %99

99:                                               ; preds = %97, %93
  %100 = load i8*, i8** %6, align 8
  %101 = load i32, i32* @GNUTAR_uname_offset, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  %104 = load i8*, i8** %13, align 8
  %105 = load i64, i64* %12, align 8
  %106 = call i32 @memcpy(i8* %103, i8* %104, i64 %105)
  br label %107

107:                                              ; preds = %99, %90
  %108 = load i32, i32* %8, align 4
  %109 = icmp eq i32 %108, 75
  br i1 %109, label %113, label %110

110:                                              ; preds = %107
  %111 = load i32, i32* %8, align 4
  %112 = icmp eq i32 %111, 76
  br i1 %112, label %113, label %118

113:                                              ; preds = %110, %107
  %114 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %115 = call i8* @archive_entry_gname(%struct.archive_entry* %114)
  store i8* %115, i8** %13, align 8
  %116 = load i8*, i8** %13, align 8
  %117 = call i64 @strlen(i8* %116)
  store i64 %117, i64* %12, align 8
  br label %125

118:                                              ; preds = %110
  %119 = load %struct.gnutar*, %struct.gnutar** %14, align 8
  %120 = getelementptr inbounds %struct.gnutar, %struct.gnutar* %119, i32 0, i32 6
  %121 = load i8*, i8** %120, align 8
  store i8* %121, i8** %13, align 8
  %122 = load %struct.gnutar*, %struct.gnutar** %14, align 8
  %123 = getelementptr inbounds %struct.gnutar, %struct.gnutar* %122, i32 0, i32 7
  %124 = load i64, i64* %123, align 8
  store i64 %124, i64* %12, align 8
  br label %125

125:                                              ; preds = %118, %113
  %126 = load i64, i64* %12, align 8
  %127 = icmp ugt i64 %126, 0
  br i1 %127, label %128, label %143

128:                                              ; preds = %125
  %129 = load i8*, i8** %13, align 8
  %130 = call i64 @strlen(i8* %129)
  %131 = load i64, i64* @GNUTAR_gname_size, align 8
  %132 = icmp ugt i64 %130, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %128
  %134 = load i64, i64* @GNUTAR_gname_size, align 8
  store i64 %134, i64* %12, align 8
  br label %135

135:                                              ; preds = %133, %128
  %136 = load i8*, i8** %6, align 8
  %137 = load i32, i32* @GNUTAR_gname_offset, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %136, i64 %138
  %140 = load i8*, i8** %13, align 8
  %141 = load i64, i64* %12, align 8
  %142 = call i32 @memcpy(i8* %139, i8* %140, i64 %141)
  br label %143

143:                                              ; preds = %135, %125
  %144 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %145 = call i32 @archive_entry_mode(%struct.archive_entry* %144)
  %146 = and i32 %145, 4095
  %147 = load i8*, i8** %6, align 8
  %148 = load i32, i32* @GNUTAR_mode_offset, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8, i8* %147, i64 %149
  %151 = load i32, i32* @GNUTAR_mode_size, align 4
  %152 = call i64 @format_octal(i32 %146, i8* %150, i32 %151)
  %153 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %154 = call i64 @archive_entry_uid(%struct.archive_entry* %153)
  %155 = load i8*, i8** %6, align 8
  %156 = load i32, i32* @GNUTAR_uid_offset, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8, i8* %155, i64 %157
  %159 = load i32, i32* @GNUTAR_uid_size, align 4
  %160 = load i32, i32* @GNUTAR_uid_max_size, align 4
  %161 = call i64 @format_number(i64 %154, i8* %158, i32 %159, i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %172

163:                                              ; preds = %143
  %164 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %165 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %164, i32 0, i32 0
  %166 = load i32, i32* @ERANGE, align 4
  %167 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %168 = call i64 @archive_entry_uid(%struct.archive_entry* %167)
  %169 = trunc i64 %168 to i32
  %170 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %165, i32 %166, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %169)
  %171 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %171, i32* %11, align 4
  br label %172

172:                                              ; preds = %163, %143
  %173 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %174 = call i64 @archive_entry_gid(%struct.archive_entry* %173)
  %175 = load i8*, i8** %6, align 8
  %176 = load i32, i32* @GNUTAR_gid_offset, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8, i8* %175, i64 %177
  %179 = load i32, i32* @GNUTAR_gid_size, align 4
  %180 = load i32, i32* @GNUTAR_gid_max_size, align 4
  %181 = call i64 @format_number(i64 %174, i8* %178, i32 %179, i32 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %192

183:                                              ; preds = %172
  %184 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %185 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %184, i32 0, i32 0
  %186 = load i32, i32* @ERANGE, align 4
  %187 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %188 = call i64 @archive_entry_gid(%struct.archive_entry* %187)
  %189 = trunc i64 %188 to i32
  %190 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %185, i32 %186, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %189)
  %191 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %191, i32* %11, align 4
  br label %192

192:                                              ; preds = %183, %172
  %193 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %194 = call i64 @archive_entry_size(%struct.archive_entry* %193)
  %195 = load i8*, i8** %6, align 8
  %196 = load i32, i32* @GNUTAR_size_offset, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i8, i8* %195, i64 %197
  %199 = load i32, i32* @GNUTAR_size_size, align 4
  %200 = load i32, i32* @GNUTAR_size_max_size, align 4
  %201 = call i64 @format_number(i64 %194, i8* %198, i32 %199, i32 %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %209

203:                                              ; preds = %192
  %204 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %205 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %204, i32 0, i32 0
  %206 = load i32, i32* @ERANGE, align 4
  %207 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %205, i32 %206, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %208 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %208, i32* %11, align 4
  br label %209

209:                                              ; preds = %203, %192
  %210 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %211 = call i32 @archive_entry_mtime(%struct.archive_entry* %210)
  %212 = load i8*, i8** %6, align 8
  %213 = load i32, i32* @GNUTAR_mtime_offset, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i8, i8* %212, i64 %214
  %216 = load i32, i32* @GNUTAR_mtime_size, align 4
  %217 = call i64 @format_octal(i32 %211, i8* %215, i32 %216)
  %218 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %219 = call i64 @archive_entry_filetype(%struct.archive_entry* %218)
  %220 = load i64, i64* @AE_IFBLK, align 8
  %221 = icmp eq i64 %219, %220
  br i1 %221, label %227, label %222

222:                                              ; preds = %209
  %223 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %224 = call i64 @archive_entry_filetype(%struct.archive_entry* %223)
  %225 = load i64, i64* @AE_IFCHR, align 8
  %226 = icmp eq i64 %224, %225
  br i1 %226, label %227, label %260

227:                                              ; preds = %222, %209
  %228 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %229 = call i32 @archive_entry_rdevmajor(%struct.archive_entry* %228)
  %230 = load i8*, i8** %6, align 8
  %231 = load i32, i32* @GNUTAR_rdevmajor_offset, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i8, i8* %230, i64 %232
  %234 = load i32, i32* @GNUTAR_rdevmajor_size, align 4
  %235 = call i64 @format_octal(i32 %229, i8* %233, i32 %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %243

237:                                              ; preds = %227
  %238 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %239 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %238, i32 0, i32 0
  %240 = load i32, i32* @ERANGE, align 4
  %241 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %239, i32 %240, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %242 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %242, i32* %11, align 4
  br label %243

243:                                              ; preds = %237, %227
  %244 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %245 = call i32 @archive_entry_rdevminor(%struct.archive_entry* %244)
  %246 = load i8*, i8** %6, align 8
  %247 = load i32, i32* @GNUTAR_rdevminor_offset, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i8, i8* %246, i64 %248
  %250 = load i32, i32* @GNUTAR_rdevminor_size, align 4
  %251 = call i64 @format_octal(i32 %245, i8* %249, i32 %250)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %259

253:                                              ; preds = %243
  %254 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %255 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %254, i32 0, i32 0
  %256 = load i32, i32* @ERANGE, align 4
  %257 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %255, i32 %256, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %258 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %258, i32* %11, align 4
  br label %259

259:                                              ; preds = %253, %243
  br label %260

260:                                              ; preds = %259, %222
  %261 = load i32, i32* %8, align 4
  %262 = trunc i32 %261 to i8
  %263 = load i8*, i8** %6, align 8
  %264 = load i64, i64* @GNUTAR_typeflag_offset, align 8
  %265 = getelementptr inbounds i8, i8* %263, i64 %264
  store i8 %262, i8* %265, align 1
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %266

266:                                              ; preds = %279, %260
  %267 = load i32, i32* %10, align 4
  %268 = icmp slt i32 %267, 512
  br i1 %268, label %269, label %282

269:                                              ; preds = %266
  %270 = load i8*, i8** %6, align 8
  %271 = load i32, i32* %10, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i8, i8* %270, i64 %272
  %274 = load i8, i8* %273, align 1
  %275 = sext i8 %274 to i32
  %276 = and i32 255, %275
  %277 = load i32, i32* %9, align 4
  %278 = add i32 %277, %276
  store i32 %278, i32* %9, align 4
  br label %279

279:                                              ; preds = %269
  %280 = load i32, i32* %10, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %10, align 4
  br label %266

282:                                              ; preds = %266
  %283 = load i8*, i8** %6, align 8
  %284 = load i32, i32* @GNUTAR_checksum_offset, align 4
  %285 = add nsw i32 %284, 6
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i8, i8* %283, i64 %286
  store i8 0, i8* %287, align 1
  %288 = load i32, i32* %9, align 4
  %289 = load i8*, i8** %6, align 8
  %290 = load i32, i32* @GNUTAR_checksum_offset, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i8, i8* %289, i64 %291
  %293 = call i64 @format_octal(i32 %288, i8* %292, i32 6)
  %294 = load i32, i32* %11, align 4
  ret i32 %294
}

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i8* @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @archive_entry_uname(%struct.archive_entry*) #1

declare dso_local i8* @archive_entry_gname(%struct.archive_entry*) #1

declare dso_local i64 @format_octal(i32, i8*, i32) #1

declare dso_local i32 @archive_entry_mode(%struct.archive_entry*) #1

declare dso_local i64 @format_number(i64, i8*, i32, i32) #1

declare dso_local i64 @archive_entry_uid(%struct.archive_entry*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*, ...) #1

declare dso_local i64 @archive_entry_gid(%struct.archive_entry*) #1

declare dso_local i64 @archive_entry_size(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_mtime(%struct.archive_entry*) #1

declare dso_local i64 @archive_entry_filetype(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_rdevmajor(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_rdevminor(%struct.archive_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
