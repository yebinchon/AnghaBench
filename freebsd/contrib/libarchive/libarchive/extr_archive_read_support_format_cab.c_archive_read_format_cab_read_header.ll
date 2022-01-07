; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_cab.c_archive_read_format_cab_read_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_cab.c_archive_read_format_cab_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { %struct.TYPE_9__, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i64 }
%struct.archive_entry = type { i32 }
%struct.cab = type { i32, i32, i32, i32, i32, i64, i32, %struct.cffolder*, i64, %struct.archive_string_conv*, %struct.archive_string_conv*, %struct.archive_string_conv*, i32*, %struct.cffile*, i64, i64, i64, %struct.cfheader }
%struct.cffolder = type { i8* }
%struct.archive_string_conv = type { i32 }
%struct.cffile = type { i32, i32, i64, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.cfheader = type { i64, i64, i32, i32, %struct.cffolder*, i32, %struct.cffile* }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ATTR_NAME_IS_UTF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"Can't allocate memory for Pathname\00", align 1
@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"Pathname cannot be converted from %s to current locale.\00", align 1
@ATTR_RDONLY = common dso_local global i32 0, align 4
@AE_IFREG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"CAB %d.%d (%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.archive_entry*)* @archive_read_format_cab_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_read_format_cab_read_header(%struct.archive_read* %0, %struct.archive_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca %struct.archive_entry*, align 8
  %6 = alloca %struct.cab*, align 8
  %7 = alloca %struct.cfheader*, align 8
  %8 = alloca %struct.cffolder*, align 8
  %9 = alloca %struct.cffile*, align 8
  %10 = alloca %struct.archive_string_conv*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %4, align 8
  store %struct.archive_entry* %1, %struct.archive_entry** %5, align 8
  %13 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %13, i32* %11, align 4
  %14 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %15 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %14, i32 0, i32 1
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.cab*
  store %struct.cab* %19, %struct.cab** %6, align 8
  %20 = load %struct.cab*, %struct.cab** %6, align 8
  %21 = getelementptr inbounds %struct.cab, %struct.cab* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %2
  %25 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %26 = call i32 @cab_read_header(%struct.archive_read* %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @ARCHIVE_WARN, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %3, align 4
  br label %283

32:                                               ; preds = %24
  %33 = load %struct.cab*, %struct.cab** %6, align 8
  %34 = getelementptr inbounds %struct.cab, %struct.cab* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  br label %35

35:                                               ; preds = %32, %2
  %36 = load %struct.cab*, %struct.cab** %6, align 8
  %37 = getelementptr inbounds %struct.cab, %struct.cab* %36, i32 0, i32 17
  store %struct.cfheader* %37, %struct.cfheader** %7, align 8
  %38 = load %struct.cfheader*, %struct.cfheader** %7, align 8
  %39 = getelementptr inbounds %struct.cfheader, %struct.cfheader* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.cfheader*, %struct.cfheader** %7, align 8
  %42 = getelementptr inbounds %struct.cfheader, %struct.cfheader* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp sge i64 %40, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %35
  %46 = load %struct.cab*, %struct.cab** %6, align 8
  %47 = getelementptr inbounds %struct.cab, %struct.cab* %46, i32 0, i32 1
  store i32 1, i32* %47, align 4
  %48 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %48, i32* %3, align 4
  br label %283

49:                                               ; preds = %35
  %50 = load %struct.cfheader*, %struct.cfheader** %7, align 8
  %51 = getelementptr inbounds %struct.cfheader, %struct.cfheader* %50, i32 0, i32 6
  %52 = load %struct.cffile*, %struct.cffile** %51, align 8
  %53 = load %struct.cfheader*, %struct.cfheader** %7, align 8
  %54 = getelementptr inbounds %struct.cfheader, %struct.cfheader* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, 1
  store i64 %56, i64* %54, align 8
  %57 = getelementptr inbounds %struct.cffile, %struct.cffile* %52, i64 %55
  store %struct.cffile* %57, %struct.cffile** %9, align 8
  %58 = load %struct.cab*, %struct.cab** %6, align 8
  %59 = getelementptr inbounds %struct.cab, %struct.cab* %58, i32 0, i32 2
  store i32 0, i32* %59, align 8
  %60 = load %struct.cab*, %struct.cab** %6, align 8
  %61 = getelementptr inbounds %struct.cab, %struct.cab* %60, i32 0, i32 3
  store i32 0, i32* %61, align 4
  %62 = load %struct.cab*, %struct.cab** %6, align 8
  %63 = getelementptr inbounds %struct.cab, %struct.cab* %62, i32 0, i32 16
  store i64 0, i64* %63, align 8
  %64 = load %struct.cab*, %struct.cab** %6, align 8
  %65 = getelementptr inbounds %struct.cab, %struct.cab* %64, i32 0, i32 15
  store i64 0, i64* %65, align 8
  %66 = load %struct.cab*, %struct.cab** %6, align 8
  %67 = getelementptr inbounds %struct.cab, %struct.cab* %66, i32 0, i32 14
  store i64 0, i64* %67, align 8
  %68 = load %struct.cffile*, %struct.cffile** %9, align 8
  %69 = load %struct.cab*, %struct.cab** %6, align 8
  %70 = getelementptr inbounds %struct.cab, %struct.cab* %69, i32 0, i32 13
  store %struct.cffile* %68, %struct.cffile** %70, align 8
  %71 = load %struct.cab*, %struct.cab** %6, align 8
  %72 = getelementptr inbounds %struct.cab, %struct.cab* %71, i32 0, i32 7
  %73 = load %struct.cffolder*, %struct.cffolder** %72, align 8
  store %struct.cffolder* %73, %struct.cffolder** %8, align 8
  %74 = load %struct.cffile*, %struct.cffile** %9, align 8
  %75 = getelementptr inbounds %struct.cffile, %struct.cffile* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  switch i32 %76, label %96 [
    i32 130, label %77
    i32 129, label %77
    i32 128, label %84
  ]

77:                                               ; preds = %49, %49
  %78 = load %struct.cfheader*, %struct.cfheader** %7, align 8
  %79 = getelementptr inbounds %struct.cfheader, %struct.cfheader* %78, i32 0, i32 4
  %80 = load %struct.cffolder*, %struct.cffolder** %79, align 8
  %81 = getelementptr inbounds %struct.cffolder, %struct.cffolder* %80, i64 0
  %82 = load %struct.cab*, %struct.cab** %6, align 8
  %83 = getelementptr inbounds %struct.cab, %struct.cab* %82, i32 0, i32 7
  store %struct.cffolder* %81, %struct.cffolder** %83, align 8
  br label %107

84:                                               ; preds = %49
  %85 = load %struct.cfheader*, %struct.cfheader** %7, align 8
  %86 = getelementptr inbounds %struct.cfheader, %struct.cfheader* %85, i32 0, i32 4
  %87 = load %struct.cffolder*, %struct.cffolder** %86, align 8
  %88 = load %struct.cfheader*, %struct.cfheader** %7, align 8
  %89 = getelementptr inbounds %struct.cfheader, %struct.cfheader* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 8
  %91 = sub nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.cffolder, %struct.cffolder* %87, i64 %92
  %94 = load %struct.cab*, %struct.cab** %6, align 8
  %95 = getelementptr inbounds %struct.cab, %struct.cab* %94, i32 0, i32 7
  store %struct.cffolder* %93, %struct.cffolder** %95, align 8
  br label %107

96:                                               ; preds = %49
  %97 = load %struct.cfheader*, %struct.cfheader** %7, align 8
  %98 = getelementptr inbounds %struct.cfheader, %struct.cfheader* %97, i32 0, i32 4
  %99 = load %struct.cffolder*, %struct.cffolder** %98, align 8
  %100 = load %struct.cffile*, %struct.cffile** %9, align 8
  %101 = getelementptr inbounds %struct.cffile, %struct.cffile* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.cffolder, %struct.cffolder* %99, i64 %103
  %105 = load %struct.cab*, %struct.cab** %6, align 8
  %106 = getelementptr inbounds %struct.cab, %struct.cab* %105, i32 0, i32 7
  store %struct.cffolder* %104, %struct.cffolder** %106, align 8
  br label %107

107:                                              ; preds = %96, %84, %77
  %108 = load %struct.cffolder*, %struct.cffolder** %8, align 8
  %109 = load %struct.cab*, %struct.cab** %6, align 8
  %110 = getelementptr inbounds %struct.cab, %struct.cab* %109, i32 0, i32 7
  %111 = load %struct.cffolder*, %struct.cffolder** %110, align 8
  %112 = icmp ne %struct.cffolder* %108, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %107
  %114 = load %struct.cab*, %struct.cab** %6, align 8
  %115 = getelementptr inbounds %struct.cab, %struct.cab* %114, i32 0, i32 12
  store i32* null, i32** %115, align 8
  br label %116

116:                                              ; preds = %113, %107
  %117 = load %struct.cffile*, %struct.cffile** %9, align 8
  %118 = getelementptr inbounds %struct.cffile, %struct.cffile* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @ATTR_NAME_IS_UTF, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %145

123:                                              ; preds = %116
  %124 = load %struct.cab*, %struct.cab** %6, align 8
  %125 = getelementptr inbounds %struct.cab, %struct.cab* %124, i32 0, i32 11
  %126 = load %struct.archive_string_conv*, %struct.archive_string_conv** %125, align 8
  %127 = icmp eq %struct.archive_string_conv* %126, null
  br i1 %127, label %128, label %141

128:                                              ; preds = %123
  %129 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %130 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %129, i32 0, i32 0
  %131 = call %struct.archive_string_conv* @archive_string_conversion_from_charset(%struct.TYPE_9__* %130, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 1)
  %132 = load %struct.cab*, %struct.cab** %6, align 8
  %133 = getelementptr inbounds %struct.cab, %struct.cab* %132, i32 0, i32 11
  store %struct.archive_string_conv* %131, %struct.archive_string_conv** %133, align 8
  %134 = load %struct.cab*, %struct.cab** %6, align 8
  %135 = getelementptr inbounds %struct.cab, %struct.cab* %134, i32 0, i32 11
  %136 = load %struct.archive_string_conv*, %struct.archive_string_conv** %135, align 8
  %137 = icmp eq %struct.archive_string_conv* %136, null
  br i1 %137, label %138, label %140

138:                                              ; preds = %128
  %139 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %139, i32* %3, align 4
  br label %283

140:                                              ; preds = %128
  br label %141

141:                                              ; preds = %140, %123
  %142 = load %struct.cab*, %struct.cab** %6, align 8
  %143 = getelementptr inbounds %struct.cab, %struct.cab* %142, i32 0, i32 11
  %144 = load %struct.archive_string_conv*, %struct.archive_string_conv** %143, align 8
  store %struct.archive_string_conv* %144, %struct.archive_string_conv** %10, align 8
  br label %172

145:                                              ; preds = %116
  %146 = load %struct.cab*, %struct.cab** %6, align 8
  %147 = getelementptr inbounds %struct.cab, %struct.cab* %146, i32 0, i32 10
  %148 = load %struct.archive_string_conv*, %struct.archive_string_conv** %147, align 8
  %149 = icmp ne %struct.archive_string_conv* %148, null
  br i1 %149, label %150, label %154

150:                                              ; preds = %145
  %151 = load %struct.cab*, %struct.cab** %6, align 8
  %152 = getelementptr inbounds %struct.cab, %struct.cab* %151, i32 0, i32 10
  %153 = load %struct.archive_string_conv*, %struct.archive_string_conv** %152, align 8
  store %struct.archive_string_conv* %153, %struct.archive_string_conv** %10, align 8
  br label %171

154:                                              ; preds = %145
  %155 = load %struct.cab*, %struct.cab** %6, align 8
  %156 = getelementptr inbounds %struct.cab, %struct.cab* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 8
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %167, label %159

159:                                              ; preds = %154
  %160 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %161 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %160, i32 0, i32 0
  %162 = call %struct.archive_string_conv* @archive_string_default_conversion_for_read(%struct.TYPE_9__* %161)
  %163 = load %struct.cab*, %struct.cab** %6, align 8
  %164 = getelementptr inbounds %struct.cab, %struct.cab* %163, i32 0, i32 9
  store %struct.archive_string_conv* %162, %struct.archive_string_conv** %164, align 8
  %165 = load %struct.cab*, %struct.cab** %6, align 8
  %166 = getelementptr inbounds %struct.cab, %struct.cab* %165, i32 0, i32 4
  store i32 1, i32* %166, align 8
  br label %167

167:                                              ; preds = %159, %154
  %168 = load %struct.cab*, %struct.cab** %6, align 8
  %169 = getelementptr inbounds %struct.cab, %struct.cab* %168, i32 0, i32 9
  %170 = load %struct.archive_string_conv*, %struct.archive_string_conv** %169, align 8
  store %struct.archive_string_conv* %170, %struct.archive_string_conv** %10, align 8
  br label %171

171:                                              ; preds = %167, %150
  br label %172

172:                                              ; preds = %171, %141
  %173 = load %struct.cffile*, %struct.cffile** %9, align 8
  %174 = getelementptr inbounds %struct.cffile, %struct.cffile* %173, i32 0, i32 4
  %175 = load %struct.cffile*, %struct.cffile** %9, align 8
  %176 = getelementptr inbounds %struct.cffile, %struct.cffile* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @cab_convert_path_separator_1(%struct.TYPE_8__* %174, i32 %177)
  store i32 %178, i32* %12, align 4
  %179 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %180 = load %struct.cffile*, %struct.cffile** %9, align 8
  %181 = getelementptr inbounds %struct.cffile, %struct.cffile* %180, i32 0, i32 4
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.cffile*, %struct.cffile** %9, align 8
  %185 = getelementptr inbounds %struct.cffile, %struct.cffile* %184, i32 0, i32 4
  %186 = call i32 @archive_strlen(%struct.TYPE_8__* %185)
  %187 = load %struct.archive_string_conv*, %struct.archive_string_conv** %10, align 8
  %188 = call i64 @archive_entry_copy_pathname_l(%struct.archive_entry* %179, i32 %183, i32 %186, %struct.archive_string_conv* %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %209

190:                                              ; preds = %172
  %191 = load i64, i64* @errno, align 8
  %192 = load i64, i64* @ENOMEM, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %200

194:                                              ; preds = %190
  %195 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %196 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %195, i32 0, i32 0
  %197 = load i64, i64* @ENOMEM, align 8
  %198 = call i32 (%struct.TYPE_9__*, i64, i8*, ...) @archive_set_error(%struct.TYPE_9__* %196, i64 %197, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %199 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %199, i32* %3, align 4
  br label %283

200:                                              ; preds = %190
  %201 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %202 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %201, i32 0, i32 0
  %203 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %204 = sext i32 %203 to i64
  %205 = load %struct.archive_string_conv*, %struct.archive_string_conv** %10, align 8
  %206 = call i32 @archive_string_conversion_charset_name(%struct.archive_string_conv* %205)
  %207 = call i32 (%struct.TYPE_9__*, i64, i8*, ...) @archive_set_error(%struct.TYPE_9__* %202, i64 %204, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %206)
  %208 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %208, i32* %11, align 4
  br label %209

209:                                              ; preds = %200, %172
  %210 = load i32, i32* %12, align 4
  %211 = icmp slt i32 %210, 0
  br i1 %211, label %212, label %216

212:                                              ; preds = %209
  %213 = load %struct.cab*, %struct.cab** %6, align 8
  %214 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %215 = call i32 @cab_convert_path_separator_2(%struct.cab* %213, %struct.archive_entry* %214)
  br label %216

216:                                              ; preds = %212, %209
  %217 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %218 = load %struct.cffile*, %struct.cffile** %9, align 8
  %219 = getelementptr inbounds %struct.cffile, %struct.cffile* %218, i32 0, i32 2
  %220 = load i64, i64* %219, align 8
  %221 = call i32 @archive_entry_set_size(%struct.archive_entry* %217, i64 %220)
  %222 = load %struct.cffile*, %struct.cffile** %9, align 8
  %223 = getelementptr inbounds %struct.cffile, %struct.cffile* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* @ATTR_RDONLY, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %233

228:                                              ; preds = %216
  %229 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %230 = load i32, i32* @AE_IFREG, align 4
  %231 = or i32 %230, 365
  %232 = call i32 @archive_entry_set_mode(%struct.archive_entry* %229, i32 %231)
  br label %238

233:                                              ; preds = %216
  %234 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %235 = load i32, i32* @AE_IFREG, align 4
  %236 = or i32 %235, 438
  %237 = call i32 @archive_entry_set_mode(%struct.archive_entry* %234, i32 %236)
  br label %238

238:                                              ; preds = %233, %228
  %239 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %240 = load %struct.cffile*, %struct.cffile** %9, align 8
  %241 = getelementptr inbounds %struct.cffile, %struct.cffile* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 8
  %243 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %239, i32 %242, i32 0)
  %244 = load %struct.cffile*, %struct.cffile** %9, align 8
  %245 = getelementptr inbounds %struct.cffile, %struct.cffile* %244, i32 0, i32 2
  %246 = load i64, i64* %245, align 8
  %247 = load %struct.cab*, %struct.cab** %6, align 8
  %248 = getelementptr inbounds %struct.cab, %struct.cab* %247, i32 0, i32 5
  store i64 %246, i64* %248, align 8
  %249 = load %struct.cab*, %struct.cab** %6, align 8
  %250 = getelementptr inbounds %struct.cab, %struct.cab* %249, i32 0, i32 8
  store i64 0, i64* %250, align 8
  %251 = load %struct.cffile*, %struct.cffile** %9, align 8
  %252 = getelementptr inbounds %struct.cffile, %struct.cffile* %251, i32 0, i32 2
  %253 = load i64, i64* %252, align 8
  %254 = icmp eq i64 %253, 0
  br i1 %254, label %255, label %260

255:                                              ; preds = %238
  %256 = load %struct.cab*, %struct.cab** %6, align 8
  %257 = getelementptr inbounds %struct.cab, %struct.cab* %256, i32 0, i32 2
  store i32 1, i32* %257, align 8
  %258 = load %struct.cab*, %struct.cab** %6, align 8
  %259 = getelementptr inbounds %struct.cab, %struct.cab* %258, i32 0, i32 3
  store i32 1, i32* %259, align 4
  br label %260

260:                                              ; preds = %255, %238
  %261 = load %struct.cab*, %struct.cab** %6, align 8
  %262 = getelementptr inbounds %struct.cab, %struct.cab* %261, i32 0, i32 6
  %263 = load i32, i32* %262, align 8
  %264 = load %struct.cfheader*, %struct.cfheader** %7, align 8
  %265 = getelementptr inbounds %struct.cfheader, %struct.cfheader* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 8
  %267 = load %struct.cfheader*, %struct.cfheader** %7, align 8
  %268 = getelementptr inbounds %struct.cfheader, %struct.cfheader* %267, i32 0, i32 3
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.cab*, %struct.cab** %6, align 8
  %271 = getelementptr inbounds %struct.cab, %struct.cab* %270, i32 0, i32 7
  %272 = load %struct.cffolder*, %struct.cffolder** %271, align 8
  %273 = getelementptr inbounds %struct.cffolder, %struct.cffolder* %272, i32 0, i32 0
  %274 = load i8*, i8** %273, align 8
  %275 = call i32 @sprintf(i32 %263, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %266, i32 %269, i8* %274)
  %276 = load %struct.cab*, %struct.cab** %6, align 8
  %277 = getelementptr inbounds %struct.cab, %struct.cab* %276, i32 0, i32 6
  %278 = load i32, i32* %277, align 8
  %279 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %280 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %280, i32 0, i32 0
  store i32 %278, i32* %281, align 8
  %282 = load i32, i32* %11, align 4
  store i32 %282, i32* %3, align 4
  br label %283

283:                                              ; preds = %260, %194, %138, %45, %30
  %284 = load i32, i32* %3, align 4
  ret i32 %284
}

declare dso_local i32 @cab_read_header(%struct.archive_read*) #1

declare dso_local %struct.archive_string_conv* @archive_string_conversion_from_charset(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local %struct.archive_string_conv* @archive_string_default_conversion_for_read(%struct.TYPE_9__*) #1

declare dso_local i32 @cab_convert_path_separator_1(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @archive_entry_copy_pathname_l(%struct.archive_entry*, i32, i32, %struct.archive_string_conv*) #1

declare dso_local i32 @archive_strlen(%struct.TYPE_8__*) #1

declare dso_local i32 @archive_set_error(%struct.TYPE_9__*, i64, i8*, ...) #1

declare dso_local i32 @archive_string_conversion_charset_name(%struct.archive_string_conv*) #1

declare dso_local i32 @cab_convert_path_separator_2(%struct.cab*, %struct.archive_entry*) #1

declare dso_local i32 @archive_entry_set_size(%struct.archive_entry*, i64) #1

declare dso_local i32 @archive_entry_set_mode(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_set_mtime(%struct.archive_entry*, i32, i32) #1

declare dso_local i32 @sprintf(i32, i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
