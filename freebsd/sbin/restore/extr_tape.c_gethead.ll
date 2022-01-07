; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/restore/extr_tape.c_gethead.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/restore/extr_tape.c_gethead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_spcl = type { i64, i32, i32, i32, i32, i32, i32*, i32, i32, i8*, i32, i32, i32, i32, i8*, i32, i8*, i32, i8*, i32, i32, i32, i32, i32, i32*, i32 }

@FS_UFS2_MAGIC = common dso_local global i64 0, align 8
@NFS_MAGIC = common dso_local global i64 0, align 8
@OFS_MAGIC = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Format of dump tape is too old. Must use\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"a version of restore from before 2002.\0A\00", align 1
@FAIL = common dso_local global i32 0, align 4
@Bcvt = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Note: Doing Byte swapping\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"8l4s1q8l2q17l\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"2l4q\00", align 1
@readmapflag = common dso_local global i32 0, align 4
@TP_BSIZE = common dso_local global i32 0, align 4
@TP_NINDIR = common dso_local global i32 0, align 4
@NFS_DR_NEWINODEFMT = common dso_local global i32 0, align 4
@oldinofmt = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"gethead: unknown inode type %d\0A\00", align 1
@dumpdate = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [29 x i8] c"Header with wrong dumpdate.\0A\00", align 1
@tapeaddr = common dso_local global i32 0, align 4
@dflag = common dso_local global i64 0, align 8
@GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s_spcl*)* @gethead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gethead(%struct.s_spcl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s_spcl*, align 8
  %4 = alloca i64, align 8
  store %struct.s_spcl* %0, %struct.s_spcl** %3, align 8
  %5 = load %struct.s_spcl*, %struct.s_spcl** %3, align 8
  %6 = bitcast %struct.s_spcl* %5 to i8*
  %7 = call i32 @readtape(i8* %6)
  %8 = load %struct.s_spcl*, %struct.s_spcl** %3, align 8
  %9 = getelementptr inbounds %struct.s_spcl, %struct.s_spcl* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @FS_UFS2_MAGIC, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %66

13:                                               ; preds = %1
  %14 = load %struct.s_spcl*, %struct.s_spcl** %3, align 8
  %15 = getelementptr inbounds %struct.s_spcl, %struct.s_spcl* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @NFS_MAGIC, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %66

19:                                               ; preds = %13
  %20 = load %struct.s_spcl*, %struct.s_spcl** %3, align 8
  %21 = getelementptr inbounds %struct.s_spcl, %struct.s_spcl* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @OFS_MAGIC, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load i32, i32* @stderr, align 4
  %27 = call i32 @fprintf(i32 %26, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @stderr, align 4
  %29 = call i32 @fprintf(i32 %28, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @FAIL, align 4
  store i32 %30, i32* %2, align 4
  br label %242

31:                                               ; preds = %19
  %32 = load %struct.s_spcl*, %struct.s_spcl** %3, align 8
  %33 = getelementptr inbounds %struct.s_spcl, %struct.s_spcl* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @swabl(i64 %34)
  %36 = load i64, i64* @FS_UFS2_MAGIC, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %59

38:                                               ; preds = %31
  %39 = load %struct.s_spcl*, %struct.s_spcl** %3, align 8
  %40 = getelementptr inbounds %struct.s_spcl, %struct.s_spcl* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i64 @swabl(i64 %41)
  %43 = load i64, i64* @NFS_MAGIC, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %38
  %46 = load %struct.s_spcl*, %struct.s_spcl** %3, align 8
  %47 = getelementptr inbounds %struct.s_spcl, %struct.s_spcl* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i64 @swabl(i64 %48)
  %50 = load i64, i64* @OFS_MAGIC, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %45
  %53 = load i32, i32* @stderr, align 4
  %54 = call i32 @fprintf(i32 %53, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* @stderr, align 4
  %56 = call i32 @fprintf(i32 %55, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %57

57:                                               ; preds = %52, %45
  %58 = load i32, i32* @FAIL, align 4
  store i32 %58, i32* %2, align 4
  br label %242

59:                                               ; preds = %38, %31
  %60 = load i32, i32* @Bcvt, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* @stdout, align 4
  %64 = call i32 @vprintf(i32 %63, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* @Bcvt, align 4
  br label %65

65:                                               ; preds = %62, %59
  br label %66

66:                                               ; preds = %65, %13, %1
  %67 = load %struct.s_spcl*, %struct.s_spcl** %3, align 8
  %68 = bitcast %struct.s_spcl* %67 to i32*
  %69 = call i32 @checksum(i32* %68)
  %70 = load i32, i32* @FAIL, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = load i32, i32* @FAIL, align 4
  store i32 %73, i32* %2, align 4
  br label %242

74:                                               ; preds = %66
  %75 = load i32, i32* @Bcvt, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %74
  %78 = load %struct.s_spcl*, %struct.s_spcl** %3, align 8
  %79 = bitcast %struct.s_spcl* %78 to i32*
  %80 = call i32 @swabst(i32* bitcast ([14 x i8]* @.str.3 to i32*), i32* %79)
  %81 = load %struct.s_spcl*, %struct.s_spcl** %3, align 8
  %82 = getelementptr inbounds %struct.s_spcl, %struct.s_spcl* %81, i32 0, i32 25
  %83 = call i32 @swabst(i32* bitcast ([2 x i8]* @.str.4 to i32*), i32* %82)
  %84 = load %struct.s_spcl*, %struct.s_spcl** %3, align 8
  %85 = getelementptr inbounds %struct.s_spcl, %struct.s_spcl* %84, i32 0, i32 1
  %86 = call i32 @swabst(i32* bitcast ([5 x i8]* @.str.5 to i32*), i32* %85)
  br label %87

87:                                               ; preds = %77, %74
  store i32 0, i32* @readmapflag, align 4
  %88 = load %struct.s_spcl*, %struct.s_spcl** %3, align 8
  %89 = getelementptr inbounds %struct.s_spcl, %struct.s_spcl* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  switch i32 %90, label %192 [
    i32 131, label %91
    i32 132, label %91
    i32 128, label %126
    i32 130, label %141
    i32 133, label %144
    i32 129, label %144
  ]

91:                                               ; preds = %87, %87
  %92 = load %struct.s_spcl*, %struct.s_spcl** %3, align 8
  %93 = getelementptr inbounds %struct.s_spcl, %struct.s_spcl* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @TP_BSIZE, align 4
  %96 = mul nsw i32 %94, %95
  %97 = load %struct.s_spcl*, %struct.s_spcl** %3, align 8
  %98 = getelementptr inbounds %struct.s_spcl, %struct.s_spcl* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 8
  %99 = load %struct.s_spcl*, %struct.s_spcl** %3, align 8
  %100 = getelementptr inbounds %struct.s_spcl, %struct.s_spcl* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @TP_NINDIR, align 4
  %103 = icmp sgt i32 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %91
  store i32 1, i32* @readmapflag, align 4
  br label %125

105:                                              ; preds = %91
  store i64 0, i64* %4, align 8
  br label %106

106:                                              ; preds = %121, %105
  %107 = load i64, i64* %4, align 8
  %108 = load %struct.s_spcl*, %struct.s_spcl** %3, align 8
  %109 = getelementptr inbounds %struct.s_spcl, %struct.s_spcl* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = sext i32 %110 to i64
  %112 = icmp slt i64 %107, %111
  br i1 %112, label %113, label %124

113:                                              ; preds = %106
  %114 = load %struct.s_spcl*, %struct.s_spcl** %3, align 8
  %115 = getelementptr inbounds %struct.s_spcl, %struct.s_spcl* %114, i32 0, i32 24
  %116 = load i32*, i32** %115, align 8
  %117 = load i64, i64* %4, align 8
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %118, align 4
  br label %121

121:                                              ; preds = %113
  %122 = load i64, i64* %4, align 8
  %123 = add nsw i64 %122, 1
  store i64 %123, i64* %4, align 8
  br label %106

124:                                              ; preds = %106
  br label %125

125:                                              ; preds = %124, %104
  br label %126

126:                                              ; preds = %87, %125
  %127 = load %struct.s_spcl*, %struct.s_spcl** %3, align 8
  %128 = getelementptr inbounds %struct.s_spcl, %struct.s_spcl* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @NFS_MAGIC, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %140

132:                                              ; preds = %126
  %133 = load %struct.s_spcl*, %struct.s_spcl** %3, align 8
  %134 = getelementptr inbounds %struct.s_spcl, %struct.s_spcl* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @NFS_DR_NEWINODEFMT, align 4
  %137 = and i32 %135, %136
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %132
  store i32 1, i32* @oldinofmt, align 4
  br label %140

140:                                              ; preds = %139, %132, %126
  br label %141

141:                                              ; preds = %87, %140
  %142 = load %struct.s_spcl*, %struct.s_spcl** %3, align 8
  %143 = getelementptr inbounds %struct.s_spcl, %struct.s_spcl* %142, i32 0, i32 23
  store i32 0, i32* %143, align 8
  br label %144

144:                                              ; preds = %87, %87, %141
  %145 = load %struct.s_spcl*, %struct.s_spcl** %3, align 8
  %146 = getelementptr inbounds %struct.s_spcl, %struct.s_spcl* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @NFS_MAGIC, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %191

150:                                              ; preds = %144
  %151 = load %struct.s_spcl*, %struct.s_spcl** %3, align 8
  %152 = getelementptr inbounds %struct.s_spcl, %struct.s_spcl* %151, i32 0, i32 22
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.s_spcl*, %struct.s_spcl** %3, align 8
  %155 = getelementptr inbounds %struct.s_spcl, %struct.s_spcl* %154, i32 0, i32 5
  store i32 %153, i32* %155, align 8
  %156 = load %struct.s_spcl*, %struct.s_spcl** %3, align 8
  %157 = getelementptr inbounds %struct.s_spcl, %struct.s_spcl* %156, i32 0, i32 20
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.s_spcl*, %struct.s_spcl** %3, align 8
  %160 = getelementptr inbounds %struct.s_spcl, %struct.s_spcl* %159, i32 0, i32 21
  store i32 %158, i32* %160, align 8
  %161 = load %struct.s_spcl*, %struct.s_spcl** %3, align 8
  %162 = getelementptr inbounds %struct.s_spcl, %struct.s_spcl* %161, i32 0, i32 19
  %163 = load i32, i32* %162, align 8
  %164 = call i8* @_time32_to_time(i32 %163)
  %165 = load %struct.s_spcl*, %struct.s_spcl** %3, align 8
  %166 = getelementptr inbounds %struct.s_spcl, %struct.s_spcl* %165, i32 0, i32 9
  store i8* %164, i8** %166, align 8
  %167 = load %struct.s_spcl*, %struct.s_spcl** %3, align 8
  %168 = getelementptr inbounds %struct.s_spcl, %struct.s_spcl* %167, i32 0, i32 17
  %169 = load i32, i32* %168, align 8
  %170 = call i8* @_time32_to_time(i32 %169)
  %171 = load %struct.s_spcl*, %struct.s_spcl** %3, align 8
  %172 = getelementptr inbounds %struct.s_spcl, %struct.s_spcl* %171, i32 0, i32 18
  store i8* %170, i8** %172, align 8
  %173 = load %struct.s_spcl*, %struct.s_spcl** %3, align 8
  %174 = getelementptr inbounds %struct.s_spcl, %struct.s_spcl* %173, i32 0, i32 15
  %175 = load i32, i32* %174, align 8
  %176 = call i8* @_time32_to_time(i32 %175)
  %177 = load %struct.s_spcl*, %struct.s_spcl** %3, align 8
  %178 = getelementptr inbounds %struct.s_spcl, %struct.s_spcl* %177, i32 0, i32 16
  store i8* %176, i8** %178, align 8
  %179 = load %struct.s_spcl*, %struct.s_spcl** %3, align 8
  %180 = getelementptr inbounds %struct.s_spcl, %struct.s_spcl* %179, i32 0, i32 13
  %181 = load i32, i32* %180, align 4
  %182 = call i8* @_time32_to_time(i32 %181)
  %183 = load %struct.s_spcl*, %struct.s_spcl** %3, align 8
  %184 = getelementptr inbounds %struct.s_spcl, %struct.s_spcl* %183, i32 0, i32 14
  store i8* %182, i8** %184, align 8
  %185 = load %struct.s_spcl*, %struct.s_spcl** %3, align 8
  %186 = getelementptr inbounds %struct.s_spcl, %struct.s_spcl* %185, i32 0, i32 12
  store i32 0, i32* %186, align 8
  %187 = load %struct.s_spcl*, %struct.s_spcl** %3, align 8
  %188 = getelementptr inbounds %struct.s_spcl, %struct.s_spcl* %187, i32 0, i32 11
  store i32 0, i32* %188, align 4
  %189 = load %struct.s_spcl*, %struct.s_spcl** %3, align 8
  %190 = getelementptr inbounds %struct.s_spcl, %struct.s_spcl* %189, i32 0, i32 10
  store i32 0, i32* %190, align 8
  br label %191

191:                                              ; preds = %150, %144
  br label %197

192:                                              ; preds = %87
  %193 = load %struct.s_spcl*, %struct.s_spcl** %3, align 8
  %194 = getelementptr inbounds %struct.s_spcl, %struct.s_spcl* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @panic(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %195)
  br label %197

197:                                              ; preds = %192, %191
  %198 = load i64, i64* @dumpdate, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %210

200:                                              ; preds = %197
  %201 = load %struct.s_spcl*, %struct.s_spcl** %3, align 8
  %202 = getelementptr inbounds %struct.s_spcl, %struct.s_spcl* %201, i32 0, i32 9
  %203 = load i8*, i8** %202, align 8
  %204 = call i64 @_time64_to_time(i8* %203)
  %205 = load i64, i64* @dumpdate, align 8
  %206 = icmp ne i64 %204, %205
  br i1 %206, label %207, label %210

207:                                              ; preds = %200
  %208 = load i32, i32* @stderr, align 4
  %209 = call i32 @fprintf(i32 %208, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  br label %210

210:                                              ; preds = %207, %200, %197
  %211 = load i32, i32* @oldinofmt, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %228

213:                                              ; preds = %210
  %214 = load %struct.s_spcl*, %struct.s_spcl** %3, align 8
  %215 = getelementptr inbounds %struct.s_spcl, %struct.s_spcl* %214, i32 0, i32 6
  %216 = load i32*, i32** %215, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 1
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.s_spcl*, %struct.s_spcl** %3, align 8
  %220 = getelementptr inbounds %struct.s_spcl, %struct.s_spcl* %219, i32 0, i32 8
  store i32 %218, i32* %220, align 4
  %221 = load %struct.s_spcl*, %struct.s_spcl** %3, align 8
  %222 = getelementptr inbounds %struct.s_spcl, %struct.s_spcl* %221, i32 0, i32 6
  %223 = load i32*, i32** %222, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 2
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.s_spcl*, %struct.s_spcl** %3, align 8
  %227 = getelementptr inbounds %struct.s_spcl, %struct.s_spcl* %226, i32 0, i32 7
  store i32 %225, i32* %227, align 8
  br label %228

228:                                              ; preds = %213, %210
  %229 = load i64, i64* @FS_UFS2_MAGIC, align 8
  %230 = load %struct.s_spcl*, %struct.s_spcl** %3, align 8
  %231 = getelementptr inbounds %struct.s_spcl, %struct.s_spcl* %230, i32 0, i32 0
  store i64 %229, i64* %231, align 8
  %232 = load %struct.s_spcl*, %struct.s_spcl** %3, align 8
  %233 = getelementptr inbounds %struct.s_spcl, %struct.s_spcl* %232, i32 0, i32 5
  %234 = load i32, i32* %233, align 8
  store i32 %234, i32* @tapeaddr, align 4
  %235 = load i64, i64* @dflag, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %240

237:                                              ; preds = %228
  %238 = load %struct.s_spcl*, %struct.s_spcl** %3, align 8
  %239 = call i32 @accthdr(%struct.s_spcl* %238)
  br label %240

240:                                              ; preds = %237, %228
  %241 = load i32, i32* @GOOD, align 4
  store i32 %241, i32* %2, align 4
  br label %242

242:                                              ; preds = %240, %72, %57, %25
  %243 = load i32, i32* %2, align 4
  ret i32 %243
}

declare dso_local i32 @readtape(i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i64 @swabl(i64) #1

declare dso_local i32 @vprintf(i32, i8*) #1

declare dso_local i32 @checksum(i32*) #1

declare dso_local i32 @swabst(i32*, i32*) #1

declare dso_local i8* @_time32_to_time(i32) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i64 @_time64_to_time(i8*) #1

declare dso_local i32 @accthdr(%struct.s_spcl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
