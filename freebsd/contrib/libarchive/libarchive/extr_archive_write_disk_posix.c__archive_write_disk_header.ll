; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_disk_posix.c__archive_write_disk_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_disk_posix.c__archive_write_disk_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }
%struct.archive_write_disk = type { i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, %struct.TYPE_7__, %struct.archive_entry*, i32, %struct.TYPE_6__, i32, i32, i64, i64, i32*, i32* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i8* }
%struct.fixup_entry = type { i32, i32, i64, i32*, i32, i64, i64, i32, i32, i64, i32 }

@ARCHIVE_WRITE_DISK_MAGIC = common dso_local global i32 0, align 4
@ARCHIVE_STATE_HEADER = common dso_local global i32 0, align 4
@ARCHIVE_STATE_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"archive_write_disk_header\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@TODO_MODE_BASE = common dso_local global i32 0, align 4
@ARCHIVE_EXTRACT_PERM = common dso_local global i32 0, align 4
@TODO_MODE_FORCE = common dso_local global i32 0, align 4
@S_ISGID = common dso_local global i32 0, align 4
@TODO_SGID = common dso_local global i32 0, align 4
@TODO_SGID_CHECK = common dso_local global i32 0, align 4
@S_ISUID = common dso_local global i32 0, align 4
@TODO_SUID = common dso_local global i32 0, align 4
@TODO_SUID_CHECK = common dso_local global i32 0, align 4
@S_ISVTX = common dso_local global i32 0, align 4
@ARCHIVE_EXTRACT_OWNER = common dso_local global i32 0, align 4
@TODO_OWNER = common dso_local global i32 0, align 4
@ARCHIVE_EXTRACT_TIME = common dso_local global i32 0, align 4
@TODO_TIMES = common dso_local global i32 0, align 4
@ARCHIVE_EXTRACT_ACL = common dso_local global i32 0, align 4
@AE_IFDIR = common dso_local global i64 0, align 8
@TODO_ACLS = common dso_local global i32 0, align 4
@ARCHIVE_EXTRACT_MAC_METADATA = common dso_local global i32 0, align 4
@TODO_MAC_METADATA = common dso_local global i32 0, align 4
@ARCHIVE_EXTRACT_XATTR = common dso_local global i32 0, align 4
@TODO_XATTR = common dso_local global i32 0, align 4
@ARCHIVE_EXTRACT_FFLAGS = common dso_local global i32 0, align 4
@TODO_FFLAGS = common dso_local global i32 0, align 4
@ARCHIVE_EXTRACT_SECURE_SYMLINKS = common dso_local global i32 0, align 4
@TODO_MODE = common dso_local global i32 0, align 4
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@AE_IFMT = common dso_local global i32 0, align 4
@AE_IFREG = common dso_local global i32 0, align 4
@ARCHIVE_ENTRY_ACL_TYPE_NFS4 = common dso_local global i32 0, align 4
@ARCHIVE_EXTRACT_HFS_COMPRESSION_FORCED = common dso_local global i32 0, align 4
@ARCHIVE_EXTRACT_NO_HFS_COMPRESSION = common dso_local global i32 0, align 4
@TODO_APPLEDOUBLE = common dso_local global i32 0, align 4
@TODO_HFS_COMPRESSION = common dso_local global i32 0, align 4
@UF_COMPRESSED = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive*, %struct.archive_entry*)* @_archive_write_disk_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_archive_write_disk_header(%struct.archive* %0, %struct.archive_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive*, align 8
  %5 = alloca %struct.archive_entry*, align 8
  %6 = alloca %struct.archive_write_disk*, align 8
  %7 = alloca %struct.fixup_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.archive* %0, %struct.archive** %4, align 8
  store %struct.archive_entry* %1, %struct.archive_entry** %5, align 8
  %12 = load %struct.archive*, %struct.archive** %4, align 8
  %13 = bitcast %struct.archive* %12 to %struct.archive_write_disk*
  store %struct.archive_write_disk* %13, %struct.archive_write_disk** %6, align 8
  %14 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %15 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %14, i32 0, i32 10
  %16 = load i32, i32* @ARCHIVE_WRITE_DISK_MAGIC, align 4
  %17 = load i32, i32* @ARCHIVE_STATE_HEADER, align 4
  %18 = load i32, i32* @ARCHIVE_STATE_DATA, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @archive_check_magic(%struct.TYPE_7__* %15, i32 %16, i32 %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %22 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %21, i32 0, i32 10
  %23 = call i32 @archive_clear_error(%struct.TYPE_7__* %22)
  %24 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %25 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %24, i32 0, i32 10
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @ARCHIVE_STATE_DATA, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %2
  %32 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %33 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %32, i32 0, i32 10
  %34 = call i32 @_archive_write_disk_finish_entry(%struct.TYPE_7__* %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @ARCHIVE_FATAL, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %3, align 4
  br label %574

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40, %2
  %42 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %43 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %42, i32 0, i32 19
  store i32* null, i32** %43, align 8
  %44 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %45 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %44, i32 0, i32 18
  store i32* null, i32** %45, align 8
  %46 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %47 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  %48 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %49 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %48, i32 0, i32 11
  %50 = load %struct.archive_entry*, %struct.archive_entry** %49, align 8
  %51 = icmp ne %struct.archive_entry* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %41
  %53 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %54 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %53, i32 0, i32 11
  %55 = load %struct.archive_entry*, %struct.archive_entry** %54, align 8
  %56 = call i32 @archive_entry_free(%struct.archive_entry* %55)
  %57 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %58 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %57, i32 0, i32 11
  store %struct.archive_entry* null, %struct.archive_entry** %58, align 8
  br label %59

59:                                               ; preds = %52, %41
  %60 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %61 = call %struct.archive_entry* @archive_entry_clone(%struct.archive_entry* %60)
  %62 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %63 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %62, i32 0, i32 11
  store %struct.archive_entry* %61, %struct.archive_entry** %63, align 8
  %64 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %65 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %64, i32 0, i32 1
  store i32 -1, i32* %65, align 4
  %66 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %67 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %66, i32 0, i32 17
  store i64 0, i64* %67, align 8
  %68 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %69 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %68, i32 0, i32 16
  store i64 0, i64* %69, align 8
  %70 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %71 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %70, i32 0, i32 2
  store i32 -1, i32* %71, align 8
  %72 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %73 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %72, i32 0, i32 14
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %76 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %75, i32 0, i32 15
  store i32 %74, i32* %76, align 4
  %77 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %78 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %77, i32 0, i32 11
  %79 = load %struct.archive_entry*, %struct.archive_entry** %78, align 8
  %80 = call i32 @archive_entry_mode(%struct.archive_entry* %79)
  %81 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %82 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 4
  %83 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %84 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %83, i32 0, i32 11
  %85 = load %struct.archive_entry*, %struct.archive_entry** %84, align 8
  %86 = call i64 @archive_entry_size_is_set(%struct.archive_entry* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %59
  %89 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %90 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %89, i32 0, i32 11
  %91 = load %struct.archive_entry*, %struct.archive_entry** %90, align 8
  %92 = call i32 @archive_entry_size(%struct.archive_entry* %91)
  %93 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %94 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %93, i32 0, i32 4
  store i32 %92, i32* %94, align 8
  br label %98

95:                                               ; preds = %59
  %96 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %97 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %96, i32 0, i32 4
  store i32 -1, i32* %97, align 8
  br label %98

98:                                               ; preds = %95, %88
  %99 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %100 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %99, i32 0, i32 13
  %101 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %102 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %101, i32 0, i32 11
  %103 = load %struct.archive_entry*, %struct.archive_entry** %102, align 8
  %104 = call i32 @archive_entry_pathname(%struct.archive_entry* %103)
  %105 = call i32 @archive_strcpy(%struct.TYPE_6__* %100, i32 %104)
  %106 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %107 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %106, i32 0, i32 13
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %111 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %110, i32 0, i32 5
  store i8* %109, i8** %111, align 8
  %112 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %113 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %112, i32 0, i32 10
  %114 = call i32 @archive_clear_error(%struct.TYPE_7__* %113)
  %115 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %116 = call i32 @cleanup_pathname(%struct.archive_write_disk* %115)
  store i32 %116, i32* %8, align 4
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* @ARCHIVE_OK, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %98
  %121 = load i32, i32* %8, align 4
  store i32 %121, i32* %3, align 4
  br label %574

122:                                              ; preds = %98
  %123 = call i32 @umask(i32 0)
  %124 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %125 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %124, i32 0, i32 6
  store i32 %123, i32* %125, align 8
  %126 = call i32 @umask(i32 %123)
  %127 = load i32, i32* @TODO_MODE_BASE, align 4
  %128 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %129 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %128, i32 0, i32 7
  store i32 %127, i32* %129, align 4
  %130 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %131 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %130, i32 0, i32 8
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @ARCHIVE_EXTRACT_PERM, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %172

136:                                              ; preds = %122
  %137 = load i32, i32* @TODO_MODE_FORCE, align 4
  %138 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %139 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %138, i32 0, i32 7
  %140 = load i32, i32* %139, align 4
  %141 = or i32 %140, %137
  store i32 %141, i32* %139, align 4
  %142 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %143 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @S_ISGID, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %156

148:                                              ; preds = %136
  %149 = load i32, i32* @TODO_SGID, align 4
  %150 = load i32, i32* @TODO_SGID_CHECK, align 4
  %151 = or i32 %149, %150
  %152 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %153 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %152, i32 0, i32 7
  %154 = load i32, i32* %153, align 4
  %155 = or i32 %154, %151
  store i32 %155, i32* %153, align 4
  br label %156

156:                                              ; preds = %148, %136
  %157 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %158 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @S_ISUID, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %171

163:                                              ; preds = %156
  %164 = load i32, i32* @TODO_SUID, align 4
  %165 = load i32, i32* @TODO_SUID_CHECK, align 4
  %166 = or i32 %164, %165
  %167 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %168 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %167, i32 0, i32 7
  %169 = load i32, i32* %168, align 4
  %170 = or i32 %169, %166
  store i32 %170, i32* %168, align 4
  br label %171

171:                                              ; preds = %163, %156
  br label %199

172:                                              ; preds = %122
  %173 = load i32, i32* @S_ISUID, align 4
  %174 = xor i32 %173, -1
  %175 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %176 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 4
  %178 = and i32 %177, %174
  store i32 %178, i32* %176, align 4
  %179 = load i32, i32* @S_ISGID, align 4
  %180 = xor i32 %179, -1
  %181 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %182 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = and i32 %183, %180
  store i32 %184, i32* %182, align 4
  %185 = load i32, i32* @S_ISVTX, align 4
  %186 = xor i32 %185, -1
  %187 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %188 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = and i32 %189, %186
  store i32 %190, i32* %188, align 4
  %191 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %192 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %191, i32 0, i32 6
  %193 = load i32, i32* %192, align 8
  %194 = xor i32 %193, -1
  %195 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %196 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 4
  %198 = and i32 %197, %194
  store i32 %198, i32* %196, align 4
  br label %199

199:                                              ; preds = %172, %171
  %200 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %201 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %200, i32 0, i32 8
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* @ARCHIVE_EXTRACT_OWNER, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %212

206:                                              ; preds = %199
  %207 = load i32, i32* @TODO_OWNER, align 4
  %208 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %209 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %208, i32 0, i32 7
  %210 = load i32, i32* %209, align 4
  %211 = or i32 %210, %207
  store i32 %211, i32* %209, align 4
  br label %212

212:                                              ; preds = %206, %199
  %213 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %214 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %213, i32 0, i32 8
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* @ARCHIVE_EXTRACT_TIME, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %225

219:                                              ; preds = %212
  %220 = load i32, i32* @TODO_TIMES, align 4
  %221 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %222 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %221, i32 0, i32 7
  %223 = load i32, i32* %222, align 4
  %224 = or i32 %223, %220
  store i32 %224, i32* %222, align 4
  br label %225

225:                                              ; preds = %219, %212
  %226 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %227 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %226, i32 0, i32 8
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* @ARCHIVE_EXTRACT_ACL, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %252

232:                                              ; preds = %225
  %233 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %234 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %233, i32 0, i32 11
  %235 = load %struct.archive_entry*, %struct.archive_entry** %234, align 8
  %236 = call i64 @archive_entry_filetype(%struct.archive_entry* %235)
  %237 = load i64, i64* @AE_IFDIR, align 8
  %238 = icmp eq i64 %236, %237
  br i1 %238, label %239, label %245

239:                                              ; preds = %232
  %240 = load i32, i32* @TODO_ACLS, align 4
  %241 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %242 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = or i32 %243, %240
  store i32 %244, i32* %242, align 8
  br label %251

245:                                              ; preds = %232
  %246 = load i32, i32* @TODO_ACLS, align 4
  %247 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %248 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %247, i32 0, i32 7
  %249 = load i32, i32* %248, align 4
  %250 = or i32 %249, %246
  store i32 %250, i32* %248, align 4
  br label %251

251:                                              ; preds = %245, %239
  br label %252

252:                                              ; preds = %251, %225
  %253 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %254 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %253, i32 0, i32 8
  %255 = load i32, i32* %254, align 8
  %256 = load i32, i32* @ARCHIVE_EXTRACT_MAC_METADATA, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %279

259:                                              ; preds = %252
  %260 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %261 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %260, i32 0, i32 11
  %262 = load %struct.archive_entry*, %struct.archive_entry** %261, align 8
  %263 = call i64 @archive_entry_filetype(%struct.archive_entry* %262)
  %264 = load i64, i64* @AE_IFDIR, align 8
  %265 = icmp eq i64 %263, %264
  br i1 %265, label %266, label %272

266:                                              ; preds = %259
  %267 = load i32, i32* @TODO_MAC_METADATA, align 4
  %268 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %269 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = or i32 %270, %267
  store i32 %271, i32* %269, align 8
  br label %278

272:                                              ; preds = %259
  %273 = load i32, i32* @TODO_MAC_METADATA, align 4
  %274 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %275 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %274, i32 0, i32 7
  %276 = load i32, i32* %275, align 4
  %277 = or i32 %276, %273
  store i32 %277, i32* %275, align 4
  br label %278

278:                                              ; preds = %272, %266
  br label %279

279:                                              ; preds = %278, %252
  %280 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %281 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %280, i32 0, i32 8
  %282 = load i32, i32* %281, align 8
  %283 = load i32, i32* @ARCHIVE_EXTRACT_XATTR, align 4
  %284 = and i32 %282, %283
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %292

286:                                              ; preds = %279
  %287 = load i32, i32* @TODO_XATTR, align 4
  %288 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %289 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %288, i32 0, i32 7
  %290 = load i32, i32* %289, align 4
  %291 = or i32 %290, %287
  store i32 %291, i32* %289, align 4
  br label %292

292:                                              ; preds = %286, %279
  %293 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %294 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %293, i32 0, i32 8
  %295 = load i32, i32* %294, align 8
  %296 = load i32, i32* @ARCHIVE_EXTRACT_FFLAGS, align 4
  %297 = and i32 %295, %296
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %305

299:                                              ; preds = %292
  %300 = load i32, i32* @TODO_FFLAGS, align 4
  %301 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %302 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %301, i32 0, i32 7
  %303 = load i32, i32* %302, align 4
  %304 = or i32 %303, %300
  store i32 %304, i32* %302, align 4
  br label %305

305:                                              ; preds = %299, %292
  %306 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %307 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %306, i32 0, i32 8
  %308 = load i32, i32* %307, align 8
  %309 = load i32, i32* @ARCHIVE_EXTRACT_SECURE_SYMLINKS, align 4
  %310 = and i32 %308, %309
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %321

312:                                              ; preds = %305
  %313 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %314 = call i32 @check_symlinks(%struct.archive_write_disk* %313)
  store i32 %314, i32* %8, align 4
  %315 = load i32, i32* %8, align 4
  %316 = load i32, i32* @ARCHIVE_OK, align 4
  %317 = icmp ne i32 %315, %316
  br i1 %317, label %318, label %320

318:                                              ; preds = %312
  %319 = load i32, i32* %8, align 4
  store i32 %319, i32* %3, align 4
  br label %574

320:                                              ; preds = %312
  br label %321

321:                                              ; preds = %320, %305
  %322 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %323 = call i32 @restore_entry(%struct.archive_write_disk* %322)
  store i32 %323, i32* %8, align 4
  %324 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %325 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 8
  %327 = load i32, i32* @TODO_MODE, align 4
  %328 = and i32 %326, %327
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %350

330:                                              ; preds = %321
  %331 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %332 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %333 = call i32 @archive_entry_pathname(%struct.archive_entry* %332)
  %334 = call %struct.fixup_entry* @current_fixup(%struct.archive_write_disk* %331, i32 %333)
  store %struct.fixup_entry* %334, %struct.fixup_entry** %7, align 8
  %335 = load %struct.fixup_entry*, %struct.fixup_entry** %7, align 8
  %336 = icmp eq %struct.fixup_entry* %335, null
  br i1 %336, label %337, label %339

337:                                              ; preds = %330
  %338 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %338, i32* %3, align 4
  br label %574

339:                                              ; preds = %330
  %340 = load i32, i32* @TODO_MODE_BASE, align 4
  %341 = load %struct.fixup_entry*, %struct.fixup_entry** %7, align 8
  %342 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 8
  %344 = or i32 %343, %340
  store i32 %344, i32* %342, align 8
  %345 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %346 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %345, i32 0, i32 3
  %347 = load i32, i32* %346, align 4
  %348 = load %struct.fixup_entry*, %struct.fixup_entry** %7, align 8
  %349 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %348, i32 0, i32 1
  store i32 %347, i32* %349, align 4
  br label %350

350:                                              ; preds = %339, %321
  %351 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %352 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 8
  %354 = load i32, i32* @TODO_TIMES, align 4
  %355 = and i32 %353, %354
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %451

357:                                              ; preds = %350
  %358 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %359 = call i64 @archive_entry_mtime_is_set(%struct.archive_entry* %358)
  %360 = icmp ne i64 %359, 0
  br i1 %360, label %365, label %361

361:                                              ; preds = %357
  %362 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %363 = call i64 @archive_entry_atime_is_set(%struct.archive_entry* %362)
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %451

365:                                              ; preds = %361, %357
  %366 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %367 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %368 = call i32 @archive_entry_pathname(%struct.archive_entry* %367)
  %369 = call %struct.fixup_entry* @current_fixup(%struct.archive_write_disk* %366, i32 %368)
  store %struct.fixup_entry* %369, %struct.fixup_entry** %7, align 8
  %370 = load %struct.fixup_entry*, %struct.fixup_entry** %7, align 8
  %371 = icmp eq %struct.fixup_entry* %370, null
  br i1 %371, label %372, label %374

372:                                              ; preds = %365
  %373 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %373, i32* %3, align 4
  br label %574

374:                                              ; preds = %365
  %375 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %376 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %375, i32 0, i32 3
  %377 = load i32, i32* %376, align 4
  %378 = load %struct.fixup_entry*, %struct.fixup_entry** %7, align 8
  %379 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %378, i32 0, i32 1
  store i32 %377, i32* %379, align 4
  %380 = load i32, i32* @TODO_TIMES, align 4
  %381 = load %struct.fixup_entry*, %struct.fixup_entry** %7, align 8
  %382 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 8
  %384 = or i32 %383, %380
  store i32 %384, i32* %382, align 8
  %385 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %386 = call i64 @archive_entry_atime_is_set(%struct.archive_entry* %385)
  %387 = icmp ne i64 %386, 0
  br i1 %387, label %388, label %397

388:                                              ; preds = %374
  %389 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %390 = call i32 @archive_entry_atime(%struct.archive_entry* %389)
  %391 = load %struct.fixup_entry*, %struct.fixup_entry** %7, align 8
  %392 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %391, i32 0, i32 10
  store i32 %390, i32* %392, align 8
  %393 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %394 = call i64 @archive_entry_atime_nsec(%struct.archive_entry* %393)
  %395 = load %struct.fixup_entry*, %struct.fixup_entry** %7, align 8
  %396 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %395, i32 0, i32 9
  store i64 %394, i64* %396, align 8
  br label %405

397:                                              ; preds = %374
  %398 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %399 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %398, i32 0, i32 12
  %400 = load i32, i32* %399, align 8
  %401 = load %struct.fixup_entry*, %struct.fixup_entry** %7, align 8
  %402 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %401, i32 0, i32 10
  store i32 %400, i32* %402, align 8
  %403 = load %struct.fixup_entry*, %struct.fixup_entry** %7, align 8
  %404 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %403, i32 0, i32 9
  store i64 0, i64* %404, align 8
  br label %405

405:                                              ; preds = %397, %388
  %406 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %407 = call i64 @archive_entry_mtime_is_set(%struct.archive_entry* %406)
  %408 = icmp ne i64 %407, 0
  br i1 %408, label %409, label %418

409:                                              ; preds = %405
  %410 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %411 = call i32 @archive_entry_mtime(%struct.archive_entry* %410)
  %412 = load %struct.fixup_entry*, %struct.fixup_entry** %7, align 8
  %413 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %412, i32 0, i32 7
  store i32 %411, i32* %413, align 8
  %414 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %415 = call i64 @archive_entry_mtime_nsec(%struct.archive_entry* %414)
  %416 = load %struct.fixup_entry*, %struct.fixup_entry** %7, align 8
  %417 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %416, i32 0, i32 5
  store i64 %415, i64* %417, align 8
  br label %426

418:                                              ; preds = %405
  %419 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %420 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %419, i32 0, i32 12
  %421 = load i32, i32* %420, align 8
  %422 = load %struct.fixup_entry*, %struct.fixup_entry** %7, align 8
  %423 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %422, i32 0, i32 7
  store i32 %421, i32* %423, align 8
  %424 = load %struct.fixup_entry*, %struct.fixup_entry** %7, align 8
  %425 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %424, i32 0, i32 5
  store i64 0, i64* %425, align 8
  br label %426

426:                                              ; preds = %418, %409
  %427 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %428 = call i64 @archive_entry_birthtime_is_set(%struct.archive_entry* %427)
  %429 = icmp ne i64 %428, 0
  br i1 %429, label %430, label %439

430:                                              ; preds = %426
  %431 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %432 = call i32 @archive_entry_birthtime(%struct.archive_entry* %431)
  %433 = load %struct.fixup_entry*, %struct.fixup_entry** %7, align 8
  %434 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %433, i32 0, i32 8
  store i32 %432, i32* %434, align 4
  %435 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %436 = call i64 @archive_entry_birthtime_nsec(%struct.archive_entry* %435)
  %437 = load %struct.fixup_entry*, %struct.fixup_entry** %7, align 8
  %438 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %437, i32 0, i32 6
  store i64 %436, i64* %438, align 8
  br label %450

439:                                              ; preds = %426
  %440 = load %struct.fixup_entry*, %struct.fixup_entry** %7, align 8
  %441 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %440, i32 0, i32 7
  %442 = load i32, i32* %441, align 8
  %443 = load %struct.fixup_entry*, %struct.fixup_entry** %7, align 8
  %444 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %443, i32 0, i32 8
  store i32 %442, i32* %444, align 4
  %445 = load %struct.fixup_entry*, %struct.fixup_entry** %7, align 8
  %446 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %445, i32 0, i32 5
  %447 = load i64, i64* %446, align 8
  %448 = load %struct.fixup_entry*, %struct.fixup_entry** %7, align 8
  %449 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %448, i32 0, i32 6
  store i64 %447, i64* %449, align 8
  br label %450

450:                                              ; preds = %439, %430
  br label %451

451:                                              ; preds = %450, %361, %350
  %452 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %453 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %452, i32 0, i32 0
  %454 = load i32, i32* %453, align 8
  %455 = load i32, i32* @TODO_ACLS, align 4
  %456 = and i32 %454, %455
  %457 = icmp ne i32 %456, 0
  br i1 %457, label %458, label %478

458:                                              ; preds = %451
  %459 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %460 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %461 = call i32 @archive_entry_pathname(%struct.archive_entry* %460)
  %462 = call %struct.fixup_entry* @current_fixup(%struct.archive_write_disk* %459, i32 %461)
  store %struct.fixup_entry* %462, %struct.fixup_entry** %7, align 8
  %463 = load %struct.fixup_entry*, %struct.fixup_entry** %7, align 8
  %464 = icmp eq %struct.fixup_entry* %463, null
  br i1 %464, label %465, label %467

465:                                              ; preds = %458
  %466 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %466, i32* %3, align 4
  br label %574

467:                                              ; preds = %458
  %468 = load i32, i32* @TODO_ACLS, align 4
  %469 = load %struct.fixup_entry*, %struct.fixup_entry** %7, align 8
  %470 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %469, i32 0, i32 0
  %471 = load i32, i32* %470, align 8
  %472 = or i32 %471, %468
  store i32 %472, i32* %470, align 8
  %473 = load %struct.fixup_entry*, %struct.fixup_entry** %7, align 8
  %474 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %473, i32 0, i32 4
  %475 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %476 = call i32 @archive_entry_acl(%struct.archive_entry* %475)
  %477 = call i32 @archive_acl_copy(i32* %474, i32 %476)
  br label %478

478:                                              ; preds = %467, %451
  %479 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %480 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %479, i32 0, i32 0
  %481 = load i32, i32* %480, align 8
  %482 = load i32, i32* @TODO_MAC_METADATA, align 4
  %483 = and i32 %481, %482
  %484 = icmp ne i32 %483, 0
  br i1 %484, label %485, label %531

485:                                              ; preds = %478
  %486 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %487 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %486, i32 0, i32 11
  %488 = load %struct.archive_entry*, %struct.archive_entry** %487, align 8
  %489 = call i32* @archive_entry_mac_metadata(%struct.archive_entry* %488, i64* %11)
  %490 = bitcast i32* %489 to i8*
  store i8* %490, i8** %10, align 8
  %491 = load i8*, i8** %10, align 8
  %492 = icmp ne i8* %491, null
  br i1 %492, label %493, label %530

493:                                              ; preds = %485
  %494 = load i64, i64* %11, align 8
  %495 = icmp ugt i64 %494, 0
  br i1 %495, label %496, label %530

496:                                              ; preds = %493
  %497 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %498 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %499 = call i32 @archive_entry_pathname(%struct.archive_entry* %498)
  %500 = call %struct.fixup_entry* @current_fixup(%struct.archive_write_disk* %497, i32 %499)
  store %struct.fixup_entry* %500, %struct.fixup_entry** %7, align 8
  %501 = load %struct.fixup_entry*, %struct.fixup_entry** %7, align 8
  %502 = icmp eq %struct.fixup_entry* %501, null
  br i1 %502, label %503, label %505

503:                                              ; preds = %496
  %504 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %504, i32* %3, align 4
  br label %574

505:                                              ; preds = %496
  %506 = load i64, i64* %11, align 8
  %507 = call i32* @malloc(i64 %506)
  %508 = load %struct.fixup_entry*, %struct.fixup_entry** %7, align 8
  %509 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %508, i32 0, i32 3
  store i32* %507, i32** %509, align 8
  %510 = load %struct.fixup_entry*, %struct.fixup_entry** %7, align 8
  %511 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %510, i32 0, i32 3
  %512 = load i32*, i32** %511, align 8
  %513 = icmp ne i32* %512, null
  br i1 %513, label %514, label %529

514:                                              ; preds = %505
  %515 = load %struct.fixup_entry*, %struct.fixup_entry** %7, align 8
  %516 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %515, i32 0, i32 3
  %517 = load i32*, i32** %516, align 8
  %518 = load i8*, i8** %10, align 8
  %519 = load i64, i64* %11, align 8
  %520 = call i32 @memcpy(i32* %517, i8* %518, i64 %519)
  %521 = load i64, i64* %11, align 8
  %522 = load %struct.fixup_entry*, %struct.fixup_entry** %7, align 8
  %523 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %522, i32 0, i32 2
  store i64 %521, i64* %523, align 8
  %524 = load i32, i32* @TODO_MAC_METADATA, align 4
  %525 = load %struct.fixup_entry*, %struct.fixup_entry** %7, align 8
  %526 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %525, i32 0, i32 0
  %527 = load i32, i32* %526, align 8
  %528 = or i32 %527, %524
  store i32 %528, i32* %526, align 8
  br label %529

529:                                              ; preds = %514, %505
  br label %530

530:                                              ; preds = %529, %493, %485
  br label %531

531:                                              ; preds = %530, %478
  %532 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %533 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %532, i32 0, i32 0
  %534 = load i32, i32* %533, align 8
  %535 = load i32, i32* @TODO_FFLAGS, align 4
  %536 = and i32 %534, %535
  %537 = icmp ne i32 %536, 0
  br i1 %537, label %538, label %553

538:                                              ; preds = %531
  %539 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %540 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %541 = call i32 @archive_entry_pathname(%struct.archive_entry* %540)
  %542 = call %struct.fixup_entry* @current_fixup(%struct.archive_write_disk* %539, i32 %541)
  store %struct.fixup_entry* %542, %struct.fixup_entry** %7, align 8
  %543 = load %struct.fixup_entry*, %struct.fixup_entry** %7, align 8
  %544 = icmp eq %struct.fixup_entry* %543, null
  br i1 %544, label %545, label %547

545:                                              ; preds = %538
  %546 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %546, i32* %3, align 4
  br label %574

547:                                              ; preds = %538
  %548 = load i32, i32* @TODO_FFLAGS, align 4
  %549 = load %struct.fixup_entry*, %struct.fixup_entry** %7, align 8
  %550 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %549, i32 0, i32 0
  %551 = load i32, i32* %550, align 8
  %552 = or i32 %551, %548
  store i32 %552, i32* %550, align 8
  br label %553

553:                                              ; preds = %547, %531
  %554 = load i32, i32* %8, align 4
  %555 = load i32, i32* @ARCHIVE_WARN, align 4
  %556 = icmp sge i32 %554, %555
  br i1 %556, label %557, label %562

557:                                              ; preds = %553
  %558 = load i32, i32* @ARCHIVE_STATE_DATA, align 4
  %559 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %560 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %559, i32 0, i32 10
  %561 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %560, i32 0, i32 0
  store i32 %558, i32* %561, align 8
  br label %562

562:                                              ; preds = %557, %553
  %563 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %564 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %563, i32 0, i32 1
  %565 = load i32, i32* %564, align 4
  %566 = icmp slt i32 %565, 0
  br i1 %566, label %567, label %572

567:                                              ; preds = %562
  %568 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %569 = call i32 @archive_entry_set_size(%struct.archive_entry* %568, i32 0)
  %570 = load %struct.archive_write_disk*, %struct.archive_write_disk** %6, align 8
  %571 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %570, i32 0, i32 4
  store i32 0, i32* %571, align 8
  br label %572

572:                                              ; preds = %567, %562
  %573 = load i32, i32* %8, align 4
  store i32 %573, i32* %3, align 4
  br label %574

574:                                              ; preds = %572, %545, %503, %465, %372, %337, %318, %120, %38
  %575 = load i32, i32* %3, align 4
  ret i32 %575
}

declare dso_local i32 @archive_check_magic(%struct.TYPE_7__*, i32, i32, i8*) #1

declare dso_local i32 @archive_clear_error(%struct.TYPE_7__*) #1

declare dso_local i32 @_archive_write_disk_finish_entry(%struct.TYPE_7__*) #1

declare dso_local i32 @archive_entry_free(%struct.archive_entry*) #1

declare dso_local %struct.archive_entry* @archive_entry_clone(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_mode(%struct.archive_entry*) #1

declare dso_local i64 @archive_entry_size_is_set(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_size(%struct.archive_entry*) #1

declare dso_local i32 @archive_strcpy(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i32 @cleanup_pathname(%struct.archive_write_disk*) #1

declare dso_local i32 @umask(i32) #1

declare dso_local i64 @archive_entry_filetype(%struct.archive_entry*) #1

declare dso_local i32 @check_symlinks(%struct.archive_write_disk*) #1

declare dso_local i32 @restore_entry(%struct.archive_write_disk*) #1

declare dso_local %struct.fixup_entry* @current_fixup(%struct.archive_write_disk*, i32) #1

declare dso_local i64 @archive_entry_mtime_is_set(%struct.archive_entry*) #1

declare dso_local i64 @archive_entry_atime_is_set(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_atime(%struct.archive_entry*) #1

declare dso_local i64 @archive_entry_atime_nsec(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_mtime(%struct.archive_entry*) #1

declare dso_local i64 @archive_entry_mtime_nsec(%struct.archive_entry*) #1

declare dso_local i64 @archive_entry_birthtime_is_set(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_birthtime(%struct.archive_entry*) #1

declare dso_local i64 @archive_entry_birthtime_nsec(%struct.archive_entry*) #1

declare dso_local i32 @archive_acl_copy(i32*, i32) #1

declare dso_local i32 @archive_entry_acl(%struct.archive_entry*) #1

declare dso_local i32* @archive_entry_mac_metadata(%struct.archive_entry*, i64*) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i32 @archive_entry_set_size(%struct.archive_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
