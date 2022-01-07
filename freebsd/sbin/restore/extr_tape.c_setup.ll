; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/restore/extr_tape.c_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/restore/extr_tape.c_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32, i32 }
%struct.TYPE_10__ = type { i8* }
%struct.stat = type { i32 }

@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Verify tape and initialize maps\0A\00", align 1
@pipecmdin = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"RESTORE_VOLUME\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Cannot set $RESTORE_VOLUME: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@magtape = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@popenfp = common dso_local global i64 0, align 8
@mt = common dso_local global i32 0, align 4
@pipein = common dso_local global i64 0, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@volno = common dso_local global i32 0, align 4
@bflag = common dso_local global i32 0, align 4
@spcl = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@FAIL = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [25 x i8] c"Tape is not a dump tape\0A\00", align 1
@FS_UFS2_MAGIC = common dso_local global i32 0, align 4
@endoftapemark = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@TS_END = common dso_local global i32 0, align 4
@CHECKSUM = common dso_local global i64 0, align 8
@vflag = common dso_local global i64 0, align 8
@command = common dso_local global i8 0, align 1
@dumptime = common dso_local global i8* null, align 8
@dumpdate = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"cannot stat .: %s\0A\00", align 1
@TP_BSIZE = common dso_local global i32 0, align 4
@fssize = common dso_local global i32 0, align 4
@MAXBSIZE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [61 x i8] c"Warning: filesystem with non-multiple-of-%d blocksize (%d);\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"\09writing using blocksize %ld\0A\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"Tape is not volume 1 of the dump\0A\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"header read failed at %ld blocks\0A\00", align 1
@blksread = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [30 x i8] c"no header after volume mark!\0A\00", align 1
@TS_CLRI = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [31 x i8] c"Cannot find file removal list\0A\00", align 1
@NBBY = common dso_local global i32 0, align 4
@maxino = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [14 x i8] c"maxino = %ju\0A\00", align 1
@map = common dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [32 x i8] c"no memory for active inode map\0A\00", align 1
@usedinomap = common dso_local global i8* null, align 8
@USING = common dso_local global i8* null, align 8
@curfile = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@xtrmap = common dso_local global i32 0, align 4
@xtrmapskip = common dso_local global i32 0, align 4
@TS_BITS = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [28 x i8] c"Cannot find file dump list\0A\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"no memory for file dump list\0A\00", align 1
@dumpmap = common dso_local global i8* null, align 8
@UFS_WINO = common dso_local global i32 0, align 4
@tapesread = common dso_local global i32 0, align 4
@host = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setup() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.stat, align 4
  %5 = load i32, i32* @stdout, align 4
  %6 = call i32 @vprintf(i32 %5, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %7 = load i64, i64* @pipecmdin, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %29

9:                                                ; preds = %0
  %10 = call i32 @setenv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = load i32, i32* @stderr, align 4
  %14 = load i32, i32* @errno, align 4
  %15 = call i8* @strerror(i32 %14)
  %16 = call i32 (i32, i8*, ...) @fprintf(i32 %13, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* %15)
  %17 = call i32 @done(i32 1)
  br label %18

18:                                               ; preds = %12, %9
  %19 = load i8*, i8** @magtape, align 8
  %20 = call i64 @popen(i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i64 %20, i64* @popenfp, align 8
  %21 = load i64, i64* @popenfp, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i64, i64* @popenfp, align 8
  %25 = call i32 @fileno(i64 %24)
  br label %27

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %26, %23
  %28 = phi i32 [ %25, %23 ], [ -1, %26 ]
  store i32 %28, i32* @mt, align 4
  br label %38

29:                                               ; preds = %0
  %30 = load i64, i64* @pipein, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 0, i32* @mt, align 4
  br label %37

33:                                               ; preds = %29
  %34 = load i8*, i8** @magtape, align 8
  %35 = load i32, i32* @O_RDONLY, align 4
  %36 = call i32 @open(i8* %34, i32 %35, i32 0)
  store i32 %36, i32* @mt, align 4
  br label %37

37:                                               ; preds = %33, %32
  br label %38

38:                                               ; preds = %37, %27
  %39 = load i32, i32* @mt, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = load i32, i32* @stderr, align 4
  %43 = load i8*, i8** @magtape, align 8
  %44 = load i32, i32* @errno, align 4
  %45 = call i8* @strerror(i32 %44)
  %46 = call i32 (i32, i8*, ...) @fprintf(i32 %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %43, i8* %45)
  %47 = call i32 @done(i32 1)
  br label %48

48:                                               ; preds = %41, %38
  store i32 1, i32* @volno, align 4
  %49 = call i32 (...) @setdumpnum()
  %50 = call i32 (...) @FLUSHTAPEBUF()
  %51 = load i64, i64* @pipein, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %48
  %54 = load i64, i64* @pipecmdin, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* @bflag, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %56
  %60 = call i32 (...) @findtapeblksize()
  br label %61

61:                                               ; preds = %59, %56, %53, %48
  %62 = call i64 @gethead(%struct.TYPE_8__* @spcl)
  %63 = load i64, i64* @FAIL, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load i32, i32* @stderr, align 4
  %67 = call i32 (i32, i8*, ...) @fprintf(i32 %66, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %68 = call i32 @done(i32 1)
  br label %69

69:                                               ; preds = %65, %61
  %70 = load i64, i64* @pipein, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %90

72:                                               ; preds = %69
  %73 = load i32, i32* @FS_UFS2_MAGIC, align 4
  store i32 %73, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @endoftapemark, i32 0, i32 0, i32 2), align 4
  %74 = load i32, i32* @TS_END, align 4
  store i32 %74, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @endoftapemark, i32 0, i32 0, i32 1), align 8
  store i32* bitcast (%struct.TYPE_9__* @endoftapemark to i32*), i32** %3, align 8
  store i32 1, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %75

75:                                               ; preds = %81, %72
  %76 = load i32*, i32** %3, align 8
  %77 = getelementptr inbounds i32, i32* %76, i32 1
  store i32* %77, i32** %3, align 8
  %78 = load i32, i32* %76, align 4
  %79 = load i32, i32* %1, align 4
  %80 = add nsw i32 %79, %78
  store i32 %80, i32* %1, align 4
  br label %81

81:                                               ; preds = %75
  %82 = load i32, i32* %2, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %2, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %75, label %85

85:                                               ; preds = %81
  %86 = load i64, i64* @CHECKSUM, align 8
  %87 = load i32, i32* %1, align 4
  %88 = sext i32 %87 to i64
  %89 = sub nsw i64 %86, %88
  store i64 %89, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @endoftapemark, i32 0, i32 0, i32 0), align 8
  br label %90

90:                                               ; preds = %85, %69
  %91 = load i64, i64* @vflag, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %90
  %94 = load i8, i8* @command, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 116
  br i1 %96, label %97, label %99

97:                                               ; preds = %93, %90
  %98 = call i32 (...) @printdumpinfo()
  br label %99

99:                                               ; preds = %97, %93
  %100 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @spcl, i32 0, i32 4), align 8
  %101 = call i8* @_time64_to_time(i32 %100)
  store i8* %101, i8** @dumptime, align 8
  %102 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @spcl, i32 0, i32 3), align 4
  %103 = call i8* @_time64_to_time(i32 %102)
  store i8* %103, i8** @dumpdate, align 8
  %104 = call i64 @stat(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), %struct.stat* %4)
  %105 = icmp slt i64 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %99
  %107 = load i32, i32* @stderr, align 4
  %108 = load i32, i32* @errno, align 4
  %109 = call i8* @strerror(i32 %108)
  %110 = call i32 (i32, i8*, ...) @fprintf(i32 %107, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8* %109)
  %111 = call i32 @done(i32 1)
  br label %112

112:                                              ; preds = %106, %99
  %113 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = icmp sgt i32 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @TP_BSIZE, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %116
  %122 = load i32, i32* @TP_BSIZE, align 4
  store i32 %122, i32* @fssize, align 4
  br label %123

123:                                              ; preds = %121, %116, %112
  %124 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @TP_BSIZE, align 4
  %127 = icmp sge i32 %125, %126
  br i1 %127, label %128, label %136

128:                                              ; preds = %123
  %129 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @MAXBSIZE, align 4
  %132 = icmp sle i32 %130, %131
  br i1 %132, label %133, label %136

133:                                              ; preds = %128
  %134 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  store i32 %135, i32* @fssize, align 4
  br label %136

136:                                              ; preds = %133, %128, %123
  %137 = load i32, i32* @TP_BSIZE, align 4
  %138 = sub nsw i32 %137, 1
  %139 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = and i32 %138, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %155

143:                                              ; preds = %136
  %144 = load i32, i32* @stderr, align 4
  %145 = load i32, i32* @TP_BSIZE, align 4
  %146 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 (i32, i8*, ...) @fprintf(i32 %144, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.9, i64 0, i64 0), i32 %145, i32 %147)
  %149 = load i32, i32* @fssize, align 4
  %150 = load i32, i32* @TP_BSIZE, align 4
  %151 = call i32 @roundup(i32 %149, i32 %150)
  store i32 %151, i32* @fssize, align 4
  %152 = load i32, i32* @stderr, align 4
  %153 = load i32, i32* @fssize, align 4
  %154 = call i32 (i32, i8*, ...) @fprintf(i32 %152, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i32 %153)
  br label %155

155:                                              ; preds = %143, %136
  %156 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @spcl, i32 0, i32 0), align 8
  %157 = icmp ne i32 %156, 1
  br i1 %157, label %158, label %162

158:                                              ; preds = %155
  %159 = load i32, i32* @stderr, align 4
  %160 = call i32 (i32, i8*, ...) @fprintf(i32 %159, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0))
  %161 = call i32 @done(i32 1)
  br label %162

162:                                              ; preds = %158, %155
  %163 = call i64 @gethead(%struct.TYPE_8__* @spcl)
  %164 = load i64, i64* @FAIL, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %171

166:                                              ; preds = %162
  %167 = load i32, i32* @stdout, align 4
  %168 = load i32, i32* @blksread, align 4
  %169 = call i32 @dprintf(i32 %167, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0), i32 %168)
  %170 = call i32 @panic(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0))
  br label %171

171:                                              ; preds = %166, %162
  %172 = call i32 @findinode(%struct.TYPE_8__* @spcl)
  %173 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @spcl, i32 0, i32 1), align 8
  %174 = load i64, i64* @TS_CLRI, align 8
  %175 = icmp ne i64 %173, %174
  br i1 %175, label %176, label %180

176:                                              ; preds = %171
  %177 = load i32, i32* @stderr, align 4
  %178 = call i32 (i32, i8*, ...) @fprintf(i32 %177, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0))
  %179 = call i32 @done(i32 1)
  br label %180

180:                                              ; preds = %176, %171
  %181 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @spcl, i32 0, i32 2), align 8
  %182 = load i32, i32* @TP_BSIZE, align 4
  %183 = mul nsw i32 %181, %182
  %184 = load i32, i32* @NBBY, align 4
  %185 = mul nsw i32 %183, %184
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* @maxino, align 4
  %187 = load i32, i32* @stdout, align 4
  %188 = load i32, i32* @maxino, align 4
  %189 = call i32 @dprintf(i32 %187, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i32 %188)
  %190 = load i32, i32* @maxino, align 4
  %191 = load i32, i32* @NBBY, align 4
  %192 = call i64 @howmany(i32 %190, i32 %191)
  %193 = trunc i64 %192 to i32
  %194 = call i8* @calloc(i32 1, i32 %193)
  store i8* %194, i8** @map, align 8
  %195 = load i8*, i8** @map, align 8
  %196 = icmp eq i8* %195, null
  br i1 %196, label %197, label %199

197:                                              ; preds = %180
  %198 = call i32 @panic(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i64 0, i64 0))
  br label %199

199:                                              ; preds = %197, %180
  %200 = load i8*, i8** @map, align 8
  store i8* %200, i8** @usedinomap, align 8
  %201 = load i8*, i8** @USING, align 8
  store i8* %201, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @curfile, i32 0, i32 0), align 8
  %202 = load i32, i32* @xtrmap, align 4
  %203 = load i32, i32* @xtrmapskip, align 4
  %204 = load i32, i32* @xtrmapskip, align 4
  %205 = call i32 @getfile(i32 %202, i32 %203, i32 %204)
  %206 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @spcl, i32 0, i32 1), align 8
  %207 = load i64, i64* @TS_BITS, align 8
  %208 = icmp ne i64 %206, %207
  br i1 %208, label %209, label %213

209:                                              ; preds = %199
  %210 = load i32, i32* @stderr, align 4
  %211 = call i32 (i32, i8*, ...) @fprintf(i32 %210, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0))
  %212 = call i32 @done(i32 1)
  br label %213

213:                                              ; preds = %209, %199
  %214 = load i32, i32* @maxino, align 4
  %215 = load i32, i32* @NBBY, align 4
  %216 = call i64 @howmany(i32 %214, i32 %215)
  %217 = trunc i64 %216 to i32
  %218 = call i8* @calloc(i32 1, i32 %217)
  store i8* %218, i8** @map, align 8
  %219 = load i8*, i8** @map, align 8
  %220 = icmp eq i8* %219, null
  br i1 %220, label %221, label %223

221:                                              ; preds = %213
  %222 = call i32 @panic(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i64 0, i64 0))
  br label %223

223:                                              ; preds = %221, %213
  %224 = load i8*, i8** @map, align 8
  store i8* %224, i8** @dumpmap, align 8
  %225 = load i8*, i8** @USING, align 8
  store i8* %225, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @curfile, i32 0, i32 0), align 8
  %226 = load i32, i32* @xtrmap, align 4
  %227 = load i32, i32* @xtrmapskip, align 4
  %228 = load i32, i32* @xtrmapskip, align 4
  %229 = call i32 @getfile(i32 %226, i32 %227, i32 %228)
  %230 = load i32, i32* @UFS_WINO, align 4
  %231 = load i8*, i8** @dumpmap, align 8
  %232 = call i32 @SETINO(i32 %230, i8* %231)
  %233 = load i8, i8* @command, align 1
  %234 = sext i8 %233 to i32
  %235 = icmp eq i32 %234, 114
  br i1 %235, label %236, label %237

236:                                              ; preds = %223
  store i32 1, i32* @tapesread, align 4
  br label %237

237:                                              ; preds = %236, %223
  ret void
}

declare dso_local i32 @vprintf(i32, i8*) #1

declare dso_local i32 @setenv(i8*, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @done(i32) #1

declare dso_local i64 @popen(i8*, i8*) #1

declare dso_local i32 @fileno(i64) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @setdumpnum(...) #1

declare dso_local i32 @FLUSHTAPEBUF(...) #1

declare dso_local i32 @findtapeblksize(...) #1

declare dso_local i64 @gethead(%struct.TYPE_8__*) #1

declare dso_local i32 @printdumpinfo(...) #1

declare dso_local i8* @_time64_to_time(i32) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @dprintf(i32, i8*, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @findinode(%struct.TYPE_8__*) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i64 @howmany(i32, i32) #1

declare dso_local i32 @getfile(i32, i32, i32) #1

declare dso_local i32 @SETINO(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
