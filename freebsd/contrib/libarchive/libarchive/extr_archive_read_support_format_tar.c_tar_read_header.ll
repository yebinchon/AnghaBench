; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_tar.c_tar_read_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_tar.c_tar_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8* }
%struct.tar = type { i32, i32, i64, i64, i32, i64, i32 }
%struct.archive_entry = type { i32 }
%struct.archive_entry_header_ustar = type { i32*, i32 }
%struct.archive_entry_header_gnutar = type { i32 }

@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Truncated tar archive\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_FORMAT_TAR = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"tar\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Damaged tar archive\00", align 1
@ARCHIVE_RETRY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Too many special headers\00", align 1
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@ARCHIVE_FORMAT_TAR_PAX_INTERCHANGE = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [12 x i8] c"Solaris tar\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"POSIX pax interchange format\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"POSIX pax interchange format (Sun variant)\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"ustar  \00\00", align 1
@ARCHIVE_FORMAT_TAR_GNUTAR = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [15 x i8] c"GNU tar format\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"ustar\00", align 1
@ARCHIVE_FORMAT_TAR_USTAR = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [19 x i8] c"POSIX ustar format\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"tar (non-POSIX)\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [36 x i8] c"Unrecognized GNU sparse file format\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.tar*, %struct.archive_entry*, i64*)* @tar_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tar_read_header(%struct.archive_read* %0, %struct.tar* %1, %struct.archive_entry* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive_read*, align 8
  %7 = alloca %struct.tar*, align 8
  %8 = alloca %struct.archive_entry*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.archive_entry_header_ustar*, align 8
  %15 = alloca %struct.archive_entry_header_gnutar*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %6, align 8
  store %struct.tar* %1, %struct.tar** %7, align 8
  store %struct.archive_entry* %2, %struct.archive_entry** %8, align 8
  store i64* %3, i64** %9, align 8
  store i32 0, i32* %12, align 4
  br label %18

18:                                               ; preds = %99, %4
  %19 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %20 = load i64*, i64** %9, align 8
  %21 = call i32 @tar_flush_unconsumed(%struct.archive_read* %19, i64* %20)
  %22 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %23 = call i8* @__archive_read_ahead(%struct.archive_read* %22, i32 512, i32* %10)
  store i8* %23, i8** %13, align 8
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %5, align 4
  br label %401

28:                                               ; preds = %18
  %29 = load i32, i32* %10, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %32, i32* %5, align 4
  br label %401

33:                                               ; preds = %28
  %34 = load i32, i32* %10, align 4
  %35 = icmp slt i32 %34, 512
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %38 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %37, i32 0, i32 0
  %39 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %40 = call i32 @archive_set_error(%struct.TYPE_3__* %38, i32 %39, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %41, i32* %5, align 4
  br label %401

42:                                               ; preds = %33
  %43 = load i64*, i64** %9, align 8
  store i64 512, i64* %43, align 8
  %44 = load i8*, i8** %13, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %42
  %50 = load i8*, i8** %13, align 8
  %51 = call i64 @archive_block_is_null(i8* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %49, %42
  br label %100

54:                                               ; preds = %49
  %55 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %56 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = icmp eq i8* %58, null
  br i1 %59, label %60, label %68

60:                                               ; preds = %54
  %61 = load i8*, i8** @ARCHIVE_FORMAT_TAR, align 8
  %62 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %63 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  store i8* %61, i8** %64, align 8
  %65 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %66 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %67, align 8
  br label %68

68:                                               ; preds = %60, %54
  %69 = load %struct.tar*, %struct.tar** %7, align 8
  %70 = getelementptr inbounds %struct.tar, %struct.tar* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %99, label %73

73:                                               ; preds = %68
  %74 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %75 = load i64*, i64** %9, align 8
  %76 = call i32 @tar_flush_unconsumed(%struct.archive_read* %74, i64* %75)
  %77 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %78 = call i8* @__archive_read_ahead(%struct.archive_read* %77, i32 512, i32* null)
  store i8* %78, i8** %13, align 8
  %79 = load i8*, i8** %13, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %94

81:                                               ; preds = %73
  %82 = load i8*, i8** %13, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 0
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %81
  %88 = load i8*, i8** %13, align 8
  %89 = call i64 @archive_block_is_null(i8* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  %92 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %93 = call i32 @__archive_read_consume(%struct.archive_read* %92, i32 512)
  br label %94

94:                                               ; preds = %91, %87, %81, %73
  %95 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %96 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %95, i32 0, i32 0
  %97 = call i32 @archive_clear_error(%struct.TYPE_3__* %96)
  %98 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %98, i32* %5, align 4
  br label %401

99:                                               ; preds = %68
  br label %18

100:                                              ; preds = %53
  %101 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %102 = load i8*, i8** %13, align 8
  %103 = call i32 @checksum(%struct.archive_read* %101, i8* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %114, label %105

105:                                              ; preds = %100
  %106 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %107 = load i64*, i64** %9, align 8
  %108 = call i32 @tar_flush_unconsumed(%struct.archive_read* %106, i64* %107)
  %109 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %110 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %109, i32 0, i32 0
  %111 = load i32, i32* @EINVAL, align 4
  %112 = call i32 @archive_set_error(%struct.TYPE_3__* %110, i32 %111, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %113 = load i32, i32* @ARCHIVE_RETRY, align 4
  store i32 %113, i32* %5, align 4
  br label %401

114:                                              ; preds = %100
  %115 = load %struct.tar*, %struct.tar** %7, align 8
  %116 = getelementptr inbounds %struct.tar, %struct.tar* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 8
  %119 = icmp sgt i32 %118, 32
  br i1 %119, label %120, label %129

120:                                              ; preds = %114
  %121 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %122 = load i64*, i64** %9, align 8
  %123 = call i32 @tar_flush_unconsumed(%struct.archive_read* %121, i64* %122)
  %124 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %125 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %124, i32 0, i32 0
  %126 = load i32, i32* @EINVAL, align 4
  %127 = call i32 @archive_set_error(%struct.TYPE_3__* %125, i32 %126, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %128 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %128, i32* %5, align 4
  br label %401

129:                                              ; preds = %114
  %130 = load i8*, i8** %13, align 8
  %131 = bitcast i8* %130 to %struct.archive_entry_header_ustar*
  store %struct.archive_entry_header_ustar* %131, %struct.archive_entry_header_ustar** %14, align 8
  %132 = load %struct.archive_entry_header_ustar*, %struct.archive_entry_header_ustar** %14, align 8
  %133 = getelementptr inbounds %struct.archive_entry_header_ustar, %struct.archive_entry_header_ustar* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  %136 = load i32, i32* %135, align 4
  switch i32 %136, label %225 [
    i32 65, label %137
    i32 103, label %151
    i32 75, label %171
    i32 76, label %178
    i32 86, label %185
    i32 88, label %197
    i32 120, label %211
  ]

137:                                              ; preds = %129
  %138 = load i8*, i8** @ARCHIVE_FORMAT_TAR_PAX_INTERCHANGE, align 8
  %139 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %140 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 1
  store i8* %138, i8** %141, align 8
  %142 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %143 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8** %144, align 8
  %145 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %146 = load %struct.tar*, %struct.tar** %7, align 8
  %147 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %148 = load i8*, i8** %13, align 8
  %149 = load i64*, i64** %9, align 8
  %150 = call i32 @header_Solaris_ACL(%struct.archive_read* %145, %struct.tar* %146, %struct.archive_entry* %147, i8* %148, i64* %149)
  store i32 %150, i32* %11, align 4
  br label %289

151:                                              ; preds = %129
  %152 = load i8*, i8** @ARCHIVE_FORMAT_TAR_PAX_INTERCHANGE, align 8
  %153 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %154 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 1
  store i8* %152, i8** %155, align 8
  %156 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %157 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 0
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i8** %158, align 8
  %159 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %160 = load %struct.tar*, %struct.tar** %7, align 8
  %161 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %162 = load i8*, i8** %13, align 8
  %163 = load i64*, i64** %9, align 8
  %164 = call i32 @header_pax_global(%struct.archive_read* %159, %struct.tar* %160, %struct.archive_entry* %161, i8* %162, i64* %163)
  store i32 %164, i32* %11, align 4
  %165 = load i32, i32* %11, align 4
  %166 = load i32, i32* @ARCHIVE_EOF, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %170

168:                                              ; preds = %151
  %169 = load i32, i32* %11, align 4
  store i32 %169, i32* %5, align 4
  br label %401

170:                                              ; preds = %151
  br label %289

171:                                              ; preds = %129
  %172 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %173 = load %struct.tar*, %struct.tar** %7, align 8
  %174 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %175 = load i8*, i8** %13, align 8
  %176 = load i64*, i64** %9, align 8
  %177 = call i32 @header_longlink(%struct.archive_read* %172, %struct.tar* %173, %struct.archive_entry* %174, i8* %175, i64* %176)
  store i32 %177, i32* %11, align 4
  br label %289

178:                                              ; preds = %129
  %179 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %180 = load %struct.tar*, %struct.tar** %7, align 8
  %181 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %182 = load i8*, i8** %13, align 8
  %183 = load i64*, i64** %9, align 8
  %184 = call i32 @header_longname(%struct.archive_read* %179, %struct.tar* %180, %struct.archive_entry* %181, i8* %182, i64* %183)
  store i32 %184, i32* %11, align 4
  br label %289

185:                                              ; preds = %129
  %186 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %187 = load %struct.tar*, %struct.tar** %7, align 8
  %188 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %189 = load i8*, i8** %13, align 8
  %190 = load i64*, i64** %9, align 8
  %191 = call i32 @header_volume(%struct.archive_read* %186, %struct.tar* %187, %struct.archive_entry* %188, i8* %189, i64* %190)
  store i32 %191, i32* %11, align 4
  %192 = load i32, i32* %11, align 4
  %193 = load i32, i32* @ARCHIVE_EOF, align 4
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %195, label %196

195:                                              ; preds = %185
  store i32 1, i32* %12, align 4
  br label %196

196:                                              ; preds = %195, %185
  br label %289

197:                                              ; preds = %129
  %198 = load i8*, i8** @ARCHIVE_FORMAT_TAR_PAX_INTERCHANGE, align 8
  %199 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %200 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 1
  store i8* %198, i8** %201, align 8
  %202 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %203 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 0
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i8** %204, align 8
  %205 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %206 = load %struct.tar*, %struct.tar** %7, align 8
  %207 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %208 = load i8*, i8** %13, align 8
  %209 = load i64*, i64** %9, align 8
  %210 = call i32 @header_pax_extensions(%struct.archive_read* %205, %struct.tar* %206, %struct.archive_entry* %207, i8* %208, i64* %209)
  store i32 %210, i32* %11, align 4
  br label %289

211:                                              ; preds = %129
  %212 = load i8*, i8** @ARCHIVE_FORMAT_TAR_PAX_INTERCHANGE, align 8
  %213 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %214 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i32 0, i32 1
  store i8* %212, i8** %215, align 8
  %216 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %217 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 0
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i8** %218, align 8
  %219 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %220 = load %struct.tar*, %struct.tar** %7, align 8
  %221 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %222 = load i8*, i8** %13, align 8
  %223 = load i64*, i64** %9, align 8
  %224 = call i32 @header_pax_extensions(%struct.archive_read* %219, %struct.tar* %220, %struct.archive_entry* %221, i8* %222, i64* %223)
  store i32 %224, i32* %11, align 4
  br label %289

225:                                              ; preds = %129
  %226 = load i8*, i8** %13, align 8
  %227 = bitcast i8* %226 to %struct.archive_entry_header_gnutar*
  store %struct.archive_entry_header_gnutar* %227, %struct.archive_entry_header_gnutar** %15, align 8
  %228 = load %struct.archive_entry_header_gnutar*, %struct.archive_entry_header_gnutar** %15, align 8
  %229 = getelementptr inbounds %struct.archive_entry_header_gnutar, %struct.archive_entry_header_gnutar* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @memcmp(i32 %230, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 8)
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %247

233:                                              ; preds = %225
  %234 = load i8*, i8** @ARCHIVE_FORMAT_TAR_GNUTAR, align 8
  %235 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %236 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %236, i32 0, i32 1
  store i8* %234, i8** %237, align 8
  %238 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %239 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %239, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8** %240, align 8
  %241 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %242 = load %struct.tar*, %struct.tar** %7, align 8
  %243 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %244 = load i8*, i8** %13, align 8
  %245 = load i64*, i64** %9, align 8
  %246 = call i32 @header_gnutar(%struct.archive_read* %241, %struct.tar* %242, %struct.archive_entry* %243, i8* %244, i64* %245)
  store i32 %246, i32* %11, align 4
  br label %288

247:                                              ; preds = %225
  %248 = load %struct.archive_entry_header_ustar*, %struct.archive_entry_header_ustar** %14, align 8
  %249 = getelementptr inbounds %struct.archive_entry_header_ustar, %struct.archive_entry_header_ustar* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 8
  %251 = call i32 @memcmp(i32 %250, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 5)
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %274

253:                                              ; preds = %247
  %254 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %255 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %255, i32 0, i32 1
  %257 = load i8*, i8** %256, align 8
  %258 = load i8*, i8** @ARCHIVE_FORMAT_TAR_PAX_INTERCHANGE, align 8
  %259 = icmp ne i8* %257, %258
  br i1 %259, label %260, label %268

260:                                              ; preds = %253
  %261 = load i8*, i8** @ARCHIVE_FORMAT_TAR_USTAR, align 8
  %262 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %263 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %263, i32 0, i32 1
  store i8* %261, i8** %264, align 8
  %265 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %266 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %266, i32 0, i32 0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i8** %267, align 8
  br label %268

268:                                              ; preds = %260, %253
  %269 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %270 = load %struct.tar*, %struct.tar** %7, align 8
  %271 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %272 = load i8*, i8** %13, align 8
  %273 = call i32 @header_ustar(%struct.archive_read* %269, %struct.tar* %270, %struct.archive_entry* %271, i8* %272)
  store i32 %273, i32* %11, align 4
  br label %287

274:                                              ; preds = %247
  %275 = load i8*, i8** @ARCHIVE_FORMAT_TAR, align 8
  %276 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %277 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %277, i32 0, i32 1
  store i8* %275, i8** %278, align 8
  %279 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %280 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %280, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i8** %281, align 8
  %282 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %283 = load %struct.tar*, %struct.tar** %7, align 8
  %284 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %285 = load i8*, i8** %13, align 8
  %286 = call i32 @header_old_tar(%struct.archive_read* %282, %struct.tar* %283, %struct.archive_entry* %284, i8* %285)
  store i32 %286, i32* %11, align 4
  br label %287

287:                                              ; preds = %274, %268
  br label %288

288:                                              ; preds = %287, %233
  br label %289

289:                                              ; preds = %288, %211, %197, %196, %178, %171, %170, %137
  %290 = load i32, i32* %11, align 4
  %291 = load i32, i32* @ARCHIVE_FATAL, align 4
  %292 = icmp eq i32 %290, %291
  br i1 %292, label %293, label %295

293:                                              ; preds = %289
  %294 = load i32, i32* %11, align 4
  store i32 %294, i32* %5, align 4
  br label %401

295:                                              ; preds = %289
  %296 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %297 = load i64*, i64** %9, align 8
  %298 = call i32 @tar_flush_unconsumed(%struct.archive_read* %296, i64* %297)
  store i8* null, i8** %13, align 8
  store %struct.archive_entry_header_ustar* null, %struct.archive_entry_header_ustar** %14, align 8
  %299 = load %struct.tar*, %struct.tar** %7, align 8
  %300 = getelementptr inbounds %struct.tar, %struct.tar* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = add nsw i32 %301, -1
  store i32 %302, i32* %300, align 8
  %303 = load i32, i32* %11, align 4
  %304 = load i32, i32* @ARCHIVE_WARN, align 4
  %305 = icmp eq i32 %303, %304
  br i1 %305, label %310, label %306

306:                                              ; preds = %295
  %307 = load i32, i32* %11, align 4
  %308 = load i32, i32* @ARCHIVE_OK, align 4
  %309 = icmp eq i32 %307, %308
  br i1 %309, label %310, label %333

310:                                              ; preds = %306, %295
  %311 = load %struct.tar*, %struct.tar** %7, align 8
  %312 = getelementptr inbounds %struct.tar, %struct.tar* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %315, label %333

315:                                              ; preds = %310
  %316 = load %struct.tar*, %struct.tar** %7, align 8
  %317 = getelementptr inbounds %struct.tar, %struct.tar* %316, i32 0, i32 5
  %318 = load i64, i64* %317, align 8
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %320, label %333

320:                                              ; preds = %315
  %321 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %322 = load %struct.tar*, %struct.tar** %7, align 8
  %323 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %324 = load i8*, i8** %13, align 8
  %325 = load i64*, i64** %9, align 8
  %326 = call i32 @read_mac_metadata_blob(%struct.archive_read* %321, %struct.tar* %322, %struct.archive_entry* %323, i8* %324, i64* %325)
  store i32 %326, i32* %16, align 4
  %327 = load i32, i32* %16, align 4
  %328 = load i32, i32* %11, align 4
  %329 = icmp slt i32 %327, %328
  br i1 %329, label %330, label %332

330:                                              ; preds = %320
  %331 = load i32, i32* %16, align 4
  store i32 %331, i32* %11, align 4
  br label %332

332:                                              ; preds = %330, %320
  br label %333

333:                                              ; preds = %332, %315, %310, %306
  %334 = load i32, i32* %11, align 4
  %335 = load i32, i32* @ARCHIVE_WARN, align 4
  %336 = icmp eq i32 %334, %335
  br i1 %336, label %341, label %337

337:                                              ; preds = %333
  %338 = load i32, i32* %11, align 4
  %339 = load i32, i32* @ARCHIVE_OK, align 4
  %340 = icmp eq i32 %338, %339
  br i1 %340, label %341, label %384

341:                                              ; preds = %337, %333
  %342 = load %struct.tar*, %struct.tar** %7, align 8
  %343 = getelementptr inbounds %struct.tar, %struct.tar* %342, i32 0, i32 3
  %344 = load i64, i64* %343, align 8
  %345 = icmp ne i64 %344, 0
  br i1 %345, label %346, label %382

346:                                              ; preds = %341
  %347 = load %struct.tar*, %struct.tar** %7, align 8
  %348 = getelementptr inbounds %struct.tar, %struct.tar* %347, i32 0, i32 1
  %349 = load i32, i32* %348, align 4
  %350 = icmp eq i32 %349, 1
  br i1 %350, label %351, label %373

351:                                              ; preds = %346
  %352 = load %struct.tar*, %struct.tar** %7, align 8
  %353 = getelementptr inbounds %struct.tar, %struct.tar* %352, i32 0, i32 2
  %354 = load i64, i64* %353, align 8
  %355 = icmp eq i64 %354, 0
  br i1 %355, label %356, label %373

356:                                              ; preds = %351
  %357 = load %struct.tar*, %struct.tar** %7, align 8
  %358 = getelementptr inbounds %struct.tar, %struct.tar* %357, i32 0, i32 3
  store i64 0, i64* %358, align 8
  %359 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %360 = load %struct.tar*, %struct.tar** %7, align 8
  %361 = load i64*, i64** %9, align 8
  %362 = call i32 @gnu_sparse_10_read(%struct.archive_read* %359, %struct.tar* %360, i64* %361)
  store i32 %362, i32* %17, align 4
  %363 = load i32, i32* %17, align 4
  %364 = icmp slt i32 %363, 0
  br i1 %364, label %365, label %367

365:                                              ; preds = %356
  %366 = load i32, i32* %17, align 4
  store i32 %366, i32* %5, align 4
  br label %401

367:                                              ; preds = %356
  %368 = load i32, i32* %17, align 4
  %369 = load %struct.tar*, %struct.tar** %7, align 8
  %370 = getelementptr inbounds %struct.tar, %struct.tar* %369, i32 0, i32 4
  %371 = load i32, i32* %370, align 8
  %372 = sub nsw i32 %371, %368
  store i32 %372, i32* %370, align 8
  br label %379

373:                                              ; preds = %351, %346
  %374 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %375 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %374, i32 0, i32 0
  %376 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %377 = call i32 @archive_set_error(%struct.TYPE_3__* %375, i32 %376, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0))
  %378 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %378, i32* %5, align 4
  br label %401

379:                                              ; preds = %367
  %380 = load %struct.tar*, %struct.tar** %7, align 8
  %381 = getelementptr inbounds %struct.tar, %struct.tar* %380, i32 0, i32 3
  store i64 0, i64* %381, align 8
  br label %382

382:                                              ; preds = %379, %341
  %383 = load i32, i32* %11, align 4
  store i32 %383, i32* %5, align 4
  br label %401

384:                                              ; preds = %337
  %385 = load i32, i32* %11, align 4
  %386 = load i32, i32* @ARCHIVE_EOF, align 4
  %387 = icmp eq i32 %385, %386
  br i1 %387, label %388, label %399

388:                                              ; preds = %384
  %389 = load i32, i32* %12, align 4
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %396, label %391

391:                                              ; preds = %388
  %392 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %393 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %392, i32 0, i32 0
  %394 = load i32, i32* @EINVAL, align 4
  %395 = call i32 @archive_set_error(%struct.TYPE_3__* %393, i32 %394, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %398

396:                                              ; preds = %388
  %397 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %397, i32* %5, align 4
  br label %401

398:                                              ; preds = %391
  br label %399

399:                                              ; preds = %398, %384
  %400 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %400, i32* %5, align 4
  br label %401

401:                                              ; preds = %399, %396, %382, %373, %365, %293, %168, %120, %105, %94, %36, %31, %26
  %402 = load i32, i32* %5, align 4
  ret i32 %402
}

declare dso_local i32 @tar_flush_unconsumed(%struct.archive_read*, i64*) #1

declare dso_local i8* @__archive_read_ahead(%struct.archive_read*, i32, i32*) #1

declare dso_local i32 @archive_set_error(%struct.TYPE_3__*, i32, i8*) #1

declare dso_local i64 @archive_block_is_null(i8*) #1

declare dso_local i32 @__archive_read_consume(%struct.archive_read*, i32) #1

declare dso_local i32 @archive_clear_error(%struct.TYPE_3__*) #1

declare dso_local i32 @checksum(%struct.archive_read*, i8*) #1

declare dso_local i32 @header_Solaris_ACL(%struct.archive_read*, %struct.tar*, %struct.archive_entry*, i8*, i64*) #1

declare dso_local i32 @header_pax_global(%struct.archive_read*, %struct.tar*, %struct.archive_entry*, i8*, i64*) #1

declare dso_local i32 @header_longlink(%struct.archive_read*, %struct.tar*, %struct.archive_entry*, i8*, i64*) #1

declare dso_local i32 @header_longname(%struct.archive_read*, %struct.tar*, %struct.archive_entry*, i8*, i64*) #1

declare dso_local i32 @header_volume(%struct.archive_read*, %struct.tar*, %struct.archive_entry*, i8*, i64*) #1

declare dso_local i32 @header_pax_extensions(%struct.archive_read*, %struct.tar*, %struct.archive_entry*, i8*, i64*) #1

declare dso_local i32 @memcmp(i32, i8*, i32) #1

declare dso_local i32 @header_gnutar(%struct.archive_read*, %struct.tar*, %struct.archive_entry*, i8*, i64*) #1

declare dso_local i32 @header_ustar(%struct.archive_read*, %struct.tar*, %struct.archive_entry*, i8*) #1

declare dso_local i32 @header_old_tar(%struct.archive_read*, %struct.tar*, %struct.archive_entry*, i8*) #1

declare dso_local i32 @read_mac_metadata_blob(%struct.archive_read*, %struct.tar*, %struct.archive_entry*, i8*, i64*) #1

declare dso_local i32 @gnu_sparse_10_read(%struct.archive_read*, %struct.tar*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
