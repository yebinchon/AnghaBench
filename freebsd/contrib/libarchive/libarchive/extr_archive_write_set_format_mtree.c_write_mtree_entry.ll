; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_mtree.c_write_mtree_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_mtree.c_write_mtree_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { %struct.mtree_writer* }
%struct.mtree_writer = type { %struct.archive_string, i64, i64, %struct.TYPE_8__, %struct.archive_string, i64, i32 }
%struct.TYPE_8__ = type { i32, i64 }
%struct.archive_string = type { i32, i32 }
%struct.mtree_entry = type { i32, i32, i32, i64, i64, i64, %struct.TYPE_9__, i64, i64, i64, i64, i64, i64, i64, i64, %struct.TYPE_10__, %struct.TYPE_10__, %struct.TYPE_10__, %struct.TYPE_7__, %struct.TYPE_6__, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"# %s/%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"# %s\0A\00", align 1
@F_NLINK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c" nlink=%u\00", align 1
@F_GNAME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c" gname=\00", align 1
@F_UNAME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c" uname=\00", align 1
@F_FLAGS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c" flags=\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c" flags=none\00", align 1
@F_TIME = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c" time=%jd.%jd\00", align 1
@F_MODE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c" mode=%o\00", align 1
@F_GID = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c" gid=%jd\00", align 1
@F_UID = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [9 x i8] c" uid=%jd\00", align 1
@F_INO = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [11 x i8] c" inode=%jd\00", align 1
@F_RESDEV = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [26 x i8] c" resdevice=native,%ju,%ju\00", align 1
@F_TYPE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [11 x i8] c" type=link\00", align 1
@F_SLINK = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [7 x i8] c" link=\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c" type=socket\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c" type=char\00", align 1
@F_DEV = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [23 x i8] c" device=native,%ju,%ju\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c" type=block\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c" type=dir\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c" type=fifo\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c" type=file\00", align 1
@F_SIZE = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [10 x i8] c" size=%jd\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*, %struct.mtree_entry*)* @write_mtree_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_mtree_entry(%struct.archive_write* %0, %struct.mtree_entry* %1) #0 {
  %3 = alloca %struct.archive_write*, align 8
  %4 = alloca %struct.mtree_entry*, align 8
  %5 = alloca %struct.mtree_writer*, align 8
  %6 = alloca %struct.archive_string*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.archive_write* %0, %struct.archive_write** %3, align 8
  store %struct.mtree_entry* %1, %struct.mtree_entry** %4, align 8
  %9 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %10 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %9, i32 0, i32 0
  %11 = load %struct.mtree_writer*, %struct.mtree_writer** %10, align 8
  store %struct.mtree_writer* %11, %struct.mtree_writer** %5, align 8
  %12 = load %struct.mtree_entry*, %struct.mtree_entry** %4, align 8
  %13 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %12, i32 0, i32 20
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %66

16:                                               ; preds = %2
  %17 = load %struct.mtree_writer*, %struct.mtree_writer** %5, align 8
  %18 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %57

21:                                               ; preds = %16
  %22 = load %struct.mtree_writer*, %struct.mtree_writer** %5, align 8
  %23 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = load %struct.mtree_writer*, %struct.mtree_writer** %5, align 8
  %28 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %27, i32 0, i32 0
  %29 = call i32 @archive_strappend_char(%struct.archive_string* %28, i8 signext 10)
  br label %30

30:                                               ; preds = %26, %21
  %31 = load %struct.mtree_entry*, %struct.mtree_entry** %4, align 8
  %32 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %31, i32 0, i32 19
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %30
  %37 = load %struct.mtree_writer*, %struct.mtree_writer** %5, align 8
  %38 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %37, i32 0, i32 0
  %39 = load %struct.mtree_entry*, %struct.mtree_entry** %4, align 8
  %40 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %39, i32 0, i32 19
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.mtree_entry*, %struct.mtree_entry** %4, align 8
  %44 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %43, i32 0, i32 18
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (%struct.archive_string*, i8*, i32, ...) @archive_string_sprintf(%struct.archive_string* %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %46)
  br label %56

48:                                               ; preds = %30
  %49 = load %struct.mtree_writer*, %struct.mtree_writer** %5, align 8
  %50 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %49, i32 0, i32 0
  %51 = load %struct.mtree_entry*, %struct.mtree_entry** %4, align 8
  %52 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %51, i32 0, i32 18
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (%struct.archive_string*, i8*, i32, ...) @archive_string_sprintf(%struct.archive_string* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %48, %36
  br label %57

57:                                               ; preds = %56, %16
  %58 = load %struct.mtree_writer*, %struct.mtree_writer** %5, align 8
  %59 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %58, i32 0, i32 5
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load %struct.mtree_writer*, %struct.mtree_writer** %5, align 8
  %64 = call i32 @write_global(%struct.mtree_writer* %63)
  br label %65

65:                                               ; preds = %62, %57
  br label %66

66:                                               ; preds = %65, %2
  %67 = load %struct.mtree_writer*, %struct.mtree_writer** %5, align 8
  %68 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %67, i32 0, i32 4
  %69 = call i32 @archive_string_empty(%struct.archive_string* %68)
  %70 = load %struct.mtree_writer*, %struct.mtree_writer** %5, align 8
  %71 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %66
  %75 = load %struct.mtree_writer*, %struct.mtree_writer** %5, align 8
  %76 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74, %66
  %80 = load %struct.mtree_writer*, %struct.mtree_writer** %5, align 8
  %81 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %80, i32 0, i32 4
  br label %85

82:                                               ; preds = %74
  %83 = load %struct.mtree_writer*, %struct.mtree_writer** %5, align 8
  %84 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %83, i32 0, i32 0
  br label %85

85:                                               ; preds = %82, %79
  %86 = phi %struct.archive_string* [ %81, %79 ], [ %84, %82 ]
  store %struct.archive_string* %86, %struct.archive_string** %6, align 8
  %87 = load %struct.mtree_writer*, %struct.mtree_writer** %5, align 8
  %88 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %106, label %91

91:                                               ; preds = %85
  %92 = load %struct.mtree_entry*, %struct.mtree_entry** %4, align 8
  %93 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %92, i32 0, i32 19
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %91
  %98 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %99 = load %struct.mtree_entry*, %struct.mtree_entry** %4, align 8
  %100 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %99, i32 0, i32 19
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @mtree_quote(%struct.archive_string* %98, i32 %102)
  %104 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %105 = call i32 @archive_strappend_char(%struct.archive_string* %104, i8 signext 47)
  br label %106

106:                                              ; preds = %97, %91, %85
  %107 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %108 = load %struct.mtree_entry*, %struct.mtree_entry** %4, align 8
  %109 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %108, i32 0, i32 18
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @mtree_quote(%struct.archive_string* %107, i32 %111)
  %113 = load %struct.mtree_writer*, %struct.mtree_writer** %5, align 8
  %114 = load %struct.mtree_entry*, %struct.mtree_entry** %4, align 8
  %115 = call i32 @get_global_set_keys(%struct.mtree_writer* %113, %struct.mtree_entry* %114)
  store i32 %115, i32* %7, align 4
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* @F_NLINK, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %136

120:                                              ; preds = %106
  %121 = load %struct.mtree_entry*, %struct.mtree_entry** %4, align 8
  %122 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %123, 1
  br i1 %124, label %125, label %136

125:                                              ; preds = %120
  %126 = load %struct.mtree_entry*, %struct.mtree_entry** %4, align 8
  %127 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %128, 132
  br i1 %129, label %130, label %136

130:                                              ; preds = %125
  %131 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %132 = load %struct.mtree_entry*, %struct.mtree_entry** %4, align 8
  %133 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 (%struct.archive_string*, i8*, i32, ...) @archive_string_sprintf(%struct.archive_string* %131, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %134)
  br label %136

136:                                              ; preds = %130, %125, %120, %106
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* @F_GNAME, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %155

141:                                              ; preds = %136
  %142 = load %struct.mtree_entry*, %struct.mtree_entry** %4, align 8
  %143 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %142, i32 0, i32 17
  %144 = call i64 @archive_strlen(%struct.TYPE_10__* %143)
  %145 = icmp sgt i64 %144, 0
  br i1 %145, label %146, label %155

146:                                              ; preds = %141
  %147 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %148 = call i32 @archive_strcat(%struct.archive_string* %147, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %149 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %150 = load %struct.mtree_entry*, %struct.mtree_entry** %4, align 8
  %151 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %150, i32 0, i32 17
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @mtree_quote(%struct.archive_string* %149, i32 %153)
  br label %155

155:                                              ; preds = %146, %141, %136
  %156 = load i32, i32* %7, align 4
  %157 = load i32, i32* @F_UNAME, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %174

160:                                              ; preds = %155
  %161 = load %struct.mtree_entry*, %struct.mtree_entry** %4, align 8
  %162 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %161, i32 0, i32 16
  %163 = call i64 @archive_strlen(%struct.TYPE_10__* %162)
  %164 = icmp sgt i64 %163, 0
  br i1 %164, label %165, label %174

165:                                              ; preds = %160
  %166 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %167 = call i32 @archive_strcat(%struct.archive_string* %166, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %168 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %169 = load %struct.mtree_entry*, %struct.mtree_entry** %4, align 8
  %170 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %169, i32 0, i32 16
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @mtree_quote(%struct.archive_string* %168, i32 %172)
  br label %174

174:                                              ; preds = %165, %160, %155
  %175 = load i32, i32* %7, align 4
  %176 = load i32, i32* @F_FLAGS, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %212

179:                                              ; preds = %174
  %180 = load %struct.mtree_entry*, %struct.mtree_entry** %4, align 8
  %181 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %180, i32 0, i32 15
  %182 = call i64 @archive_strlen(%struct.TYPE_10__* %181)
  %183 = icmp sgt i64 %182, 0
  br i1 %183, label %184, label %193

184:                                              ; preds = %179
  %185 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %186 = call i32 @archive_strcat(%struct.archive_string* %185, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %187 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %188 = load %struct.mtree_entry*, %struct.mtree_entry** %4, align 8
  %189 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %188, i32 0, i32 15
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @mtree_quote(%struct.archive_string* %187, i32 %191)
  br label %211

193:                                              ; preds = %179
  %194 = load %struct.mtree_writer*, %struct.mtree_writer** %5, align 8
  %195 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %194, i32 0, i32 3
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %210

199:                                              ; preds = %193
  %200 = load %struct.mtree_writer*, %struct.mtree_writer** %5, align 8
  %201 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %200, i32 0, i32 3
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @F_FLAGS, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %199
  %208 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %209 = call i32 @archive_strcat(%struct.archive_string* %208, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  br label %210

210:                                              ; preds = %207, %199, %193
  br label %211

211:                                              ; preds = %210, %184
  br label %212

212:                                              ; preds = %211, %174
  %213 = load i32, i32* %7, align 4
  %214 = load i32, i32* @F_TIME, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %228

217:                                              ; preds = %212
  %218 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %219 = load %struct.mtree_entry*, %struct.mtree_entry** %4, align 8
  %220 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %219, i32 0, i32 14
  %221 = load i64, i64* %220, align 8
  %222 = trunc i64 %221 to i32
  %223 = load %struct.mtree_entry*, %struct.mtree_entry** %4, align 8
  %224 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %223, i32 0, i32 13
  %225 = load i64, i64* %224, align 8
  %226 = trunc i64 %225 to i32
  %227 = call i32 (%struct.archive_string*, i8*, i32, ...) @archive_string_sprintf(%struct.archive_string* %218, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %222, i32 %226)
  br label %228

228:                                              ; preds = %217, %212
  %229 = load i32, i32* %7, align 4
  %230 = load i32, i32* @F_MODE, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %240

233:                                              ; preds = %228
  %234 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %235 = load %struct.mtree_entry*, %struct.mtree_entry** %4, align 8
  %236 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %235, i32 0, i32 12
  %237 = load i64, i64* %236, align 8
  %238 = trunc i64 %237 to i32
  %239 = call i32 (%struct.archive_string*, i8*, i32, ...) @archive_string_sprintf(%struct.archive_string* %234, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 %238)
  br label %240

240:                                              ; preds = %233, %228
  %241 = load i32, i32* %7, align 4
  %242 = load i32, i32* @F_GID, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %252

245:                                              ; preds = %240
  %246 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %247 = load %struct.mtree_entry*, %struct.mtree_entry** %4, align 8
  %248 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %247, i32 0, i32 11
  %249 = load i64, i64* %248, align 8
  %250 = trunc i64 %249 to i32
  %251 = call i32 (%struct.archive_string*, i8*, i32, ...) @archive_string_sprintf(%struct.archive_string* %246, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 %250)
  br label %252

252:                                              ; preds = %245, %240
  %253 = load i32, i32* %7, align 4
  %254 = load i32, i32* @F_UID, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %264

257:                                              ; preds = %252
  %258 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %259 = load %struct.mtree_entry*, %struct.mtree_entry** %4, align 8
  %260 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %259, i32 0, i32 10
  %261 = load i64, i64* %260, align 8
  %262 = trunc i64 %261 to i32
  %263 = call i32 (%struct.archive_string*, i8*, i32, ...) @archive_string_sprintf(%struct.archive_string* %258, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 %262)
  br label %264

264:                                              ; preds = %257, %252
  %265 = load i32, i32* %7, align 4
  %266 = load i32, i32* @F_INO, align 4
  %267 = and i32 %265, %266
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %276

269:                                              ; preds = %264
  %270 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %271 = load %struct.mtree_entry*, %struct.mtree_entry** %4, align 8
  %272 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %271, i32 0, i32 9
  %273 = load i64, i64* %272, align 8
  %274 = trunc i64 %273 to i32
  %275 = call i32 (%struct.archive_string*, i8*, i32, ...) @archive_string_sprintf(%struct.archive_string* %270, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i32 %274)
  br label %276

276:                                              ; preds = %269, %264
  %277 = load i32, i32* %7, align 4
  %278 = load i32, i32* @F_RESDEV, align 4
  %279 = and i32 %277, %278
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %292

281:                                              ; preds = %276
  %282 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %283 = load %struct.mtree_entry*, %struct.mtree_entry** %4, align 8
  %284 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %283, i32 0, i32 8
  %285 = load i64, i64* %284, align 8
  %286 = trunc i64 %285 to i32
  %287 = load %struct.mtree_entry*, %struct.mtree_entry** %4, align 8
  %288 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %287, i32 0, i32 7
  %289 = load i64, i64* %288, align 8
  %290 = trunc i64 %289 to i32
  %291 = call i32 (%struct.archive_string*, i8*, i32, ...) @archive_string_sprintf(%struct.archive_string* %282, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 %286, i32 %290)
  br label %292

292:                                              ; preds = %281, %276
  %293 = load %struct.mtree_entry*, %struct.mtree_entry** %4, align 8
  %294 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 4
  switch i32 %295, label %397 [
    i32 130, label %296
    i32 128, label %319
    i32 133, label %328
    i32 134, label %353
    i32 132, label %378
    i32 131, label %387
    i32 129, label %396
  ]

296:                                              ; preds = %292
  %297 = load i32, i32* %7, align 4
  %298 = load i32, i32* @F_TYPE, align 4
  %299 = and i32 %297, %298
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %304

301:                                              ; preds = %296
  %302 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %303 = call i32 @archive_strcat(%struct.archive_string* %302, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  br label %304

304:                                              ; preds = %301, %296
  %305 = load i32, i32* %7, align 4
  %306 = load i32, i32* @F_SLINK, align 4
  %307 = and i32 %305, %306
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %318

309:                                              ; preds = %304
  %310 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %311 = call i32 @archive_strcat(%struct.archive_string* %310, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  %312 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %313 = load %struct.mtree_entry*, %struct.mtree_entry** %4, align 8
  %314 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %313, i32 0, i32 6
  %315 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = call i32 @mtree_quote(%struct.archive_string* %312, i32 %316)
  br label %318

318:                                              ; preds = %309, %304
  br label %418

319:                                              ; preds = %292
  %320 = load i32, i32* %7, align 4
  %321 = load i32, i32* @F_TYPE, align 4
  %322 = and i32 %320, %321
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %327

324:                                              ; preds = %319
  %325 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %326 = call i32 @archive_strcat(%struct.archive_string* %325, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0))
  br label %327

327:                                              ; preds = %324, %319
  br label %418

328:                                              ; preds = %292
  %329 = load i32, i32* %7, align 4
  %330 = load i32, i32* @F_TYPE, align 4
  %331 = and i32 %329, %330
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %336

333:                                              ; preds = %328
  %334 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %335 = call i32 @archive_strcat(%struct.archive_string* %334, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0))
  br label %336

336:                                              ; preds = %333, %328
  %337 = load i32, i32* %7, align 4
  %338 = load i32, i32* @F_DEV, align 4
  %339 = and i32 %337, %338
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %352

341:                                              ; preds = %336
  %342 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %343 = load %struct.mtree_entry*, %struct.mtree_entry** %4, align 8
  %344 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %343, i32 0, i32 5
  %345 = load i64, i64* %344, align 8
  %346 = trunc i64 %345 to i32
  %347 = load %struct.mtree_entry*, %struct.mtree_entry** %4, align 8
  %348 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %347, i32 0, i32 4
  %349 = load i64, i64* %348, align 8
  %350 = trunc i64 %349 to i32
  %351 = call i32 (%struct.archive_string*, i8*, i32, ...) @archive_string_sprintf(%struct.archive_string* %342, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i64 0, i64 0), i32 %346, i32 %350)
  br label %352

352:                                              ; preds = %341, %336
  br label %418

353:                                              ; preds = %292
  %354 = load i32, i32* %7, align 4
  %355 = load i32, i32* @F_TYPE, align 4
  %356 = and i32 %354, %355
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %361

358:                                              ; preds = %353
  %359 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %360 = call i32 @archive_strcat(%struct.archive_string* %359, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0))
  br label %361

361:                                              ; preds = %358, %353
  %362 = load i32, i32* %7, align 4
  %363 = load i32, i32* @F_DEV, align 4
  %364 = and i32 %362, %363
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %377

366:                                              ; preds = %361
  %367 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %368 = load %struct.mtree_entry*, %struct.mtree_entry** %4, align 8
  %369 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %368, i32 0, i32 5
  %370 = load i64, i64* %369, align 8
  %371 = trunc i64 %370 to i32
  %372 = load %struct.mtree_entry*, %struct.mtree_entry** %4, align 8
  %373 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %372, i32 0, i32 4
  %374 = load i64, i64* %373, align 8
  %375 = trunc i64 %374 to i32
  %376 = call i32 (%struct.archive_string*, i8*, i32, ...) @archive_string_sprintf(%struct.archive_string* %367, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i64 0, i64 0), i32 %371, i32 %375)
  br label %377

377:                                              ; preds = %366, %361
  br label %418

378:                                              ; preds = %292
  %379 = load i32, i32* %7, align 4
  %380 = load i32, i32* @F_TYPE, align 4
  %381 = and i32 %379, %380
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %386

383:                                              ; preds = %378
  %384 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %385 = call i32 @archive_strcat(%struct.archive_string* %384, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0))
  br label %386

386:                                              ; preds = %383, %378
  br label %418

387:                                              ; preds = %292
  %388 = load i32, i32* %7, align 4
  %389 = load i32, i32* @F_TYPE, align 4
  %390 = and i32 %388, %389
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %395

392:                                              ; preds = %387
  %393 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %394 = call i32 @archive_strcat(%struct.archive_string* %393, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0))
  br label %395

395:                                              ; preds = %392, %387
  br label %418

396:                                              ; preds = %292
  br label %397

397:                                              ; preds = %292, %396
  %398 = load i32, i32* %7, align 4
  %399 = load i32, i32* @F_TYPE, align 4
  %400 = and i32 %398, %399
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %405

402:                                              ; preds = %397
  %403 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %404 = call i32 @archive_strcat(%struct.archive_string* %403, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0))
  br label %405

405:                                              ; preds = %402, %397
  %406 = load i32, i32* %7, align 4
  %407 = load i32, i32* @F_SIZE, align 4
  %408 = and i32 %406, %407
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %410, label %417

410:                                              ; preds = %405
  %411 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %412 = load %struct.mtree_entry*, %struct.mtree_entry** %4, align 8
  %413 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %412, i32 0, i32 3
  %414 = load i64, i64* %413, align 8
  %415 = trunc i64 %414 to i32
  %416 = call i32 (%struct.archive_string*, i8*, i32, ...) @archive_string_sprintf(%struct.archive_string* %411, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0), i32 %415)
  br label %417

417:                                              ; preds = %410, %405
  br label %418

418:                                              ; preds = %417, %395, %386, %377, %352, %327, %318
  %419 = load %struct.mtree_entry*, %struct.mtree_entry** %4, align 8
  %420 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %419, i32 0, i32 2
  %421 = load i32, i32* %420, align 8
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %423, label %429

423:                                              ; preds = %418
  %424 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %425 = load %struct.mtree_entry*, %struct.mtree_entry** %4, align 8
  %426 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %425, i32 0, i32 2
  %427 = load i32, i32* %426, align 8
  %428 = call i32 @sum_write(%struct.archive_string* %424, i32 %427)
  br label %429

429:                                              ; preds = %423, %418
  %430 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %431 = call i32 @archive_strappend_char(%struct.archive_string* %430, i8 signext 10)
  %432 = load %struct.mtree_writer*, %struct.mtree_writer** %5, align 8
  %433 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %432, i32 0, i32 2
  %434 = load i64, i64* %433, align 8
  %435 = icmp ne i64 %434, 0
  br i1 %435, label %441, label %436

436:                                              ; preds = %429
  %437 = load %struct.mtree_writer*, %struct.mtree_writer** %5, align 8
  %438 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %437, i32 0, i32 1
  %439 = load i64, i64* %438, align 8
  %440 = icmp ne i64 %439, 0
  br i1 %440, label %441, label %444

441:                                              ; preds = %436, %429
  %442 = load %struct.mtree_writer*, %struct.mtree_writer** %5, align 8
  %443 = call i32 @mtree_indent(%struct.mtree_writer* %442)
  br label %444

444:                                              ; preds = %441, %436
  %445 = load %struct.mtree_writer*, %struct.mtree_writer** %5, align 8
  %446 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %445, i32 0, i32 0
  %447 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %446, i32 0, i32 0
  %448 = load i32, i32* %447, align 8
  %449 = icmp sgt i32 %448, 32768
  br i1 %449, label %450, label %464

450:                                              ; preds = %444
  %451 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %452 = load %struct.mtree_writer*, %struct.mtree_writer** %5, align 8
  %453 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %452, i32 0, i32 0
  %454 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %453, i32 0, i32 1
  %455 = load i32, i32* %454, align 4
  %456 = load %struct.mtree_writer*, %struct.mtree_writer** %5, align 8
  %457 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %456, i32 0, i32 0
  %458 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %457, i32 0, i32 0
  %459 = load i32, i32* %458, align 8
  %460 = call i32 @__archive_write_output(%struct.archive_write* %451, i32 %455, i32 %459)
  store i32 %460, i32* %8, align 4
  %461 = load %struct.mtree_writer*, %struct.mtree_writer** %5, align 8
  %462 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %461, i32 0, i32 0
  %463 = call i32 @archive_string_empty(%struct.archive_string* %462)
  br label %466

464:                                              ; preds = %444
  %465 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %465, i32* %8, align 4
  br label %466

466:                                              ; preds = %464, %450
  %467 = load i32, i32* %8, align 4
  ret i32 %467
}

declare dso_local i32 @archive_strappend_char(%struct.archive_string*, i8 signext) #1

declare dso_local i32 @archive_string_sprintf(%struct.archive_string*, i8*, i32, ...) #1

declare dso_local i32 @write_global(%struct.mtree_writer*) #1

declare dso_local i32 @archive_string_empty(%struct.archive_string*) #1

declare dso_local i32 @mtree_quote(%struct.archive_string*, i32) #1

declare dso_local i32 @get_global_set_keys(%struct.mtree_writer*, %struct.mtree_entry*) #1

declare dso_local i64 @archive_strlen(%struct.TYPE_10__*) #1

declare dso_local i32 @archive_strcat(%struct.archive_string*, i8*) #1

declare dso_local i32 @sum_write(%struct.archive_string*, i32) #1

declare dso_local i32 @mtree_indent(%struct.mtree_writer*) #1

declare dso_local i32 @__archive_write_output(%struct.archive_write*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
