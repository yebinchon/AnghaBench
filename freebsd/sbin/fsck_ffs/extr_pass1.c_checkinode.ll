; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_pass1.c_checkinode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_pass1.c_checkinode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64, i32, i32, i64, i32, i64 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, i8* }
%struct.inodesc = type { i64, i32 (%struct.inodesc*)*, i32, i64, i8*, i32, i8* }
%union.dinode = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i64*, i64, i64, i32, i32 }
%struct.TYPE_16__ = type { i64, i64, i32, i32 }
%struct.TYPE_21__ = type { i32, i8*, i32 }

@di_mode = common dso_local global i32 0, align 4
@IFMT = common dso_local global i32 0, align 4
@sblock = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@FS_UFS1_MAGIC = common dso_local global i64 0, align 8
@ufs1_zino = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4
@UFS_NDADDR = common dso_local global i32 0, align 4
@UFS_NIADDR = common dso_local global i32 0, align 4
@FS_UFS2_MAGIC = common dso_local global i64 0, align 8
@ufs2_zino = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@.str = private unnamed_addr constant [32 x i8] c"PARTIALLY ALLOCATED INODE I=%lu\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"CLEAR\00", align 1
@USTATE = common dso_local global i8* null, align 8
@lastino = common dso_local global i8* null, align 8
@di_size = common dso_local global i32 0, align 4
@IFDIR = common dso_local global i32 0, align 4
@MAXDIRSIZE = common dso_local global i32 0, align 4
@debug = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"bad size %ju:\00", align 1
@preen = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"HOLD BAD BLOCK\00", align 1
@IFREG = common dso_local global i32 0, align 4
@IFBLK = common dso_local global i32 0, align 4
@IFCHR = common dso_local global i32 0, align 4
@IFIFO = common dso_local global i32 0, align 4
@IFSOCK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"bad special-file size %ju:\00", align 1
@di_rdev = common dso_local global i32 0, align 4
@NODEV = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [29 x i8] c"bad special-file rdev NODEV:\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"bad size %ju ndb %ju:\00", align 1
@IFLNK = common dso_local global i32 0, align 4
@di_db = common dso_local global i32* null, align 8
@.str.7 = private unnamed_addr constant [26 x i8] c"bad direct addr[%d]: %ju\0A\00", align 1
@di_ib = common dso_local global i32* null, align 8
@.str.8 = private unnamed_addr constant [24 x i8] c"bad indirect addr: %ju\0A\00", align 1
@n_files = common dso_local global i32 0, align 4
@di_nlink = common dso_local global i32 0, align 4
@DCLEAR = common dso_local global i8* null, align 8
@DZLINK = common dso_local global i8* null, align 8
@DSTATE = common dso_local global i8* null, align 8
@countdirs = common dso_local global i32 0, align 4
@FZLINK = common dso_local global i8* null, align 8
@FSTATE = common dso_local global i8* null, align 8
@dupblk = common dso_local global i64 0, align 8
@badblk = common dso_local global i64 0, align 8
@di_flags = common dso_local global i32 0, align 4
@SF_SNAPSHOT = common dso_local global i32 0, align 4
@SNAP = common dso_local global i8* null, align 8
@ADDR = common dso_local global i8* null, align 8
@UFS_NXADDR = common dso_local global i32 0, align 4
@STOP = common dso_local global i32 0, align 4
@di_blocks = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [48 x i8] c"INCORRECT BLOCK COUNT I=%lu (%ju should be %ju)\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c" (CORRECTED)\0A\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"CORRECT\00", align 1
@bkgrdflag = common dso_local global i64 0, align 8
@cmd = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@.str.12 = private unnamed_addr constant [31 x i8] c"adjblkcnt ino %ju amount %lld\0A\00", align 1
@adjblkcnt = common dso_local global i32 0, align 4
@MIBSIZE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [25 x i8] c"ADJUST INODE BLOCK COUNT\00", align 1
@.str.14 = private unnamed_addr constant [74 x i8] c"INODE %lu: FILE SIZE %ju BEYOND END OF ALLOCATED FILE, SIZE SHOULD BE %ju\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c" (ADJUSTED)\0A\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"ADJUST\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"setsize ino %ju size set to %ju\0A\00", align 1
@setsize = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [15 x i8] c"SET INODE SIZE\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"UNKNOWN FILE TYPE I=%lu\00", align 1
@FCLEAR = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.inodesc*, i32)* @checkinode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checkinode(i8* %0, %struct.inodesc* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.inodesc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.dinode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.inodesc* %1, %struct.inodesc** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call %union.dinode* @getnextinode(i8* %16, i32 %17)
  store %union.dinode* %18, %union.dinode** %8, align 8
  %19 = icmp eq %union.dinode* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %753

21:                                               ; preds = %3
  %22 = load %union.dinode*, %union.dinode** %8, align 8
  %23 = load i32, i32* @di_mode, align 4
  %24 = call i32 @DIP(%union.dinode* %22, i32 %23)
  %25 = load i32, i32* @IFMT, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %128

29:                                               ; preds = %21
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @sblock, i32 0, i32 0), align 8
  %31 = load i64, i64* @FS_UFS1_MAGIC, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %69

33:                                               ; preds = %29
  %34 = load %union.dinode*, %union.dinode** %8, align 8
  %35 = bitcast %union.dinode* %34 to %struct.TYPE_16__*
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @ufs1_zino, i32 0, i32 1), align 4
  %39 = load i32, i32* @UFS_NDADDR, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 4
  %42 = trunc i64 %41 to i32
  %43 = call i64 @memcmp(i32 %37, i32 %38, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %109, label %45

45:                                               ; preds = %33
  %46 = load %union.dinode*, %union.dinode** %8, align 8
  %47 = bitcast %union.dinode* %46 to %struct.TYPE_16__*
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @ufs1_zino, i32 0, i32 0), align 4
  %51 = load i32, i32* @UFS_NIADDR, align 4
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 4
  %54 = trunc i64 %53 to i32
  %55 = call i64 @memcmp(i32 %49, i32 %50, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %109, label %57

57:                                               ; preds = %45
  %58 = load %union.dinode*, %union.dinode** %8, align 8
  %59 = bitcast %union.dinode* %58 to %struct.TYPE_16__*
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %109, label %63

63:                                               ; preds = %57
  %64 = load %union.dinode*, %union.dinode** %8, align 8
  %65 = bitcast %union.dinode* %64 to %struct.TYPE_16__*
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %109, label %69

69:                                               ; preds = %63, %29
  %70 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @sblock, i32 0, i32 0), align 8
  %71 = load i64, i64* @FS_UFS2_MAGIC, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %123

73:                                               ; preds = %69
  %74 = load %union.dinode*, %union.dinode** %8, align 8
  %75 = bitcast %union.dinode* %74 to %struct.TYPE_15__*
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ufs2_zino, i32 0, i32 1), align 4
  %79 = load i32, i32* @UFS_NDADDR, align 4
  %80 = sext i32 %79 to i64
  %81 = mul i64 %80, 4
  %82 = trunc i64 %81 to i32
  %83 = call i64 @memcmp(i32 %77, i32 %78, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %109, label %85

85:                                               ; preds = %73
  %86 = load %union.dinode*, %union.dinode** %8, align 8
  %87 = bitcast %union.dinode* %86 to %struct.TYPE_15__*
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ufs2_zino, i32 0, i32 0), align 4
  %91 = load i32, i32* @UFS_NIADDR, align 4
  %92 = sext i32 %91 to i64
  %93 = mul i64 %92, 4
  %94 = trunc i64 %93 to i32
  %95 = call i64 @memcmp(i32 %89, i32 %90, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %109, label %97

97:                                               ; preds = %85
  %98 = load %union.dinode*, %union.dinode** %8, align 8
  %99 = bitcast %union.dinode* %98 to %struct.TYPE_15__*
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %109, label %103

103:                                              ; preds = %97
  %104 = load %union.dinode*, %union.dinode** %8, align 8
  %105 = bitcast %union.dinode* %104 to %struct.TYPE_15__*
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %123

109:                                              ; preds = %103, %97, %85, %73, %63, %57, %45, %33
  %110 = load i8*, i8** %5, align 8
  %111 = ptrtoint i8* %110 to i32
  %112 = call i32 @pfatal(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %111)
  %113 = call i32 @reply(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %114 = icmp eq i32 %113, 1
  br i1 %114, label %115, label %122

115:                                              ; preds = %109
  %116 = load i8*, i8** %5, align 8
  %117 = call %union.dinode* @ginode(i8* %116)
  store %union.dinode* %117, %union.dinode** %8, align 8
  %118 = load %union.dinode*, %union.dinode** %8, align 8
  %119 = call i32 @clearinode(%union.dinode* %118)
  %120 = load %union.dinode*, %union.dinode** %8, align 8
  %121 = call i32 @inodirty(%union.dinode* %120)
  br label %122

122:                                              ; preds = %115, %109
  br label %123

123:                                              ; preds = %122, %103, %69
  %124 = load i8*, i8** @USTATE, align 8
  %125 = load i8*, i8** %5, align 8
  %126 = call %struct.TYPE_21__* @inoinfo(i8* %125)
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 1
  store i8* %124, i8** %127, align 8
  store i32 1, i32* %4, align 4
  br label %775

128:                                              ; preds = %21
  %129 = load i8*, i8** %5, align 8
  store i8* %129, i8** @lastino, align 8
  %130 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @sblock, i32 0, i32 0), align 8
  %131 = load i64, i64* @FS_UFS1_MAGIC, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %137

133:                                              ; preds = %128
  %134 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @sblock, i32 0, i32 1), align 8
  %135 = mul nsw i32 1073741824, %134
  %136 = sub nsw i32 %135, 1
  store i32 %136, i32* %9, align 4
  br label %139

137:                                              ; preds = %128
  %138 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @sblock, i32 0, i32 2), align 4
  store i32 %138, i32* %9, align 4
  br label %139

139:                                              ; preds = %137, %133
  %140 = load %union.dinode*, %union.dinode** %8, align 8
  %141 = load i32, i32* @di_size, align 4
  %142 = call i32 @DIP(%union.dinode* %140, i32 %141)
  %143 = load i32, i32* %9, align 4
  %144 = icmp sgt i32 %142, %143
  br i1 %144, label %161, label %145

145:                                              ; preds = %139
  %146 = load %union.dinode*, %union.dinode** %8, align 8
  %147 = load i32, i32* @di_size, align 4
  %148 = call i32 @DIP(%union.dinode* %146, i32 %147)
  %149 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @sblock, i32 0, i32 2), align 4
  %150 = icmp sgt i32 %148, %149
  br i1 %150, label %161, label %151

151:                                              ; preds = %145
  %152 = load i32, i32* %11, align 4
  %153 = load i32, i32* @IFDIR, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %171

155:                                              ; preds = %151
  %156 = load %union.dinode*, %union.dinode** %8, align 8
  %157 = load i32, i32* @di_size, align 4
  %158 = call i32 @DIP(%union.dinode* %156, i32 %157)
  %159 = load i32, i32* @MAXDIRSIZE, align 4
  %160 = icmp sgt i32 %158, %159
  br i1 %160, label %161, label %171

161:                                              ; preds = %155, %145, %139
  %162 = load i64, i64* @debug, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %161
  %165 = load %union.dinode*, %union.dinode** %8, align 8
  %166 = load i32, i32* @di_size, align 4
  %167 = call i32 @DIP(%union.dinode* %165, i32 %166)
  %168 = sext i32 %167 to i64
  %169 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i64 %168)
  br label %170

170:                                              ; preds = %164, %161
  br label %753

171:                                              ; preds = %155, %151
  %172 = load i64, i64* @preen, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %196, label %174

174:                                              ; preds = %171
  %175 = load i32, i32* %11, align 4
  %176 = load i32, i32* @IFMT, align 4
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %178, label %196

178:                                              ; preds = %174
  %179 = call i32 @reply(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %180 = icmp eq i32 %179, 1
  br i1 %180, label %181, label %196

181:                                              ; preds = %178
  %182 = load i8*, i8** %5, align 8
  %183 = call %union.dinode* @ginode(i8* %182)
  store %union.dinode* %183, %union.dinode** %8, align 8
  %184 = load %union.dinode*, %union.dinode** %8, align 8
  %185 = load i32, i32* @di_size, align 4
  %186 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @sblock, i32 0, i32 3), align 8
  %187 = call i32 @DIP_SET(%union.dinode* %184, i32 %185, i64 %186)
  %188 = load %union.dinode*, %union.dinode** %8, align 8
  %189 = load i32, i32* @di_mode, align 4
  %190 = load i32, i32* @IFREG, align 4
  %191 = or i32 %190, 384
  %192 = sext i32 %191 to i64
  %193 = call i32 @DIP_SET(%union.dinode* %188, i32 %189, i64 %192)
  %194 = load %union.dinode*, %union.dinode** %8, align 8
  %195 = call i32 @inodirty(%union.dinode* %194)
  br label %196

196:                                              ; preds = %181, %178, %174, %171
  %197 = load i32, i32* %11, align 4
  %198 = load i32, i32* @IFBLK, align 4
  %199 = icmp eq i32 %197, %198
  br i1 %199, label %212, label %200

200:                                              ; preds = %196
  %201 = load i32, i32* %11, align 4
  %202 = load i32, i32* @IFCHR, align 4
  %203 = icmp eq i32 %201, %202
  br i1 %203, label %212, label %204

204:                                              ; preds = %200
  %205 = load i32, i32* %11, align 4
  %206 = load i32, i32* @IFIFO, align 4
  %207 = icmp eq i32 %205, %206
  br i1 %207, label %212, label %208

208:                                              ; preds = %204
  %209 = load i32, i32* %11, align 4
  %210 = load i32, i32* @IFSOCK, align 4
  %211 = icmp eq i32 %209, %210
  br i1 %211, label %212, label %227

212:                                              ; preds = %208, %204, %200, %196
  %213 = load %union.dinode*, %union.dinode** %8, align 8
  %214 = load i32, i32* @di_size, align 4
  %215 = call i32 @DIP(%union.dinode* %213, i32 %214)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %227

217:                                              ; preds = %212
  %218 = load i64, i64* @debug, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %226

220:                                              ; preds = %217
  %221 = load %union.dinode*, %union.dinode** %8, align 8
  %222 = load i32, i32* @di_size, align 4
  %223 = call i32 @DIP(%union.dinode* %221, i32 %222)
  %224 = sext i32 %223 to i64
  %225 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i64 %224)
  br label %226

226:                                              ; preds = %220, %217
  br label %753

227:                                              ; preds = %212, %208
  %228 = load i32, i32* %11, align 4
  %229 = load i32, i32* @IFBLK, align 4
  %230 = icmp eq i32 %228, %229
  br i1 %230, label %235, label %231

231:                                              ; preds = %227
  %232 = load i32, i32* %11, align 4
  %233 = load i32, i32* @IFCHR, align 4
  %234 = icmp eq i32 %232, %233
  br i1 %234, label %235, label %248

235:                                              ; preds = %231, %227
  %236 = load %union.dinode*, %union.dinode** %8, align 8
  %237 = load i32, i32* @di_rdev, align 4
  %238 = call i32 @DIP(%union.dinode* %236, i32 %237)
  %239 = sext i32 %238 to i64
  %240 = load i64, i64* @NODEV, align 8
  %241 = icmp eq i64 %239, %240
  br i1 %241, label %242, label %248

242:                                              ; preds = %235
  %243 = load i64, i64* @debug, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %247

245:                                              ; preds = %242
  %246 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %247

247:                                              ; preds = %245, %242
  br label %753

248:                                              ; preds = %235, %231
  %249 = load %union.dinode*, %union.dinode** %8, align 8
  %250 = load i32, i32* @di_size, align 4
  %251 = call i32 @DIP(%union.dinode* %249, i32 %250)
  %252 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @sblock, i32 0, i32 1), align 8
  %253 = call i32 @howmany(i32 %251, i32 %252)
  store i32 %253, i32* %10, align 4
  %254 = load i32, i32* %10, align 4
  %255 = icmp slt i32 %254, 0
  br i1 %255, label %256, label %268

256:                                              ; preds = %248
  %257 = load i64, i64* @debug, align 8
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %267

259:                                              ; preds = %256
  %260 = load %union.dinode*, %union.dinode** %8, align 8
  %261 = load i32, i32* @di_size, align 4
  %262 = call i32 @DIP(%union.dinode* %260, i32 %261)
  %263 = sext i32 %262 to i64
  %264 = load i32, i32* %10, align 4
  %265 = sext i32 %264 to i64
  %266 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i64 %263, i64 %265)
  br label %267

267:                                              ; preds = %259, %256
  br label %753

268:                                              ; preds = %248
  %269 = load i32, i32* %11, align 4
  %270 = load i32, i32* @IFBLK, align 4
  %271 = icmp eq i32 %269, %270
  br i1 %271, label %276, label %272

272:                                              ; preds = %268
  %273 = load i32, i32* %11, align 4
  %274 = load i32, i32* @IFCHR, align 4
  %275 = icmp eq i32 %273, %274
  br i1 %275, label %276, label %279

276:                                              ; preds = %272, %268
  %277 = load i32, i32* %10, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %10, align 4
  br label %279

279:                                              ; preds = %276, %272
  %280 = load i32, i32* %11, align 4
  %281 = load i32, i32* @IFLNK, align 4
  %282 = icmp eq i32 %280, %281
  br i1 %282, label %283, label %328

283:                                              ; preds = %279
  %284 = load %union.dinode*, %union.dinode** %8, align 8
  %285 = load i32, i32* @di_size, align 4
  %286 = call i32 @DIP(%union.dinode* %284, i32 %285)
  %287 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @sblock, i32 0, i32 5), align 8
  %288 = trunc i64 %287 to i32
  %289 = icmp slt i32 %286, %288
  br i1 %289, label %290, label %327

290:                                              ; preds = %283
  %291 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @sblock, i32 0, i32 0), align 8
  %292 = load i64, i64* @FS_UFS1_MAGIC, align 8
  %293 = icmp eq i64 %291, %292
  br i1 %293, label %294, label %299

294:                                              ; preds = %290
  %295 = load %union.dinode*, %union.dinode** %8, align 8
  %296 = load i32, i32* @di_size, align 4
  %297 = call i32 @DIP(%union.dinode* %295, i32 %296)
  %298 = call i32 @howmany(i32 %297, i32 4)
  store i32 %298, i32* %10, align 4
  br label %304

299:                                              ; preds = %290
  %300 = load %union.dinode*, %union.dinode** %8, align 8
  %301 = load i32, i32* @di_size, align 4
  %302 = call i32 @DIP(%union.dinode* %300, i32 %301)
  %303 = call i32 @howmany(i32 %302, i32 4)
  store i32 %303, i32* %10, align 4
  br label %304

304:                                              ; preds = %299, %294
  %305 = load i32, i32* %10, align 4
  %306 = load i32, i32* @UFS_NDADDR, align 4
  %307 = icmp sgt i32 %305, %306
  br i1 %307, label %308, label %326

308:                                              ; preds = %304
  %309 = load i32, i32* %10, align 4
  %310 = load i32, i32* @UFS_NDADDR, align 4
  %311 = sub nsw i32 %309, %310
  store i32 %311, i32* %13, align 4
  store i32 1, i32* %10, align 4
  br label %312

312:                                              ; preds = %319, %308
  %313 = load i32, i32* %13, align 4
  %314 = icmp sgt i32 %313, 1
  br i1 %314, label %315, label %322

315:                                              ; preds = %312
  %316 = call i32 @NINDIR(%struct.TYPE_20__* @sblock)
  %317 = load i32, i32* %10, align 4
  %318 = mul nsw i32 %317, %316
  store i32 %318, i32* %10, align 4
  br label %319

319:                                              ; preds = %315
  %320 = load i32, i32* %13, align 4
  %321 = add nsw i32 %320, -1
  store i32 %321, i32* %13, align 4
  br label %312

322:                                              ; preds = %312
  %323 = load i32, i32* @UFS_NDADDR, align 4
  %324 = load i32, i32* %10, align 4
  %325 = add nsw i32 %324, %323
  store i32 %325, i32* %10, align 4
  br label %326

326:                                              ; preds = %322, %304
  br label %327

327:                                              ; preds = %326, %283
  br label %328

328:                                              ; preds = %327, %279
  %329 = load i32, i32* %10, align 4
  store i32 %329, i32* %13, align 4
  br label %330

330:                                              ; preds = %365, %328
  %331 = load i32, i32* %10, align 4
  %332 = load i32, i32* @UFS_NDADDR, align 4
  %333 = icmp slt i32 %331, %332
  br i1 %333, label %334, label %338

334:                                              ; preds = %330
  %335 = load i32, i32* %13, align 4
  %336 = load i32, i32* @UFS_NDADDR, align 4
  %337 = icmp slt i32 %335, %336
  br label %338

338:                                              ; preds = %334, %330
  %339 = phi i1 [ false, %330 ], [ %337, %334 ]
  br i1 %339, label %340, label %368

340:                                              ; preds = %338
  %341 = load %union.dinode*, %union.dinode** %8, align 8
  %342 = load i32*, i32** @di_db, align 8
  %343 = load i32, i32* %13, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i32, i32* %342, i64 %344
  %346 = load i32, i32* %345, align 4
  %347 = call i32 @DIP(%union.dinode* %341, i32 %346)
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %364

349:                                              ; preds = %340
  %350 = load i64, i64* @debug, align 8
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %352, label %363

352:                                              ; preds = %349
  %353 = load i32, i32* %13, align 4
  %354 = load %union.dinode*, %union.dinode** %8, align 8
  %355 = load i32*, i32** @di_db, align 8
  %356 = load i32, i32* %13, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds i32, i32* %355, i64 %357
  %359 = load i32, i32* %358, align 4
  %360 = call i32 @DIP(%union.dinode* %354, i32 %359)
  %361 = sext i32 %360 to i64
  %362 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %353, i64 %361)
  br label %363

363:                                              ; preds = %352, %349
  br label %753

364:                                              ; preds = %340
  br label %365

365:                                              ; preds = %364
  %366 = load i32, i32* %13, align 4
  %367 = add nsw i32 %366, 1
  store i32 %367, i32* %13, align 4
  br label %330

368:                                              ; preds = %338
  store i32 0, i32* %13, align 4
  %369 = load i32, i32* @UFS_NDADDR, align 4
  %370 = load i32, i32* %10, align 4
  %371 = sub nsw i32 %370, %369
  store i32 %371, i32* %10, align 4
  br label %372

372:                                              ; preds = %379, %368
  %373 = load i32, i32* %10, align 4
  %374 = icmp sgt i32 %373, 0
  br i1 %374, label %375, label %382

375:                                              ; preds = %372
  %376 = call i32 @NINDIR(%struct.TYPE_20__* @sblock)
  %377 = load i32, i32* %10, align 4
  %378 = sdiv i32 %377, %376
  store i32 %378, i32* %10, align 4
  br label %379

379:                                              ; preds = %375
  %380 = load i32, i32* %13, align 4
  %381 = add nsw i32 %380, 1
  store i32 %381, i32* %13, align 4
  br label %372

382:                                              ; preds = %372
  br label %383

383:                                              ; preds = %411, %382
  %384 = load i32, i32* %13, align 4
  %385 = load i32, i32* @UFS_NIADDR, align 4
  %386 = icmp slt i32 %384, %385
  br i1 %386, label %387, label %414

387:                                              ; preds = %383
  %388 = load %union.dinode*, %union.dinode** %8, align 8
  %389 = load i32*, i32** @di_ib, align 8
  %390 = load i32, i32* %13, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds i32, i32* %389, i64 %391
  %393 = load i32, i32* %392, align 4
  %394 = call i32 @DIP(%union.dinode* %388, i32 %393)
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %410

396:                                              ; preds = %387
  %397 = load i64, i64* @debug, align 8
  %398 = icmp ne i64 %397, 0
  br i1 %398, label %399, label %409

399:                                              ; preds = %396
  %400 = load %union.dinode*, %union.dinode** %8, align 8
  %401 = load i32*, i32** @di_ib, align 8
  %402 = load i32, i32* %13, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds i32, i32* %401, i64 %403
  %405 = load i32, i32* %404, align 4
  %406 = call i32 @DIP(%union.dinode* %400, i32 %405)
  %407 = sext i32 %406 to i64
  %408 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i64 %407)
  br label %409

409:                                              ; preds = %399, %396
  br label %753

410:                                              ; preds = %387
  br label %411

411:                                              ; preds = %410
  %412 = load i32, i32* %13, align 4
  %413 = add nsw i32 %412, 1
  store i32 %413, i32* %13, align 4
  br label %383

414:                                              ; preds = %383
  %415 = load %union.dinode*, %union.dinode** %8, align 8
  %416 = call i64 @ftypeok(%union.dinode* %415)
  %417 = icmp eq i64 %416, 0
  br i1 %417, label %418, label %419

418:                                              ; preds = %414
  br label %753

419:                                              ; preds = %414
  %420 = load i32, i32* @n_files, align 4
  %421 = add nsw i32 %420, 1
  store i32 %421, i32* @n_files, align 4
  %422 = load %union.dinode*, %union.dinode** %8, align 8
  %423 = load i32, i32* @di_nlink, align 4
  %424 = call i32 @DIP(%union.dinode* %422, i32 %423)
  %425 = load i8*, i8** %5, align 8
  %426 = call %struct.TYPE_21__* @inoinfo(i8* %425)
  %427 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %426, i32 0, i32 0
  store i32 %424, i32* %427, align 8
  %428 = load i32, i32* %11, align 4
  %429 = load i32, i32* @IFDIR, align 4
  %430 = icmp eq i32 %428, %429
  br i1 %430, label %431, label %463

431:                                              ; preds = %419
  %432 = load %union.dinode*, %union.dinode** %8, align 8
  %433 = load i32, i32* @di_size, align 4
  %434 = call i32 @DIP(%union.dinode* %432, i32 %433)
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %436, label %441

436:                                              ; preds = %431
  %437 = load i8*, i8** @DCLEAR, align 8
  %438 = load i8*, i8** %5, align 8
  %439 = call %struct.TYPE_21__* @inoinfo(i8* %438)
  %440 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %439, i32 0, i32 1
  store i8* %437, i8** %440, align 8
  br label %457

441:                                              ; preds = %431
  %442 = load %union.dinode*, %union.dinode** %8, align 8
  %443 = load i32, i32* @di_nlink, align 4
  %444 = call i32 @DIP(%union.dinode* %442, i32 %443)
  %445 = icmp sle i32 %444, 0
  br i1 %445, label %446, label %451

446:                                              ; preds = %441
  %447 = load i8*, i8** @DZLINK, align 8
  %448 = load i8*, i8** %5, align 8
  %449 = call %struct.TYPE_21__* @inoinfo(i8* %448)
  %450 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %449, i32 0, i32 1
  store i8* %447, i8** %450, align 8
  br label %456

451:                                              ; preds = %441
  %452 = load i8*, i8** @DSTATE, align 8
  %453 = load i8*, i8** %5, align 8
  %454 = call %struct.TYPE_21__* @inoinfo(i8* %453)
  %455 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %454, i32 0, i32 1
  store i8* %452, i8** %455, align 8
  br label %456

456:                                              ; preds = %451, %446
  br label %457

457:                                              ; preds = %456, %436
  %458 = load %union.dinode*, %union.dinode** %8, align 8
  %459 = load i8*, i8** %5, align 8
  %460 = call i32 @cacheino(%union.dinode* %458, i8* %459)
  %461 = load i32, i32* @countdirs, align 4
  %462 = add nsw i32 %461, 1
  store i32 %462, i32* @countdirs, align 4
  br label %479

463:                                              ; preds = %419
  %464 = load %union.dinode*, %union.dinode** %8, align 8
  %465 = load i32, i32* @di_nlink, align 4
  %466 = call i32 @DIP(%union.dinode* %464, i32 %465)
  %467 = icmp sle i32 %466, 0
  br i1 %467, label %468, label %473

468:                                              ; preds = %463
  %469 = load i8*, i8** @FZLINK, align 8
  %470 = load i8*, i8** %5, align 8
  %471 = call %struct.TYPE_21__* @inoinfo(i8* %470)
  %472 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %471, i32 0, i32 1
  store i8* %469, i8** %472, align 8
  br label %478

473:                                              ; preds = %463
  %474 = load i8*, i8** @FSTATE, align 8
  %475 = load i8*, i8** %5, align 8
  %476 = call %struct.TYPE_21__* @inoinfo(i8* %475)
  %477 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %476, i32 0, i32 1
  store i8* %474, i8** %477, align 8
  br label %478

478:                                              ; preds = %473, %468
  br label %479

479:                                              ; preds = %478, %457
  %480 = load i32, i32* %11, align 4
  %481 = call i32 @IFTODT(i32 %480)
  %482 = load i8*, i8** %5, align 8
  %483 = call %struct.TYPE_21__* @inoinfo(i8* %482)
  %484 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %483, i32 0, i32 2
  store i32 %481, i32* %484, align 8
  store i64 0, i64* @dupblk, align 8
  store i64 0, i64* @badblk, align 8
  %485 = load i8*, i8** %5, align 8
  %486 = load %struct.inodesc*, %struct.inodesc** %6, align 8
  %487 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %486, i32 0, i32 4
  store i8* %485, i8** %487, align 8
  %488 = load %union.dinode*, %union.dinode** %8, align 8
  %489 = load i32, i32* @di_flags, align 4
  %490 = call i32 @DIP(%union.dinode* %488, i32 %489)
  %491 = load i32, i32* @SF_SNAPSHOT, align 4
  %492 = and i32 %490, %491
  %493 = icmp ne i32 %492, 0
  br i1 %493, label %494, label %498

494:                                              ; preds = %479
  %495 = load i8*, i8** @SNAP, align 8
  %496 = load %struct.inodesc*, %struct.inodesc** %6, align 8
  %497 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %496, i32 0, i32 6
  store i8* %495, i8** %497, align 8
  br label %502

498:                                              ; preds = %479
  %499 = load i8*, i8** @ADDR, align 8
  %500 = load %struct.inodesc*, %struct.inodesc** %6, align 8
  %501 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %500, i32 0, i32 6
  store i8* %499, i8** %501, align 8
  br label %502

502:                                              ; preds = %498, %494
  %503 = load %union.dinode*, %union.dinode** %8, align 8
  %504 = load %struct.inodesc*, %struct.inodesc** %6, align 8
  %505 = call i32 @ckinode(%union.dinode* %503, %struct.inodesc* %504)
  %506 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @sblock, i32 0, i32 0), align 8
  %507 = load i64, i64* @FS_UFS2_MAGIC, align 8
  %508 = icmp eq i64 %506, %507
  br i1 %508, label %509, label %587

509:                                              ; preds = %502
  %510 = load %union.dinode*, %union.dinode** %8, align 8
  %511 = bitcast %union.dinode* %510 to %struct.TYPE_15__*
  %512 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %511, i32 0, i32 0
  %513 = load i32, i32* %512, align 8
  %514 = icmp sgt i32 %513, 0
  br i1 %514, label %515, label %587

515:                                              ; preds = %509
  %516 = load i8*, i8** @ADDR, align 8
  %517 = load %struct.inodesc*, %struct.inodesc** %6, align 8
  %518 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %517, i32 0, i32 6
  store i8* %516, i8** %518, align 8
  %519 = load %union.dinode*, %union.dinode** %8, align 8
  %520 = bitcast %union.dinode* %519 to %struct.TYPE_15__*
  %521 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %520, i32 0, i32 0
  %522 = load i32, i32* %521, align 8
  %523 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @sblock, i32 0, i32 1), align 8
  %524 = call i32 @howmany(i32 %522, i32 %523)
  store i32 %524, i32* %10, align 4
  store i32 0, i32* %13, align 4
  br label %525

525:                                              ; preds = %583, %515
  %526 = load i32, i32* %13, align 4
  %527 = load i32, i32* @UFS_NXADDR, align 4
  %528 = icmp slt i32 %526, %527
  br i1 %528, label %529, label %586

529:                                              ; preds = %525
  %530 = load i32, i32* %10, align 4
  %531 = add nsw i32 %530, -1
  store i32 %531, i32* %10, align 4
  %532 = icmp eq i32 %531, 0
  br i1 %532, label %533, label %546

533:                                              ; preds = %529
  %534 = load %union.dinode*, %union.dinode** %8, align 8
  %535 = bitcast %union.dinode* %534 to %struct.TYPE_15__*
  %536 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %535, i32 0, i32 0
  %537 = load i32, i32* %536, align 8
  %538 = call i32 @blkoff(%struct.TYPE_20__* @sblock, i32 %537)
  store i32 %538, i32* %15, align 4
  %539 = icmp ne i32 %538, 0
  br i1 %539, label %540, label %546

540:                                              ; preds = %533
  %541 = load i32, i32* %15, align 4
  %542 = call i32 @fragroundup(%struct.TYPE_20__* @sblock, i32 %541)
  %543 = call i32 @numfrags(%struct.TYPE_20__* @sblock, i32 %542)
  %544 = load %struct.inodesc*, %struct.inodesc** %6, align 8
  %545 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %544, i32 0, i32 5
  store i32 %543, i32* %545, align 8
  br label %550

546:                                              ; preds = %533, %529
  %547 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @sblock, i32 0, i32 4), align 8
  %548 = load %struct.inodesc*, %struct.inodesc** %6, align 8
  %549 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %548, i32 0, i32 5
  store i32 %547, i32* %549, align 8
  br label %550

550:                                              ; preds = %546, %540
  %551 = load %union.dinode*, %union.dinode** %8, align 8
  %552 = bitcast %union.dinode* %551 to %struct.TYPE_15__*
  %553 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %552, i32 0, i32 1
  %554 = load i64*, i64** %553, align 8
  %555 = load i32, i32* %13, align 4
  %556 = sext i32 %555 to i64
  %557 = getelementptr inbounds i64, i64* %554, i64 %556
  %558 = load i64, i64* %557, align 8
  %559 = icmp eq i64 %558, 0
  br i1 %559, label %560, label %561

560:                                              ; preds = %550
  br label %583

561:                                              ; preds = %550
  %562 = load %union.dinode*, %union.dinode** %8, align 8
  %563 = bitcast %union.dinode* %562 to %struct.TYPE_15__*
  %564 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %563, i32 0, i32 1
  %565 = load i64*, i64** %564, align 8
  %566 = load i32, i32* %13, align 4
  %567 = sext i32 %566 to i64
  %568 = getelementptr inbounds i64, i64* %565, i64 %567
  %569 = load i64, i64* %568, align 8
  %570 = load %struct.inodesc*, %struct.inodesc** %6, align 8
  %571 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %570, i32 0, i32 0
  store i64 %569, i64* %571, align 8
  %572 = load %struct.inodesc*, %struct.inodesc** %6, align 8
  %573 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %572, i32 0, i32 1
  %574 = load i32 (%struct.inodesc*)*, i32 (%struct.inodesc*)** %573, align 8
  %575 = load %struct.inodesc*, %struct.inodesc** %6, align 8
  %576 = call i32 %574(%struct.inodesc* %575)
  store i32 %576, i32* %14, align 4
  %577 = load i32, i32* %14, align 4
  %578 = load i32, i32* @STOP, align 4
  %579 = and i32 %577, %578
  %580 = icmp ne i32 %579, 0
  br i1 %580, label %581, label %582

581:                                              ; preds = %561
  br label %586

582:                                              ; preds = %561
  br label %583

583:                                              ; preds = %582, %560
  %584 = load i32, i32* %13, align 4
  %585 = add nsw i32 %584, 1
  store i32 %585, i32* %13, align 4
  br label %525

586:                                              ; preds = %581, %525
  br label %587

587:                                              ; preds = %586, %509, %502
  %588 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @sblock, i32 0, i32 0), align 8
  %589 = load i64, i64* @FS_UFS2_MAGIC, align 8
  %590 = icmp eq i64 %588, %589
  br i1 %590, label %591, label %596

591:                                              ; preds = %587
  %592 = load %struct.inodesc*, %struct.inodesc** %6, align 8
  %593 = load %union.dinode*, %union.dinode** %8, align 8
  %594 = bitcast %union.dinode* %593 to %struct.TYPE_15__*
  %595 = call i32 @eascan(%struct.inodesc* %592, %struct.TYPE_15__* %594)
  br label %596

596:                                              ; preds = %591, %587
  %597 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @sblock, i32 0, i32 3), align 8
  %598 = call i32 @btodb(i64 %597)
  %599 = load %struct.inodesc*, %struct.inodesc** %6, align 8
  %600 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %599, i32 0, i32 2
  %601 = load i32, i32* %600, align 8
  %602 = mul nsw i32 %601, %598
  store i32 %602, i32* %600, align 8
  %603 = load %union.dinode*, %union.dinode** %8, align 8
  %604 = load i32, i32* @di_blocks, align 4
  %605 = call i32 @DIP(%union.dinode* %603, i32 %604)
  %606 = load %struct.inodesc*, %struct.inodesc** %6, align 8
  %607 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %606, i32 0, i32 2
  %608 = load i32, i32* %607, align 8
  %609 = icmp ne i32 %605, %608
  br i1 %609, label %610, label %675

610:                                              ; preds = %596
  %611 = load i8*, i8** %5, align 8
  %612 = ptrtoint i8* %611 to i32
  %613 = load %union.dinode*, %union.dinode** %8, align 8
  %614 = load i32, i32* @di_blocks, align 4
  %615 = call i32 @DIP(%union.dinode* %613, i32 %614)
  %616 = sext i32 %615 to i64
  %617 = load %struct.inodesc*, %struct.inodesc** %6, align 8
  %618 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %617, i32 0, i32 2
  %619 = load i32, i32* %618, align 8
  %620 = sext i32 %619 to i64
  %621 = call i32 @pwarn(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i64 0, i64 0), i32 %612, i64 %616, i64 %620)
  %622 = load i64, i64* @preen, align 8
  %623 = icmp ne i64 %622, 0
  br i1 %623, label %624, label %626

624:                                              ; preds = %610
  %625 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  br label %631

626:                                              ; preds = %610
  %627 = call i32 @reply(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  %628 = icmp eq i32 %627, 0
  br i1 %628, label %629, label %630

629:                                              ; preds = %626
  store i32 1, i32* %4, align 4
  br label %775

630:                                              ; preds = %626
  br label %631

631:                                              ; preds = %630, %624
  %632 = load i64, i64* @bkgrdflag, align 8
  %633 = icmp eq i64 %632, 0
  br i1 %633, label %634, label %646

634:                                              ; preds = %631
  %635 = load i8*, i8** %5, align 8
  %636 = call %union.dinode* @ginode(i8* %635)
  store %union.dinode* %636, %union.dinode** %8, align 8
  %637 = load %union.dinode*, %union.dinode** %8, align 8
  %638 = load i32, i32* @di_blocks, align 4
  %639 = load %struct.inodesc*, %struct.inodesc** %6, align 8
  %640 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %639, i32 0, i32 2
  %641 = load i32, i32* %640, align 8
  %642 = sext i32 %641 to i64
  %643 = call i32 @DIP_SET(%union.dinode* %637, i32 %638, i64 %642)
  %644 = load %union.dinode*, %union.dinode** %8, align 8
  %645 = call i32 @inodirty(%union.dinode* %644)
  br label %674

646:                                              ; preds = %631
  %647 = load %struct.inodesc*, %struct.inodesc** %6, align 8
  %648 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %647, i32 0, i32 4
  %649 = load i8*, i8** %648, align 8
  store i8* %649, i8** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cmd, i32 0, i32 1), align 8
  %650 = load %struct.inodesc*, %struct.inodesc** %6, align 8
  %651 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %650, i32 0, i32 2
  %652 = load i32, i32* %651, align 8
  %653 = load %union.dinode*, %union.dinode** %8, align 8
  %654 = load i32, i32* @di_blocks, align 4
  %655 = call i32 @DIP(%union.dinode* %653, i32 %654)
  %656 = sub nsw i32 %652, %655
  store i32 %656, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cmd, i32 0, i32 0), align 8
  %657 = load i64, i64* @debug, align 8
  %658 = icmp ne i64 %657, 0
  br i1 %658, label %659, label %665

659:                                              ; preds = %646
  %660 = load i8*, i8** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cmd, i32 0, i32 1), align 8
  %661 = ptrtoint i8* %660 to i64
  %662 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cmd, i32 0, i32 0), align 8
  %663 = sext i32 %662 to i64
  %664 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i64 %661, i64 %663)
  br label %665

665:                                              ; preds = %659, %646
  %666 = load i32, i32* @adjblkcnt, align 4
  %667 = load i32, i32* @MIBSIZE, align 4
  %668 = call i32 @sysctl(i32 %666, i32 %667, i32 0, i32 0, %struct.TYPE_19__* @cmd, i32 16)
  %669 = icmp eq i32 %668, -1
  br i1 %669, label %670, label %673

670:                                              ; preds = %665
  %671 = load i8*, i8** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cmd, i32 0, i32 1), align 8
  %672 = call i32 @rwerror(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0), i8* %671)
  br label %673

673:                                              ; preds = %670, %665
  br label %674

674:                                              ; preds = %673, %634
  br label %675

675:                                              ; preds = %674, %596
  %676 = load %union.dinode*, %union.dinode** %8, align 8
  %677 = load i32, i32* @di_size, align 4
  %678 = call i32 @DIP(%union.dinode* %676, i32 %677)
  %679 = load i32, i32* @UFS_NDADDR, align 4
  %680 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @sblock, i32 0, i32 1), align 8
  %681 = mul nsw i32 %679, %680
  %682 = icmp sgt i32 %678, %681
  br i1 %682, label %683, label %752

683:                                              ; preds = %675
  %684 = load %struct.inodesc*, %struct.inodesc** %6, align 8
  %685 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %684, i32 0, i32 3
  %686 = load i64, i64* %685, align 8
  %687 = load %union.dinode*, %union.dinode** %8, align 8
  %688 = load i32, i32* @di_size, align 4
  %689 = call i32 @DIP(%union.dinode* %687, i32 %688)
  %690 = sub nsw i32 %689, 1
  %691 = call i64 @lblkno(%struct.TYPE_20__* @sblock, i32 %690)
  %692 = icmp slt i64 %686, %691
  br i1 %692, label %693, label %752

693:                                              ; preds = %683
  %694 = load %struct.inodesc*, %struct.inodesc** %6, align 8
  %695 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %694, i32 0, i32 3
  %696 = load i64, i64* %695, align 8
  %697 = add nsw i64 %696, 1
  %698 = call i64 @lblktosize(%struct.TYPE_20__* @sblock, i64 %697)
  store i64 %698, i64* %12, align 8
  %699 = load i8*, i8** %5, align 8
  %700 = ptrtoint i8* %699 to i32
  %701 = load %union.dinode*, %union.dinode** %8, align 8
  %702 = load i32, i32* @di_size, align 4
  %703 = call i32 @DIP(%union.dinode* %701, i32 %702)
  %704 = sext i32 %703 to i64
  %705 = load i64, i64* %12, align 8
  %706 = call i32 @pwarn(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.14, i64 0, i64 0), i32 %700, i64 %704, i64 %705)
  %707 = load i64, i64* @preen, align 8
  %708 = icmp ne i64 %707, 0
  br i1 %708, label %709, label %711

709:                                              ; preds = %693
  %710 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0))
  br label %716

711:                                              ; preds = %693
  %712 = call i32 @reply(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0))
  %713 = icmp eq i32 %712, 0
  br i1 %713, label %714, label %715

714:                                              ; preds = %711
  store i32 1, i32* %4, align 4
  br label %775

715:                                              ; preds = %711
  br label %716

716:                                              ; preds = %715, %709
  %717 = load i64, i64* @bkgrdflag, align 8
  %718 = icmp eq i64 %717, 0
  br i1 %718, label %719, label %728

719:                                              ; preds = %716
  %720 = load i8*, i8** %5, align 8
  %721 = call %union.dinode* @ginode(i8* %720)
  store %union.dinode* %721, %union.dinode** %8, align 8
  %722 = load %union.dinode*, %union.dinode** %8, align 8
  %723 = load i32, i32* @di_size, align 4
  %724 = load i64, i64* %12, align 8
  %725 = call i32 @DIP_SET(%union.dinode* %722, i32 %723, i64 %724)
  %726 = load %union.dinode*, %union.dinode** %8, align 8
  %727 = call i32 @inodirty(%union.dinode* %726)
  br label %751

728:                                              ; preds = %716
  %729 = load %struct.inodesc*, %struct.inodesc** %6, align 8
  %730 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %729, i32 0, i32 4
  %731 = load i8*, i8** %730, align 8
  store i8* %731, i8** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cmd, i32 0, i32 1), align 8
  %732 = load i64, i64* %12, align 8
  %733 = trunc i64 %732 to i32
  store i32 %733, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cmd, i32 0, i32 0), align 8
  %734 = load i64, i64* @debug, align 8
  %735 = icmp ne i64 %734, 0
  br i1 %735, label %736, label %742

736:                                              ; preds = %728
  %737 = load i8*, i8** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cmd, i32 0, i32 1), align 8
  %738 = ptrtoint i8* %737 to i64
  %739 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cmd, i32 0, i32 0), align 8
  %740 = sext i32 %739 to i64
  %741 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i64 0, i64 0), i64 %738, i64 %740)
  br label %742

742:                                              ; preds = %736, %728
  %743 = load i32, i32* @setsize, align 4
  %744 = load i32, i32* @MIBSIZE, align 4
  %745 = call i32 @sysctl(i32 %743, i32 %744, i32 0, i32 0, %struct.TYPE_19__* @cmd, i32 16)
  %746 = icmp eq i32 %745, -1
  br i1 %746, label %747, label %750

747:                                              ; preds = %742
  %748 = load i8*, i8** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cmd, i32 0, i32 1), align 8
  %749 = call i32 @rwerror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0), i8* %748)
  br label %750

750:                                              ; preds = %747, %742
  br label %751

751:                                              ; preds = %750, %719
  br label %752

752:                                              ; preds = %751, %683, %675
  store i32 1, i32* %4, align 4
  br label %775

753:                                              ; preds = %418, %409, %363, %267, %247, %226, %170, %20
  %754 = load i8*, i8** %5, align 8
  %755 = ptrtoint i8* %754 to i32
  %756 = call i32 @pfatal(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0), i32 %755)
  %757 = load i8*, i8** @FCLEAR, align 8
  %758 = load i8*, i8** %5, align 8
  %759 = call %struct.TYPE_21__* @inoinfo(i8* %758)
  %760 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %759, i32 0, i32 1
  store i8* %757, i8** %760, align 8
  %761 = call i32 @reply(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %762 = icmp eq i32 %761, 1
  br i1 %762, label %763, label %774

763:                                              ; preds = %753
  %764 = load i8*, i8** @USTATE, align 8
  %765 = load i8*, i8** %5, align 8
  %766 = call %struct.TYPE_21__* @inoinfo(i8* %765)
  %767 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %766, i32 0, i32 1
  store i8* %764, i8** %767, align 8
  %768 = load i8*, i8** %5, align 8
  %769 = call %union.dinode* @ginode(i8* %768)
  store %union.dinode* %769, %union.dinode** %8, align 8
  %770 = load %union.dinode*, %union.dinode** %8, align 8
  %771 = call i32 @clearinode(%union.dinode* %770)
  %772 = load %union.dinode*, %union.dinode** %8, align 8
  %773 = call i32 @inodirty(%union.dinode* %772)
  br label %774

774:                                              ; preds = %763, %753
  store i32 1, i32* %4, align 4
  br label %775

775:                                              ; preds = %774, %752, %714, %629, %123
  %776 = load i32, i32* %4, align 4
  ret i32 %776
}

declare dso_local %union.dinode* @getnextinode(i8*, i32) #1

declare dso_local i32 @DIP(%union.dinode*, i32) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @pfatal(i8*, i32) #1

declare dso_local i32 @reply(i8*) #1

declare dso_local %union.dinode* @ginode(i8*) #1

declare dso_local i32 @clearinode(%union.dinode*) #1

declare dso_local i32 @inodirty(%union.dinode*) #1

declare dso_local %struct.TYPE_21__* @inoinfo(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @DIP_SET(%union.dinode*, i32, i64) #1

declare dso_local i32 @howmany(i32, i32) #1

declare dso_local i32 @NINDIR(%struct.TYPE_20__*) #1

declare dso_local i64 @ftypeok(%union.dinode*) #1

declare dso_local i32 @cacheino(%union.dinode*, i8*) #1

declare dso_local i32 @IFTODT(i32) #1

declare dso_local i32 @ckinode(%union.dinode*, %struct.inodesc*) #1

declare dso_local i32 @blkoff(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @numfrags(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @fragroundup(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @eascan(%struct.inodesc*, %struct.TYPE_15__*) #1

declare dso_local i32 @btodb(i64) #1

declare dso_local i32 @pwarn(i8*, i32, i64, i64) #1

declare dso_local i32 @sysctl(i32, i32, i32, i32, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @rwerror(i8*, i8*) #1

declare dso_local i64 @lblkno(%struct.TYPE_20__*, i32) #1

declare dso_local i64 @lblktosize(%struct.TYPE_20__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
