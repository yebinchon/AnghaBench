; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_pass1.c_pass1check.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_pass1.c_pass1check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dups = type { i64, %struct.dups* }
%struct.inodesc = type { i64, i64, i64, i64, i32, i64, i64, i64 }

@KEEPON = common dso_local global i32 0, align 4
@SNAP = common dso_local global i64 0, align 8
@BLK_NOCOPY = common dso_local global i64 0, align 8
@cursnapshot = common dso_local global i64 0, align 8
@sblock = common dso_local global i32 0, align 4
@BLK_SNAP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"BAD\00", align 1
@badblk = common dso_local global i32 0, align 4
@MAXBAD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"EXCESSIVE BAD BLKS I=%lu\00", align 1
@preen = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c" (SKIPPING)\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"CONTINUE\00", align 1
@EEXIT = common dso_local global i32 0, align 4
@rerun = common dso_local global i32 0, align 4
@STOP = common dso_local global i32 0, align 4
@SKIP = common dso_local global i32 0, align 4
@n_blks = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"DUP\00", align 1
@dupblk = common dso_local global i32 0, align 4
@MAXDUP = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [25 x i8] c"EXCESSIVE DUP BLKS I=%lu\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"DUP TABLE OVERFLOW.\00", align 1
@muldup = common dso_local global %struct.dups* null, align 8
@duplist = common dso_local global %struct.dups* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pass1check(%struct.inodesc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inodesc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.dups*, align 8
  %9 = alloca %struct.dups*, align 8
  store %struct.inodesc* %0, %struct.inodesc** %3, align 8
  %10 = load i32, i32* @KEEPON, align 4
  store i32 %10, i32* %4, align 4
  %11 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %12 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %7, align 8
  %14 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %15 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SNAP, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %66

19:                                               ; preds = %1
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* @BLK_NOCOPY, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @KEEPON, align 4
  store i32 %24, i32* %2, align 4
  br label %258

25:                                               ; preds = %19
  %26 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %27 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @cursnapshot, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %58

31:                                               ; preds = %25
  %32 = load i64, i64* %7, align 8
  %33 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %34 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = call i64 @blkstofrags(i32* @sblock, i64 %35)
  %37 = icmp eq i64 %32, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* @KEEPON, align 4
  store i32 %39, i32* %2, align 4
  br label %258

40:                                               ; preds = %31
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* @BLK_SNAP, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %40
  %45 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %46 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = call i64 @blkstofrags(i32* @sblock, i64 %47)
  store i64 %48, i64* %7, align 8
  %49 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %50 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %54 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %53, i32 0, i32 7
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %55, %52
  store i64 %56, i64* %54, align 8
  br label %57

57:                                               ; preds = %44, %40
  br label %65

58:                                               ; preds = %25
  %59 = load i64, i64* %7, align 8
  %60 = load i64, i64* @BLK_SNAP, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i32, i32* @KEEPON, align 4
  store i32 %63, i32* %2, align 4
  br label %258

64:                                               ; preds = %58
  br label %65

65:                                               ; preds = %64, %57
  br label %66

66:                                               ; preds = %65, %1
  %67 = load i64, i64* %7, align 8
  %68 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %69 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @chkrange(i64 %67, i32 %70)
  store i32 %71, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %105

73:                                               ; preds = %66
  %74 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %75 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %7, align 8
  %78 = call i32 @blkerror(i64 %76, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %77)
  %79 = load i32, i32* @badblk, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* @badblk, align 4
  %81 = sext i32 %79 to i64
  %82 = load i64, i64* @MAXBAD, align 8
  %83 = icmp sge i64 %81, %82
  br i1 %83, label %84, label %104

84:                                               ; preds = %73
  %85 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %86 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = trunc i64 %87 to i32
  %89 = call i32 @pwarn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  %90 = load i64, i64* @preen, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %84
  %93 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %102

94:                                               ; preds = %84
  %95 = call i64 @reply(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = call i32 @ckfini(i32 0)
  %99 = load i32, i32* @EEXIT, align 4
  %100 = call i32 @exit(i32 %99) #3
  unreachable

101:                                              ; preds = %94
  br label %102

102:                                              ; preds = %101, %92
  store i32 1, i32* @rerun, align 4
  %103 = load i32, i32* @STOP, align 4
  store i32 %103, i32* %2, align 4
  br label %258

104:                                              ; preds = %73
  br label %105

105:                                              ; preds = %104, %66
  %106 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %107 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  store i32 %108, i32* %6, align 4
  br label %109

109:                                              ; preds = %232, %105
  %110 = load i32, i32* %6, align 4
  %111 = icmp sgt i32 %110, 0
  br i1 %111, label %112, label %237

112:                                              ; preds = %109
  %113 = load i32, i32* %5, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %112
  %116 = load i64, i64* %7, align 8
  %117 = call i32 @chkrange(i64 %116, i32 1)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %115
  %120 = load i32, i32* @SKIP, align 4
  store i32 %120, i32* %4, align 4
  br label %227

121:                                              ; preds = %115, %112
  %122 = load i64, i64* %7, align 8
  %123 = call i32 @testbmap(i64 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %130, label %125

125:                                              ; preds = %121
  %126 = load i32, i32* @n_blks, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* @n_blks, align 4
  %128 = load i64, i64* %7, align 8
  %129 = call i32 @setbmap(i64 %128)
  br label %226

130:                                              ; preds = %121
  %131 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %132 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* %7, align 8
  %135 = call i32 @blkerror(i64 %133, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i64 %134)
  %136 = load i32, i32* @dupblk, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* @dupblk, align 4
  %138 = sext i32 %136 to i64
  %139 = load i64, i64* @MAXDUP, align 8
  %140 = icmp sge i64 %138, %139
  br i1 %140, label %141, label %161

141:                                              ; preds = %130
  %142 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %143 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = trunc i64 %144 to i32
  %146 = call i32 @pwarn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %145)
  %147 = load i64, i64* @preen, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %141
  %150 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %159

151:                                              ; preds = %141
  %152 = call i64 @reply(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %151
  %155 = call i32 @ckfini(i32 0)
  %156 = load i32, i32* @EEXIT, align 4
  %157 = call i32 @exit(i32 %156) #3
  unreachable

158:                                              ; preds = %151
  br label %159

159:                                              ; preds = %158, %149
  store i32 1, i32* @rerun, align 4
  %160 = load i32, i32* @STOP, align 4
  store i32 %160, i32* %2, align 4
  br label %258

161:                                              ; preds = %130
  %162 = call i64 @Malloc(i32 16)
  %163 = inttoptr i64 %162 to %struct.dups*
  store %struct.dups* %163, %struct.dups** %9, align 8
  %164 = load %struct.dups*, %struct.dups** %9, align 8
  %165 = icmp eq %struct.dups* %164, null
  br i1 %165, label %166, label %176

166:                                              ; preds = %161
  %167 = call i32 @pfatal(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %168 = call i64 @reply(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %166
  %171 = call i32 @ckfini(i32 0)
  %172 = load i32, i32* @EEXIT, align 4
  %173 = call i32 @exit(i32 %172) #3
  unreachable

174:                                              ; preds = %166
  store i32 1, i32* @rerun, align 4
  %175 = load i32, i32* @STOP, align 4
  store i32 %175, i32* %2, align 4
  br label %258

176:                                              ; preds = %161
  %177 = load i64, i64* %7, align 8
  %178 = load %struct.dups*, %struct.dups** %9, align 8
  %179 = getelementptr inbounds %struct.dups, %struct.dups* %178, i32 0, i32 0
  store i64 %177, i64* %179, align 8
  %180 = load %struct.dups*, %struct.dups** @muldup, align 8
  %181 = icmp eq %struct.dups* %180, null
  br i1 %181, label %182, label %186

182:                                              ; preds = %176
  %183 = load %struct.dups*, %struct.dups** %9, align 8
  store %struct.dups* %183, %struct.dups** @muldup, align 8
  store %struct.dups* %183, %struct.dups** @duplist, align 8
  %184 = load %struct.dups*, %struct.dups** %9, align 8
  %185 = getelementptr inbounds %struct.dups, %struct.dups* %184, i32 0, i32 1
  store %struct.dups* null, %struct.dups** %185, align 8
  br label %195

186:                                              ; preds = %176
  %187 = load %struct.dups*, %struct.dups** @muldup, align 8
  %188 = getelementptr inbounds %struct.dups, %struct.dups* %187, i32 0, i32 1
  %189 = load %struct.dups*, %struct.dups** %188, align 8
  %190 = load %struct.dups*, %struct.dups** %9, align 8
  %191 = getelementptr inbounds %struct.dups, %struct.dups* %190, i32 0, i32 1
  store %struct.dups* %189, %struct.dups** %191, align 8
  %192 = load %struct.dups*, %struct.dups** %9, align 8
  %193 = load %struct.dups*, %struct.dups** @muldup, align 8
  %194 = getelementptr inbounds %struct.dups, %struct.dups* %193, i32 0, i32 1
  store %struct.dups* %192, %struct.dups** %194, align 8
  br label %195

195:                                              ; preds = %186, %182
  %196 = load %struct.dups*, %struct.dups** @duplist, align 8
  store %struct.dups* %196, %struct.dups** %8, align 8
  br label %197

197:                                              ; preds = %209, %195
  %198 = load %struct.dups*, %struct.dups** %8, align 8
  %199 = load %struct.dups*, %struct.dups** @muldup, align 8
  %200 = icmp ne %struct.dups* %198, %199
  br i1 %200, label %201, label %213

201:                                              ; preds = %197
  %202 = load %struct.dups*, %struct.dups** %8, align 8
  %203 = getelementptr inbounds %struct.dups, %struct.dups* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* %7, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %207, label %208

207:                                              ; preds = %201
  br label %213

208:                                              ; preds = %201
  br label %209

209:                                              ; preds = %208
  %210 = load %struct.dups*, %struct.dups** %8, align 8
  %211 = getelementptr inbounds %struct.dups, %struct.dups* %210, i32 0, i32 1
  %212 = load %struct.dups*, %struct.dups** %211, align 8
  store %struct.dups* %212, %struct.dups** %8, align 8
  br label %197

213:                                              ; preds = %207, %197
  %214 = load %struct.dups*, %struct.dups** %8, align 8
  %215 = load %struct.dups*, %struct.dups** @muldup, align 8
  %216 = icmp eq %struct.dups* %214, %215
  br i1 %216, label %217, label %225

217:                                              ; preds = %213
  %218 = load %struct.dups*, %struct.dups** %8, align 8
  %219 = getelementptr inbounds %struct.dups, %struct.dups* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* %7, align 8
  %222 = icmp ne i64 %220, %221
  br i1 %222, label %223, label %225

223:                                              ; preds = %217
  %224 = load %struct.dups*, %struct.dups** %9, align 8
  store %struct.dups* %224, %struct.dups** @muldup, align 8
  br label %225

225:                                              ; preds = %223, %217, %213
  br label %226

226:                                              ; preds = %225, %125
  br label %227

227:                                              ; preds = %226, %119
  %228 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %229 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %228, i32 0, i32 7
  %230 = load i64, i64* %229, align 8
  %231 = add nsw i64 %230, 1
  store i64 %231, i64* %229, align 8
  br label %232

232:                                              ; preds = %227
  %233 = load i64, i64* %7, align 8
  %234 = add nsw i64 %233, 1
  store i64 %234, i64* %7, align 8
  %235 = load i32, i32* %6, align 4
  %236 = add nsw i32 %235, -1
  store i32 %236, i32* %6, align 4
  br label %109

237:                                              ; preds = %109
  %238 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %239 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %238, i32 0, i32 5
  %240 = load i64, i64* %239, align 8
  %241 = icmp eq i64 %240, 0
  br i1 %241, label %242, label %256

242:                                              ; preds = %237
  %243 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %244 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %243, i32 0, i32 6
  %245 = load i64, i64* %244, align 8
  %246 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %247 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %246, i32 0, i32 3
  %248 = load i64, i64* %247, align 8
  %249 = icmp slt i64 %245, %248
  br i1 %249, label %250, label %256

250:                                              ; preds = %242
  %251 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %252 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %251, i32 0, i32 3
  %253 = load i64, i64* %252, align 8
  %254 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %255 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %254, i32 0, i32 6
  store i64 %253, i64* %255, align 8
  br label %256

256:                                              ; preds = %250, %242, %237
  %257 = load i32, i32* %4, align 4
  store i32 %257, i32* %2, align 4
  br label %258

258:                                              ; preds = %256, %174, %159, %102, %62, %38, %23
  %259 = load i32, i32* %2, align 4
  ret i32 %259
}

declare dso_local i64 @blkstofrags(i32*, i64) #1

declare dso_local i32 @chkrange(i64, i32) #1

declare dso_local i32 @blkerror(i64, i8*, i64) #1

declare dso_local i32 @pwarn(i8*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @reply(i8*) #1

declare dso_local i32 @ckfini(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @testbmap(i64) #1

declare dso_local i32 @setbmap(i64) #1

declare dso_local i64 @Malloc(i32) #1

declare dso_local i32 @pfatal(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
