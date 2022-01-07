; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_disk_posix.c_next_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_disk_posix.c_next_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read_disk = type { i32, i8, i32, %struct.TYPE_13__, i32, i32 (%struct.TYPE_13__*, i32, %struct.archive_entry*)*, i32, i32 (%struct.TYPE_13__*, i32, %struct.archive_entry.0*)*, i64 }
%struct.TYPE_13__ = type { i8* }
%struct.archive_entry = type opaque
%struct.archive_entry.0 = type opaque
%struct.tree = type { i32, i32, i32, i32, i32, i64, %struct.TYPE_12__*, %struct.TYPE_11__, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32 }
%struct.archive_entry.1 = type { i32 }
%struct.stat = type { i32, i32, i32 }
%struct.archive_string = type { i8*, i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"%s: Unable to continue traversing directory tree\00", align 1
@ARCHIVE_STATE_FATAL = common dso_local global i8* null, align 8
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"%s: Couldn't visit directory\00", align 1
@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"%s: Cannot stat\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"Failed : %s\00", align 1
@ARCHIVE_RETRY = common dso_local global i32 0, align 4
@ARCHIVE_READDISK_NO_TRAVERSE_MOUNTS = common dso_local global i32 0, align 4
@ARCHIVE_READDISK_HONOR_NODUMP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"File removed before we read it\00", align 1
@ARCHIVE_READDISK_MAC_COPYFILE = common dso_local global i32 0, align 4
@EXT2_IOC_GETFLAGS = common dso_local global i32 0, align 4
@EXT2_NODUMP_FL = common dso_local global i32 0, align 4
@FS_IOC_GETFLAGS = common dso_local global i32 0, align 4
@FS_NODUMP_FL = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@UF_NODUMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read_disk*, %struct.tree*, %struct.archive_entry.1*)* @next_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @next_entry(%struct.archive_read_disk* %0, %struct.tree* %1, %struct.archive_entry.1* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_read_disk*, align 8
  %6 = alloca %struct.tree*, align 8
  %7 = alloca %struct.archive_entry.1*, align 8
  %8 = alloca %struct.stat*, align 8
  %9 = alloca %struct.stat*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.archive_string, align 8
  store %struct.archive_read_disk* %0, %struct.archive_read_disk** %5, align 8
  store %struct.tree* %1, %struct.tree** %6, align 8
  store %struct.archive_entry.1* %2, %struct.archive_entry.1** %7, align 8
  %16 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %16, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %17 = call i32 @archive_string_init(%struct.archive_string* %15)
  store %struct.stat* null, %struct.stat** %8, align 8
  store %struct.stat* null, %struct.stat** %9, align 8
  %18 = load %struct.tree*, %struct.tree** %6, align 8
  %19 = getelementptr inbounds %struct.tree, %struct.tree* %18, i32 0, i32 0
  store i32 0, i32* %19, align 8
  br label %20

20:                                               ; preds = %96, %3
  %21 = load %struct.tree*, %struct.tree** %6, align 8
  %22 = call i32 @tree_next(%struct.tree* %21)
  switch i32 %22, label %95 [
    i32 131, label %23
    i32 132, label %39
    i32 0, label %49
    i32 129, label %53
    i32 130, label %53
    i32 128, label %54
  ]

23:                                               ; preds = %20
  %24 = load %struct.archive_read_disk*, %struct.archive_read_disk** %5, align 8
  %25 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %24, i32 0, i32 3
  %26 = load %struct.tree*, %struct.tree** %6, align 8
  %27 = getelementptr inbounds %struct.tree, %struct.tree* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.tree*, %struct.tree** %6, align 8
  %30 = call i8* @tree_current_path(%struct.tree* %29)
  %31 = call i32 @archive_set_error(%struct.TYPE_13__* %25, i32 %28, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8* %30)
  %32 = load i8*, i8** @ARCHIVE_STATE_FATAL, align 8
  %33 = load %struct.archive_read_disk*, %struct.archive_read_disk** %5, align 8
  %34 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  store i8* %32, i8** %35, align 8
  %36 = load %struct.tree*, %struct.tree** %6, align 8
  %37 = call i32 @tree_enter_initial_dir(%struct.tree* %36)
  %38 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %38, i32* %4, align 4
  br label %447

39:                                               ; preds = %20
  %40 = load %struct.archive_read_disk*, %struct.archive_read_disk** %5, align 8
  %41 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %40, i32 0, i32 3
  %42 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %43 = load %struct.tree*, %struct.tree** %6, align 8
  %44 = call i8* @tree_current_path(%struct.tree* %43)
  %45 = call i32 @archive_set_error(%struct.TYPE_13__* %41, i32 %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %44)
  %46 = load %struct.tree*, %struct.tree** %6, align 8
  %47 = call i32 @tree_enter_initial_dir(%struct.tree* %46)
  %48 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %48, i32* %4, align 4
  br label %447

49:                                               ; preds = %20
  %50 = load %struct.tree*, %struct.tree** %6, align 8
  %51 = call i32 @tree_enter_initial_dir(%struct.tree* %50)
  %52 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %52, i32* %4, align 4
  br label %447

53:                                               ; preds = %20, %20
  br label %95

54:                                               ; preds = %20
  %55 = load %struct.tree*, %struct.tree** %6, align 8
  %56 = call %struct.stat* @tree_current_lstat(%struct.tree* %55)
  store %struct.stat* %56, %struct.stat** %9, align 8
  %57 = load %struct.stat*, %struct.stat** %9, align 8
  %58 = icmp eq %struct.stat* %57, null
  br i1 %58, label %59, label %94

59:                                               ; preds = %54
  %60 = load i32, i32* @errno, align 4
  %61 = load i32, i32* @ENOENT, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %83

63:                                               ; preds = %59
  %64 = load %struct.tree*, %struct.tree** %6, align 8
  %65 = getelementptr inbounds %struct.tree, %struct.tree* %64, i32 0, i32 8
  %66 = load i32, i32* %65, align 8
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %83

68:                                               ; preds = %63
  %69 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* @errno, align 4
  store i32 %70, i32* %12, align 4
  %71 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %15, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load %struct.tree*, %struct.tree** %6, align 8
  %76 = call i8* @tree_current_path(%struct.tree* %75)
  %77 = call i32 @archive_string_sprintf(%struct.archive_string* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %76)
  br label %82

78:                                               ; preds = %68
  %79 = load %struct.tree*, %struct.tree** %6, align 8
  %80 = call i8* @tree_current_path(%struct.tree* %79)
  %81 = call i32 @archive_string_sprintf(%struct.archive_string* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %80)
  br label %82

82:                                               ; preds = %78, %74
  br label %93

83:                                               ; preds = %63, %59
  %84 = load %struct.archive_read_disk*, %struct.archive_read_disk** %5, align 8
  %85 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %84, i32 0, i32 3
  %86 = load i32, i32* @errno, align 4
  %87 = load %struct.tree*, %struct.tree** %6, align 8
  %88 = call i8* @tree_current_path(%struct.tree* %87)
  %89 = call i32 @archive_set_error(%struct.TYPE_13__* %85, i32 %86, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %88)
  %90 = load %struct.tree*, %struct.tree** %6, align 8
  %91 = call i32 @tree_enter_initial_dir(%struct.tree* %90)
  %92 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %92, i32* %4, align 4
  br label %447

93:                                               ; preds = %82
  br label %94

94:                                               ; preds = %93, %54
  br label %95

95:                                               ; preds = %20, %94, %53
  br label %96

96:                                               ; preds = %95
  %97 = load %struct.stat*, %struct.stat** %9, align 8
  %98 = icmp eq %struct.stat* %97, null
  br i1 %98, label %20, label %99

99:                                               ; preds = %96
  %100 = load %struct.archive_entry.1*, %struct.archive_entry.1** %7, align 8
  %101 = load %struct.tree*, %struct.tree** %6, align 8
  %102 = call i8* @tree_current_path(%struct.tree* %101)
  %103 = call i32 @archive_entry_copy_pathname(%struct.archive_entry.1* %100, i8* %102)
  %104 = load %struct.archive_read_disk*, %struct.archive_read_disk** %5, align 8
  %105 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %104, i32 0, i32 8
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %149

108:                                              ; preds = %99
  %109 = load %struct.archive_read_disk*, %struct.archive_read_disk** %5, align 8
  %110 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %109, i32 0, i32 8
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.archive_entry.1*, %struct.archive_entry.1** %7, align 8
  %113 = call i32 @archive_match_path_excluded(i64 %111, %struct.archive_entry.1* %112)
  store i32 %113, i32* %14, align 4
  %114 = load i32, i32* %14, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %126

116:                                              ; preds = %108
  %117 = load %struct.archive_read_disk*, %struct.archive_read_disk** %5, align 8
  %118 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %117, i32 0, i32 3
  %119 = load i32, i32* @errno, align 4
  %120 = load %struct.archive_read_disk*, %struct.archive_read_disk** %5, align 8
  %121 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %120, i32 0, i32 8
  %122 = load i64, i64* %121, align 8
  %123 = call i8* @archive_error_string(i64 %122)
  %124 = call i32 @archive_set_error(%struct.TYPE_13__* %118, i32 %119, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* %123)
  %125 = load i32, i32* %14, align 4
  store i32 %125, i32* %4, align 4
  br label %447

126:                                              ; preds = %108
  %127 = load i32, i32* %14, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %148

129:                                              ; preds = %126
  %130 = load %struct.archive_read_disk*, %struct.archive_read_disk** %5, align 8
  %131 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %130, i32 0, i32 7
  %132 = load i32 (%struct.TYPE_13__*, i32, %struct.archive_entry.0*)*, i32 (%struct.TYPE_13__*, i32, %struct.archive_entry.0*)** %131, align 8
  %133 = icmp ne i32 (%struct.TYPE_13__*, i32, %struct.archive_entry.0*)* %132, null
  br i1 %133, label %134, label %146

134:                                              ; preds = %129
  %135 = load %struct.archive_read_disk*, %struct.archive_read_disk** %5, align 8
  %136 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %135, i32 0, i32 7
  %137 = load i32 (%struct.TYPE_13__*, i32, %struct.archive_entry.0*)*, i32 (%struct.TYPE_13__*, i32, %struct.archive_entry.0*)** %136, align 8
  %138 = load %struct.archive_read_disk*, %struct.archive_read_disk** %5, align 8
  %139 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %138, i32 0, i32 3
  %140 = load %struct.archive_read_disk*, %struct.archive_read_disk** %5, align 8
  %141 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %140, i32 0, i32 6
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.archive_entry.1*, %struct.archive_entry.1** %7, align 8
  %144 = bitcast %struct.archive_entry.1* %143 to %struct.archive_entry.0*
  %145 = call i32 %137(%struct.TYPE_13__* %139, i32 %142, %struct.archive_entry.0* %144)
  br label %146

146:                                              ; preds = %134, %129
  %147 = load i32, i32* @ARCHIVE_RETRY, align 4
  store i32 %147, i32* %4, align 4
  br label %447

148:                                              ; preds = %126
  br label %149

149:                                              ; preds = %148, %99
  %150 = load %struct.tree*, %struct.tree** %6, align 8
  %151 = getelementptr inbounds %struct.tree, %struct.tree* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  switch i32 %152, label %174 [
    i32 72, label %153
    i32 76, label %156
  ]

153:                                              ; preds = %149
  %154 = load %struct.tree*, %struct.tree** %6, align 8
  %155 = getelementptr inbounds %struct.tree, %struct.tree* %154, i32 0, i32 2
  store i32 80, i32* %155, align 8
  br label %156

156:                                              ; preds = %149, %153
  %157 = load %struct.tree*, %struct.tree** %6, align 8
  %158 = call i32 @tree_current_is_dir(%struct.tree* %157)
  store i32 %158, i32* %13, align 4
  %159 = load %struct.archive_read_disk*, %struct.archive_read_disk** %5, align 8
  %160 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %159, i32 0, i32 1
  store i8 76, i8* %160, align 4
  %161 = load %struct.archive_read_disk*, %struct.archive_read_disk** %5, align 8
  %162 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %161, i32 0, i32 2
  store i32 1, i32* %162, align 8
  %163 = load %struct.tree*, %struct.tree** %6, align 8
  %164 = call %struct.stat* @tree_current_stat(%struct.tree* %163)
  store %struct.stat* %164, %struct.stat** %8, align 8
  %165 = load %struct.stat*, %struct.stat** %8, align 8
  %166 = icmp ne %struct.stat* %165, null
  br i1 %166, label %167, label %173

167:                                              ; preds = %156
  %168 = load %struct.tree*, %struct.tree** %6, align 8
  %169 = load %struct.stat*, %struct.stat** %8, align 8
  %170 = call i32 @tree_target_is_same_as_parent(%struct.tree* %168, %struct.stat* %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %173, label %172

172:                                              ; preds = %167
  br label %182

173:                                              ; preds = %167, %156
  br label %174

174:                                              ; preds = %149, %173
  %175 = load %struct.tree*, %struct.tree** %6, align 8
  %176 = call i32 @tree_current_is_physical_dir(%struct.tree* %175)
  store i32 %176, i32* %13, align 4
  %177 = load %struct.archive_read_disk*, %struct.archive_read_disk** %5, align 8
  %178 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %177, i32 0, i32 1
  store i8 80, i8* %178, align 4
  %179 = load %struct.archive_read_disk*, %struct.archive_read_disk** %5, align 8
  %180 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %179, i32 0, i32 2
  store i32 0, i32* %180, align 8
  %181 = load %struct.stat*, %struct.stat** %9, align 8
  store %struct.stat* %181, %struct.stat** %8, align 8
  br label %182

182:                                              ; preds = %174, %172
  %183 = load %struct.archive_read_disk*, %struct.archive_read_disk** %5, align 8
  %184 = load %struct.stat*, %struct.stat** %8, align 8
  %185 = getelementptr inbounds %struct.stat, %struct.stat* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @update_current_filesystem(%struct.archive_read_disk* %183, i32 %186)
  %188 = load i32, i32* @ARCHIVE_OK, align 4
  %189 = icmp ne i32 %187, %188
  br i1 %189, label %190, label %198

190:                                              ; preds = %182
  %191 = load i8*, i8** @ARCHIVE_STATE_FATAL, align 8
  %192 = load %struct.archive_read_disk*, %struct.archive_read_disk** %5, align 8
  %193 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %192, i32 0, i32 3
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 0
  store i8* %191, i8** %194, align 8
  %195 = load %struct.tree*, %struct.tree** %6, align 8
  %196 = call i32 @tree_enter_initial_dir(%struct.tree* %195)
  %197 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %197, i32* %4, align 4
  br label %447

198:                                              ; preds = %182
  %199 = load %struct.tree*, %struct.tree** %6, align 8
  %200 = getelementptr inbounds %struct.tree, %struct.tree* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 4
  %202 = icmp eq i32 %201, -1
  br i1 %202, label %203, label %209

203:                                              ; preds = %198
  %204 = load %struct.tree*, %struct.tree** %6, align 8
  %205 = getelementptr inbounds %struct.tree, %struct.tree* %204, i32 0, i32 4
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.tree*, %struct.tree** %6, align 8
  %208 = getelementptr inbounds %struct.tree, %struct.tree* %207, i32 0, i32 3
  store i32 %206, i32* %208, align 4
  br label %209

209:                                              ; preds = %203, %198
  %210 = load %struct.archive_read_disk*, %struct.archive_read_disk** %5, align 8
  %211 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @ARCHIVE_READDISK_NO_TRAVERSE_MOUNTS, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %226

216:                                              ; preds = %209
  %217 = load %struct.tree*, %struct.tree** %6, align 8
  %218 = getelementptr inbounds %struct.tree, %struct.tree* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.tree*, %struct.tree** %6, align 8
  %221 = getelementptr inbounds %struct.tree, %struct.tree* %220, i32 0, i32 4
  %222 = load i32, i32* %221, align 8
  %223 = icmp ne i32 %219, %222
  br i1 %223, label %224, label %225

224:                                              ; preds = %216
  store i32 0, i32* %13, align 4
  br label %225

225:                                              ; preds = %224, %216
  br label %226

226:                                              ; preds = %225, %209
  %227 = load i32, i32* %13, align 4
  %228 = load %struct.tree*, %struct.tree** %6, align 8
  %229 = getelementptr inbounds %struct.tree, %struct.tree* %228, i32 0, i32 0
  store i32 %227, i32* %229, align 8
  %230 = load %struct.archive_read_disk*, %struct.archive_read_disk** %5, align 8
  %231 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* @ARCHIVE_READDISK_HONOR_NODUMP, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %226
  br label %237

237:                                              ; preds = %236, %226
  %238 = load %struct.archive_entry.1*, %struct.archive_entry.1** %7, align 8
  %239 = load %struct.stat*, %struct.stat** %8, align 8
  %240 = call i32 @archive_entry_copy_stat(%struct.archive_entry.1* %238, %struct.stat* %239)
  %241 = load %struct.archive_entry.1*, %struct.archive_entry.1** %7, align 8
  %242 = call i32 @archive_entry_mtime(%struct.archive_entry.1* %241)
  %243 = load %struct.tree*, %struct.tree** %6, align 8
  %244 = getelementptr inbounds %struct.tree, %struct.tree* %243, i32 0, i32 7
  %245 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %244, i32 0, i32 5
  store i32 %242, i32* %245, align 4
  %246 = load %struct.archive_entry.1*, %struct.archive_entry.1** %7, align 8
  %247 = call i32 @archive_entry_mtime_nsec(%struct.archive_entry.1* %246)
  %248 = load %struct.tree*, %struct.tree** %6, align 8
  %249 = getelementptr inbounds %struct.tree, %struct.tree* %248, i32 0, i32 7
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %249, i32 0, i32 4
  store i32 %247, i32* %250, align 8
  %251 = load %struct.archive_entry.1*, %struct.archive_entry.1** %7, align 8
  %252 = call i32 @archive_entry_atime(%struct.archive_entry.1* %251)
  %253 = load %struct.tree*, %struct.tree** %6, align 8
  %254 = getelementptr inbounds %struct.tree, %struct.tree* %253, i32 0, i32 7
  %255 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %254, i32 0, i32 3
  store i32 %252, i32* %255, align 4
  %256 = load %struct.archive_entry.1*, %struct.archive_entry.1** %7, align 8
  %257 = call i32 @archive_entry_atime_nsec(%struct.archive_entry.1* %256)
  %258 = load %struct.tree*, %struct.tree** %6, align 8
  %259 = getelementptr inbounds %struct.tree, %struct.tree* %258, i32 0, i32 7
  %260 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %259, i32 0, i32 2
  store i32 %257, i32* %260, align 8
  %261 = load %struct.archive_entry.1*, %struct.archive_entry.1** %7, align 8
  %262 = call i32 @archive_entry_filetype(%struct.archive_entry.1* %261)
  %263 = load %struct.tree*, %struct.tree** %6, align 8
  %264 = getelementptr inbounds %struct.tree, %struct.tree* %263, i32 0, i32 7
  %265 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %264, i32 0, i32 1
  store i32 %262, i32* %265, align 4
  %266 = load %struct.tree*, %struct.tree** %6, align 8
  %267 = getelementptr inbounds %struct.tree, %struct.tree* %266, i32 0, i32 6
  %268 = load %struct.TYPE_12__*, %struct.TYPE_12__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = load %struct.tree*, %struct.tree** %6, align 8
  %272 = getelementptr inbounds %struct.tree, %struct.tree* %271, i32 0, i32 7
  %273 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %272, i32 0, i32 0
  store i32 %270, i32* %273, align 8
  %274 = load %struct.archive_read_disk*, %struct.archive_read_disk** %5, align 8
  %275 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %274, i32 0, i32 8
  %276 = load i64, i64* %275, align 8
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %319

278:                                              ; preds = %237
  %279 = load %struct.archive_read_disk*, %struct.archive_read_disk** %5, align 8
  %280 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %279, i32 0, i32 8
  %281 = load i64, i64* %280, align 8
  %282 = load %struct.archive_entry.1*, %struct.archive_entry.1** %7, align 8
  %283 = call i32 @archive_match_time_excluded(i64 %281, %struct.archive_entry.1* %282)
  store i32 %283, i32* %14, align 4
  %284 = load i32, i32* %14, align 4
  %285 = icmp slt i32 %284, 0
  br i1 %285, label %286, label %296

286:                                              ; preds = %278
  %287 = load %struct.archive_read_disk*, %struct.archive_read_disk** %5, align 8
  %288 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %287, i32 0, i32 3
  %289 = load i32, i32* @errno, align 4
  %290 = load %struct.archive_read_disk*, %struct.archive_read_disk** %5, align 8
  %291 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %290, i32 0, i32 8
  %292 = load i64, i64* %291, align 8
  %293 = call i8* @archive_error_string(i64 %292)
  %294 = call i32 @archive_set_error(%struct.TYPE_13__* %288, i32 %289, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* %293)
  %295 = load i32, i32* %14, align 4
  store i32 %295, i32* %4, align 4
  br label %447

296:                                              ; preds = %278
  %297 = load i32, i32* %14, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %318

299:                                              ; preds = %296
  %300 = load %struct.archive_read_disk*, %struct.archive_read_disk** %5, align 8
  %301 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %300, i32 0, i32 7
  %302 = load i32 (%struct.TYPE_13__*, i32, %struct.archive_entry.0*)*, i32 (%struct.TYPE_13__*, i32, %struct.archive_entry.0*)** %301, align 8
  %303 = icmp ne i32 (%struct.TYPE_13__*, i32, %struct.archive_entry.0*)* %302, null
  br i1 %303, label %304, label %316

304:                                              ; preds = %299
  %305 = load %struct.archive_read_disk*, %struct.archive_read_disk** %5, align 8
  %306 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %305, i32 0, i32 7
  %307 = load i32 (%struct.TYPE_13__*, i32, %struct.archive_entry.0*)*, i32 (%struct.TYPE_13__*, i32, %struct.archive_entry.0*)** %306, align 8
  %308 = load %struct.archive_read_disk*, %struct.archive_read_disk** %5, align 8
  %309 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %308, i32 0, i32 3
  %310 = load %struct.archive_read_disk*, %struct.archive_read_disk** %5, align 8
  %311 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %310, i32 0, i32 6
  %312 = load i32, i32* %311, align 8
  %313 = load %struct.archive_entry.1*, %struct.archive_entry.1** %7, align 8
  %314 = bitcast %struct.archive_entry.1* %313 to %struct.archive_entry.0*
  %315 = call i32 %307(%struct.TYPE_13__* %309, i32 %312, %struct.archive_entry.0* %314)
  br label %316

316:                                              ; preds = %304, %299
  %317 = load i32, i32* @ARCHIVE_RETRY, align 4
  store i32 %317, i32* %4, align 4
  br label %447

318:                                              ; preds = %296
  br label %319

319:                                              ; preds = %318, %237
  %320 = load %struct.archive_read_disk*, %struct.archive_read_disk** %5, align 8
  %321 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %320, i32 0, i32 3
  %322 = load %struct.archive_entry.1*, %struct.archive_entry.1** %7, align 8
  %323 = call i32 @archive_entry_uid(%struct.archive_entry.1* %322)
  %324 = call i8* @archive_read_disk_uname(%struct.TYPE_13__* %321, i32 %323)
  store i8* %324, i8** %10, align 8
  %325 = load i8*, i8** %10, align 8
  %326 = icmp ne i8* %325, null
  br i1 %326, label %327, label %331

327:                                              ; preds = %319
  %328 = load %struct.archive_entry.1*, %struct.archive_entry.1** %7, align 8
  %329 = load i8*, i8** %10, align 8
  %330 = call i32 @archive_entry_copy_uname(%struct.archive_entry.1* %328, i8* %329)
  br label %331

331:                                              ; preds = %327, %319
  %332 = load %struct.archive_read_disk*, %struct.archive_read_disk** %5, align 8
  %333 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %332, i32 0, i32 3
  %334 = load %struct.archive_entry.1*, %struct.archive_entry.1** %7, align 8
  %335 = call i32 @archive_entry_gid(%struct.archive_entry.1* %334)
  %336 = call i8* @archive_read_disk_gname(%struct.TYPE_13__* %333, i32 %335)
  store i8* %336, i8** %10, align 8
  %337 = load i8*, i8** %10, align 8
  %338 = icmp ne i8* %337, null
  br i1 %338, label %339, label %343

339:                                              ; preds = %331
  %340 = load %struct.archive_entry.1*, %struct.archive_entry.1** %7, align 8
  %341 = load i8*, i8** %10, align 8
  %342 = call i32 @archive_entry_copy_gname(%struct.archive_entry.1* %340, i8* %341)
  br label %343

343:                                              ; preds = %339, %331
  %344 = load %struct.archive_read_disk*, %struct.archive_read_disk** %5, align 8
  %345 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %344, i32 0, i32 8
  %346 = load i64, i64* %345, align 8
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %348, label %389

348:                                              ; preds = %343
  %349 = load %struct.archive_read_disk*, %struct.archive_read_disk** %5, align 8
  %350 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %349, i32 0, i32 8
  %351 = load i64, i64* %350, align 8
  %352 = load %struct.archive_entry.1*, %struct.archive_entry.1** %7, align 8
  %353 = call i32 @archive_match_owner_excluded(i64 %351, %struct.archive_entry.1* %352)
  store i32 %353, i32* %14, align 4
  %354 = load i32, i32* %14, align 4
  %355 = icmp slt i32 %354, 0
  br i1 %355, label %356, label %366

356:                                              ; preds = %348
  %357 = load %struct.archive_read_disk*, %struct.archive_read_disk** %5, align 8
  %358 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %357, i32 0, i32 3
  %359 = load i32, i32* @errno, align 4
  %360 = load %struct.archive_read_disk*, %struct.archive_read_disk** %5, align 8
  %361 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %360, i32 0, i32 8
  %362 = load i64, i64* %361, align 8
  %363 = call i8* @archive_error_string(i64 %362)
  %364 = call i32 @archive_set_error(%struct.TYPE_13__* %358, i32 %359, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* %363)
  %365 = load i32, i32* %14, align 4
  store i32 %365, i32* %4, align 4
  br label %447

366:                                              ; preds = %348
  %367 = load i32, i32* %14, align 4
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %388

369:                                              ; preds = %366
  %370 = load %struct.archive_read_disk*, %struct.archive_read_disk** %5, align 8
  %371 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %370, i32 0, i32 7
  %372 = load i32 (%struct.TYPE_13__*, i32, %struct.archive_entry.0*)*, i32 (%struct.TYPE_13__*, i32, %struct.archive_entry.0*)** %371, align 8
  %373 = icmp ne i32 (%struct.TYPE_13__*, i32, %struct.archive_entry.0*)* %372, null
  br i1 %373, label %374, label %386

374:                                              ; preds = %369
  %375 = load %struct.archive_read_disk*, %struct.archive_read_disk** %5, align 8
  %376 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %375, i32 0, i32 7
  %377 = load i32 (%struct.TYPE_13__*, i32, %struct.archive_entry.0*)*, i32 (%struct.TYPE_13__*, i32, %struct.archive_entry.0*)** %376, align 8
  %378 = load %struct.archive_read_disk*, %struct.archive_read_disk** %5, align 8
  %379 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %378, i32 0, i32 3
  %380 = load %struct.archive_read_disk*, %struct.archive_read_disk** %5, align 8
  %381 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %380, i32 0, i32 6
  %382 = load i32, i32* %381, align 8
  %383 = load %struct.archive_entry.1*, %struct.archive_entry.1** %7, align 8
  %384 = bitcast %struct.archive_entry.1* %383 to %struct.archive_entry.0*
  %385 = call i32 %377(%struct.TYPE_13__* %379, i32 %382, %struct.archive_entry.0* %384)
  br label %386

386:                                              ; preds = %374, %369
  %387 = load i32, i32* @ARCHIVE_RETRY, align 4
  store i32 %387, i32* %4, align 4
  br label %447

388:                                              ; preds = %366
  br label %389

389:                                              ; preds = %388, %343
  %390 = load %struct.archive_read_disk*, %struct.archive_read_disk** %5, align 8
  %391 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %390, i32 0, i32 5
  %392 = load i32 (%struct.TYPE_13__*, i32, %struct.archive_entry*)*, i32 (%struct.TYPE_13__*, i32, %struct.archive_entry*)** %391, align 8
  %393 = icmp ne i32 (%struct.TYPE_13__*, i32, %struct.archive_entry*)* %392, null
  br i1 %393, label %394, label %410

394:                                              ; preds = %389
  %395 = load %struct.archive_read_disk*, %struct.archive_read_disk** %5, align 8
  %396 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %395, i32 0, i32 5
  %397 = load i32 (%struct.TYPE_13__*, i32, %struct.archive_entry*)*, i32 (%struct.TYPE_13__*, i32, %struct.archive_entry*)** %396, align 8
  %398 = load %struct.archive_read_disk*, %struct.archive_read_disk** %5, align 8
  %399 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %398, i32 0, i32 3
  %400 = load %struct.archive_read_disk*, %struct.archive_read_disk** %5, align 8
  %401 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %400, i32 0, i32 4
  %402 = load i32, i32* %401, align 8
  %403 = load %struct.archive_entry.1*, %struct.archive_entry.1** %7, align 8
  %404 = bitcast %struct.archive_entry.1* %403 to %struct.archive_entry*
  %405 = call i32 %397(%struct.TYPE_13__* %399, i32 %402, %struct.archive_entry* %404)
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %409, label %407

407:                                              ; preds = %394
  %408 = load i32, i32* @ARCHIVE_RETRY, align 4
  store i32 %408, i32* %4, align 4
  br label %447

409:                                              ; preds = %394
  br label %410

410:                                              ; preds = %409, %389
  %411 = load %struct.archive_entry.1*, %struct.archive_entry.1** %7, align 8
  %412 = load %struct.tree*, %struct.tree** %6, align 8
  %413 = call i32 @tree_current_access_path(%struct.tree* %412)
  %414 = call i32 @archive_entry_copy_sourcepath(%struct.archive_entry.1* %411, i32 %413)
  %415 = load %struct.archive_read_disk*, %struct.archive_read_disk** %5, align 8
  %416 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %415, i32 0, i32 3
  %417 = load %struct.archive_entry.1*, %struct.archive_entry.1** %7, align 8
  %418 = load %struct.tree*, %struct.tree** %6, align 8
  %419 = getelementptr inbounds %struct.tree, %struct.tree* %418, i32 0, i32 5
  %420 = load i64, i64* %419, align 8
  %421 = load %struct.stat*, %struct.stat** %8, align 8
  %422 = call i32 @archive_read_disk_entry_from_file(%struct.TYPE_13__* %416, %struct.archive_entry.1* %417, i64 %420, %struct.stat* %421)
  store i32 %422, i32* %14, align 4
  %423 = load i32, i32* %14, align 4
  %424 = load i32, i32* @ARCHIVE_OK, align 4
  %425 = icmp eq i32 %423, %424
  br i1 %425, label %426, label %440

426:                                              ; preds = %410
  %427 = load i32, i32* %11, align 4
  store i32 %427, i32* %14, align 4
  %428 = load i32, i32* %14, align 4
  %429 = load i32, i32* @ARCHIVE_OK, align 4
  %430 = icmp ne i32 %428, %429
  br i1 %430, label %431, label %439

431:                                              ; preds = %426
  %432 = call i32 @archive_string_sprintf(%struct.archive_string* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  %433 = load %struct.archive_read_disk*, %struct.archive_read_disk** %5, align 8
  %434 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %433, i32 0, i32 3
  %435 = load i32, i32* %12, align 4
  %436 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %15, i32 0, i32 0
  %437 = load i8*, i8** %436, align 8
  %438 = call i32 @archive_set_error(%struct.TYPE_13__* %434, i32 %435, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %437)
  br label %439

439:                                              ; preds = %431, %426
  br label %440

440:                                              ; preds = %439, %410
  %441 = call i32 @archive_string_empty(%struct.archive_string* %15)
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %445, label %443

443:                                              ; preds = %440
  %444 = call i32 @archive_string_free(%struct.archive_string* %15)
  br label %445

445:                                              ; preds = %443, %440
  %446 = load i32, i32* %14, align 4
  store i32 %446, i32* %4, align 4
  br label %447

447:                                              ; preds = %445, %407, %386, %356, %316, %286, %190, %146, %116, %83, %49, %39, %23
  %448 = load i32, i32* %4, align 4
  ret i32 %448
}

declare dso_local i32 @archive_string_init(%struct.archive_string*) #1

declare dso_local i32 @tree_next(%struct.tree*) #1

declare dso_local i32 @archive_set_error(%struct.TYPE_13__*, i32, i8*, i8*) #1

declare dso_local i8* @tree_current_path(%struct.tree*) #1

declare dso_local i32 @tree_enter_initial_dir(%struct.tree*) #1

declare dso_local %struct.stat* @tree_current_lstat(%struct.tree*) #1

declare dso_local i32 @archive_string_sprintf(%struct.archive_string*, i8*, i8*) #1

declare dso_local i32 @archive_entry_copy_pathname(%struct.archive_entry.1*, i8*) #1

declare dso_local i32 @archive_match_path_excluded(i64, %struct.archive_entry.1*) #1

declare dso_local i8* @archive_error_string(i64) #1

declare dso_local i32 @tree_current_is_dir(%struct.tree*) #1

declare dso_local %struct.stat* @tree_current_stat(%struct.tree*) #1

declare dso_local i32 @tree_target_is_same_as_parent(%struct.tree*, %struct.stat*) #1

declare dso_local i32 @tree_current_is_physical_dir(%struct.tree*) #1

declare dso_local i32 @update_current_filesystem(%struct.archive_read_disk*, i32) #1

declare dso_local i32 @archive_entry_copy_stat(%struct.archive_entry.1*, %struct.stat*) #1

declare dso_local i32 @archive_entry_mtime(%struct.archive_entry.1*) #1

declare dso_local i32 @archive_entry_mtime_nsec(%struct.archive_entry.1*) #1

declare dso_local i32 @archive_entry_atime(%struct.archive_entry.1*) #1

declare dso_local i32 @archive_entry_atime_nsec(%struct.archive_entry.1*) #1

declare dso_local i32 @archive_entry_filetype(%struct.archive_entry.1*) #1

declare dso_local i32 @archive_match_time_excluded(i64, %struct.archive_entry.1*) #1

declare dso_local i8* @archive_read_disk_uname(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @archive_entry_uid(%struct.archive_entry.1*) #1

declare dso_local i32 @archive_entry_copy_uname(%struct.archive_entry.1*, i8*) #1

declare dso_local i8* @archive_read_disk_gname(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @archive_entry_gid(%struct.archive_entry.1*) #1

declare dso_local i32 @archive_entry_copy_gname(%struct.archive_entry.1*, i8*) #1

declare dso_local i32 @archive_match_owner_excluded(i64, %struct.archive_entry.1*) #1

declare dso_local i32 @archive_entry_copy_sourcepath(%struct.archive_entry.1*, i32) #1

declare dso_local i32 @tree_current_access_path(%struct.tree*) #1

declare dso_local i32 @archive_read_disk_entry_from_file(%struct.TYPE_13__*, %struct.archive_entry.1*, i64, %struct.stat*) #1

declare dso_local i32 @archive_string_empty(%struct.archive_string*) #1

declare dso_local i32 @archive_string_free(%struct.archive_string*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
