; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_iso9660_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_iso9660_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i32, %struct.iso9660* }
%struct.iso9660 = type { i64, i32, i32, i32, %struct.TYPE_9__*, %struct.TYPE_10__, %struct.TYPE_11__, %struct.TYPE_11__, i64, i64, i64, i32, i32, i64, i32*, i32* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32, i64, i64, i64, i64, i64 }
%struct.TYPE_11__ = type { i32, i32, i32, i64, i64, i32 }

@.str = private unnamed_addr constant [9 x i8] c"UTF-16BE\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@SYSTEM_AREA_BLOCK = common dso_local global i32 0, align 4
@PRIMARY_VOLUME_DESCRIPTOR_BLOCK = common dso_local global i32 0, align 4
@VOLUME_DESCRIPTOR_SET_TERMINATOR_BLOCK = common dso_local global i32 0, align 4
@NON_ISO_FILE_SYSTEM_INFORMATION_BLOCK = common dso_local global i32 0, align 4
@BOOT_RECORD_DESCRIPTOR_BLOCK = common dso_local global i64 0, align 8
@SUPPLEMENTARY_VOLUME_DESCRIPTOR_BLOCK = common dso_local global i64 0, align 8
@RRIP_ER_BLOCK = common dso_local global i64 0, align 8
@PADDING_BLOCK = common dso_local global i32 0, align 4
@WB_TO_STREAM = common dso_local global i32 0, align 4
@LOGICAL_BLOCK_SIZE = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@VDD_ENHANCED = common dso_local global i32 0, align 4
@VDD_PRIMARY = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"%s: Directories too deep.\00", align 1
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*)* @iso9660_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iso9660_close(%struct.archive_write* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive_write*, align 8
  %4 = alloca %struct.iso9660*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.archive_write* %0, %struct.archive_write** %3, align 8
  %7 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %8 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %7, i32 0, i32 1
  %9 = load %struct.iso9660*, %struct.iso9660** %8, align 8
  store %struct.iso9660* %9, %struct.iso9660** %4, align 8
  %10 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %11 = call i64 @wb_remaining(%struct.archive_write* %10)
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %15 = call i32 @wb_write_out(%struct.archive_write* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %567

20:                                               ; preds = %13
  br label %21

21:                                               ; preds = %20, %1
  %22 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %23 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %22, i32 0, i32 0
  %24 = call i32 @time(i64* %23)
  %25 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %26 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %25, i32 0, i32 5
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %72

30:                                               ; preds = %21
  %31 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %32 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %33 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %32, i32 0, i32 7
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @isoent_find_out_boot_file(%struct.archive_write* %31, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %2, align 4
  br label %567

41:                                               ; preds = %30
  %42 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %43 = call i32 @zisofs_rewind_boot_file(%struct.archive_write* %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* %2, align 4
  br label %567

48:                                               ; preds = %41
  %49 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %50 = call i64 @wb_remaining(%struct.archive_write* %49)
  %51 = icmp sgt i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %48
  %53 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %54 = call i32 @wb_write_out(%struct.archive_write* %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* %5, align 4
  store i32 %58, i32* %2, align 4
  br label %567

59:                                               ; preds = %52
  br label %60

60:                                               ; preds = %59, %48
  %61 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %62 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %63 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %62, i32 0, i32 7
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @isoent_create_boot_catalog(%struct.archive_write* %61, i32 %65)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %60
  %70 = load i32, i32* %5, align 4
  store i32 %70, i32* %2, align 4
  br label %567

71:                                               ; preds = %60
  br label %72

72:                                               ; preds = %71, %21
  %73 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %74 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %73, i32 0, i32 5
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %123

78:                                               ; preds = %72
  %79 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %80 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %81 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %80, i32 0, i32 6
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 5
  %83 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %84 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %83, i32 0, i32 7
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @isoent_clone_tree(%struct.archive_write* %79, i32* %82, i32 %86)
  store i32 %87, i32* %5, align 4
  %88 = load i32, i32* %5, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %78
  %91 = load i32, i32* %5, align 4
  store i32 %91, i32* %2, align 4
  br label %567

92:                                               ; preds = %78
  %93 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %94 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %93, i32 0, i32 15
  %95 = load i32*, i32** %94, align 8
  %96 = icmp eq i32* %95, null
  br i1 %96, label %97, label %122

97:                                               ; preds = %92
  %98 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %99 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %98, i32 0, i32 0
  %100 = call i32* @archive_string_conversion_to_charset(i32* %99, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 1)
  %101 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %102 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %101, i32 0, i32 15
  store i32* %100, i32** %102, align 8
  %103 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %104 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %103, i32 0, i32 15
  %105 = load i32*, i32** %104, align 8
  %106 = icmp eq i32* %105, null
  br i1 %106, label %107, label %109

107:                                              ; preds = %97
  %108 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %108, i32* %2, align 4
  br label %567

109:                                              ; preds = %97
  %110 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %111 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %110, i32 0, i32 0
  %112 = call i32* @archive_string_conversion_from_charset(i32* %111, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 1)
  %113 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %114 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %113, i32 0, i32 14
  store i32* %112, i32** %114, align 8
  %115 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %116 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %115, i32 0, i32 14
  %117 = load i32*, i32** %116, align 8
  %118 = icmp eq i32* %117, null
  br i1 %118, label %119, label %121

119:                                              ; preds = %109
  %120 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %120, i32* %2, align 4
  br label %567

121:                                              ; preds = %109
  br label %122

122:                                              ; preds = %121, %92
  br label %123

123:                                              ; preds = %122, %72
  %124 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %125 = call i32 @isoent_make_path_table(%struct.archive_write* %124)
  store i32 %125, i32* %5, align 4
  %126 = load i32, i32* %5, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %123
  %129 = load i32, i32* %5, align 4
  store i32 %129, i32* %2, align 4
  br label %567

130:                                              ; preds = %123
  %131 = load i32, i32* @SYSTEM_AREA_BLOCK, align 4
  %132 = load i32, i32* @PRIMARY_VOLUME_DESCRIPTOR_BLOCK, align 4
  %133 = add nsw i32 %131, %132
  %134 = load i32, i32* @VOLUME_DESCRIPTOR_SET_TERMINATOR_BLOCK, align 4
  %135 = add nsw i32 %133, %134
  %136 = load i32, i32* @NON_ISO_FILE_SYSTEM_INFORMATION_BLOCK, align 4
  %137 = add nsw i32 %135, %136
  store i32 %137, i32* %6, align 4
  %138 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %139 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %138, i32 0, i32 5
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 4
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %130
  %144 = load i64, i64* @BOOT_RECORD_DESCRIPTOR_BLOCK, align 8
  %145 = load i32, i32* %6, align 4
  %146 = sext i32 %145 to i64
  %147 = add nsw i64 %146, %144
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* %6, align 4
  br label %149

149:                                              ; preds = %143, %130
  %150 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %151 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %150, i32 0, i32 5
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 3
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %149
  %156 = load i64, i64* @SUPPLEMENTARY_VOLUME_DESCRIPTOR_BLOCK, align 8
  %157 = load i32, i32* %6, align 4
  %158 = sext i32 %157 to i64
  %159 = add nsw i64 %158, %156
  %160 = trunc i64 %159 to i32
  store i32 %160, i32* %6, align 4
  br label %161

161:                                              ; preds = %155, %149
  %162 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %163 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %162, i32 0, i32 5
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = icmp eq i32 %165, 4
  br i1 %166, label %167, label %173

167:                                              ; preds = %161
  %168 = load i64, i64* @SUPPLEMENTARY_VOLUME_DESCRIPTOR_BLOCK, align 8
  %169 = load i32, i32* %6, align 4
  %170 = sext i32 %169 to i64
  %171 = add nsw i64 %170, %168
  %172 = trunc i64 %171 to i32
  store i32 %172, i32* %6, align 4
  br label %173

173:                                              ; preds = %167, %161
  %174 = load i32, i32* %6, align 4
  %175 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %176 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %175, i32 0, i32 7
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 0
  store i32 %174, i32* %177, align 8
  %178 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %179 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %178, i32 0, i32 7
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 4
  %181 = load i64, i64* %180, align 8
  %182 = load i32, i32* %6, align 4
  %183 = sext i32 %182 to i64
  %184 = add nsw i64 %183, %181
  %185 = trunc i64 %184 to i32
  store i32 %185, i32* %6, align 4
  %186 = load i32, i32* %6, align 4
  %187 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %188 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %187, i32 0, i32 7
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 1
  store i32 %186, i32* %189, align 4
  %190 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %191 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %190, i32 0, i32 7
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 4
  %193 = load i64, i64* %192, align 8
  %194 = load i32, i32* %6, align 4
  %195 = sext i32 %194 to i64
  %196 = add nsw i64 %195, %193
  %197 = trunc i64 %196 to i32
  store i32 %197, i32* %6, align 4
  %198 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %199 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %198, i32 0, i32 5
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 3
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %228

203:                                              ; preds = %173
  %204 = load i32, i32* %6, align 4
  %205 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %206 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %205, i32 0, i32 6
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 0
  store i32 %204, i32* %207, align 8
  %208 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %209 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %208, i32 0, i32 6
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 4
  %211 = load i64, i64* %210, align 8
  %212 = load i32, i32* %6, align 4
  %213 = sext i32 %212 to i64
  %214 = add nsw i64 %213, %211
  %215 = trunc i64 %214 to i32
  store i32 %215, i32* %6, align 4
  %216 = load i32, i32* %6, align 4
  %217 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %218 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %217, i32 0, i32 6
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 1
  store i32 %216, i32* %219, align 4
  %220 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %221 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %220, i32 0, i32 6
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i32 0, i32 4
  %223 = load i64, i64* %222, align 8
  %224 = load i32, i32* %6, align 4
  %225 = sext i32 %224 to i64
  %226 = add nsw i64 %225, %223
  %227 = trunc i64 %226 to i32
  store i32 %227, i32* %6, align 4
  br label %228

228:                                              ; preds = %203, %173
  %229 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %230 = load i32, i32* %6, align 4
  %231 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %232 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %231, i32 0, i32 7
  %233 = call i32 @isoent_setup_directory_location(%struct.iso9660* %229, i32 %230, %struct.TYPE_11__* %232)
  %234 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %235 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %234, i32 0, i32 7
  %236 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %235, i32 0, i32 3
  %237 = load i64, i64* %236, align 8
  %238 = load i32, i32* %6, align 4
  %239 = sext i32 %238 to i64
  %240 = add nsw i64 %239, %237
  %241 = trunc i64 %240 to i32
  store i32 %241, i32* %6, align 4
  %242 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %243 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %242, i32 0, i32 5
  %244 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %243, i32 0, i32 3
  %245 = load i64, i64* %244, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %261

247:                                              ; preds = %228
  %248 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %249 = load i32, i32* %6, align 4
  %250 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %251 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %250, i32 0, i32 6
  %252 = call i32 @isoent_setup_directory_location(%struct.iso9660* %248, i32 %249, %struct.TYPE_11__* %251)
  %253 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %254 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %253, i32 0, i32 6
  %255 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %254, i32 0, i32 3
  %256 = load i64, i64* %255, align 8
  %257 = load i32, i32* %6, align 4
  %258 = sext i32 %257 to i64
  %259 = add nsw i64 %258, %256
  %260 = trunc i64 %259 to i32
  store i32 %260, i32* %6, align 4
  br label %261

261:                                              ; preds = %247, %228
  %262 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %263 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %262, i32 0, i32 5
  %264 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %263, i32 0, i32 2
  %265 = load i64, i64* %264, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %276

267:                                              ; preds = %261
  %268 = load i32, i32* %6, align 4
  %269 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %270 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %269, i32 0, i32 1
  store i32 %268, i32* %270, align 8
  %271 = load i64, i64* @RRIP_ER_BLOCK, align 8
  %272 = load i32, i32* %6, align 4
  %273 = sext i32 %272 to i64
  %274 = add nsw i64 %273, %271
  %275 = trunc i64 %274 to i32
  store i32 %275, i32* %6, align 4
  br label %276

276:                                              ; preds = %267, %261
  %277 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %278 = load i32, i32* %6, align 4
  %279 = call i32 @isoent_setup_file_location(%struct.iso9660* %277, i32 %278)
  %280 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %281 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %280, i32 0, i32 13
  %282 = load i64, i64* %281, align 8
  %283 = load i32, i32* %6, align 4
  %284 = sext i32 %283 to i64
  %285 = add nsw i64 %284, %282
  %286 = trunc i64 %285 to i32
  store i32 %286, i32* %6, align 4
  %287 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %288 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %287, i32 0, i32 5
  %289 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %288, i32 0, i32 4
  %290 = load i64, i64* %289, align 8
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %306

292:                                              ; preds = %276
  %293 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %294 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %293, i32 0, i32 5
  %295 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %294, i32 0, i32 5
  %296 = load i64, i64* %295, align 8
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %306

298:                                              ; preds = %292
  %299 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %300 = call i32 @setup_boot_information(%struct.archive_write* %299)
  store i32 %300, i32* %5, align 4
  %301 = load i32, i32* %5, align 4
  %302 = icmp slt i32 %301, 0
  br i1 %302, label %303, label %305

303:                                              ; preds = %298
  %304 = load i32, i32* %5, align 4
  store i32 %304, i32* %2, align 4
  br label %567

305:                                              ; preds = %298
  br label %306

306:                                              ; preds = %305, %292, %276
  %307 = load i32, i32* %6, align 4
  %308 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %309 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %308, i32 0, i32 2
  store i32 %307, i32* %309, align 4
  %310 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %311 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %310, i32 0, i32 5
  %312 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %311, i32 0, i32 1
  %313 = load i64, i64* %312, align 8
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %321

315:                                              ; preds = %306
  %316 = load i32, i32* @PADDING_BLOCK, align 4
  %317 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %318 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %317, i32 0, i32 2
  %319 = load i32, i32* %318, align 4
  %320 = add nsw i32 %319, %316
  store i32 %320, i32* %318, align 4
  br label %321

321:                                              ; preds = %315, %306
  %322 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %323 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %322, i32 0, i32 3
  store i32 1, i32* %323, align 8
  %324 = call i32 (...) @wb_buffmax()
  %325 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %326 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %325, i32 0, i32 12
  store i32 %324, i32* %326, align 4
  %327 = load i32, i32* @WB_TO_STREAM, align 4
  %328 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %329 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %328, i32 0, i32 11
  store i32 %327, i32* %329, align 8
  %330 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %331 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %330, i32 0, i32 10
  store i64 0, i64* %331, align 8
  %332 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %333 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %332, i32 0, i32 9
  store i64 0, i64* %333, align 8
  %334 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %335 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %334, i32 0, i32 8
  store i64 0, i64* %335, align 8
  %336 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %337 = load i32, i32* @SYSTEM_AREA_BLOCK, align 4
  %338 = load i32, i32* @LOGICAL_BLOCK_SIZE, align 4
  %339 = mul nsw i32 %337, %338
  %340 = call i32 @write_null(%struct.archive_write* %336, i32 %339)
  store i32 %340, i32* %5, align 4
  %341 = load i32, i32* %5, align 4
  %342 = load i32, i32* @ARCHIVE_OK, align 4
  %343 = icmp ne i32 %341, %342
  br i1 %343, label %344, label %346

344:                                              ; preds = %321
  %345 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %345, i32* %2, align 4
  br label %567

346:                                              ; preds = %321
  %347 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %348 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %349 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %348, i32 0, i32 7
  %350 = call i32 @write_VD(%struct.archive_write* %347, %struct.TYPE_11__* %349)
  store i32 %350, i32* %5, align 4
  %351 = load i32, i32* %5, align 4
  %352 = load i32, i32* @ARCHIVE_OK, align 4
  %353 = icmp ne i32 %351, %352
  br i1 %353, label %354, label %356

354:                                              ; preds = %346
  %355 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %355, i32* %2, align 4
  br label %567

356:                                              ; preds = %346
  %357 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %358 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %357, i32 0, i32 5
  %359 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %358, i32 0, i32 4
  %360 = load i64, i64* %359, align 8
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %362, label %371

362:                                              ; preds = %356
  %363 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %364 = call i32 @write_VD_boot_record(%struct.archive_write* %363)
  store i32 %364, i32* %5, align 4
  %365 = load i32, i32* %5, align 4
  %366 = load i32, i32* @ARCHIVE_OK, align 4
  %367 = icmp ne i32 %365, %366
  br i1 %367, label %368, label %370

368:                                              ; preds = %362
  %369 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %369, i32* %2, align 4
  br label %567

370:                                              ; preds = %362
  br label %371

371:                                              ; preds = %370, %356
  %372 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %373 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %372, i32 0, i32 5
  %374 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 8
  %376 = icmp eq i32 %375, 4
  br i1 %376, label %377, label %396

377:                                              ; preds = %371
  %378 = load i32, i32* @VDD_ENHANCED, align 4
  %379 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %380 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %379, i32 0, i32 7
  %381 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %380, i32 0, i32 2
  store i32 %378, i32* %381, align 8
  %382 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %383 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %384 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %383, i32 0, i32 7
  %385 = call i32 @write_VD(%struct.archive_write* %382, %struct.TYPE_11__* %384)
  store i32 %385, i32* %5, align 4
  %386 = load i32, i32* @VDD_PRIMARY, align 4
  %387 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %388 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %387, i32 0, i32 7
  %389 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %388, i32 0, i32 2
  store i32 %386, i32* %389, align 8
  %390 = load i32, i32* %5, align 4
  %391 = load i32, i32* @ARCHIVE_OK, align 4
  %392 = icmp ne i32 %390, %391
  br i1 %392, label %393, label %395

393:                                              ; preds = %377
  %394 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %394, i32* %2, align 4
  br label %567

395:                                              ; preds = %377
  br label %396

396:                                              ; preds = %395, %371
  %397 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %398 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %397, i32 0, i32 5
  %399 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %398, i32 0, i32 3
  %400 = load i64, i64* %399, align 8
  %401 = icmp ne i64 %400, 0
  br i1 %401, label %402, label %413

402:                                              ; preds = %396
  %403 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %404 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %405 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %404, i32 0, i32 6
  %406 = call i32 @write_VD(%struct.archive_write* %403, %struct.TYPE_11__* %405)
  store i32 %406, i32* %5, align 4
  %407 = load i32, i32* %5, align 4
  %408 = load i32, i32* @ARCHIVE_OK, align 4
  %409 = icmp ne i32 %407, %408
  br i1 %409, label %410, label %412

410:                                              ; preds = %402
  %411 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %411, i32* %2, align 4
  br label %567

412:                                              ; preds = %402
  br label %413

413:                                              ; preds = %412, %396
  %414 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %415 = call i32 @write_VD_terminator(%struct.archive_write* %414)
  store i32 %415, i32* %5, align 4
  %416 = load i32, i32* %5, align 4
  %417 = load i32, i32* @ARCHIVE_OK, align 4
  %418 = icmp ne i32 %416, %417
  br i1 %418, label %419, label %421

419:                                              ; preds = %413
  %420 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %420, i32* %2, align 4
  br label %567

421:                                              ; preds = %413
  %422 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %423 = call i32 @write_information_block(%struct.archive_write* %422)
  store i32 %423, i32* %5, align 4
  %424 = load i32, i32* %5, align 4
  %425 = load i32, i32* @ARCHIVE_OK, align 4
  %426 = icmp ne i32 %424, %425
  br i1 %426, label %427, label %429

427:                                              ; preds = %421
  %428 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %428, i32* %2, align 4
  br label %567

429:                                              ; preds = %421
  %430 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %431 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %432 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %431, i32 0, i32 7
  %433 = call i32 @write_path_table(%struct.archive_write* %430, i32 0, %struct.TYPE_11__* %432)
  store i32 %433, i32* %5, align 4
  %434 = load i32, i32* %5, align 4
  %435 = load i32, i32* @ARCHIVE_OK, align 4
  %436 = icmp ne i32 %434, %435
  br i1 %436, label %437, label %439

437:                                              ; preds = %429
  %438 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %438, i32* %2, align 4
  br label %567

439:                                              ; preds = %429
  %440 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %441 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %442 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %441, i32 0, i32 7
  %443 = call i32 @write_path_table(%struct.archive_write* %440, i32 1, %struct.TYPE_11__* %442)
  store i32 %443, i32* %5, align 4
  %444 = load i32, i32* %5, align 4
  %445 = load i32, i32* @ARCHIVE_OK, align 4
  %446 = icmp ne i32 %444, %445
  br i1 %446, label %447, label %449

447:                                              ; preds = %439
  %448 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %448, i32* %2, align 4
  br label %567

449:                                              ; preds = %439
  %450 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %451 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %450, i32 0, i32 5
  %452 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %451, i32 0, i32 3
  %453 = load i64, i64* %452, align 8
  %454 = icmp ne i64 %453, 0
  br i1 %454, label %455, label %476

455:                                              ; preds = %449
  %456 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %457 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %458 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %457, i32 0, i32 6
  %459 = call i32 @write_path_table(%struct.archive_write* %456, i32 0, %struct.TYPE_11__* %458)
  store i32 %459, i32* %5, align 4
  %460 = load i32, i32* %5, align 4
  %461 = load i32, i32* @ARCHIVE_OK, align 4
  %462 = icmp ne i32 %460, %461
  br i1 %462, label %463, label %465

463:                                              ; preds = %455
  %464 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %464, i32* %2, align 4
  br label %567

465:                                              ; preds = %455
  %466 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %467 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %468 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %467, i32 0, i32 6
  %469 = call i32 @write_path_table(%struct.archive_write* %466, i32 1, %struct.TYPE_11__* %468)
  store i32 %469, i32* %5, align 4
  %470 = load i32, i32* %5, align 4
  %471 = load i32, i32* @ARCHIVE_OK, align 4
  %472 = icmp ne i32 %470, %471
  br i1 %472, label %473, label %475

473:                                              ; preds = %465
  %474 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %474, i32* %2, align 4
  br label %567

475:                                              ; preds = %465
  br label %476

476:                                              ; preds = %475, %449
  %477 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %478 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %479 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %478, i32 0, i32 7
  %480 = call i32 @write_directory_descriptors(%struct.archive_write* %477, %struct.TYPE_11__* %479)
  store i32 %480, i32* %5, align 4
  %481 = load i32, i32* %5, align 4
  %482 = load i32, i32* @ARCHIVE_OK, align 4
  %483 = icmp ne i32 %481, %482
  br i1 %483, label %484, label %486

484:                                              ; preds = %476
  %485 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %485, i32* %2, align 4
  br label %567

486:                                              ; preds = %476
  %487 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %488 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %487, i32 0, i32 5
  %489 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %488, i32 0, i32 3
  %490 = load i64, i64* %489, align 8
  %491 = icmp ne i64 %490, 0
  br i1 %491, label %492, label %503

492:                                              ; preds = %486
  %493 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %494 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %495 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %494, i32 0, i32 6
  %496 = call i32 @write_directory_descriptors(%struct.archive_write* %493, %struct.TYPE_11__* %495)
  store i32 %496, i32* %5, align 4
  %497 = load i32, i32* %5, align 4
  %498 = load i32, i32* @ARCHIVE_OK, align 4
  %499 = icmp ne i32 %497, %498
  br i1 %499, label %500, label %502

500:                                              ; preds = %492
  %501 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %501, i32* %2, align 4
  br label %567

502:                                              ; preds = %492
  br label %503

503:                                              ; preds = %502, %486
  %504 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %505 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %504, i32 0, i32 5
  %506 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %505, i32 0, i32 2
  %507 = load i64, i64* %506, align 8
  %508 = icmp ne i64 %507, 0
  br i1 %508, label %509, label %518

509:                                              ; preds = %503
  %510 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %511 = call i32 @write_rr_ER(%struct.archive_write* %510)
  store i32 %511, i32* %5, align 4
  %512 = load i32, i32* %5, align 4
  %513 = load i32, i32* @ARCHIVE_OK, align 4
  %514 = icmp ne i32 %512, %513
  br i1 %514, label %515, label %517

515:                                              ; preds = %509
  %516 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %516, i32* %2, align 4
  br label %567

517:                                              ; preds = %509
  br label %518

518:                                              ; preds = %517, %503
  %519 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %520 = call i32 @write_file_descriptors(%struct.archive_write* %519)
  store i32 %520, i32* %5, align 4
  %521 = load i32, i32* %5, align 4
  %522 = load i32, i32* @ARCHIVE_OK, align 4
  %523 = icmp ne i32 %521, %522
  br i1 %523, label %524, label %526

524:                                              ; preds = %518
  %525 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %525, i32* %2, align 4
  br label %567

526:                                              ; preds = %518
  %527 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %528 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %527, i32 0, i32 5
  %529 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %528, i32 0, i32 1
  %530 = load i64, i64* %529, align 8
  %531 = icmp ne i64 %530, 0
  br i1 %531, label %532, label %544

532:                                              ; preds = %526
  %533 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %534 = load i32, i32* @PADDING_BLOCK, align 4
  %535 = load i32, i32* @LOGICAL_BLOCK_SIZE, align 4
  %536 = mul nsw i32 %534, %535
  %537 = call i32 @write_null(%struct.archive_write* %533, i32 %536)
  store i32 %537, i32* %5, align 4
  %538 = load i32, i32* %5, align 4
  %539 = load i32, i32* @ARCHIVE_OK, align 4
  %540 = icmp ne i32 %538, %539
  br i1 %540, label %541, label %543

541:                                              ; preds = %532
  %542 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %542, i32* %2, align 4
  br label %567

543:                                              ; preds = %532
  br label %544

544:                                              ; preds = %543, %526
  %545 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %546 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %545, i32 0, i32 4
  %547 = load %struct.TYPE_9__*, %struct.TYPE_9__** %546, align 8
  %548 = icmp ne %struct.TYPE_9__* %547, null
  br i1 %548, label %549, label %563

549:                                              ; preds = %544
  %550 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %551 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %550, i32 0, i32 0
  %552 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %553 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %554 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %553, i32 0, i32 4
  %555 = load %struct.TYPE_9__*, %struct.TYPE_9__** %554, align 8
  %556 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %555, i32 0, i32 0
  %557 = load %struct.TYPE_8__*, %struct.TYPE_8__** %556, align 8
  %558 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %557, i32 0, i32 0
  %559 = load i32, i32* %558, align 4
  %560 = call i32 @archive_entry_pathname(i32 %559)
  %561 = call i32 @archive_set_error(i32* %551, i32 %552, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %560)
  %562 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %562, i32* %2, align 4
  br label %567

563:                                              ; preds = %544
  %564 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %565 = call i32 @wb_write_out(%struct.archive_write* %564)
  store i32 %565, i32* %5, align 4
  %566 = load i32, i32* %5, align 4
  store i32 %566, i32* %2, align 4
  br label %567

567:                                              ; preds = %563, %549, %541, %524, %515, %500, %484, %473, %463, %447, %437, %427, %419, %410, %393, %368, %354, %344, %303, %128, %119, %107, %90, %69, %57, %46, %39, %18
  %568 = load i32, i32* %2, align 4
  ret i32 %568
}

declare dso_local i64 @wb_remaining(%struct.archive_write*) #1

declare dso_local i32 @wb_write_out(%struct.archive_write*) #1

declare dso_local i32 @time(i64*) #1

declare dso_local i32 @isoent_find_out_boot_file(%struct.archive_write*, i32) #1

declare dso_local i32 @zisofs_rewind_boot_file(%struct.archive_write*) #1

declare dso_local i32 @isoent_create_boot_catalog(%struct.archive_write*, i32) #1

declare dso_local i32 @isoent_clone_tree(%struct.archive_write*, i32*, i32) #1

declare dso_local i32* @archive_string_conversion_to_charset(i32*, i8*, i32) #1

declare dso_local i32* @archive_string_conversion_from_charset(i32*, i8*, i32) #1

declare dso_local i32 @isoent_make_path_table(%struct.archive_write*) #1

declare dso_local i32 @isoent_setup_directory_location(%struct.iso9660*, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @isoent_setup_file_location(%struct.iso9660*, i32) #1

declare dso_local i32 @setup_boot_information(%struct.archive_write*) #1

declare dso_local i32 @wb_buffmax(...) #1

declare dso_local i32 @write_null(%struct.archive_write*, i32) #1

declare dso_local i32 @write_VD(%struct.archive_write*, %struct.TYPE_11__*) #1

declare dso_local i32 @write_VD_boot_record(%struct.archive_write*) #1

declare dso_local i32 @write_VD_terminator(%struct.archive_write*) #1

declare dso_local i32 @write_information_block(%struct.archive_write*) #1

declare dso_local i32 @write_path_table(%struct.archive_write*, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @write_directory_descriptors(%struct.archive_write*, %struct.TYPE_11__*) #1

declare dso_local i32 @write_rr_ER(%struct.archive_write*) #1

declare dso_local i32 @write_file_descriptors(%struct.archive_write*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*, i32) #1

declare dso_local i32 @archive_entry_pathname(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
