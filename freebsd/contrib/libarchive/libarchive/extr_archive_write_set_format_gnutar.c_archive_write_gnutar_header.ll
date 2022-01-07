; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_gnutar.c_archive_write_gnutar_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_gnutar.c_archive_write_gnutar_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i32, i64 }
%struct.archive_entry = type { i32 }
%struct.gnutar = type { i32, i8*, i32, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.archive_string_conv*, %struct.archive_string_conv* }
%struct.archive_string_conv = type { i32 }
%struct.archive_string = type { i32 }
%struct.archive_wstring = type { i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"Can't allocate ustar data\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"Can't allocate memory for Pathame\00", align 1
@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Can't translate pathname '%s' to %s\00", align 1
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Can't allocate memory for Uname\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Can't translate uname '%s' to %s\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Can't allocate memory for Gname\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Can't translate gname '%s' to %s\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"Can't allocate memory for Linkname\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"Can't translate linkname '%s' to %s\00", align 1
@GNUTAR_linkname_size = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"wheel\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"././@LongLink\00", align 1
@GNUTAR_name_size = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [33 x i8] c"tar format cannot archive socket\00", align 1
@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [43 x i8] c"tar format cannot archive this (mode=0%lo)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*, %struct.archive_entry*)* @archive_write_gnutar_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_write_gnutar_header(%struct.archive_write* %0, %struct.archive_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_write*, align 8
  %5 = alloca %struct.archive_entry*, align 8
  %6 = alloca [512 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.gnutar*, align 8
  %12 = alloca %struct.archive_string_conv*, align 8
  %13 = alloca %struct.archive_entry*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.archive_string, align 4
  %17 = alloca i64, align 8
  %18 = alloca %struct.archive_entry*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.archive_entry*, align 8
  store %struct.archive_write* %0, %struct.archive_write** %4, align 8
  store %struct.archive_entry* %1, %struct.archive_entry** %5, align 8
  %22 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %22, i32* %9, align 4
  %23 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %24 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.gnutar*
  store %struct.gnutar* %26, %struct.gnutar** %11, align 8
  %27 = load %struct.gnutar*, %struct.gnutar** %11, align 8
  %28 = getelementptr inbounds %struct.gnutar, %struct.gnutar* %27, i32 0, i32 11
  %29 = load %struct.archive_string_conv*, %struct.archive_string_conv** %28, align 8
  %30 = icmp eq %struct.archive_string_conv* %29, null
  br i1 %30, label %31, label %48

31:                                               ; preds = %2
  %32 = load %struct.gnutar*, %struct.gnutar** %11, align 8
  %33 = getelementptr inbounds %struct.gnutar, %struct.gnutar* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %31
  %37 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %38 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %37, i32 0, i32 0
  %39 = call %struct.archive_string_conv* @archive_string_default_conversion_for_write(i32* %38)
  %40 = load %struct.gnutar*, %struct.gnutar** %11, align 8
  %41 = getelementptr inbounds %struct.gnutar, %struct.gnutar* %40, i32 0, i32 12
  store %struct.archive_string_conv* %39, %struct.archive_string_conv** %41, align 8
  %42 = load %struct.gnutar*, %struct.gnutar** %11, align 8
  %43 = getelementptr inbounds %struct.gnutar, %struct.gnutar* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  br label %44

44:                                               ; preds = %36, %31
  %45 = load %struct.gnutar*, %struct.gnutar** %11, align 8
  %46 = getelementptr inbounds %struct.gnutar, %struct.gnutar* %45, i32 0, i32 12
  %47 = load %struct.archive_string_conv*, %struct.archive_string_conv** %46, align 8
  store %struct.archive_string_conv* %47, %struct.archive_string_conv** %12, align 8
  br label %52

48:                                               ; preds = %2
  %49 = load %struct.gnutar*, %struct.gnutar** %11, align 8
  %50 = getelementptr inbounds %struct.gnutar, %struct.gnutar* %49, i32 0, i32 11
  %51 = load %struct.archive_string_conv*, %struct.archive_string_conv** %50, align 8
  store %struct.archive_string_conv* %51, %struct.archive_string_conv** %12, align 8
  br label %52

52:                                               ; preds = %48, %44
  %53 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %54 = call i32* @archive_entry_hardlink(%struct.archive_entry* %53)
  %55 = icmp ne i32* %54, null
  br i1 %55, label %64, label %56

56:                                               ; preds = %52
  %57 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %58 = call i32* @archive_entry_symlink(%struct.archive_entry* %57)
  %59 = icmp ne i32* %58, null
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %62 = call i32 @archive_entry_filetype(%struct.archive_entry* %61)
  %63 = icmp eq i32 %62, 129
  br i1 %63, label %67, label %64

64:                                               ; preds = %60, %56, %52
  %65 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %66 = call i32 @archive_entry_set_size(%struct.archive_entry* %65, i64 0)
  br label %67

67:                                               ; preds = %64, %60
  %68 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %69 = call i32 @archive_entry_filetype(%struct.archive_entry* %68)
  %70 = icmp eq i32 132, %69
  br i1 %70, label %71, label %125

71:                                               ; preds = %67
  %72 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %73 = call i8* @archive_entry_pathname(%struct.archive_entry* %72)
  store i8* %73, i8** %14, align 8
  %74 = load i8*, i8** %14, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %124

76:                                               ; preds = %71
  %77 = load i8*, i8** %14, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 0
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %124

82:                                               ; preds = %76
  %83 = load i8*, i8** %14, align 8
  %84 = load i8*, i8** %14, align 8
  %85 = call i32 @strlen(i8* %84)
  %86 = sub nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %83, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp ne i32 %90, 47
  br i1 %91, label %92, label %124

92:                                               ; preds = %82
  %93 = bitcast %struct.archive_string* %16 to %struct.archive_wstring*
  %94 = call i32 @archive_string_init(%struct.archive_wstring* %93)
  %95 = load i8*, i8** %14, align 8
  %96 = call i32 @strlen(i8* %95)
  %97 = sext i32 %96 to i64
  store i64 %97, i64* %15, align 8
  %98 = bitcast %struct.archive_string* %16 to %struct.archive_wstring*
  %99 = load i64, i64* %15, align 8
  %100 = add i64 %99, 2
  %101 = call i32* @archive_string_ensure(%struct.archive_wstring* %98, i64 %100)
  %102 = icmp eq i32* %101, null
  br i1 %102, label %103, label %111

103:                                              ; preds = %92
  %104 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %105 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %104, i32 0, i32 0
  %106 = load i64, i64* @ENOMEM, align 8
  %107 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %105, i64 %106, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %108 = bitcast %struct.archive_string* %16 to %struct.archive_wstring*
  %109 = call i32 @archive_string_free(%struct.archive_wstring* %108)
  %110 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %110, i32* %3, align 4
  br label %498

111:                                              ; preds = %92
  %112 = bitcast %struct.archive_string* %16 to %struct.archive_wstring*
  %113 = load i8*, i8** %14, align 8
  %114 = load i64, i64* %15, align 8
  %115 = call i32 @archive_strncpy(%struct.archive_wstring* %112, i8* %113, i64 %114)
  %116 = bitcast %struct.archive_string* %16 to %struct.archive_wstring*
  %117 = call i32 @archive_strappend_char(%struct.archive_wstring* %116, i8 signext 47)
  %118 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %119 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %16, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %118, i32 %120)
  %122 = bitcast %struct.archive_string* %16 to %struct.archive_wstring*
  %123 = call i32 @archive_string_free(%struct.archive_wstring* %122)
  br label %124

124:                                              ; preds = %111, %82, %76, %71
  br label %125

125:                                              ; preds = %124, %67
  store %struct.archive_entry* null, %struct.archive_entry** %13, align 8
  %126 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %127 = load %struct.gnutar*, %struct.gnutar** %11, align 8
  %128 = getelementptr inbounds %struct.gnutar, %struct.gnutar* %127, i32 0, i32 1
  %129 = load %struct.gnutar*, %struct.gnutar** %11, align 8
  %130 = getelementptr inbounds %struct.gnutar, %struct.gnutar* %129, i32 0, i32 2
  %131 = load %struct.archive_string_conv*, %struct.archive_string_conv** %12, align 8
  %132 = call i32 @archive_entry_pathname_l(%struct.archive_entry* %126, i8** %128, i32* %130, %struct.archive_string_conv* %131)
  store i32 %132, i32* %7, align 4
  %133 = load i32, i32* %7, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %156

135:                                              ; preds = %125
  %136 = load i64, i64* @errno, align 8
  %137 = load i64, i64* @ENOMEM, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %145

139:                                              ; preds = %135
  %140 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %141 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %140, i32 0, i32 0
  %142 = load i64, i64* @ENOMEM, align 8
  %143 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %141, i64 %142, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %144 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %144, i32* %8, align 4
  br label %494

145:                                              ; preds = %135
  %146 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %147 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %146, i32 0, i32 0
  %148 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %149 = sext i32 %148 to i64
  %150 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %151 = call i8* @archive_entry_pathname(%struct.archive_entry* %150)
  %152 = load %struct.archive_string_conv*, %struct.archive_string_conv** %12, align 8
  %153 = call i32 @archive_string_conversion_charset_name(%struct.archive_string_conv* %152)
  %154 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %147, i64 %149, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %151, i32 %153)
  %155 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %155, i32* %9, align 4
  br label %156

156:                                              ; preds = %145, %125
  %157 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %158 = load %struct.gnutar*, %struct.gnutar** %11, align 8
  %159 = getelementptr inbounds %struct.gnutar, %struct.gnutar* %158, i32 0, i32 10
  %160 = load %struct.gnutar*, %struct.gnutar** %11, align 8
  %161 = getelementptr inbounds %struct.gnutar, %struct.gnutar* %160, i32 0, i32 9
  %162 = load %struct.archive_string_conv*, %struct.archive_string_conv** %12, align 8
  %163 = call i32 @archive_entry_uname_l(%struct.archive_entry* %157, i32* %159, i32* %161, %struct.archive_string_conv* %162)
  store i32 %163, i32* %7, align 4
  %164 = load i32, i32* %7, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %187

166:                                              ; preds = %156
  %167 = load i64, i64* @errno, align 8
  %168 = load i64, i64* @ENOMEM, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %176

170:                                              ; preds = %166
  %171 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %172 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %171, i32 0, i32 0
  %173 = load i64, i64* @ENOMEM, align 8
  %174 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %172, i64 %173, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %175 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %175, i32* %8, align 4
  br label %494

176:                                              ; preds = %166
  %177 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %178 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %177, i32 0, i32 0
  %179 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %180 = sext i32 %179 to i64
  %181 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %182 = call i32 @archive_entry_uname(%struct.archive_entry* %181)
  %183 = load %struct.archive_string_conv*, %struct.archive_string_conv** %12, align 8
  %184 = call i32 @archive_string_conversion_charset_name(%struct.archive_string_conv* %183)
  %185 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %178, i64 %180, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %182, i32 %184)
  %186 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %186, i32* %9, align 4
  br label %187

187:                                              ; preds = %176, %156
  %188 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %189 = load %struct.gnutar*, %struct.gnutar** %11, align 8
  %190 = getelementptr inbounds %struct.gnutar, %struct.gnutar* %189, i32 0, i32 8
  %191 = load %struct.gnutar*, %struct.gnutar** %11, align 8
  %192 = getelementptr inbounds %struct.gnutar, %struct.gnutar* %191, i32 0, i32 7
  %193 = load %struct.archive_string_conv*, %struct.archive_string_conv** %12, align 8
  %194 = call i32 @archive_entry_gname_l(%struct.archive_entry* %188, i32* %190, i32* %192, %struct.archive_string_conv* %193)
  store i32 %194, i32* %7, align 4
  %195 = load i32, i32* %7, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %218

197:                                              ; preds = %187
  %198 = load i64, i64* @errno, align 8
  %199 = load i64, i64* @ENOMEM, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %201, label %207

201:                                              ; preds = %197
  %202 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %203 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %202, i32 0, i32 0
  %204 = load i64, i64* @ENOMEM, align 8
  %205 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %203, i64 %204, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %206 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %206, i32* %8, align 4
  br label %494

207:                                              ; preds = %197
  %208 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %209 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %208, i32 0, i32 0
  %210 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %211 = sext i32 %210 to i64
  %212 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %213 = call i32 @archive_entry_gname(%struct.archive_entry* %212)
  %214 = load %struct.archive_string_conv*, %struct.archive_string_conv** %12, align 8
  %215 = call i32 @archive_string_conversion_charset_name(%struct.archive_string_conv* %214)
  %216 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %209, i64 %211, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %213, i32 %215)
  %217 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %217, i32* %9, align 4
  br label %218

218:                                              ; preds = %207, %187
  %219 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %220 = load %struct.gnutar*, %struct.gnutar** %11, align 8
  %221 = getelementptr inbounds %struct.gnutar, %struct.gnutar* %220, i32 0, i32 3
  %222 = load %struct.gnutar*, %struct.gnutar** %11, align 8
  %223 = getelementptr inbounds %struct.gnutar, %struct.gnutar* %222, i32 0, i32 4
  %224 = load %struct.archive_string_conv*, %struct.archive_string_conv** %12, align 8
  %225 = call i32 @archive_entry_hardlink_l(%struct.archive_entry* %219, i8** %221, i32* %223, %struct.archive_string_conv* %224)
  store i32 %225, i32* %7, align 4
  %226 = load i32, i32* %7, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %249

228:                                              ; preds = %218
  %229 = load i64, i64* @errno, align 8
  %230 = load i64, i64* @ENOMEM, align 8
  %231 = icmp eq i64 %229, %230
  br i1 %231, label %232, label %238

232:                                              ; preds = %228
  %233 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %234 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %233, i32 0, i32 0
  %235 = load i64, i64* @ENOMEM, align 8
  %236 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %234, i64 %235, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  %237 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %237, i32* %8, align 4
  br label %494

238:                                              ; preds = %228
  %239 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %240 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %239, i32 0, i32 0
  %241 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %242 = sext i32 %241 to i64
  %243 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %244 = call i32* @archive_entry_hardlink(%struct.archive_entry* %243)
  %245 = load %struct.archive_string_conv*, %struct.archive_string_conv** %12, align 8
  %246 = call i32 @archive_string_conversion_charset_name(%struct.archive_string_conv* %245)
  %247 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %240, i64 %242, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i32* %244, i32 %246)
  %248 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %248, i32* %9, align 4
  br label %249

249:                                              ; preds = %238, %218
  %250 = load %struct.gnutar*, %struct.gnutar** %11, align 8
  %251 = getelementptr inbounds %struct.gnutar, %struct.gnutar* %250, i32 0, i32 4
  %252 = load i32, i32* %251, align 8
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %286

254:                                              ; preds = %249
  %255 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %256 = load %struct.gnutar*, %struct.gnutar** %11, align 8
  %257 = getelementptr inbounds %struct.gnutar, %struct.gnutar* %256, i32 0, i32 3
  %258 = load %struct.gnutar*, %struct.gnutar** %11, align 8
  %259 = getelementptr inbounds %struct.gnutar, %struct.gnutar* %258, i32 0, i32 4
  %260 = load %struct.archive_string_conv*, %struct.archive_string_conv** %12, align 8
  %261 = call i32 @archive_entry_symlink_l(%struct.archive_entry* %255, i8** %257, i32* %259, %struct.archive_string_conv* %260)
  store i32 %261, i32* %7, align 4
  %262 = load i32, i32* %7, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %285

264:                                              ; preds = %254
  %265 = load i64, i64* @errno, align 8
  %266 = load i64, i64* @ENOMEM, align 8
  %267 = icmp eq i64 %265, %266
  br i1 %267, label %268, label %274

268:                                              ; preds = %264
  %269 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %270 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %269, i32 0, i32 0
  %271 = load i64, i64* @ENOMEM, align 8
  %272 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %270, i64 %271, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  %273 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %273, i32* %8, align 4
  br label %494

274:                                              ; preds = %264
  %275 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %276 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %275, i32 0, i32 0
  %277 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %278 = sext i32 %277 to i64
  %279 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %280 = call i32* @archive_entry_hardlink(%struct.archive_entry* %279)
  %281 = load %struct.archive_string_conv*, %struct.archive_string_conv** %12, align 8
  %282 = call i32 @archive_string_conversion_charset_name(%struct.archive_string_conv* %281)
  %283 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %276, i64 %278, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i32* %280, i32 %282)
  %284 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %284, i32* %9, align 4
  br label %285

285:                                              ; preds = %274, %254
  br label %286

286:                                              ; preds = %285, %249
  %287 = load %struct.gnutar*, %struct.gnutar** %11, align 8
  %288 = getelementptr inbounds %struct.gnutar, %struct.gnutar* %287, i32 0, i32 4
  %289 = load i32, i32* %288, align 8
  %290 = load i32, i32* @GNUTAR_linkname_size, align 4
  %291 = icmp sgt i32 %289, %290
  br i1 %291, label %292, label %352

292:                                              ; preds = %286
  %293 = load %struct.gnutar*, %struct.gnutar** %11, align 8
  %294 = getelementptr inbounds %struct.gnutar, %struct.gnutar* %293, i32 0, i32 4
  %295 = load i32, i32* %294, align 8
  %296 = add nsw i32 %295, 1
  %297 = sext i32 %296 to i64
  store i64 %297, i64* %17, align 8
  %298 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %299 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %298, i32 0, i32 0
  %300 = call %struct.archive_entry* @archive_entry_new2(i32* %299)
  store %struct.archive_entry* %300, %struct.archive_entry** %18, align 8
  %301 = load %struct.archive_entry*, %struct.archive_entry** %18, align 8
  %302 = call i32 @archive_entry_set_uname(%struct.archive_entry* %301, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %303 = load %struct.archive_entry*, %struct.archive_entry** %18, align 8
  %304 = call i32 @archive_entry_set_gname(%struct.archive_entry* %303, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %305 = load %struct.archive_entry*, %struct.archive_entry** %18, align 8
  %306 = call i32 @archive_entry_set_pathname(%struct.archive_entry* %305, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  %307 = load %struct.archive_entry*, %struct.archive_entry** %18, align 8
  %308 = load i64, i64* %17, align 8
  %309 = call i32 @archive_entry_set_size(%struct.archive_entry* %307, i64 %308)
  %310 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %311 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %312 = load %struct.archive_entry*, %struct.archive_entry** %18, align 8
  %313 = call i32 @archive_format_gnutar_header(%struct.archive_write* %310, i8* %311, %struct.archive_entry* %312, i32 75)
  store i32 %313, i32* %8, align 4
  %314 = load %struct.archive_entry*, %struct.archive_entry** %18, align 8
  %315 = call i32 @archive_entry_free(%struct.archive_entry* %314)
  %316 = load i32, i32* %8, align 4
  %317 = load i32, i32* @ARCHIVE_WARN, align 4
  %318 = icmp slt i32 %316, %317
  br i1 %318, label %319, label %320

319:                                              ; preds = %292
  br label %494

320:                                              ; preds = %292
  %321 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %322 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %323 = call i32 @__archive_write_output(%struct.archive_write* %321, i8* %322, i32 512)
  store i32 %323, i32* %8, align 4
  %324 = load i32, i32* %8, align 4
  %325 = load i32, i32* @ARCHIVE_WARN, align 4
  %326 = icmp slt i32 %324, %325
  br i1 %326, label %327, label %328

327:                                              ; preds = %320
  br label %494

328:                                              ; preds = %320
  %329 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %330 = load %struct.gnutar*, %struct.gnutar** %11, align 8
  %331 = getelementptr inbounds %struct.gnutar, %struct.gnutar* %330, i32 0, i32 3
  %332 = load i8*, i8** %331, align 8
  %333 = load i64, i64* %17, align 8
  %334 = trunc i64 %333 to i32
  %335 = call i32 @__archive_write_output(%struct.archive_write* %329, i8* %332, i32 %334)
  store i32 %335, i32* %8, align 4
  %336 = load i32, i32* %8, align 4
  %337 = load i32, i32* @ARCHIVE_WARN, align 4
  %338 = icmp slt i32 %336, %337
  br i1 %338, label %339, label %340

339:                                              ; preds = %328
  br label %494

340:                                              ; preds = %328
  %341 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %342 = load i64, i64* %17, align 8
  %343 = trunc i64 %342 to i32
  %344 = sub nsw i32 0, %343
  %345 = and i32 511, %344
  %346 = call i32 @__archive_write_nulls(%struct.archive_write* %341, i32 %345)
  store i32 %346, i32* %8, align 4
  %347 = load i32, i32* %8, align 4
  %348 = load i32, i32* @ARCHIVE_WARN, align 4
  %349 = icmp slt i32 %347, %348
  br i1 %349, label %350, label %351

350:                                              ; preds = %340
  br label %494

351:                                              ; preds = %340
  br label %352

352:                                              ; preds = %351, %286
  %353 = load %struct.gnutar*, %struct.gnutar** %11, align 8
  %354 = getelementptr inbounds %struct.gnutar, %struct.gnutar* %353, i32 0, i32 2
  %355 = load i32, i32* %354, align 8
  %356 = load i32, i32* @GNUTAR_name_size, align 4
  %357 = icmp sgt i32 %355, %356
  br i1 %357, label %358, label %419

358:                                              ; preds = %352
  %359 = load %struct.gnutar*, %struct.gnutar** %11, align 8
  %360 = getelementptr inbounds %struct.gnutar, %struct.gnutar* %359, i32 0, i32 1
  %361 = load i8*, i8** %360, align 8
  store i8* %361, i8** %19, align 8
  %362 = load %struct.gnutar*, %struct.gnutar** %11, align 8
  %363 = getelementptr inbounds %struct.gnutar, %struct.gnutar* %362, i32 0, i32 2
  %364 = load i32, i32* %363, align 8
  %365 = add nsw i32 %364, 1
  %366 = sext i32 %365 to i64
  store i64 %366, i64* %20, align 8
  %367 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %368 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %367, i32 0, i32 0
  %369 = call %struct.archive_entry* @archive_entry_new2(i32* %368)
  store %struct.archive_entry* %369, %struct.archive_entry** %21, align 8
  %370 = load %struct.archive_entry*, %struct.archive_entry** %21, align 8
  %371 = call i32 @archive_entry_set_uname(%struct.archive_entry* %370, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %372 = load %struct.archive_entry*, %struct.archive_entry** %21, align 8
  %373 = call i32 @archive_entry_set_gname(%struct.archive_entry* %372, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %374 = load %struct.archive_entry*, %struct.archive_entry** %21, align 8
  %375 = call i32 @archive_entry_set_pathname(%struct.archive_entry* %374, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  %376 = load %struct.archive_entry*, %struct.archive_entry** %21, align 8
  %377 = load i64, i64* %20, align 8
  %378 = call i32 @archive_entry_set_size(%struct.archive_entry* %376, i64 %377)
  %379 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %380 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %381 = load %struct.archive_entry*, %struct.archive_entry** %21, align 8
  %382 = call i32 @archive_format_gnutar_header(%struct.archive_write* %379, i8* %380, %struct.archive_entry* %381, i32 76)
  store i32 %382, i32* %8, align 4
  %383 = load %struct.archive_entry*, %struct.archive_entry** %21, align 8
  %384 = call i32 @archive_entry_free(%struct.archive_entry* %383)
  %385 = load i32, i32* %8, align 4
  %386 = load i32, i32* @ARCHIVE_WARN, align 4
  %387 = icmp slt i32 %385, %386
  br i1 %387, label %388, label %389

388:                                              ; preds = %358
  br label %494

389:                                              ; preds = %358
  %390 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %391 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %392 = call i32 @__archive_write_output(%struct.archive_write* %390, i8* %391, i32 512)
  store i32 %392, i32* %8, align 4
  %393 = load i32, i32* %8, align 4
  %394 = load i32, i32* @ARCHIVE_WARN, align 4
  %395 = icmp slt i32 %393, %394
  br i1 %395, label %396, label %397

396:                                              ; preds = %389
  br label %494

397:                                              ; preds = %389
  %398 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %399 = load i8*, i8** %19, align 8
  %400 = load i64, i64* %20, align 8
  %401 = trunc i64 %400 to i32
  %402 = call i32 @__archive_write_output(%struct.archive_write* %398, i8* %399, i32 %401)
  store i32 %402, i32* %8, align 4
  %403 = load i32, i32* %8, align 4
  %404 = load i32, i32* @ARCHIVE_WARN, align 4
  %405 = icmp slt i32 %403, %404
  br i1 %405, label %406, label %407

406:                                              ; preds = %397
  br label %494

407:                                              ; preds = %397
  %408 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %409 = load i64, i64* %20, align 8
  %410 = trunc i64 %409 to i32
  %411 = sub nsw i32 0, %410
  %412 = and i32 511, %411
  %413 = call i32 @__archive_write_nulls(%struct.archive_write* %408, i32 %412)
  store i32 %413, i32* %8, align 4
  %414 = load i32, i32* %8, align 4
  %415 = load i32, i32* @ARCHIVE_WARN, align 4
  %416 = icmp slt i32 %414, %415
  br i1 %416, label %417, label %418

417:                                              ; preds = %407
  br label %494

418:                                              ; preds = %407
  br label %419

419:                                              ; preds = %418, %352
  %420 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %421 = call i32* @archive_entry_hardlink(%struct.archive_entry* %420)
  %422 = icmp ne i32* %421, null
  br i1 %422, label %423, label %424

423:                                              ; preds = %419
  store i32 49, i32* %10, align 4
  br label %450

424:                                              ; preds = %419
  %425 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %426 = call i32 @archive_entry_filetype(%struct.archive_entry* %425)
  switch i32 %426, label %440 [
    i32 129, label %427
    i32 130, label %428
    i32 133, label %429
    i32 134, label %430
    i32 132, label %431
    i32 131, label %432
    i32 128, label %433
  ]

427:                                              ; preds = %424
  store i32 48, i32* %10, align 4
  br label %449

428:                                              ; preds = %424
  store i32 50, i32* %10, align 4
  br label %449

429:                                              ; preds = %424
  store i32 51, i32* %10, align 4
  br label %449

430:                                              ; preds = %424
  store i32 52, i32* %10, align 4
  br label %449

431:                                              ; preds = %424
  store i32 53, i32* %10, align 4
  br label %449

432:                                              ; preds = %424
  store i32 54, i32* %10, align 4
  br label %449

433:                                              ; preds = %424
  %434 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %435 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %434, i32 0, i32 0
  %436 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %437 = sext i32 %436 to i64
  %438 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %435, i64 %437, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0))
  %439 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %439, i32* %8, align 4
  br label %494

440:                                              ; preds = %424
  %441 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %442 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %441, i32 0, i32 0
  %443 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %444 = sext i32 %443 to i64
  %445 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %446 = call i64 @archive_entry_mode(%struct.archive_entry* %445)
  %447 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %442, i64 %444, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i64 0, i64 0), i64 %446)
  %448 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %448, i32* %8, align 4
  br label %494

449:                                              ; preds = %432, %431, %430, %429, %428, %427
  br label %450

450:                                              ; preds = %449, %423
  %451 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %452 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %453 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %454 = load i32, i32* %10, align 4
  %455 = call i32 @archive_format_gnutar_header(%struct.archive_write* %451, i8* %452, %struct.archive_entry* %453, i32 %454)
  store i32 %455, i32* %8, align 4
  %456 = load i32, i32* %8, align 4
  %457 = load i32, i32* @ARCHIVE_WARN, align 4
  %458 = icmp slt i32 %456, %457
  br i1 %458, label %459, label %460

459:                                              ; preds = %450
  br label %494

460:                                              ; preds = %450
  %461 = load i32, i32* %9, align 4
  %462 = load i32, i32* %8, align 4
  %463 = icmp slt i32 %461, %462
  br i1 %463, label %464, label %466

464:                                              ; preds = %460
  %465 = load i32, i32* %9, align 4
  store i32 %465, i32* %8, align 4
  br label %466

466:                                              ; preds = %464, %460
  %467 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %468 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %469 = call i32 @__archive_write_output(%struct.archive_write* %467, i8* %468, i32 512)
  store i32 %469, i32* %9, align 4
  %470 = load i32, i32* %9, align 4
  %471 = load i32, i32* @ARCHIVE_WARN, align 4
  %472 = icmp slt i32 %470, %471
  br i1 %472, label %473, label %475

473:                                              ; preds = %466
  %474 = load i32, i32* %9, align 4
  store i32 %474, i32* %8, align 4
  br label %494

475:                                              ; preds = %466
  %476 = load i32, i32* %9, align 4
  %477 = load i32, i32* %8, align 4
  %478 = icmp slt i32 %476, %477
  br i1 %478, label %479, label %481

479:                                              ; preds = %475
  %480 = load i32, i32* %9, align 4
  store i32 %480, i32* %8, align 4
  br label %481

481:                                              ; preds = %479, %475
  %482 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %483 = call i64 @archive_entry_size(%struct.archive_entry* %482)
  %484 = load %struct.gnutar*, %struct.gnutar** %11, align 8
  %485 = getelementptr inbounds %struct.gnutar, %struct.gnutar* %484, i32 0, i32 6
  store i64 %483, i64* %485, align 8
  %486 = load %struct.gnutar*, %struct.gnutar** %11, align 8
  %487 = getelementptr inbounds %struct.gnutar, %struct.gnutar* %486, i32 0, i32 6
  %488 = load i64, i64* %487, align 8
  %489 = trunc i64 %488 to i32
  %490 = sub nsw i32 0, %489
  %491 = and i32 511, %490
  %492 = load %struct.gnutar*, %struct.gnutar** %11, align 8
  %493 = getelementptr inbounds %struct.gnutar, %struct.gnutar* %492, i32 0, i32 5
  store i32 %491, i32* %493, align 4
  br label %494

494:                                              ; preds = %481, %473, %459, %440, %433, %417, %406, %396, %388, %350, %339, %327, %319, %268, %232, %201, %170, %139
  %495 = load %struct.archive_entry*, %struct.archive_entry** %13, align 8
  %496 = call i32 @archive_entry_free(%struct.archive_entry* %495)
  %497 = load i32, i32* %8, align 4
  store i32 %497, i32* %3, align 4
  br label %498

498:                                              ; preds = %494, %103
  %499 = load i32, i32* %3, align 4
  ret i32 %499
}

declare dso_local %struct.archive_string_conv* @archive_string_default_conversion_for_write(i32*) #1

declare dso_local i32* @archive_entry_hardlink(%struct.archive_entry*) #1

declare dso_local i32* @archive_entry_symlink(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_filetype(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_set_size(%struct.archive_entry*, i64) #1

declare dso_local i8* @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @archive_string_init(%struct.archive_wstring*) #1

declare dso_local i32* @archive_string_ensure(%struct.archive_wstring*, i64) #1

declare dso_local i32 @archive_set_error(i32*, i64, i8*, ...) #1

declare dso_local i32 @archive_string_free(%struct.archive_wstring*) #1

declare dso_local i32 @archive_strncpy(%struct.archive_wstring*, i8*, i64) #1

declare dso_local i32 @archive_strappend_char(%struct.archive_wstring*, i8 signext) #1

declare dso_local i32 @archive_entry_copy_pathname(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_pathname_l(%struct.archive_entry*, i8**, i32*, %struct.archive_string_conv*) #1

declare dso_local i32 @archive_string_conversion_charset_name(%struct.archive_string_conv*) #1

declare dso_local i32 @archive_entry_uname_l(%struct.archive_entry*, i32*, i32*, %struct.archive_string_conv*) #1

declare dso_local i32 @archive_entry_uname(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_gname_l(%struct.archive_entry*, i32*, i32*, %struct.archive_string_conv*) #1

declare dso_local i32 @archive_entry_gname(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_hardlink_l(%struct.archive_entry*, i8**, i32*, %struct.archive_string_conv*) #1

declare dso_local i32 @archive_entry_symlink_l(%struct.archive_entry*, i8**, i32*, %struct.archive_string_conv*) #1

declare dso_local %struct.archive_entry* @archive_entry_new2(i32*) #1

declare dso_local i32 @archive_entry_set_uname(%struct.archive_entry*, i8*) #1

declare dso_local i32 @archive_entry_set_gname(%struct.archive_entry*, i8*) #1

declare dso_local i32 @archive_entry_set_pathname(%struct.archive_entry*, i8*) #1

declare dso_local i32 @archive_format_gnutar_header(%struct.archive_write*, i8*, %struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_free(%struct.archive_entry*) #1

declare dso_local i32 @__archive_write_output(%struct.archive_write*, i8*, i32) #1

declare dso_local i32 @__archive_write_nulls(%struct.archive_write*, i32) #1

declare dso_local i64 @archive_entry_mode(%struct.archive_entry*) #1

declare dso_local i64 @archive_entry_size(%struct.archive_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
