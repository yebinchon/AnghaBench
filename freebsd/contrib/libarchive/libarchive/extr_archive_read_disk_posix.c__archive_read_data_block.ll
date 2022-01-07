; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_disk_posix.c__archive_read_data_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_disk_posix.c__archive_read_data_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_read_disk = type { %struct.TYPE_8__, %struct.tree* }
%struct.TYPE_8__ = type { i8* }
%struct.tree = type { i32, i64, i64, i32, i32, i8*, i64, i64, %struct.TYPE_7__, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i32, i8*, i64, i32* }

@ARCHIVE_READ_DISK_MAGIC = common dso_local global i32 0, align 4
@ARCHIVE_STATE_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"archive_read_data_block\00", align 1
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@O_BINARY = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"Couldn't open %s\00", align 1
@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_STATE_FATAL = common dso_local global i8* null, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"Seek error\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"Read error\00", align 1
@EPERM = common dso_local global i64 0, align 8
@O_DIRECT = common dso_local global i32 0, align 4
@O_NOATIME = common dso_local global i32 0, align 4
@needsRestoreTimes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive*, i8**, i64*, i64*)* @_archive_read_data_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_archive_read_data_block(%struct.archive* %0, i8** %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.archive_read_disk*, align 8
  %11 = alloca %struct.tree*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.archive* %0, %struct.archive** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %17 = load %struct.archive*, %struct.archive** %6, align 8
  %18 = bitcast %struct.archive* %17 to %struct.archive_read_disk*
  store %struct.archive_read_disk* %18, %struct.archive_read_disk** %10, align 8
  %19 = load %struct.archive_read_disk*, %struct.archive_read_disk** %10, align 8
  %20 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %19, i32 0, i32 1
  %21 = load %struct.tree*, %struct.tree** %20, align 8
  store %struct.tree* %21, %struct.tree** %11, align 8
  store i32 0, i32* %15, align 4
  %22 = load %struct.archive*, %struct.archive** %6, align 8
  %23 = load i32, i32* @ARCHIVE_READ_DISK_MAGIC, align 4
  %24 = load i32, i32* @ARCHIVE_STATE_DATA, align 4
  %25 = call i32 @archive_check_magic(%struct.archive* %22, i32 %23, i32 %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.tree*, %struct.tree** %11, align 8
  %27 = getelementptr inbounds %struct.tree, %struct.tree* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %4
  %31 = load %struct.tree*, %struct.tree** %11, align 8
  %32 = getelementptr inbounds %struct.tree, %struct.tree* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp sle i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30, %4
  %36 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %36, i32* %12, align 4
  br label %293

37:                                               ; preds = %30
  %38 = load %struct.tree*, %struct.tree** %11, align 8
  %39 = getelementptr inbounds %struct.tree, %struct.tree* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %76

42:                                               ; preds = %37
  %43 = load i32, i32* @O_RDONLY, align 4
  %44 = load i32, i32* @O_BINARY, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @O_CLOEXEC, align 4
  %47 = or i32 %45, %46
  store i32 %47, i32* %16, align 4
  %48 = load %struct.tree*, %struct.tree** %11, align 8
  %49 = load %struct.tree*, %struct.tree** %11, align 8
  %50 = call i32 @tree_current_access_path(%struct.tree* %49)
  %51 = load i32, i32* %16, align 4
  %52 = call i64 @open_on_current_dir(%struct.tree* %48, i32 %50, i32 %51)
  %53 = load %struct.tree*, %struct.tree** %11, align 8
  %54 = getelementptr inbounds %struct.tree, %struct.tree* %53, i32 0, i32 2
  store i64 %52, i64* %54, align 8
  %55 = load %struct.tree*, %struct.tree** %11, align 8
  %56 = getelementptr inbounds %struct.tree, %struct.tree* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @__archive_ensure_cloexec_flag(i64 %57)
  %59 = load %struct.tree*, %struct.tree** %11, align 8
  %60 = getelementptr inbounds %struct.tree, %struct.tree* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %42
  %64 = load %struct.archive_read_disk*, %struct.archive_read_disk** %10, align 8
  %65 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %64, i32 0, i32 0
  %66 = load i64, i64* @errno, align 8
  %67 = load %struct.tree*, %struct.tree** %11, align 8
  %68 = call i32 @tree_current_path(%struct.tree* %67)
  %69 = call i32 (%struct.TYPE_8__*, i64, i8*, ...) @archive_set_error(%struct.TYPE_8__* %65, i64 %66, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %70, i32* %12, align 4
  %71 = load %struct.tree*, %struct.tree** %11, align 8
  %72 = call i32 @tree_enter_initial_dir(%struct.tree* %71)
  br label %293

73:                                               ; preds = %42
  %74 = load %struct.tree*, %struct.tree** %11, align 8
  %75 = call i32 @tree_enter_initial_dir(%struct.tree* %74)
  br label %76

76:                                               ; preds = %73, %37
  %77 = load %struct.tree*, %struct.tree** %11, align 8
  %78 = getelementptr inbounds %struct.tree, %struct.tree* %77, i32 0, i32 10
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 3
  %81 = load i32*, i32** %80, align 8
  %82 = icmp eq i32* %81, null
  br i1 %82, label %83, label %95

83:                                               ; preds = %76
  %84 = load %struct.archive_read_disk*, %struct.archive_read_disk** %10, align 8
  %85 = call i32 @setup_suitable_read_buffer(%struct.archive_read_disk* %84)
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* @ARCHIVE_OK, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %83
  %90 = load i8*, i8** @ARCHIVE_STATE_FATAL, align 8
  %91 = load %struct.archive_read_disk*, %struct.archive_read_disk** %10, align 8
  %92 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  store i8* %90, i8** %93, align 8
  br label %293

94:                                               ; preds = %83
  br label %95

95:                                               ; preds = %94, %76
  %96 = load %struct.tree*, %struct.tree** %11, align 8
  %97 = getelementptr inbounds %struct.tree, %struct.tree* %96, i32 0, i32 10
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = load %struct.tree*, %struct.tree** %11, align 8
  %102 = getelementptr inbounds %struct.tree, %struct.tree* %101, i32 0, i32 5
  store i8* %100, i8** %102, align 8
  %103 = load %struct.tree*, %struct.tree** %11, align 8
  %104 = getelementptr inbounds %struct.tree, %struct.tree* %103, i32 0, i32 10
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.tree*, %struct.tree** %11, align 8
  %109 = getelementptr inbounds %struct.tree, %struct.tree* %108, i32 0, i32 6
  store i64 %107, i64* %109, align 8
  %110 = load %struct.tree*, %struct.tree** %11, align 8
  %111 = getelementptr inbounds %struct.tree, %struct.tree* %110, i32 0, i32 6
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %14, align 8
  %113 = load i64, i64* %14, align 8
  %114 = load %struct.tree*, %struct.tree** %11, align 8
  %115 = getelementptr inbounds %struct.tree, %struct.tree* %114, i32 0, i32 9
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp ugt i64 %113, %118
  br i1 %119, label %120, label %126

120:                                              ; preds = %95
  %121 = load %struct.tree*, %struct.tree** %11, align 8
  %122 = getelementptr inbounds %struct.tree, %struct.tree* %121, i32 0, i32 9
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  store i64 %125, i64* %14, align 8
  br label %126

126:                                              ; preds = %120, %95
  %127 = load %struct.tree*, %struct.tree** %11, align 8
  %128 = getelementptr inbounds %struct.tree, %struct.tree* %127, i32 0, i32 9
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %126
  store i32 1, i32* %15, align 4
  br label %134

134:                                              ; preds = %133, %126
  %135 = load %struct.tree*, %struct.tree** %11, align 8
  %136 = getelementptr inbounds %struct.tree, %struct.tree* %135, i32 0, i32 9
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.tree*, %struct.tree** %11, align 8
  %141 = getelementptr inbounds %struct.tree, %struct.tree* %140, i32 0, i32 7
  %142 = load i64, i64* %141, align 8
  %143 = icmp sgt i64 %139, %142
  br i1 %143, label %144, label %187

144:                                              ; preds = %134
  %145 = load %struct.tree*, %struct.tree** %11, align 8
  %146 = getelementptr inbounds %struct.tree, %struct.tree* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.tree*, %struct.tree** %11, align 8
  %149 = getelementptr inbounds %struct.tree, %struct.tree* %148, i32 0, i32 9
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = trunc i64 %152 to i32
  %154 = load i32, i32* @SEEK_SET, align 4
  %155 = call i64 @lseek(i64 %147, i32 %153, i32 %154)
  %156 = icmp slt i64 %155, 0
  br i1 %156, label %157, label %167

157:                                              ; preds = %144
  %158 = load %struct.archive_read_disk*, %struct.archive_read_disk** %10, align 8
  %159 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %158, i32 0, i32 0
  %160 = load i64, i64* @errno, align 8
  %161 = call i32 (%struct.TYPE_8__*, i64, i8*, ...) @archive_set_error(%struct.TYPE_8__* %159, i64 %160, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %162 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %162, i32* %12, align 4
  %163 = load i8*, i8** @ARCHIVE_STATE_FATAL, align 8
  %164 = load %struct.archive_read_disk*, %struct.archive_read_disk** %10, align 8
  %165 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 0
  store i8* %163, i8** %166, align 8
  br label %293

167:                                              ; preds = %144
  %168 = load %struct.tree*, %struct.tree** %11, align 8
  %169 = getelementptr inbounds %struct.tree, %struct.tree* %168, i32 0, i32 9
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.tree*, %struct.tree** %11, align 8
  %174 = getelementptr inbounds %struct.tree, %struct.tree* %173, i32 0, i32 7
  %175 = load i64, i64* %174, align 8
  %176 = sub nsw i64 %172, %175
  store i64 %176, i64* %13, align 8
  %177 = load i64, i64* %13, align 8
  %178 = load %struct.tree*, %struct.tree** %11, align 8
  %179 = getelementptr inbounds %struct.tree, %struct.tree* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = sub i64 %180, %177
  store i64 %181, i64* %179, align 8
  %182 = load i64, i64* %13, align 8
  %183 = load %struct.tree*, %struct.tree** %11, align 8
  %184 = getelementptr inbounds %struct.tree, %struct.tree* %183, i32 0, i32 7
  %185 = load i64, i64* %184, align 8
  %186 = add i64 %185, %182
  store i64 %186, i64* %184, align 8
  br label %187

187:                                              ; preds = %167, %134
  %188 = load i64, i64* %14, align 8
  %189 = icmp ugt i64 %188, 0
  br i1 %189, label %190, label %212

190:                                              ; preds = %187
  %191 = load %struct.tree*, %struct.tree** %11, align 8
  %192 = getelementptr inbounds %struct.tree, %struct.tree* %191, i32 0, i32 2
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.tree*, %struct.tree** %11, align 8
  %195 = getelementptr inbounds %struct.tree, %struct.tree* %194, i32 0, i32 5
  %196 = load i8*, i8** %195, align 8
  %197 = load i64, i64* %14, align 8
  %198 = call i64 @read(i64 %193, i8* %196, i64 %197)
  store i64 %198, i64* %13, align 8
  %199 = load i64, i64* %13, align 8
  %200 = icmp ult i64 %199, 0
  br i1 %200, label %201, label %211

201:                                              ; preds = %190
  %202 = load %struct.archive_read_disk*, %struct.archive_read_disk** %10, align 8
  %203 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %202, i32 0, i32 0
  %204 = load i64, i64* @errno, align 8
  %205 = call i32 (%struct.TYPE_8__*, i64, i8*, ...) @archive_set_error(%struct.TYPE_8__* %203, i64 %204, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %206 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %206, i32* %12, align 4
  %207 = load i8*, i8** @ARCHIVE_STATE_FATAL, align 8
  %208 = load %struct.archive_read_disk*, %struct.archive_read_disk** %10, align 8
  %209 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 0
  store i8* %207, i8** %210, align 8
  br label %293

211:                                              ; preds = %190
  br label %213

212:                                              ; preds = %187
  store i64 0, i64* %13, align 8
  br label %213

213:                                              ; preds = %212, %211
  %214 = load i64, i64* %13, align 8
  %215 = icmp eq i64 %214, 0
  br i1 %215, label %216, label %223

216:                                              ; preds = %213
  %217 = load i32, i32* %15, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %223, label %219

219:                                              ; preds = %216
  %220 = load %struct.tree*, %struct.tree** %11, align 8
  %221 = getelementptr inbounds %struct.tree, %struct.tree* %220, i32 0, i32 0
  store i32 1, i32* %221, align 8
  %222 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %222, i32* %12, align 4
  br label %293

223:                                              ; preds = %216, %213
  %224 = load %struct.tree*, %struct.tree** %11, align 8
  %225 = getelementptr inbounds %struct.tree, %struct.tree* %224, i32 0, i32 5
  %226 = load i8*, i8** %225, align 8
  %227 = load i8**, i8*** %7, align 8
  store i8* %226, i8** %227, align 8
  %228 = load i64, i64* %13, align 8
  %229 = load i64*, i64** %8, align 8
  store i64 %228, i64* %229, align 8
  %230 = load %struct.tree*, %struct.tree** %11, align 8
  %231 = getelementptr inbounds %struct.tree, %struct.tree* %230, i32 0, i32 7
  %232 = load i64, i64* %231, align 8
  %233 = load i64*, i64** %9, align 8
  store i64 %232, i64* %233, align 8
  %234 = load i64, i64* %13, align 8
  %235 = load %struct.tree*, %struct.tree** %11, align 8
  %236 = getelementptr inbounds %struct.tree, %struct.tree* %235, i32 0, i32 7
  %237 = load i64, i64* %236, align 8
  %238 = add i64 %237, %234
  store i64 %238, i64* %236, align 8
  %239 = load i64, i64* %13, align 8
  %240 = load %struct.tree*, %struct.tree** %11, align 8
  %241 = getelementptr inbounds %struct.tree, %struct.tree* %240, i32 0, i32 1
  %242 = load i64, i64* %241, align 8
  %243 = sub i64 %242, %239
  store i64 %243, i64* %241, align 8
  %244 = load %struct.tree*, %struct.tree** %11, align 8
  %245 = getelementptr inbounds %struct.tree, %struct.tree* %244, i32 0, i32 1
  %246 = load i64, i64* %245, align 8
  %247 = icmp eq i64 %246, 0
  br i1 %247, label %248, label %260

248:                                              ; preds = %223
  %249 = load %struct.tree*, %struct.tree** %11, align 8
  %250 = getelementptr inbounds %struct.tree, %struct.tree* %249, i32 0, i32 2
  %251 = load i64, i64* %250, align 8
  %252 = load %struct.tree*, %struct.tree** %11, align 8
  %253 = load %struct.tree*, %struct.tree** %11, align 8
  %254 = getelementptr inbounds %struct.tree, %struct.tree* %253, i32 0, i32 8
  %255 = call i32 @close_and_restore_time(i64 %251, %struct.tree* %252, %struct.TYPE_7__* %254)
  %256 = load %struct.tree*, %struct.tree** %11, align 8
  %257 = getelementptr inbounds %struct.tree, %struct.tree* %256, i32 0, i32 2
  store i64 -1, i64* %257, align 8
  %258 = load %struct.tree*, %struct.tree** %11, align 8
  %259 = getelementptr inbounds %struct.tree, %struct.tree* %258, i32 0, i32 0
  store i32 1, i32* %259, align 8
  br label %260

260:                                              ; preds = %248, %223
  %261 = load i64, i64* %13, align 8
  %262 = load %struct.tree*, %struct.tree** %11, align 8
  %263 = getelementptr inbounds %struct.tree, %struct.tree* %262, i32 0, i32 9
  %264 = load %struct.TYPE_6__*, %struct.TYPE_6__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %264, i32 0, i32 1
  %266 = load i64, i64* %265, align 8
  %267 = add i64 %266, %261
  store i64 %267, i64* %265, align 8
  %268 = load i64, i64* %13, align 8
  %269 = load %struct.tree*, %struct.tree** %11, align 8
  %270 = getelementptr inbounds %struct.tree, %struct.tree* %269, i32 0, i32 9
  %271 = load %struct.TYPE_6__*, %struct.TYPE_6__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = sub i64 %273, %268
  store i64 %274, i64* %272, align 8
  %275 = load %struct.tree*, %struct.tree** %11, align 8
  %276 = getelementptr inbounds %struct.tree, %struct.tree* %275, i32 0, i32 9
  %277 = load %struct.TYPE_6__*, %struct.TYPE_6__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = icmp eq i64 %279, 0
  br i1 %280, label %281, label %291

281:                                              ; preds = %260
  %282 = load %struct.tree*, %struct.tree** %11, align 8
  %283 = getelementptr inbounds %struct.tree, %struct.tree* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %291, label %286

286:                                              ; preds = %281
  %287 = load %struct.tree*, %struct.tree** %11, align 8
  %288 = getelementptr inbounds %struct.tree, %struct.tree* %287, i32 0, i32 9
  %289 = load %struct.TYPE_6__*, %struct.TYPE_6__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %289, i32 1
  store %struct.TYPE_6__* %290, %struct.TYPE_6__** %288, align 8
  br label %291

291:                                              ; preds = %286, %281, %260
  %292 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %292, i32* %5, align 4
  br label %316

293:                                              ; preds = %219, %201, %157, %89, %63, %35
  %294 = load i8**, i8*** %7, align 8
  store i8* null, i8** %294, align 8
  %295 = load i64*, i64** %8, align 8
  store i64 0, i64* %295, align 8
  %296 = load %struct.tree*, %struct.tree** %11, align 8
  %297 = getelementptr inbounds %struct.tree, %struct.tree* %296, i32 0, i32 7
  %298 = load i64, i64* %297, align 8
  %299 = load i64*, i64** %9, align 8
  store i64 %298, i64* %299, align 8
  %300 = load %struct.tree*, %struct.tree** %11, align 8
  %301 = getelementptr inbounds %struct.tree, %struct.tree* %300, i32 0, i32 2
  %302 = load i64, i64* %301, align 8
  %303 = icmp sge i64 %302, 0
  br i1 %303, label %304, label %314

304:                                              ; preds = %293
  %305 = load %struct.tree*, %struct.tree** %11, align 8
  %306 = getelementptr inbounds %struct.tree, %struct.tree* %305, i32 0, i32 2
  %307 = load i64, i64* %306, align 8
  %308 = load %struct.tree*, %struct.tree** %11, align 8
  %309 = load %struct.tree*, %struct.tree** %11, align 8
  %310 = getelementptr inbounds %struct.tree, %struct.tree* %309, i32 0, i32 8
  %311 = call i32 @close_and_restore_time(i64 %307, %struct.tree* %308, %struct.TYPE_7__* %310)
  %312 = load %struct.tree*, %struct.tree** %11, align 8
  %313 = getelementptr inbounds %struct.tree, %struct.tree* %312, i32 0, i32 2
  store i64 -1, i64* %313, align 8
  br label %314

314:                                              ; preds = %304, %293
  %315 = load i32, i32* %12, align 4
  store i32 %315, i32* %5, align 4
  br label %316

316:                                              ; preds = %314, %291
  %317 = load i32, i32* %5, align 4
  ret i32 %317
}

declare dso_local i32 @archive_check_magic(%struct.archive*, i32, i32, i8*) #1

declare dso_local i64 @open_on_current_dir(%struct.tree*, i32, i32) #1

declare dso_local i32 @tree_current_access_path(%struct.tree*) #1

declare dso_local i32 @__archive_ensure_cloexec_flag(i64) #1

declare dso_local i32 @archive_set_error(%struct.TYPE_8__*, i64, i8*, ...) #1

declare dso_local i32 @tree_current_path(%struct.tree*) #1

declare dso_local i32 @tree_enter_initial_dir(%struct.tree*) #1

declare dso_local i32 @setup_suitable_read_buffer(%struct.archive_read_disk*) #1

declare dso_local i64 @lseek(i64, i32, i32) #1

declare dso_local i64 @read(i64, i8*, i64) #1

declare dso_local i32 @close_and_restore_time(i64, %struct.tree*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
