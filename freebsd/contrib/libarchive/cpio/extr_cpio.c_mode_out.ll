; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/cpio/extr_cpio.c_mode_out.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/cpio/extr_cpio.c_mode_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpio = type { i32, i32, i32, i32*, i32, i64, i32, i32, i32*, i32, i32, i32*, i64, i64 }
%struct.archive_entry = type { i32 }
%struct.lafe_line_reader = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Append mode not yet supported.\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to allocate archive object\00", align 1
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Requested compression not available\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Requested filter not available\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@passphrase_callback = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"%lu %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"block\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"blocks\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpio*)* @mode_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mode_out(%struct.cpio* %0) #0 {
  %2 = alloca %struct.cpio*, align 8
  %3 = alloca %struct.archive_entry*, align 8
  %4 = alloca %struct.archive_entry*, align 8
  %5 = alloca %struct.lafe_line_reader*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cpio* %0, %struct.cpio** %2, align 8
  %9 = load %struct.cpio*, %struct.cpio** %2, align 8
  %10 = getelementptr inbounds %struct.cpio, %struct.cpio* %9, i32 0, i32 13
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = call i32 (i32, i32, i8*, ...) @lafe_errc(i32 1, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %1
  %16 = call i32* (...) @archive_read_disk_new()
  %17 = load %struct.cpio*, %struct.cpio** %2, align 8
  %18 = getelementptr inbounds %struct.cpio, %struct.cpio* %17, i32 0, i32 11
  store i32* %16, i32** %18, align 8
  %19 = load %struct.cpio*, %struct.cpio** %2, align 8
  %20 = getelementptr inbounds %struct.cpio, %struct.cpio* %19, i32 0, i32 11
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = call i32 (i32, i32, i8*, ...) @lafe_errc(i32 1, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %15
  %26 = load %struct.cpio*, %struct.cpio** %2, align 8
  %27 = getelementptr inbounds %struct.cpio, %struct.cpio* %26, i32 0, i32 12
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.cpio*, %struct.cpio** %2, align 8
  %32 = getelementptr inbounds %struct.cpio, %struct.cpio* %31, i32 0, i32 11
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @archive_read_disk_set_symlink_logical(i32* %33)
  br label %40

35:                                               ; preds = %25
  %36 = load %struct.cpio*, %struct.cpio** %2, align 8
  %37 = getelementptr inbounds %struct.cpio, %struct.cpio* %36, i32 0, i32 11
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @archive_read_disk_set_symlink_physical(i32* %38)
  br label %40

40:                                               ; preds = %35, %30
  %41 = load %struct.cpio*, %struct.cpio** %2, align 8
  %42 = getelementptr inbounds %struct.cpio, %struct.cpio* %41, i32 0, i32 11
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @archive_read_disk_set_standard_lookup(i32* %43)
  %45 = call i32* (...) @archive_write_new()
  %46 = load %struct.cpio*, %struct.cpio** %2, align 8
  %47 = getelementptr inbounds %struct.cpio, %struct.cpio* %46, i32 0, i32 3
  store i32* %45, i32** %47, align 8
  %48 = load %struct.cpio*, %struct.cpio** %2, align 8
  %49 = getelementptr inbounds %struct.cpio, %struct.cpio* %48, i32 0, i32 3
  %50 = load i32*, i32** %49, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %40
  %53 = call i32 (i32, i32, i8*, ...) @lafe_errc(i32 1, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %40
  %55 = load %struct.cpio*, %struct.cpio** %2, align 8
  %56 = getelementptr inbounds %struct.cpio, %struct.cpio* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  switch i32 %57, label %108 [
    i32 134, label %58
    i32 74, label %63
    i32 133, label %68
    i32 132, label %73
    i32 131, label %78
    i32 130, label %83
    i32 128, label %88
    i32 106, label %93
    i32 121, label %93
    i32 122, label %98
    i32 90, label %103
  ]

58:                                               ; preds = %54
  %59 = load %struct.cpio*, %struct.cpio** %2, align 8
  %60 = getelementptr inbounds %struct.cpio, %struct.cpio* %59, i32 0, i32 3
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @archive_write_add_filter_grzip(i32* %61)
  store i32 %62, i32* %7, align 4
  br label %113

63:                                               ; preds = %54
  %64 = load %struct.cpio*, %struct.cpio** %2, align 8
  %65 = getelementptr inbounds %struct.cpio, %struct.cpio* %64, i32 0, i32 3
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @archive_write_add_filter_xz(i32* %66)
  store i32 %67, i32* %7, align 4
  br label %113

68:                                               ; preds = %54
  %69 = load %struct.cpio*, %struct.cpio** %2, align 8
  %70 = getelementptr inbounds %struct.cpio, %struct.cpio* %69, i32 0, i32 3
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @archive_write_add_filter_lrzip(i32* %71)
  store i32 %72, i32* %7, align 4
  br label %113

73:                                               ; preds = %54
  %74 = load %struct.cpio*, %struct.cpio** %2, align 8
  %75 = getelementptr inbounds %struct.cpio, %struct.cpio* %74, i32 0, i32 3
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @archive_write_add_filter_lz4(i32* %76)
  store i32 %77, i32* %7, align 4
  br label %113

78:                                               ; preds = %54
  %79 = load %struct.cpio*, %struct.cpio** %2, align 8
  %80 = getelementptr inbounds %struct.cpio, %struct.cpio* %79, i32 0, i32 3
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @archive_write_add_filter_lzma(i32* %81)
  store i32 %82, i32* %7, align 4
  br label %113

83:                                               ; preds = %54
  %84 = load %struct.cpio*, %struct.cpio** %2, align 8
  %85 = getelementptr inbounds %struct.cpio, %struct.cpio* %84, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @archive_write_add_filter_lzop(i32* %86)
  store i32 %87, i32* %7, align 4
  br label %113

88:                                               ; preds = %54
  %89 = load %struct.cpio*, %struct.cpio** %2, align 8
  %90 = getelementptr inbounds %struct.cpio, %struct.cpio* %89, i32 0, i32 3
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @archive_write_add_filter_zstd(i32* %91)
  store i32 %92, i32* %7, align 4
  br label %113

93:                                               ; preds = %54, %54
  %94 = load %struct.cpio*, %struct.cpio** %2, align 8
  %95 = getelementptr inbounds %struct.cpio, %struct.cpio* %94, i32 0, i32 3
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @archive_write_add_filter_bzip2(i32* %96)
  store i32 %97, i32* %7, align 4
  br label %113

98:                                               ; preds = %54
  %99 = load %struct.cpio*, %struct.cpio** %2, align 8
  %100 = getelementptr inbounds %struct.cpio, %struct.cpio* %99, i32 0, i32 3
  %101 = load i32*, i32** %100, align 8
  %102 = call i32 @archive_write_add_filter_gzip(i32* %101)
  store i32 %102, i32* %7, align 4
  br label %113

103:                                              ; preds = %54
  %104 = load %struct.cpio*, %struct.cpio** %2, align 8
  %105 = getelementptr inbounds %struct.cpio, %struct.cpio* %104, i32 0, i32 3
  %106 = load i32*, i32** %105, align 8
  %107 = call i32 @archive_write_add_filter_compress(i32* %106)
  store i32 %107, i32* %7, align 4
  br label %113

108:                                              ; preds = %54
  %109 = load %struct.cpio*, %struct.cpio** %2, align 8
  %110 = getelementptr inbounds %struct.cpio, %struct.cpio* %109, i32 0, i32 3
  %111 = load i32*, i32** %110, align 8
  %112 = call i32 @archive_write_add_filter_none(i32* %111)
  store i32 %112, i32* %7, align 4
  br label %113

113:                                              ; preds = %108, %103, %98, %93, %88, %83, %78, %73, %68, %63, %58
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* @ARCHIVE_WARN, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %113
  %118 = call i32 (i32, i32, i8*, ...) @lafe_errc(i32 1, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %119

119:                                              ; preds = %117, %113
  %120 = load %struct.cpio*, %struct.cpio** %2, align 8
  %121 = getelementptr inbounds %struct.cpio, %struct.cpio* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  switch i32 %122, label %135 [
    i32 0, label %123
    i32 135, label %125
    i32 129, label %130
  ]

123:                                              ; preds = %119
  %124 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %124, i32* %7, align 4
  br label %135

125:                                              ; preds = %119
  %126 = load %struct.cpio*, %struct.cpio** %2, align 8
  %127 = getelementptr inbounds %struct.cpio, %struct.cpio* %126, i32 0, i32 3
  %128 = load i32*, i32** %127, align 8
  %129 = call i32 @archive_write_add_filter_b64encode(i32* %128)
  store i32 %129, i32* %7, align 4
  br label %135

130:                                              ; preds = %119
  %131 = load %struct.cpio*, %struct.cpio** %2, align 8
  %132 = getelementptr inbounds %struct.cpio, %struct.cpio* %131, i32 0, i32 3
  %133 = load i32*, i32** %132, align 8
  %134 = call i32 @archive_write_add_filter_uuencode(i32* %133)
  store i32 %134, i32* %7, align 4
  br label %135

135:                                              ; preds = %119, %130, %125, %123
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* @ARCHIVE_WARN, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %135
  %140 = call i32 (i32, i32, i8*, ...) @lafe_errc(i32 1, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %141

141:                                              ; preds = %139, %135
  %142 = load %struct.cpio*, %struct.cpio** %2, align 8
  %143 = getelementptr inbounds %struct.cpio, %struct.cpio* %142, i32 0, i32 3
  %144 = load i32*, i32** %143, align 8
  %145 = load %struct.cpio*, %struct.cpio** %2, align 8
  %146 = getelementptr inbounds %struct.cpio, %struct.cpio* %145, i32 0, i32 10
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @archive_write_set_format_by_name(i32* %144, i32 %147)
  store i32 %148, i32* %7, align 4
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* @ARCHIVE_OK, align 4
  %151 = icmp ne i32 %149, %150
  br i1 %151, label %152, label %158

152:                                              ; preds = %141
  %153 = load %struct.cpio*, %struct.cpio** %2, align 8
  %154 = getelementptr inbounds %struct.cpio, %struct.cpio* %153, i32 0, i32 3
  %155 = load i32*, i32** %154, align 8
  %156 = call i32 @archive_error_string(i32* %155)
  %157 = call i32 (i32, i32, i8*, ...) @lafe_errc(i32 1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %156)
  br label %158

158:                                              ; preds = %152, %141
  %159 = load %struct.cpio*, %struct.cpio** %2, align 8
  %160 = getelementptr inbounds %struct.cpio, %struct.cpio* %159, i32 0, i32 3
  %161 = load i32*, i32** %160, align 8
  %162 = load %struct.cpio*, %struct.cpio** %2, align 8
  %163 = getelementptr inbounds %struct.cpio, %struct.cpio* %162, i32 0, i32 9
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @archive_write_set_bytes_per_block(i32* %161, i32 %164)
  %166 = call i32 (...) @archive_entry_linkresolver_new()
  %167 = load %struct.cpio*, %struct.cpio** %2, align 8
  %168 = getelementptr inbounds %struct.cpio, %struct.cpio* %167, i32 0, i32 2
  store i32 %166, i32* %168, align 8
  %169 = load %struct.cpio*, %struct.cpio** %2, align 8
  %170 = getelementptr inbounds %struct.cpio, %struct.cpio* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.cpio*, %struct.cpio** %2, align 8
  %173 = getelementptr inbounds %struct.cpio, %struct.cpio* %172, i32 0, i32 3
  %174 = load i32*, i32** %173, align 8
  %175 = call i32 @archive_format(i32* %174)
  %176 = call i32 @archive_entry_linkresolver_set_strategy(i32 %171, i32 %175)
  %177 = load %struct.cpio*, %struct.cpio** %2, align 8
  %178 = getelementptr inbounds %struct.cpio, %struct.cpio* %177, i32 0, i32 8
  %179 = load i32*, i32** %178, align 8
  %180 = icmp ne i32* %179, null
  br i1 %180, label %181, label %189

181:                                              ; preds = %158
  %182 = load %struct.cpio*, %struct.cpio** %2, align 8
  %183 = getelementptr inbounds %struct.cpio, %struct.cpio* %182, i32 0, i32 3
  %184 = load i32*, i32** %183, align 8
  %185 = load %struct.cpio*, %struct.cpio** %2, align 8
  %186 = getelementptr inbounds %struct.cpio, %struct.cpio* %185, i32 0, i32 8
  %187 = load i32*, i32** %186, align 8
  %188 = call i32 @archive_write_set_passphrase(i32* %184, i32* %187)
  store i32 %188, i32* %7, align 4
  br label %195

189:                                              ; preds = %158
  %190 = load %struct.cpio*, %struct.cpio** %2, align 8
  %191 = getelementptr inbounds %struct.cpio, %struct.cpio* %190, i32 0, i32 3
  %192 = load i32*, i32** %191, align 8
  %193 = load %struct.cpio*, %struct.cpio** %2, align 8
  %194 = call i32 @archive_write_set_passphrase_callback(i32* %192, %struct.cpio* %193, i32* @passphrase_callback)
  store i32 %194, i32* %7, align 4
  br label %195

195:                                              ; preds = %189, %181
  %196 = load i32, i32* %7, align 4
  %197 = load i32, i32* @ARCHIVE_OK, align 4
  %198 = icmp ne i32 %196, %197
  br i1 %198, label %199, label %205

199:                                              ; preds = %195
  %200 = load %struct.cpio*, %struct.cpio** %2, align 8
  %201 = getelementptr inbounds %struct.cpio, %struct.cpio* %200, i32 0, i32 3
  %202 = load i32*, i32** %201, align 8
  %203 = call i32 @archive_error_string(i32* %202)
  %204 = call i32 (i32, i32, i8*, ...) @lafe_errc(i32 1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %203)
  br label %205

205:                                              ; preds = %199, %195
  %206 = load %struct.cpio*, %struct.cpio** %2, align 8
  %207 = getelementptr inbounds %struct.cpio, %struct.cpio* %206, i32 0, i32 3
  %208 = load i32*, i32** %207, align 8
  %209 = load %struct.cpio*, %struct.cpio** %2, align 8
  %210 = getelementptr inbounds %struct.cpio, %struct.cpio* %209, i32 0, i32 7
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @archive_write_open_filename(i32* %208, i32 %211)
  store i32 %212, i32* %7, align 4
  %213 = load i32, i32* %7, align 4
  %214 = load i32, i32* @ARCHIVE_OK, align 4
  %215 = icmp ne i32 %213, %214
  br i1 %215, label %216, label %222

216:                                              ; preds = %205
  %217 = load %struct.cpio*, %struct.cpio** %2, align 8
  %218 = getelementptr inbounds %struct.cpio, %struct.cpio* %217, i32 0, i32 3
  %219 = load i32*, i32** %218, align 8
  %220 = call i32 @archive_error_string(i32* %219)
  %221 = call i32 (i32, i32, i8*, ...) @lafe_errc(i32 1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %220)
  br label %222

222:                                              ; preds = %216, %205
  %223 = load %struct.cpio*, %struct.cpio** %2, align 8
  %224 = getelementptr inbounds %struct.cpio, %struct.cpio* %223, i32 0, i32 6
  %225 = load i32, i32* %224, align 8
  %226 = call %struct.lafe_line_reader* @lafe_line_reader(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 %225)
  store %struct.lafe_line_reader* %226, %struct.lafe_line_reader** %5, align 8
  br label %227

227:                                              ; preds = %231, %222
  %228 = load %struct.lafe_line_reader*, %struct.lafe_line_reader** %5, align 8
  %229 = call i8* @lafe_line_reader_next(%struct.lafe_line_reader* %228)
  store i8* %229, i8** %6, align 8
  %230 = icmp ne i8* %229, null
  br i1 %230, label %231, label %235

231:                                              ; preds = %227
  %232 = load %struct.cpio*, %struct.cpio** %2, align 8
  %233 = load i8*, i8** %6, align 8
  %234 = call i32 @file_to_archive(%struct.cpio* %232, i8* %233)
  br label %227

235:                                              ; preds = %227
  %236 = load %struct.lafe_line_reader*, %struct.lafe_line_reader** %5, align 8
  %237 = call i32 @lafe_line_reader_free(%struct.lafe_line_reader* %236)
  store %struct.archive_entry* null, %struct.archive_entry** %3, align 8
  %238 = load %struct.cpio*, %struct.cpio** %2, align 8
  %239 = getelementptr inbounds %struct.cpio, %struct.cpio* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 8
  %241 = call i32 @archive_entry_linkify(i32 %240, %struct.archive_entry** %3, %struct.archive_entry** %4)
  br label %242

242:                                              ; preds = %245, %235
  %243 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %244 = icmp ne %struct.archive_entry* %243, null
  br i1 %244, label %245, label %255

245:                                              ; preds = %242
  %246 = load %struct.cpio*, %struct.cpio** %2, align 8
  %247 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %248 = call i32 @entry_to_archive(%struct.cpio* %246, %struct.archive_entry* %247)
  %249 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %250 = call i32 @archive_entry_free(%struct.archive_entry* %249)
  store %struct.archive_entry* null, %struct.archive_entry** %3, align 8
  %251 = load %struct.cpio*, %struct.cpio** %2, align 8
  %252 = getelementptr inbounds %struct.cpio, %struct.cpio* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 8
  %254 = call i32 @archive_entry_linkify(i32 %253, %struct.archive_entry** %3, %struct.archive_entry** %4)
  br label %242

255:                                              ; preds = %242
  %256 = load %struct.cpio*, %struct.cpio** %2, align 8
  %257 = getelementptr inbounds %struct.cpio, %struct.cpio* %256, i32 0, i32 3
  %258 = load i32*, i32** %257, align 8
  %259 = call i32 @archive_write_close(i32* %258)
  store i32 %259, i32* %7, align 4
  %260 = load %struct.cpio*, %struct.cpio** %2, align 8
  %261 = getelementptr inbounds %struct.cpio, %struct.cpio* %260, i32 0, i32 5
  %262 = load i64, i64* %261, align 8
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %267

264:                                              ; preds = %255
  %265 = load i32, i32* @stderr, align 4
  %266 = call i32 (i32, i8*, ...) @fprintf(i32 %265, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %267

267:                                              ; preds = %264, %255
  %268 = load i32, i32* %7, align 4
  %269 = load i32, i32* @ARCHIVE_OK, align 4
  %270 = icmp ne i32 %268, %269
  br i1 %270, label %271, label %277

271:                                              ; preds = %267
  %272 = load %struct.cpio*, %struct.cpio** %2, align 8
  %273 = getelementptr inbounds %struct.cpio, %struct.cpio* %272, i32 0, i32 3
  %274 = load i32*, i32** %273, align 8
  %275 = call i32 @archive_error_string(i32* %274)
  %276 = call i32 (i32, i32, i8*, ...) @lafe_errc(i32 1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %275)
  br label %277

277:                                              ; preds = %271, %267
  %278 = load %struct.cpio*, %struct.cpio** %2, align 8
  %279 = getelementptr inbounds %struct.cpio, %struct.cpio* %278, i32 0, i32 4
  %280 = load i32, i32* %279, align 8
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %297, label %282

282:                                              ; preds = %277
  %283 = load %struct.cpio*, %struct.cpio** %2, align 8
  %284 = getelementptr inbounds %struct.cpio, %struct.cpio* %283, i32 0, i32 3
  %285 = load i32*, i32** %284, align 8
  %286 = call i32 @archive_filter_bytes(i32* %285, i32 0)
  %287 = add nsw i32 %286, 511
  %288 = sdiv i32 %287, 512
  store i32 %288, i32* %8, align 4
  %289 = load i32, i32* @stderr, align 4
  %290 = load i32, i32* %8, align 4
  %291 = sext i32 %290 to i64
  %292 = load i32, i32* %8, align 4
  %293 = icmp eq i32 %292, 1
  %294 = zext i1 %293 to i64
  %295 = select i1 %293, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0)
  %296 = call i32 (i32, i8*, ...) @fprintf(i32 %289, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i64 %291, i8* %295)
  br label %297

297:                                              ; preds = %282, %277
  %298 = load %struct.cpio*, %struct.cpio** %2, align 8
  %299 = getelementptr inbounds %struct.cpio, %struct.cpio* %298, i32 0, i32 3
  %300 = load i32*, i32** %299, align 8
  %301 = call i32 @archive_write_free(i32* %300)
  %302 = load %struct.cpio*, %struct.cpio** %2, align 8
  %303 = getelementptr inbounds %struct.cpio, %struct.cpio* %302, i32 0, i32 2
  %304 = load i32, i32* %303, align 8
  %305 = call i32 @archive_entry_linkresolver_free(i32 %304)
  ret void
}

declare dso_local i32 @lafe_errc(i32, i32, i8*, ...) #1

declare dso_local i32* @archive_read_disk_new(...) #1

declare dso_local i32 @archive_read_disk_set_symlink_logical(i32*) #1

declare dso_local i32 @archive_read_disk_set_symlink_physical(i32*) #1

declare dso_local i32 @archive_read_disk_set_standard_lookup(i32*) #1

declare dso_local i32* @archive_write_new(...) #1

declare dso_local i32 @archive_write_add_filter_grzip(i32*) #1

declare dso_local i32 @archive_write_add_filter_xz(i32*) #1

declare dso_local i32 @archive_write_add_filter_lrzip(i32*) #1

declare dso_local i32 @archive_write_add_filter_lz4(i32*) #1

declare dso_local i32 @archive_write_add_filter_lzma(i32*) #1

declare dso_local i32 @archive_write_add_filter_lzop(i32*) #1

declare dso_local i32 @archive_write_add_filter_zstd(i32*) #1

declare dso_local i32 @archive_write_add_filter_bzip2(i32*) #1

declare dso_local i32 @archive_write_add_filter_gzip(i32*) #1

declare dso_local i32 @archive_write_add_filter_compress(i32*) #1

declare dso_local i32 @archive_write_add_filter_none(i32*) #1

declare dso_local i32 @archive_write_add_filter_b64encode(i32*) #1

declare dso_local i32 @archive_write_add_filter_uuencode(i32*) #1

declare dso_local i32 @archive_write_set_format_by_name(i32*, i32) #1

declare dso_local i32 @archive_error_string(i32*) #1

declare dso_local i32 @archive_write_set_bytes_per_block(i32*, i32) #1

declare dso_local i32 @archive_entry_linkresolver_new(...) #1

declare dso_local i32 @archive_entry_linkresolver_set_strategy(i32, i32) #1

declare dso_local i32 @archive_format(i32*) #1

declare dso_local i32 @archive_write_set_passphrase(i32*, i32*) #1

declare dso_local i32 @archive_write_set_passphrase_callback(i32*, %struct.cpio*, i32*) #1

declare dso_local i32 @archive_write_open_filename(i32*, i32) #1

declare dso_local %struct.lafe_line_reader* @lafe_line_reader(i8*, i32) #1

declare dso_local i8* @lafe_line_reader_next(%struct.lafe_line_reader*) #1

declare dso_local i32 @file_to_archive(%struct.cpio*, i8*) #1

declare dso_local i32 @lafe_line_reader_free(%struct.lafe_line_reader*) #1

declare dso_local i32 @archive_entry_linkify(i32, %struct.archive_entry**, %struct.archive_entry**) #1

declare dso_local i32 @entry_to_archive(%struct.cpio*, %struct.archive_entry*) #1

declare dso_local i32 @archive_entry_free(%struct.archive_entry*) #1

declare dso_local i32 @archive_write_close(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @archive_filter_bytes(i32*, i32) #1

declare dso_local i32 @archive_write_free(i32*) #1

declare dso_local i32 @archive_entry_linkresolver_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
