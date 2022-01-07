; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_control.c_send_ifstats_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_control.c_send_ifstats_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32 }

@__const.send_ifstats_entry.addr_fmtu = private unnamed_addr constant [8 x i8] c"addr.%u\00", align 1
@__const.send_ifstats_entry.bcast_fmt = private unnamed_addr constant [9 x i8] c"bcast.%u\00", align 1
@__const.send_ifstats_entry.en_fmt = private unnamed_addr constant [6 x i8] c"en.%u\00", align 1
@__const.send_ifstats_entry.name_fmt = private unnamed_addr constant [8 x i8] c"name.%u\00", align 1
@__const.send_ifstats_entry.flags_fmt = private unnamed_addr constant [9 x i8] c"flags.%u\00", align 1
@__const.send_ifstats_entry.tl_fmt = private unnamed_addr constant [6 x i8] c"tl.%u\00", align 1
@__const.send_ifstats_entry.mc_fmt = private unnamed_addr constant [6 x i8] c"mc.%u\00", align 1
@__const.send_ifstats_entry.rx_fmt = private unnamed_addr constant [6 x i8] c"rx.%u\00", align 1
@__const.send_ifstats_entry.tx_fmt = private unnamed_addr constant [6 x i8] c"tx.%u\00", align 1
@__const.send_ifstats_entry.txerr_fmt = private unnamed_addr constant [9 x i8] c"txerr.%u\00", align 1
@__const.send_ifstats_entry.pc_fmt = private unnamed_addr constant [6 x i8] c"pc.%u\00", align 1
@__const.send_ifstats_entry.up_fmt = private unnamed_addr constant [6 x i8] c"up.%u\00", align 1
@IFSTATS_FIELDS = common dso_local global i32 0, align 4
@INT_BCASTOPEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@current_time = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i64)* @send_ifstats_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_ifstats_entry(%struct.TYPE_3__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [8 x i8], align 1
  %6 = alloca [9 x i8], align 1
  %7 = alloca [6 x i8], align 1
  %8 = alloca [8 x i8], align 1
  %9 = alloca [9 x i8], align 1
  %10 = alloca [6 x i8], align 1
  %11 = alloca [6 x i8], align 1
  %12 = alloca [6 x i8], align 1
  %13 = alloca [6 x i8], align 1
  %14 = alloca [9 x i8], align 1
  %15 = alloca [6 x i8], align 1
  %16 = alloca [6 x i8], align 1
  %17 = alloca [32 x i8], align 16
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i64 %1, i64* %4, align 8
  %25 = bitcast [8 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %25, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @__const.send_ifstats_entry.addr_fmtu, i32 0, i32 0), i64 8, i1 false)
  %26 = bitcast [9 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %26, i8* align 1 getelementptr inbounds ([9 x i8], [9 x i8]* @__const.send_ifstats_entry.bcast_fmt, i32 0, i32 0), i64 9, i1 false)
  %27 = bitcast [6 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %27, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.send_ifstats_entry.en_fmt, i32 0, i32 0), i64 6, i1 false)
  %28 = bitcast [8 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %28, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @__const.send_ifstats_entry.name_fmt, i32 0, i32 0), i64 8, i1 false)
  %29 = bitcast [9 x i8]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %29, i8* align 1 getelementptr inbounds ([9 x i8], [9 x i8]* @__const.send_ifstats_entry.flags_fmt, i32 0, i32 0), i64 9, i1 false)
  %30 = bitcast [6 x i8]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %30, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.send_ifstats_entry.tl_fmt, i32 0, i32 0), i64 6, i1 false)
  %31 = bitcast [6 x i8]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %31, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.send_ifstats_entry.mc_fmt, i32 0, i32 0), i64 6, i1 false)
  %32 = bitcast [6 x i8]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %32, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.send_ifstats_entry.rx_fmt, i32 0, i32 0), i64 6, i1 false)
  %33 = bitcast [6 x i8]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %33, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.send_ifstats_entry.tx_fmt, i32 0, i32 0), i64 6, i1 false)
  %34 = bitcast [9 x i8]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %34, i8* align 1 getelementptr inbounds ([9 x i8], [9 x i8]* @__const.send_ifstats_entry.txerr_fmt, i32 0, i32 0), i64 9, i1 false)
  %35 = bitcast [6 x i8]* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %35, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.send_ifstats_entry.pc_fmt, i32 0, i32 0), i64 6, i1 false)
  %36 = bitcast [6 x i8]* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %36, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.send_ifstats_entry.up_fmt, i32 0, i32 0), i64 6, i1 false)
  %37 = load i32, i32* @IFSTATS_FIELDS, align 4
  %38 = zext i32 %37 to i64
  %39 = call i8* @llvm.stacksave()
  store i8* %39, i8** %18, align 8
  %40 = alloca i64, i64 %38, align 16
  store i64 %38, i64* %19, align 8
  %41 = call i64 @COUNTOF(i64* %40)
  store i64 %41, i64* %23, align 8
  %42 = call i32 @ZERO(i64* %40)
  store i32 0, i32* %21, align 4
  store i32 0, i32* %20, align 4
  br label %43

43:                                               ; preds = %221, %2
  %44 = load i64, i64* %23, align 8
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %227

46:                                               ; preds = %43
  %47 = load i32, i32* %20, align 4
  %48 = icmp slt i32 %47, 4
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = call i32 (...) @rand()
  %51 = call i32 (...) @rand()
  %52 = shl i32 %51, 16
  %53 = xor i32 %50, %52
  store i32 %53, i32* %21, align 4
  store i32 31, i32* %20, align 4
  br label %54

54:                                               ; preds = %49, %46
  %55 = load i32, i32* %21, align 4
  %56 = and i32 %55, 15
  %57 = sext i32 %56 to i64
  %58 = call i64 @COUNTOF(i64* %40)
  %59 = srem i64 %57, %58
  store i64 %59, i64* %22, align 8
  %60 = load i32, i32* %21, align 4
  %61 = ashr i32 %60, 4
  store i32 %61, i32* %21, align 4
  %62 = load i32, i32* %20, align 4
  %63 = sub nsw i32 %62, 4
  store i32 %63, i32* %20, align 4
  br label %64

64:                                               ; preds = %69, %54
  %65 = load i64, i64* %22, align 8
  %66 = getelementptr inbounds i64, i64* %40, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load i64, i64* %22, align 8
  %71 = add nsw i64 %70, 1
  %72 = call i64 @COUNTOF(i64* %40)
  %73 = srem i64 %71, %72
  store i64 %73, i64* %22, align 8
  br label %64

74:                                               ; preds = %64
  %75 = load i64, i64* %22, align 8
  switch i64 %75, label %221 [
    i64 0, label %76
    i64 1, label %89
    i64 2, label %111
    i64 3, label %124
    i64 4, label %138
    i64 5, label %149
    i64 6, label %159
    i64 7, label %169
    i64 8, label %179
    i64 9, label %189
    i64 10, label %199
    i64 11, label %209
  ]

76:                                               ; preds = %74
  %77 = getelementptr inbounds [32 x i8], [32 x i8]* %17, i64 0, i64 0
  %78 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  %79 = load i64, i64* %4, align 8
  %80 = call i32 @snprintf(i8* %77, i32 32, i8* %78, i64 %79)
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 11
  %83 = call i8* @sptoa(i32* %82)
  store i8* %83, i8** %24, align 8
  %84 = getelementptr inbounds [32 x i8], [32 x i8]* %17, i64 0, i64 0
  %85 = load i8*, i8** %24, align 8
  %86 = load i8*, i8** %24, align 8
  %87 = call i32 @strlen(i8* %86)
  %88 = call i32 @ctl_putunqstr(i8* %84, i8* %85, i32 %87)
  br label %221

89:                                               ; preds = %74
  %90 = getelementptr inbounds [32 x i8], [32 x i8]* %17, i64 0, i64 0
  %91 = getelementptr inbounds [9 x i8], [9 x i8]* %6, i64 0, i64 0
  %92 = load i64, i64* %4, align 8
  %93 = call i32 @snprintf(i8* %90, i32 32, i8* %91, i64 %92)
  %94 = load i32, i32* @INT_BCASTOPEN, align 4
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = and i32 %94, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %89
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 10
  %103 = call i8* @sptoa(i32* %102)
  store i8* %103, i8** %24, align 8
  br label %105

104:                                              ; preds = %89
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %24, align 8
  br label %105

105:                                              ; preds = %104, %100
  %106 = getelementptr inbounds [32 x i8], [32 x i8]* %17, i64 0, i64 0
  %107 = load i8*, i8** %24, align 8
  %108 = load i8*, i8** %24, align 8
  %109 = call i32 @strlen(i8* %108)
  %110 = call i32 @ctl_putunqstr(i8* %106, i8* %107, i32 %109)
  br label %221

111:                                              ; preds = %74
  %112 = getelementptr inbounds [32 x i8], [32 x i8]* %17, i64 0, i64 0
  %113 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  %114 = load i64, i64* %4, align 8
  %115 = call i32 @snprintf(i8* %112, i32 32, i8* %113, i64 %114)
  %116 = getelementptr inbounds [32 x i8], [32 x i8]* %17, i64 0, i64 0
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 9
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %119, 0
  %121 = xor i1 %120, true
  %122 = zext i1 %121 to i32
  %123 = call i32 @ctl_putint(i8* %116, i32 %122)
  br label %221

124:                                              ; preds = %74
  %125 = getelementptr inbounds [32 x i8], [32 x i8]* %17, i64 0, i64 0
  %126 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %127 = load i64, i64* %4, align 8
  %128 = call i32 @snprintf(i8* %125, i32 32, i8* %126, i64 %127)
  %129 = getelementptr inbounds [32 x i8], [32 x i8]* %17, i64 0, i64 0
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 1
  %132 = load i8*, i8** %131, align 8
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 1
  %135 = load i8*, i8** %134, align 8
  %136 = call i32 @strlen(i8* %135)
  %137 = call i32 @ctl_putstr(i8* %129, i8* %132, i32 %136)
  br label %221

138:                                              ; preds = %74
  %139 = getelementptr inbounds [32 x i8], [32 x i8]* %17, i64 0, i64 0
  %140 = getelementptr inbounds [9 x i8], [9 x i8]* %9, i64 0, i64 0
  %141 = load i64, i64* %4, align 8
  %142 = call i32 @snprintf(i8* %139, i32 32, i8* %140, i64 %141)
  %143 = getelementptr inbounds [32 x i8], [32 x i8]* %17, i64 0, i64 0
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = sext i32 %146 to i64
  %148 = call i32 @ctl_puthex(i8* %143, i64 %147)
  br label %221

149:                                              ; preds = %74
  %150 = getelementptr inbounds [32 x i8], [32 x i8]* %17, i64 0, i64 0
  %151 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 0
  %152 = load i64, i64* %4, align 8
  %153 = call i32 @snprintf(i8* %150, i32 32, i8* %151, i64 %152)
  %154 = getelementptr inbounds [32 x i8], [32 x i8]* %17, i64 0, i64 0
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @ctl_putint(i8* %154, i32 %157)
  br label %221

159:                                              ; preds = %74
  %160 = getelementptr inbounds [32 x i8], [32 x i8]* %17, i64 0, i64 0
  %161 = getelementptr inbounds [6 x i8], [6 x i8]* %11, i64 0, i64 0
  %162 = load i64, i64* %4, align 8
  %163 = call i32 @snprintf(i8* %160, i32 32, i8* %161, i64 %162)
  %164 = getelementptr inbounds [32 x i8], [32 x i8]* %17, i64 0, i64 0
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @ctl_putint(i8* %164, i32 %167)
  br label %221

169:                                              ; preds = %74
  %170 = getelementptr inbounds [32 x i8], [32 x i8]* %17, i64 0, i64 0
  %171 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 0
  %172 = load i64, i64* %4, align 8
  %173 = call i32 @snprintf(i8* %170, i32 32, i8* %171, i64 %172)
  %174 = getelementptr inbounds [32 x i8], [32 x i8]* %17, i64 0, i64 0
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @ctl_putint(i8* %174, i32 %177)
  br label %221

179:                                              ; preds = %74
  %180 = getelementptr inbounds [32 x i8], [32 x i8]* %17, i64 0, i64 0
  %181 = getelementptr inbounds [6 x i8], [6 x i8]* %13, i64 0, i64 0
  %182 = load i64, i64* %4, align 8
  %183 = call i32 @snprintf(i8* %180, i32 32, i8* %181, i64 %182)
  %184 = getelementptr inbounds [32 x i8], [32 x i8]* %17, i64 0, i64 0
  %185 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 5
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @ctl_putint(i8* %184, i32 %187)
  br label %221

189:                                              ; preds = %74
  %190 = getelementptr inbounds [32 x i8], [32 x i8]* %17, i64 0, i64 0
  %191 = getelementptr inbounds [9 x i8], [9 x i8]* %14, i64 0, i64 0
  %192 = load i64, i64* %4, align 8
  %193 = call i32 @snprintf(i8* %190, i32 32, i8* %191, i64 %192)
  %194 = getelementptr inbounds [32 x i8], [32 x i8]* %17, i64 0, i64 0
  %195 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 6
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @ctl_putint(i8* %194, i32 %197)
  br label %221

199:                                              ; preds = %74
  %200 = getelementptr inbounds [32 x i8], [32 x i8]* %17, i64 0, i64 0
  %201 = getelementptr inbounds [6 x i8], [6 x i8]* %15, i64 0, i64 0
  %202 = load i64, i64* %4, align 8
  %203 = call i32 @snprintf(i8* %200, i32 32, i8* %201, i64 %202)
  %204 = getelementptr inbounds [32 x i8], [32 x i8]* %17, i64 0, i64 0
  %205 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 8
  %207 = load i64, i64* %206, align 8
  %208 = call i32 @ctl_putuint(i8* %204, i64 %207)
  br label %221

209:                                              ; preds = %74
  %210 = getelementptr inbounds [32 x i8], [32 x i8]* %17, i64 0, i64 0
  %211 = getelementptr inbounds [6 x i8], [6 x i8]* %16, i64 0, i64 0
  %212 = load i64, i64* %4, align 8
  %213 = call i32 @snprintf(i8* %210, i32 32, i8* %211, i64 %212)
  %214 = getelementptr inbounds [32 x i8], [32 x i8]* %17, i64 0, i64 0
  %215 = load i64, i64* @current_time, align 8
  %216 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 7
  %218 = load i64, i64* %217, align 8
  %219 = sub nsw i64 %215, %218
  %220 = call i32 @ctl_putuint(i8* %214, i64 %219)
  br label %221

221:                                              ; preds = %74, %209, %199, %189, %179, %169, %159, %149, %138, %124, %111, %105, %76
  %222 = load i64, i64* @TRUE, align 8
  %223 = load i64, i64* %22, align 8
  %224 = getelementptr inbounds i64, i64* %40, i64 %223
  store i64 %222, i64* %224, align 8
  %225 = load i64, i64* %23, align 8
  %226 = add nsw i64 %225, -1
  store i64 %226, i64* %23, align 8
  br label %43

227:                                              ; preds = %43
  %228 = load i64, i64* %4, align 8
  %229 = trunc i64 %228 to i32
  %230 = call i32 @send_random_tag_value(i32 %229)
  %231 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %231)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @COUNTOF(i64*) #3

declare dso_local i32 @ZERO(i64*) #3

declare dso_local i32 @rand(...) #3

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #3

declare dso_local i8* @sptoa(i32*) #3

declare dso_local i32 @ctl_putunqstr(i8*, i8*, i32) #3

declare dso_local i32 @strlen(i8*) #3

declare dso_local i32 @ctl_putint(i8*, i32) #3

declare dso_local i32 @ctl_putstr(i8*, i8*, i32) #3

declare dso_local i32 @ctl_puthex(i8*, i64) #3

declare dso_local i32 @ctl_putuint(i8*, i64) #3

declare dso_local i32 @send_random_tag_value(i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
