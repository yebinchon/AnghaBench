; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq-subs.c_ifstats.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq-subs.c_ifstats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse = type { i32 }
%struct.TYPE_5__ = type { i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32 }

@__const.ifstats.addr_fmt = private unnamed_addr constant [8 x i8] c"addr.%u\00", align 1
@__const.ifstats.bcast_fmt = private unnamed_addr constant [9 x i8] c"bcast.%u\00", align 1
@__const.ifstats.en_fmt = private unnamed_addr constant [6 x i8] c"en.%u\00", align 1
@__const.ifstats.flags_fmt = private unnamed_addr constant [9 x i8] c"flags.%u\00", align 1
@__const.ifstats.mc_fmt = private unnamed_addr constant [6 x i8] c"mc.%u\00", align 1
@__const.ifstats.name_fmt = private unnamed_addr constant [8 x i8] c"name.%u\00", align 1
@__const.ifstats.pc_fmt = private unnamed_addr constant [6 x i8] c"pc.%u\00", align 1
@__const.ifstats.rx_fmt = private unnamed_addr constant [6 x i8] c"rx.%u\00", align 1
@__const.ifstats.tl_fmt = private unnamed_addr constant [6 x i8] c"tl.%u\00", align 1
@__const.ifstats.tx_fmt = private unnamed_addr constant [6 x i8] c"tx.%u\00", align 1
@__const.ifstats.txerr_fmt = private unnamed_addr constant [9 x i8] c"txerr.%u\00", align 1
@__const.ifstats.up_fmt = private unnamed_addr constant [6 x i8] c"up.%u\00", align 1
@CTL_OP_READ_ORDLIST_A = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [222 x i8] c"    interface name                                        send\0A #  address/broadcast     drop flag ttl mc received sent failed peers   uptime\0A==============================================================================\0A\00", align 1
@debug = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"nextvar gave: %s = %s\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"0x%x\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@IFSTATS_FIELDS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [48 x i8] c"Warning: incomplete row with %d (of %d) fields\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parse*, i32*)* @ifstats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ifstats(%struct.parse* %0, i32* %1) #0 {
  %3 = alloca %struct.parse*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [8 x i8], align 1
  %6 = alloca [9 x i8], align 1
  %7 = alloca [6 x i8], align 1
  %8 = alloca [9 x i8], align 1
  %9 = alloca [6 x i8], align 1
  %10 = alloca [8 x i8], align 1
  %11 = alloca [6 x i8], align 1
  %12 = alloca [6 x i8], align 1
  %13 = alloca [6 x i8], align 1
  %14 = alloca [6 x i8], align 1
  %15 = alloca [9 x i8], align 1
  %16 = alloca [6 x i8], align 1
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca %struct.TYPE_5__, align 8
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  store %struct.parse* %0, %struct.parse** %3, align 8
  store i32* %1, i32** %4, align 8
  %28 = bitcast [8 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %28, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @__const.ifstats.addr_fmt, i32 0, i32 0), i64 8, i1 false)
  %29 = bitcast [9 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %29, i8* align 1 getelementptr inbounds ([9 x i8], [9 x i8]* @__const.ifstats.bcast_fmt, i32 0, i32 0), i64 9, i1 false)
  %30 = bitcast [6 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %30, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.ifstats.en_fmt, i32 0, i32 0), i64 6, i1 false)
  %31 = bitcast [9 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %31, i8* align 1 getelementptr inbounds ([9 x i8], [9 x i8]* @__const.ifstats.flags_fmt, i32 0, i32 0), i64 9, i1 false)
  %32 = bitcast [6 x i8]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %32, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.ifstats.mc_fmt, i32 0, i32 0), i64 6, i1 false)
  %33 = bitcast [8 x i8]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %33, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @__const.ifstats.name_fmt, i32 0, i32 0), i64 8, i1 false)
  %34 = bitcast [6 x i8]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %34, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.ifstats.pc_fmt, i32 0, i32 0), i64 6, i1 false)
  %35 = bitcast [6 x i8]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %35, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.ifstats.rx_fmt, i32 0, i32 0), i64 6, i1 false)
  %36 = bitcast [6 x i8]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %36, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.ifstats.tl_fmt, i32 0, i32 0), i64 6, i1 false)
  %37 = bitcast [6 x i8]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %37, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.ifstats.tx_fmt, i32 0, i32 0), i64 6, i1 false)
  %38 = bitcast [9 x i8]* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %38, i8* align 1 getelementptr inbounds ([9 x i8], [9 x i8]* @__const.ifstats.txerr_fmt, i32 0, i32 0), i64 9, i1 false)
  %39 = bitcast [6 x i8]* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %39, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.ifstats.up_fmt, i32 0, i32 0), i64 6, i1 false)
  %40 = load i32, i32* @CTL_OP_READ_ORDLIST_A, align 4
  %41 = load i32, i32* @TRUE, align 4
  %42 = call i32 @doquery(i32 %40, i32 0, i32 %41, i32 0, i32* null, i32* %20, i64* %19, i8** %17)
  store i32 %42, i32* %18, align 4
  %43 = load i32, i32* %18, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %2
  br label %278

46:                                               ; preds = %2
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 (i32*, i8*, ...) @fprintf(i32* %47, i8* getelementptr inbounds ([222 x i8], [222 x i8]* @.str, i64 0, i64 0))
  %49 = call i32 @ZERO(%struct.TYPE_5__* byval(%struct.TYPE_5__) align 8 %25)
  store i32 0, i32* %23, align 4
  store i64 0, i64* %24, align 8
  br label %50

50:                                               ; preds = %265, %46
  %51 = call i64 @nextvar(i64* %19, i8** %17, i8** %21, i8** %22)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %266

53:                                               ; preds = %50
  %54 = load i8*, i8** %21, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i8*, i8** %22, align 8
  %58 = icmp ne i8* %57, null
  br label %59

59:                                               ; preds = %56, %53
  %60 = phi i1 [ false, %53 ], [ %58, %56 ]
  %61 = zext i1 %60 to i32
  %62 = call i32 @INSIST(i32 %61)
  %63 = load i32, i32* @debug, align 4
  %64 = icmp sgt i32 %63, 1
  br i1 %64, label %65, label %72

65:                                               ; preds = %59
  %66 = load i32, i32* @stderr, align 4
  %67 = sext i32 %66 to i64
  %68 = inttoptr i64 %67 to i32*
  %69 = load i8*, i8** %21, align 8
  %70 = load i8*, i8** %22, align 8
  %71 = call i32 (i32*, i8*, ...) @fprintf(i32* %68, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %69, i8* %70)
  br label %72

72:                                               ; preds = %65, %59
  %73 = load i32, i32* @FALSE, align 4
  store i32 %73, i32* %26, align 4
  %74 = load i8*, i8** %21, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 0
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  switch i32 %77, label %256 [
    i32 97, label %78
    i32 98, label %91
    i32 101, label %109
    i32 102, label %122
    i32 109, label %135
    i32 110, label %148
    i32 112, label %178
    i32 114, label %191
    i32 116, label %204
    i32 117, label %243
  ]

78:                                               ; preds = %72
  %79 = load i8*, i8** %21, align 8
  %80 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  %81 = call i32 @sscanf(i8* %79, i8* %80, i64* %24)
  %82 = icmp eq i32 1, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %78
  %84 = load i8*, i8** %22, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 11
  %86 = call i32 @decodenetnum(i8* %84, i32* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = load i32, i32* @TRUE, align 4
  store i32 %89, i32* %26, align 4
  br label %90

90:                                               ; preds = %88, %83, %78
  br label %256

91:                                               ; preds = %72
  %92 = load i8*, i8** %21, align 8
  %93 = getelementptr inbounds [9 x i8], [9 x i8]* %6, i64 0, i64 0
  %94 = call i32 @sscanf(i8* %92, i8* %93, i64* %24)
  %95 = icmp eq i32 1, %94
  br i1 %95, label %96, label %108

96:                                               ; preds = %91
  %97 = load i8*, i8** %22, align 8
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 0, %99
  br i1 %100, label %106, label %101

101:                                              ; preds = %96
  %102 = load i8*, i8** %22, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 10
  %104 = call i32 @decodenetnum(i8* %102, i32* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %101, %96
  %107 = load i32, i32* @TRUE, align 4
  store i32 %107, i32* %26, align 4
  br label %108

108:                                              ; preds = %106, %101, %91
  br label %256

109:                                              ; preds = %72
  %110 = load i8*, i8** %21, align 8
  %111 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  %112 = call i32 @sscanf(i8* %110, i8* %111, i64* %24)
  %113 = icmp eq i32 1, %112
  br i1 %113, label %114, label %121

114:                                              ; preds = %109
  %115 = load i8*, i8** %22, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 9
  %117 = call i32 @sscanf(i8* %115, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i64* %116)
  %118 = icmp eq i32 1, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %114
  %120 = load i32, i32* @TRUE, align 4
  store i32 %120, i32* %26, align 4
  br label %121

121:                                              ; preds = %119, %114, %109
  br label %256

122:                                              ; preds = %72
  %123 = load i8*, i8** %21, align 8
  %124 = getelementptr inbounds [9 x i8], [9 x i8]* %8, i64 0, i64 0
  %125 = call i32 @sscanf(i8* %123, i8* %124, i64* %24)
  %126 = icmp eq i32 1, %125
  br i1 %126, label %127, label %134

127:                                              ; preds = %122
  %128 = load i8*, i8** %22, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 8
  %130 = call i32 @sscanf(i8* %128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i64* %129)
  %131 = icmp eq i32 1, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %127
  %133 = load i32, i32* @TRUE, align 4
  store i32 %133, i32* %26, align 4
  br label %134

134:                                              ; preds = %132, %127, %122
  br label %256

135:                                              ; preds = %72
  %136 = load i8*, i8** %21, align 8
  %137 = getelementptr inbounds [6 x i8], [6 x i8]* %9, i64 0, i64 0
  %138 = call i32 @sscanf(i8* %136, i8* %137, i64* %24)
  %139 = icmp eq i32 1, %138
  br i1 %139, label %140, label %147

140:                                              ; preds = %135
  %141 = load i8*, i8** %22, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 7
  %143 = call i32 @sscanf(i8* %141, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i64* %142)
  %144 = icmp eq i32 1, %143
  br i1 %144, label %145, label %147

145:                                              ; preds = %140
  %146 = load i32, i32* @TRUE, align 4
  store i32 %146, i32* %26, align 4
  br label %147

147:                                              ; preds = %145, %140, %135
  br label %256

148:                                              ; preds = %72
  %149 = load i8*, i8** %21, align 8
  %150 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0
  %151 = call i32 @sscanf(i8* %149, i8* %150, i64* %24)
  %152 = icmp eq i32 1, %151
  br i1 %152, label %153, label %177

153:                                              ; preds = %148
  %154 = load i8*, i8** %22, align 8
  %155 = call i64 @strlen(i8* %154)
  store i64 %155, i64* %27, align 8
  %156 = load i64, i64* %27, align 8
  %157 = icmp uge i64 %156, 2
  br i1 %157, label %158, label %176

158:                                              ; preds = %153
  %159 = load i64, i64* %27, align 8
  %160 = sub i64 %159, 2
  %161 = icmp ult i64 %160, 8
  br i1 %161, label %162, label %176

162:                                              ; preds = %158
  %163 = load i64, i64* %27, align 8
  %164 = sub i64 %163, 2
  store i64 %164, i64* %27, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %166 = load i8*, i8** %165, align 8
  %167 = load i8*, i8** %22, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 1
  %169 = load i64, i64* %27, align 8
  %170 = call i32 @memcpy(i8* %166, i8* %168, i64 %169)
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %172 = load i8*, i8** %171, align 8
  %173 = load i64, i64* %27, align 8
  %174 = getelementptr inbounds i8, i8* %172, i64 %173
  store i8 0, i8* %174, align 1
  %175 = load i32, i32* @TRUE, align 4
  store i32 %175, i32* %26, align 4
  br label %176

176:                                              ; preds = %162, %158, %153
  br label %177

177:                                              ; preds = %176, %148
  br label %256

178:                                              ; preds = %72
  %179 = load i8*, i8** %21, align 8
  %180 = getelementptr inbounds [6 x i8], [6 x i8]* %11, i64 0, i64 0
  %181 = call i32 @sscanf(i8* %179, i8* %180, i64* %24)
  %182 = icmp eq i32 1, %181
  br i1 %182, label %183, label %190

183:                                              ; preds = %178
  %184 = load i8*, i8** %22, align 8
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 6
  %186 = call i32 @sscanf(i8* %184, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i64* %185)
  %187 = icmp eq i32 1, %186
  br i1 %187, label %188, label %190

188:                                              ; preds = %183
  %189 = load i32, i32* @TRUE, align 4
  store i32 %189, i32* %26, align 4
  br label %190

190:                                              ; preds = %188, %183, %178
  br label %256

191:                                              ; preds = %72
  %192 = load i8*, i8** %21, align 8
  %193 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 0
  %194 = call i32 @sscanf(i8* %192, i8* %193, i64* %24)
  %195 = icmp eq i32 1, %194
  br i1 %195, label %196, label %203

196:                                              ; preds = %191
  %197 = load i8*, i8** %22, align 8
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 5
  %199 = call i32 @sscanf(i8* %197, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i64* %198)
  %200 = icmp eq i32 1, %199
  br i1 %200, label %201, label %203

201:                                              ; preds = %196
  %202 = load i32, i32* @TRUE, align 4
  store i32 %202, i32* %26, align 4
  br label %203

203:                                              ; preds = %201, %196, %191
  br label %256

204:                                              ; preds = %72
  %205 = load i8*, i8** %21, align 8
  %206 = getelementptr inbounds [6 x i8], [6 x i8]* %13, i64 0, i64 0
  %207 = call i32 @sscanf(i8* %205, i8* %206, i64* %24)
  %208 = icmp eq i32 1, %207
  br i1 %208, label %209, label %216

209:                                              ; preds = %204
  %210 = load i8*, i8** %22, align 8
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 4
  %212 = call i32 @sscanf(i8* %210, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i64* %211)
  %213 = icmp eq i32 1, %212
  br i1 %213, label %214, label %216

214:                                              ; preds = %209
  %215 = load i32, i32* @TRUE, align 4
  store i32 %215, i32* %26, align 4
  br label %242

216:                                              ; preds = %209, %204
  %217 = load i8*, i8** %21, align 8
  %218 = getelementptr inbounds [6 x i8], [6 x i8]* %14, i64 0, i64 0
  %219 = call i32 @sscanf(i8* %217, i8* %218, i64* %24)
  %220 = icmp eq i32 1, %219
  br i1 %220, label %221, label %228

221:                                              ; preds = %216
  %222 = load i8*, i8** %22, align 8
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 3
  %224 = call i32 @sscanf(i8* %222, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i64* %223)
  %225 = icmp eq i32 1, %224
  br i1 %225, label %226, label %228

226:                                              ; preds = %221
  %227 = load i32, i32* @TRUE, align 4
  store i32 %227, i32* %26, align 4
  br label %241

228:                                              ; preds = %221, %216
  %229 = load i8*, i8** %21, align 8
  %230 = getelementptr inbounds [9 x i8], [9 x i8]* %15, i64 0, i64 0
  %231 = call i32 @sscanf(i8* %229, i8* %230, i64* %24)
  %232 = icmp eq i32 1, %231
  br i1 %232, label %233, label %240

233:                                              ; preds = %228
  %234 = load i8*, i8** %22, align 8
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 2
  %236 = call i32 @sscanf(i8* %234, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i64* %235)
  %237 = icmp eq i32 1, %236
  br i1 %237, label %238, label %240

238:                                              ; preds = %233
  %239 = load i32, i32* @TRUE, align 4
  store i32 %239, i32* %26, align 4
  br label %240

240:                                              ; preds = %238, %233, %228
  br label %241

241:                                              ; preds = %240, %226
  br label %242

242:                                              ; preds = %241, %214
  br label %256

243:                                              ; preds = %72
  %244 = load i8*, i8** %21, align 8
  %245 = getelementptr inbounds [6 x i8], [6 x i8]* %16, i64 0, i64 0
  %246 = call i32 @sscanf(i8* %244, i8* %245, i64* %24)
  %247 = icmp eq i32 1, %246
  br i1 %247, label %248, label %255

248:                                              ; preds = %243
  %249 = load i8*, i8** %22, align 8
  %250 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %251 = call i32 @sscanf(i8* %249, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i64* %250)
  %252 = icmp eq i32 1, %251
  br i1 %252, label %253, label %255

253:                                              ; preds = %248
  %254 = load i32, i32* @TRUE, align 4
  store i32 %254, i32* %26, align 4
  br label %255

255:                                              ; preds = %253, %248, %243
  br label %256

256:                                              ; preds = %72, %255, %242, %203, %190, %177, %147, %134, %121, %108, %90
  %257 = load i32, i32* %26, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %265

259:                                              ; preds = %256
  %260 = load i32*, i32** %4, align 8
  %261 = load i64, i64* %24, align 8
  %262 = call i32 @validate_ifnum(i32* %260, i64 %261, i32* %23, %struct.TYPE_5__* %25)
  %263 = load i32*, i32** %4, align 8
  %264 = call i32 @another_ifstats_field(i32* %23, %struct.TYPE_5__* %25, i32* %263)
  br label %265

265:                                              ; preds = %259, %256
  br label %50

266:                                              ; preds = %50
  %267 = load i32, i32* %23, align 4
  %268 = load i32, i32* @IFSTATS_FIELDS, align 4
  %269 = icmp ne i32 %267, %268
  br i1 %269, label %270, label %275

270:                                              ; preds = %266
  %271 = load i32*, i32** %4, align 8
  %272 = load i32, i32* %23, align 4
  %273 = load i32, i32* @IFSTATS_FIELDS, align 4
  %274 = call i32 (i32*, i8*, ...) @fprintf(i32* %271, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i32 %272, i32 %273)
  br label %275

275:                                              ; preds = %270, %266
  %276 = load i32*, i32** %4, align 8
  %277 = call i32 @fflush(i32* %276)
  br label %278

278:                                              ; preds = %275, %45
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @doquery(i32, i32, i32, i32, i32*, i32*, i64*, i8**) #2

declare dso_local i32 @fprintf(i32*, i8*, ...) #2

declare dso_local i32 @ZERO(%struct.TYPE_5__* byval(%struct.TYPE_5__) align 8) #2

declare dso_local i64 @nextvar(i64*, i8**, i8**, i8**) #2

declare dso_local i32 @INSIST(i32) #2

declare dso_local i32 @sscanf(i8*, i8*, i64*) #2

declare dso_local i32 @decodenetnum(i8*, i32*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

declare dso_local i32 @validate_ifnum(i32*, i64, i32*, %struct.TYPE_5__*) #2

declare dso_local i32 @another_ifstats_field(i32*, %struct.TYPE_5__*, i32*) #2

declare dso_local i32 @fflush(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
