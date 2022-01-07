; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/sconfig/extr_sconfig.c_setup_chan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/sconfig/extr_sconfig.c_setup_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SERIAL_SETBAUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"extclock\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"cfg=\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@SERIAL_SETCFG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"invalid cfg\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"idle\00", align 1
@SERIAL_SETPROTO = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"async\00", align 1
@SERIAL_ASYNC = common dso_local global i32 0, align 4
@SERIAL_SETMODE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [8 x i8] c"async\00\00\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"sync\00", align 1
@SERIAL_HDLC = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [8 x i8] c"sync\00\00\00\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"cisco\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"cisco\00\00\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"rbrg\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"rbrg\00\00\00\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"raw\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"raw\00\00\00\00\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"packet\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"packet\00\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"ppp\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"ppp\00\00\00\00\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"keepalive=\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@SERIAL_SETKEEPALIVE = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [3 x i8] c"fr\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"fr\00\00\00\00\00\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"zaptel\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"zaptel\00\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"debug=\00", align 1
@SERIAL_GETMODE = common dso_local global i32 0, align 4
@SERIAL_SETDEBUG = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [6 x i8] c"loop=\00", align 1
@SERIAL_SETLOOP = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [7 x i8] c"rloop=\00", align 1
@SERIAL_SETRLOOP = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [6 x i8] c"dpll=\00", align 1
@SERIAL_SETDPLL = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [6 x i8] c"nrzi=\00", align 1
@SERIAL_SETNRZI = common dso_local global i32 0, align 4
@.str.34 = private unnamed_addr constant [8 x i8] c"invclk=\00", align 1
@SERIAL_SETINVCLK = common dso_local global i32 0, align 4
@.str.35 = private unnamed_addr constant [9 x i8] c"invrclk=\00", align 1
@SERIAL_SETINVRCLK = common dso_local global i32 0, align 4
@.str.36 = private unnamed_addr constant [9 x i8] c"invtclk=\00", align 1
@SERIAL_SETINVTCLK = common dso_local global i32 0, align 4
@.str.37 = private unnamed_addr constant [8 x i8] c"higain=\00", align 1
@SERIAL_SETHIGAIN = common dso_local global i32 0, align 4
@.str.38 = private unnamed_addr constant [7 x i8] c"phony=\00", align 1
@SERIAL_SETPHONY = common dso_local global i32 0, align 4
@.str.39 = private unnamed_addr constant [8 x i8] c"unfram=\00", align 1
@SERIAL_SETUNFRAM = common dso_local global i32 0, align 4
@.str.40 = private unnamed_addr constant [11 x i8] c"scrambler=\00", align 1
@SERIAL_SETSCRAMBLER = common dso_local global i32 0, align 4
@.str.41 = private unnamed_addr constant [9 x i8] c"monitor=\00", align 1
@SERIAL_SETMONITOR = common dso_local global i32 0, align 4
@.str.42 = private unnamed_addr constant [7 x i8] c"use16=\00", align 1
@SERIAL_SETUSE16 = common dso_local global i32 0, align 4
@.str.43 = private unnamed_addr constant [6 x i8] c"crc4=\00", align 1
@SERIAL_SETCRC4 = common dso_local global i32 0, align 4
@.str.44 = private unnamed_addr constant [5 x i8] c"ami=\00", align 1
@SERIAL_SETLCODE = common dso_local global i32 0, align 4
@.str.45 = private unnamed_addr constant [5 x i8] c"mtu=\00", align 1
@SERIAL_SETMTU = common dso_local global i32 0, align 4
@.str.46 = private unnamed_addr constant [7 x i8] c"rqlen=\00", align 1
@SERIAL_SETRQLEN = common dso_local global i32 0, align 4
@.str.47 = private unnamed_addr constant [8 x i8] c"syn=int\00", align 1
@E1CLK_INTERNAL = common dso_local global i32 0, align 4
@SERIAL_SETCLK = common dso_local global i32 0, align 4
@.str.48 = private unnamed_addr constant [8 x i8] c"syn=rcv\00", align 1
@E1CLK_RECEIVE = common dso_local global i32 0, align 4
@.str.49 = private unnamed_addr constant [9 x i8] c"syn=rcv0\00", align 1
@E1CLK_RECEIVE_CHAN0 = common dso_local global i32 0, align 4
@.str.50 = private unnamed_addr constant [9 x i8] c"syn=rcv1\00", align 1
@E1CLK_RECEIVE_CHAN1 = common dso_local global i32 0, align 4
@.str.51 = private unnamed_addr constant [9 x i8] c"syn=rcv2\00", align 1
@E1CLK_RECEIVE_CHAN2 = common dso_local global i32 0, align 4
@.str.52 = private unnamed_addr constant [9 x i8] c"syn=rcv3\00", align 1
@E1CLK_RECEIVE_CHAN3 = common dso_local global i32 0, align 4
@.str.53 = private unnamed_addr constant [4 x i8] c"ts=\00", align 1
@SERIAL_SETTIMESLOTS = common dso_local global i32 0, align 4
@.str.54 = private unnamed_addr constant [6 x i8] c"pass=\00", align 1
@SERIAL_SETSUBCHAN = common dso_local global i32 0, align 4
@.str.55 = private unnamed_addr constant [5 x i8] c"dlci\00", align 1
@SERIAL_ADDDLCI = common dso_local global i32 0, align 4
@.str.56 = private unnamed_addr constant [5 x i8] c"dir=\00", align 1
@SERIAL_SETDIR = common dso_local global i32 0, align 4
@.str.57 = private unnamed_addr constant [6 x i8] c"port=\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"rs232\00", align 1
@SERIAL_SETPORT = common dso_local global i32 0, align 4
@.str.59 = private unnamed_addr constant [4 x i8] c"v35\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"rs449\00", align 1
@.str.61 = private unnamed_addr constant [19 x i8] c"invalid port type\0A\00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@SERIAL_RESET = common dso_local global i32 0, align 4
@.str.63 = private unnamed_addr constant [8 x i8] c"hwreset\00", align 1
@SERIAL_HARDRESET = common dso_local global i32 0, align 4
@.str.64 = private unnamed_addr constant [8 x i8] c"cablen=\00", align 1
@SERIAL_SETCABLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8**)* @setup_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_chan(i32 %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %1038, %3
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %1041

40:                                               ; preds = %36
  %41 = load i8**, i8*** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8*, i8** %41, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp sge i32 %48, 48
  br i1 %49, label %50, label %71

50:                                               ; preds = %40
  %51 = load i8**, i8*** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %51, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp sle i32 %58, 57
  br i1 %59, label %60, label %71

60:                                               ; preds = %50
  %61 = load i8**, i8*** %6, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %61, i64 %63
  %65 = load i8*, i8** %64, align 8
  %66 = call i8* @strtol(i8* %65, i32 0, i32 10)
  %67 = ptrtoint i8* %66 to i64
  store i64 %67, i64* %32, align 8
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @SERIAL_SETBAUD, align 4
  %70 = call i64 (i32, i32, ...) @ioctl(i32 %68, i32 %69, i64* %32)
  br label %1037

71:                                               ; preds = %50, %40
  %72 = load i8**, i8*** %6, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %72, i64 %74
  %76 = load i8*, i8** %75, align 8
  %77 = call i64 @strcasecmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %76)
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %71
  store i64 0, i64* %32, align 8
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @SERIAL_SETBAUD, align 4
  %82 = call i64 (i32, i32, ...) @ioctl(i32 %80, i32 %81, i64* %32)
  br label %1036

83:                                               ; preds = %71
  %84 = load i8**, i8*** %6, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8*, i8** %84, i64 %86
  %88 = load i8*, i8** %87, align 8
  %89 = call i64 @strncasecmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %88, i32 4)
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %151

91:                                               ; preds = %83
  %92 = load i8**, i8*** %6, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8*, i8** %92, i64 %94
  %96 = load i8*, i8** %95, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 4
  %98 = call i64 @strncasecmp(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* %97, i32 1)
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %91
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* @SERIAL_SETCFG, align 4
  %103 = call i64 (i32, i32, ...) @ioctl(i32 %101, i32 %102, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %150

104:                                              ; preds = %91
  %105 = load i8**, i8*** %6, align 8
  %106 = load i32, i32* %7, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8*, i8** %105, i64 %107
  %109 = load i8*, i8** %108, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 4
  %111 = call i64 @strncasecmp(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* %110, i32 1)
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %104
  %114 = load i32, i32* %4, align 4
  %115 = load i32, i32* @SERIAL_SETCFG, align 4
  %116 = call i64 (i32, i32, ...) @ioctl(i32 %114, i32 %115, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %149

117:                                              ; preds = %104
  %118 = load i8**, i8*** %6, align 8
  %119 = load i32, i32* %7, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8*, i8** %118, i64 %120
  %122 = load i8*, i8** %121, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 4
  %124 = call i64 @strncasecmp(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* %123, i32 1)
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %117
  %127 = load i32, i32* %4, align 4
  %128 = load i32, i32* @SERIAL_SETCFG, align 4
  %129 = call i64 (i32, i32, ...) @ioctl(i32 %127, i32 %128, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %148

130:                                              ; preds = %117
  %131 = load i8**, i8*** %6, align 8
  %132 = load i32, i32* %7, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8*, i8** %131, i64 %133
  %135 = load i8*, i8** %134, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 4
  %137 = call i64 @strncasecmp(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* %136, i32 1)
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %130
  %140 = load i32, i32* %4, align 4
  %141 = load i32, i32* @SERIAL_SETCFG, align 4
  %142 = call i64 (i32, i32, ...) @ioctl(i32 %140, i32 %141, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %147

143:                                              ; preds = %130
  %144 = load i32, i32* @stderr, align 4
  %145 = call i32 @fprintf(i32 %144, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %146 = call i32 @exit(i32 -1) #3
  unreachable

147:                                              ; preds = %139
  br label %148

148:                                              ; preds = %147, %126
  br label %149

149:                                              ; preds = %148, %113
  br label %150

150:                                              ; preds = %149, %100
  br label %1035

151:                                              ; preds = %83
  %152 = load i8**, i8*** %6, align 8
  %153 = load i32, i32* %7, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8*, i8** %152, i64 %154
  %156 = load i8*, i8** %155, align 8
  %157 = call i64 @strcasecmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* %156)
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %151
  %160 = load i32, i32* %4, align 4
  %161 = load i32, i32* @SERIAL_SETPROTO, align 4
  %162 = call i64 (i32, i32, ...) @ioctl(i32 %160, i32 %161, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  br label %1034

163:                                              ; preds = %151
  %164 = load i8**, i8*** %6, align 8
  %165 = load i32, i32* %7, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8*, i8** %164, i64 %166
  %168 = load i8*, i8** %167, align 8
  %169 = call i64 @strcasecmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* %168)
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %171, label %182

171:                                              ; preds = %163
  %172 = load i32, i32* @SERIAL_ASYNC, align 4
  store i32 %172, i32* %8, align 4
  %173 = load i32, i32* %4, align 4
  %174 = load i32, i32* @SERIAL_SETMODE, align 4
  %175 = call i64 (i32, i32, ...) @ioctl(i32 %173, i32 %174, i32* %8)
  %176 = icmp sge i64 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %171
  %178 = load i32, i32* %4, align 4
  %179 = load i32, i32* @SERIAL_SETPROTO, align 4
  %180 = call i64 (i32, i32, ...) @ioctl(i32 %178, i32 %179, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  br label %181

181:                                              ; preds = %177, %171
  br label %1033

182:                                              ; preds = %163
  %183 = load i8**, i8*** %6, align 8
  %184 = load i32, i32* %7, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8*, i8** %183, i64 %185
  %187 = load i8*, i8** %186, align 8
  %188 = call i64 @strcasecmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* %187)
  %189 = icmp eq i64 %188, 0
  br i1 %189, label %190, label %201

190:                                              ; preds = %182
  %191 = load i32, i32* @SERIAL_HDLC, align 4
  store i32 %191, i32* %8, align 4
  %192 = load i32, i32* %4, align 4
  %193 = load i32, i32* @SERIAL_SETMODE, align 4
  %194 = call i64 (i32, i32, ...) @ioctl(i32 %192, i32 %193, i32* %8)
  %195 = icmp sge i64 %194, 0
  br i1 %195, label %196, label %200

196:                                              ; preds = %190
  %197 = load i32, i32* %4, align 4
  %198 = load i32, i32* @SERIAL_SETPROTO, align 4
  %199 = call i64 (i32, i32, ...) @ioctl(i32 %197, i32 %198, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  br label %200

200:                                              ; preds = %196, %190
  br label %1032

201:                                              ; preds = %182
  %202 = load i8**, i8*** %6, align 8
  %203 = load i32, i32* %7, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i8*, i8** %202, i64 %204
  %206 = load i8*, i8** %205, align 8
  %207 = call i64 @strcasecmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i8* %206)
  %208 = icmp eq i64 %207, 0
  br i1 %208, label %209, label %217

209:                                              ; preds = %201
  %210 = load i32, i32* @SERIAL_HDLC, align 4
  store i32 %210, i32* %8, align 4
  %211 = load i32, i32* %4, align 4
  %212 = load i32, i32* @SERIAL_SETMODE, align 4
  %213 = call i64 (i32, i32, ...) @ioctl(i32 %211, i32 %212, i32* %8)
  %214 = load i32, i32* %4, align 4
  %215 = load i32, i32* @SERIAL_SETPROTO, align 4
  %216 = call i64 (i32, i32, ...) @ioctl(i32 %214, i32 %215, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  br label %1031

217:                                              ; preds = %201
  %218 = load i8**, i8*** %6, align 8
  %219 = load i32, i32* %7, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i8*, i8** %218, i64 %220
  %222 = load i8*, i8** %221, align 8
  %223 = call i64 @strcasecmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i8* %222)
  %224 = icmp eq i64 %223, 0
  br i1 %224, label %225, label %233

225:                                              ; preds = %217
  %226 = load i32, i32* @SERIAL_HDLC, align 4
  store i32 %226, i32* %8, align 4
  %227 = load i32, i32* %4, align 4
  %228 = load i32, i32* @SERIAL_SETMODE, align 4
  %229 = call i64 (i32, i32, ...) @ioctl(i32 %227, i32 %228, i32* %8)
  %230 = load i32, i32* %4, align 4
  %231 = load i32, i32* @SERIAL_SETPROTO, align 4
  %232 = call i64 (i32, i32, ...) @ioctl(i32 %230, i32 %231, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0))
  br label %1030

233:                                              ; preds = %217
  %234 = load i8**, i8*** %6, align 8
  %235 = load i32, i32* %7, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i8*, i8** %234, i64 %236
  %238 = load i8*, i8** %237, align 8
  %239 = call i64 @strcasecmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8* %238)
  %240 = icmp eq i64 %239, 0
  br i1 %240, label %241, label %249

241:                                              ; preds = %233
  %242 = load i32, i32* @SERIAL_HDLC, align 4
  store i32 %242, i32* %8, align 4
  %243 = load i32, i32* %4, align 4
  %244 = load i32, i32* @SERIAL_SETMODE, align 4
  %245 = call i64 (i32, i32, ...) @ioctl(i32 %243, i32 %244, i32* %8)
  %246 = load i32, i32* %4, align 4
  %247 = load i32, i32* @SERIAL_SETPROTO, align 4
  %248 = call i64 (i32, i32, ...) @ioctl(i32 %246, i32 %247, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0))
  br label %1029

249:                                              ; preds = %233
  %250 = load i8**, i8*** %6, align 8
  %251 = load i32, i32* %7, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i8*, i8** %250, i64 %252
  %254 = load i8*, i8** %253, align 8
  %255 = call i64 @strcasecmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0), i8* %254)
  %256 = icmp eq i64 %255, 0
  br i1 %256, label %257, label %265

257:                                              ; preds = %249
  %258 = load i32, i32* @SERIAL_HDLC, align 4
  store i32 %258, i32* %8, align 4
  %259 = load i32, i32* %4, align 4
  %260 = load i32, i32* @SERIAL_SETMODE, align 4
  %261 = call i64 (i32, i32, ...) @ioctl(i32 %259, i32 %260, i32* %8)
  %262 = load i32, i32* %4, align 4
  %263 = load i32, i32* @SERIAL_SETPROTO, align 4
  %264 = call i64 (i32, i32, ...) @ioctl(i32 %262, i32 %263, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0))
  br label %1028

265:                                              ; preds = %249
  %266 = load i8**, i8*** %6, align 8
  %267 = load i32, i32* %7, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i8*, i8** %266, i64 %268
  %270 = load i8*, i8** %269, align 8
  %271 = call i64 @strcasecmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i8* %270)
  %272 = icmp eq i64 %271, 0
  br i1 %272, label %273, label %285

273:                                              ; preds = %265
  %274 = call i64 (...) @ppp_ok()
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %284

276:                                              ; preds = %273
  %277 = load i32, i32* @SERIAL_HDLC, align 4
  store i32 %277, i32* %8, align 4
  %278 = load i32, i32* %4, align 4
  %279 = load i32, i32* @SERIAL_SETMODE, align 4
  %280 = call i64 (i32, i32, ...) @ioctl(i32 %278, i32 %279, i32* %8)
  %281 = load i32, i32* %4, align 4
  %282 = load i32, i32* @SERIAL_SETPROTO, align 4
  %283 = call i64 (i32, i32, ...) @ioctl(i32 %281, i32 %282, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0))
  br label %284

284:                                              ; preds = %276, %273
  br label %1027

285:                                              ; preds = %265
  %286 = load i8**, i8*** %6, align 8
  %287 = load i32, i32* %7, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i8*, i8** %286, i64 %288
  %290 = load i8*, i8** %289, align 8
  %291 = call i64 @strncasecmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0), i8* %290, i32 10)
  %292 = icmp eq i64 %291, 0
  br i1 %292, label %293, label %306

293:                                              ; preds = %285
  %294 = load i8**, i8*** %6, align 8
  %295 = load i32, i32* %7, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i8*, i8** %294, i64 %296
  %298 = load i8*, i8** %297, align 8
  %299 = getelementptr inbounds i8, i8* %298, i64 10
  %300 = call i64 @strcasecmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), i8* %299)
  %301 = icmp eq i64 %300, 0
  %302 = zext i1 %301 to i32
  store i32 %302, i32* %20, align 4
  %303 = load i32, i32* %4, align 4
  %304 = load i32, i32* @SERIAL_SETKEEPALIVE, align 4
  %305 = call i64 (i32, i32, ...) @ioctl(i32 %303, i32 %304, i32* %20)
  br label %1026

306:                                              ; preds = %285
  %307 = load i8**, i8*** %6, align 8
  %308 = load i32, i32* %7, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i8*, i8** %307, i64 %309
  %311 = load i8*, i8** %310, align 8
  %312 = call i64 @strcasecmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0), i8* %311)
  %313 = icmp eq i64 %312, 0
  br i1 %313, label %314, label %322

314:                                              ; preds = %306
  %315 = load i32, i32* @SERIAL_HDLC, align 4
  store i32 %315, i32* %8, align 4
  %316 = load i32, i32* %4, align 4
  %317 = load i32, i32* @SERIAL_SETMODE, align 4
  %318 = call i64 (i32, i32, ...) @ioctl(i32 %316, i32 %317, i32* %8)
  %319 = load i32, i32* %4, align 4
  %320 = load i32, i32* @SERIAL_SETPROTO, align 4
  %321 = call i64 (i32, i32, ...) @ioctl(i32 %319, i32 %320, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0))
  br label %1025

322:                                              ; preds = %306
  %323 = load i8**, i8*** %6, align 8
  %324 = load i32, i32* %7, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i8*, i8** %323, i64 %325
  %327 = load i8*, i8** %326, align 8
  %328 = call i64 @strcasecmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0), i8* %327)
  %329 = icmp eq i64 %328, 0
  br i1 %329, label %330, label %338

330:                                              ; preds = %322
  %331 = load i32, i32* @SERIAL_HDLC, align 4
  store i32 %331, i32* %8, align 4
  %332 = load i32, i32* %4, align 4
  %333 = load i32, i32* @SERIAL_SETMODE, align 4
  %334 = call i64 (i32, i32, ...) @ioctl(i32 %332, i32 %333, i32* %8)
  %335 = load i32, i32* %4, align 4
  %336 = load i32, i32* @SERIAL_SETPROTO, align 4
  %337 = call i64 (i32, i32, ...) @ioctl(i32 %335, i32 %336, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0))
  br label %1024

338:                                              ; preds = %322
  %339 = load i8**, i8*** %6, align 8
  %340 = load i32, i32* %7, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i8*, i8** %339, i64 %341
  %343 = load i8*, i8** %342, align 8
  %344 = call i64 @strncasecmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0), i8* %343, i32 6)
  %345 = icmp eq i64 %344, 0
  br i1 %345, label %346, label %382

346:                                              ; preds = %338
  %347 = load i8**, i8*** %6, align 8
  %348 = load i32, i32* %7, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i8*, i8** %347, i64 %349
  %351 = load i8*, i8** %350, align 8
  %352 = getelementptr inbounds i8, i8* %351, i64 6
  %353 = call i8* @strtol(i8* %352, i32 0, i32 10)
  %354 = ptrtoint i8* %353 to i32
  store i32 %354, i32* %21, align 4
  %355 = load i32, i32* %4, align 4
  %356 = load i32, i32* @SERIAL_GETMODE, align 4
  %357 = call i64 (i32, i32, ...) @ioctl(i32 %355, i32 %356, i32* %8)
  %358 = icmp sge i64 %357, 0
  %359 = zext i1 %358 to i32
  store i32 %359, i32* %31, align 4
  %360 = load i32, i32* %31, align 4
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %366

362:                                              ; preds = %346
  %363 = load i32, i32* %8, align 4
  %364 = load i32, i32* @SERIAL_ASYNC, align 4
  %365 = icmp ne i32 %363, %364
  br i1 %365, label %366, label %377

366:                                              ; preds = %362, %346
  %367 = load i32, i32* %21, align 4
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %369, label %371

369:                                              ; preds = %366
  %370 = call i32 @set_debug_ifconfig(i32 0)
  br label %376

371:                                              ; preds = %366
  %372 = load i32, i32* %4, align 4
  %373 = load i32, i32* @SERIAL_SETDEBUG, align 4
  %374 = call i64 (i32, i32, ...) @ioctl(i32 %372, i32 %373, i32* %21)
  %375 = call i32 @set_debug_ifconfig(i32 1)
  br label %376

376:                                              ; preds = %371, %369
  br label %381

377:                                              ; preds = %362
  %378 = load i32, i32* %4, align 4
  %379 = load i32, i32* @SERIAL_SETDEBUG, align 4
  %380 = call i64 (i32, i32, ...) @ioctl(i32 %378, i32 %379, i32* %21)
  br label %381

381:                                              ; preds = %377, %376
  br label %1023

382:                                              ; preds = %338
  %383 = load i8**, i8*** %6, align 8
  %384 = load i32, i32* %7, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds i8*, i8** %383, i64 %385
  %387 = load i8*, i8** %386, align 8
  %388 = call i64 @strncasecmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0), i8* %387, i32 5)
  %389 = icmp eq i64 %388, 0
  br i1 %389, label %390, label %403

390:                                              ; preds = %382
  %391 = load i8**, i8*** %6, align 8
  %392 = load i32, i32* %7, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds i8*, i8** %391, i64 %393
  %395 = load i8*, i8** %394, align 8
  %396 = getelementptr inbounds i8, i8* %395, i64 5
  %397 = call i64 @strcasecmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), i8* %396)
  %398 = icmp eq i64 %397, 0
  %399 = zext i1 %398 to i32
  store i32 %399, i32* %9, align 4
  %400 = load i32, i32* %4, align 4
  %401 = load i32, i32* @SERIAL_SETLOOP, align 4
  %402 = call i64 (i32, i32, ...) @ioctl(i32 %400, i32 %401, i32* %9)
  br label %1022

403:                                              ; preds = %382
  %404 = load i8**, i8*** %6, align 8
  %405 = load i32, i32* %7, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds i8*, i8** %404, i64 %406
  %408 = load i8*, i8** %407, align 8
  %409 = call i64 @strncasecmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0), i8* %408, i32 6)
  %410 = icmp eq i64 %409, 0
  br i1 %410, label %411, label %424

411:                                              ; preds = %403
  %412 = load i8**, i8*** %6, align 8
  %413 = load i32, i32* %7, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds i8*, i8** %412, i64 %414
  %416 = load i8*, i8** %415, align 8
  %417 = getelementptr inbounds i8, i8* %416, i64 6
  %418 = call i64 @strcasecmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), i8* %417)
  %419 = icmp eq i64 %418, 0
  %420 = zext i1 %419 to i32
  store i32 %420, i32* %29, align 4
  %421 = load i32, i32* %4, align 4
  %422 = load i32, i32* @SERIAL_SETRLOOP, align 4
  %423 = call i64 (i32, i32, ...) @ioctl(i32 %421, i32 %422, i32* %29)
  br label %1021

424:                                              ; preds = %403
  %425 = load i8**, i8*** %6, align 8
  %426 = load i32, i32* %7, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds i8*, i8** %425, i64 %427
  %429 = load i8*, i8** %428, align 8
  %430 = call i64 @strncasecmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i64 0, i64 0), i8* %429, i32 5)
  %431 = icmp eq i64 %430, 0
  br i1 %431, label %432, label %445

432:                                              ; preds = %424
  %433 = load i8**, i8*** %6, align 8
  %434 = load i32, i32* %7, align 4
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds i8*, i8** %433, i64 %435
  %437 = load i8*, i8** %436, align 8
  %438 = getelementptr inbounds i8, i8* %437, i64 5
  %439 = call i64 @strcasecmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), i8* %438)
  %440 = icmp eq i64 %439, 0
  %441 = zext i1 %440 to i32
  store i32 %441, i32* %11, align 4
  %442 = load i32, i32* %4, align 4
  %443 = load i32, i32* @SERIAL_SETDPLL, align 4
  %444 = call i64 (i32, i32, ...) @ioctl(i32 %442, i32 %443, i32* %11)
  br label %1020

445:                                              ; preds = %424
  %446 = load i8**, i8*** %6, align 8
  %447 = load i32, i32* %7, align 4
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds i8*, i8** %446, i64 %448
  %450 = load i8*, i8** %449, align 8
  %451 = call i64 @strncasecmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i64 0, i64 0), i8* %450, i32 5)
  %452 = icmp eq i64 %451, 0
  br i1 %452, label %453, label %466

453:                                              ; preds = %445
  %454 = load i8**, i8*** %6, align 8
  %455 = load i32, i32* %7, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds i8*, i8** %454, i64 %456
  %458 = load i8*, i8** %457, align 8
  %459 = getelementptr inbounds i8, i8* %458, i64 5
  %460 = call i64 @strcasecmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), i8* %459)
  %461 = icmp eq i64 %460, 0
  %462 = zext i1 %461 to i32
  store i32 %462, i32* %10, align 4
  %463 = load i32, i32* %4, align 4
  %464 = load i32, i32* @SERIAL_SETNRZI, align 4
  %465 = call i64 (i32, i32, ...) @ioctl(i32 %463, i32 %464, i32* %10)
  br label %1019

466:                                              ; preds = %445
  %467 = load i8**, i8*** %6, align 8
  %468 = load i32, i32* %7, align 4
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds i8*, i8** %467, i64 %469
  %471 = load i8*, i8** %470, align 8
  %472 = call i64 @strncasecmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i64 0, i64 0), i8* %471, i32 7)
  %473 = icmp eq i64 %472, 0
  br i1 %473, label %474, label %487

474:                                              ; preds = %466
  %475 = load i8**, i8*** %6, align 8
  %476 = load i32, i32* %7, align 4
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds i8*, i8** %475, i64 %477
  %479 = load i8*, i8** %478, align 8
  %480 = getelementptr inbounds i8, i8* %479, i64 7
  %481 = call i64 @strcasecmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), i8* %480)
  %482 = icmp eq i64 %481, 0
  %483 = zext i1 %482 to i32
  store i32 %483, i32* %12, align 4
  %484 = load i32, i32* %4, align 4
  %485 = load i32, i32* @SERIAL_SETINVCLK, align 4
  %486 = call i64 (i32, i32, ...) @ioctl(i32 %484, i32 %485, i32* %12)
  br label %1018

487:                                              ; preds = %466
  %488 = load i8**, i8*** %6, align 8
  %489 = load i32, i32* %7, align 4
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds i8*, i8** %488, i64 %490
  %492 = load i8*, i8** %491, align 8
  %493 = call i64 @strncasecmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i64 0, i64 0), i8* %492, i32 8)
  %494 = icmp eq i64 %493, 0
  br i1 %494, label %495, label %508

495:                                              ; preds = %487
  %496 = load i8**, i8*** %6, align 8
  %497 = load i32, i32* %7, align 4
  %498 = sext i32 %497 to i64
  %499 = getelementptr inbounds i8*, i8** %496, i64 %498
  %500 = load i8*, i8** %499, align 8
  %501 = getelementptr inbounds i8, i8* %500, i64 8
  %502 = call i64 @strcasecmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), i8* %501)
  %503 = icmp eq i64 %502, 0
  %504 = zext i1 %503 to i32
  store i32 %504, i32* %24, align 4
  %505 = load i32, i32* %4, align 4
  %506 = load i32, i32* @SERIAL_SETINVRCLK, align 4
  %507 = call i64 (i32, i32, ...) @ioctl(i32 %505, i32 %506, i32* %24)
  br label %1017

508:                                              ; preds = %487
  %509 = load i8**, i8*** %6, align 8
  %510 = load i32, i32* %7, align 4
  %511 = sext i32 %510 to i64
  %512 = getelementptr inbounds i8*, i8** %509, i64 %511
  %513 = load i8*, i8** %512, align 8
  %514 = call i64 @strncasecmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i64 0, i64 0), i8* %513, i32 8)
  %515 = icmp eq i64 %514, 0
  br i1 %515, label %516, label %529

516:                                              ; preds = %508
  %517 = load i8**, i8*** %6, align 8
  %518 = load i32, i32* %7, align 4
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds i8*, i8** %517, i64 %519
  %521 = load i8*, i8** %520, align 8
  %522 = getelementptr inbounds i8, i8* %521, i64 8
  %523 = call i64 @strcasecmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), i8* %522)
  %524 = icmp eq i64 %523, 0
  %525 = zext i1 %524 to i32
  store i32 %525, i32* %25, align 4
  %526 = load i32, i32* %4, align 4
  %527 = load i32, i32* @SERIAL_SETINVTCLK, align 4
  %528 = call i64 (i32, i32, ...) @ioctl(i32 %526, i32 %527, i32* %25)
  br label %1016

529:                                              ; preds = %508
  %530 = load i8**, i8*** %6, align 8
  %531 = load i32, i32* %7, align 4
  %532 = sext i32 %531 to i64
  %533 = getelementptr inbounds i8*, i8** %530, i64 %532
  %534 = load i8*, i8** %533, align 8
  %535 = call i64 @strncasecmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i64 0, i64 0), i8* %534, i32 7)
  %536 = icmp eq i64 %535, 0
  br i1 %536, label %537, label %550

537:                                              ; preds = %529
  %538 = load i8**, i8*** %6, align 8
  %539 = load i32, i32* %7, align 4
  %540 = sext i32 %539 to i64
  %541 = getelementptr inbounds i8*, i8** %538, i64 %540
  %542 = load i8*, i8** %541, align 8
  %543 = getelementptr inbounds i8, i8* %542, i64 7
  %544 = call i64 @strcasecmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), i8* %543)
  %545 = icmp eq i64 %544, 0
  %546 = zext i1 %545 to i32
  store i32 %546, i32* %18, align 4
  %547 = load i32, i32* %4, align 4
  %548 = load i32, i32* @SERIAL_SETHIGAIN, align 4
  %549 = call i64 (i32, i32, ...) @ioctl(i32 %547, i32 %548, i32* %18)
  br label %1015

550:                                              ; preds = %529
  %551 = load i8**, i8*** %6, align 8
  %552 = load i32, i32* %7, align 4
  %553 = sext i32 %552 to i64
  %554 = getelementptr inbounds i8*, i8** %551, i64 %553
  %555 = load i8*, i8** %554, align 8
  %556 = call i64 @strncasecmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i64 0, i64 0), i8* %555, i32 6)
  %557 = icmp eq i64 %556, 0
  br i1 %557, label %558, label %571

558:                                              ; preds = %550
  %559 = load i8**, i8*** %6, align 8
  %560 = load i32, i32* %7, align 4
  %561 = sext i32 %560 to i64
  %562 = getelementptr inbounds i8*, i8** %559, i64 %561
  %563 = load i8*, i8** %562, align 8
  %564 = getelementptr inbounds i8, i8* %563, i64 6
  %565 = call i64 @strcasecmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), i8* %564)
  %566 = icmp eq i64 %565, 0
  %567 = zext i1 %566 to i32
  store i32 %567, i32* %13, align 4
  %568 = load i32, i32* %4, align 4
  %569 = load i32, i32* @SERIAL_SETPHONY, align 4
  %570 = call i64 (i32, i32, ...) @ioctl(i32 %568, i32 %569, i32* %13)
  br label %1014

571:                                              ; preds = %550
  %572 = load i8**, i8*** %6, align 8
  %573 = load i32, i32* %7, align 4
  %574 = sext i32 %573 to i64
  %575 = getelementptr inbounds i8*, i8** %572, i64 %574
  %576 = load i8*, i8** %575, align 8
  %577 = call i64 @strncasecmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i64 0, i64 0), i8* %576, i32 7)
  %578 = icmp eq i64 %577, 0
  br i1 %578, label %579, label %592

579:                                              ; preds = %571
  %580 = load i8**, i8*** %6, align 8
  %581 = load i32, i32* %7, align 4
  %582 = sext i32 %581 to i64
  %583 = getelementptr inbounds i8*, i8** %580, i64 %582
  %584 = load i8*, i8** %583, align 8
  %585 = getelementptr inbounds i8, i8* %584, i64 7
  %586 = call i64 @strcasecmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), i8* %585)
  %587 = icmp eq i64 %586, 0
  %588 = zext i1 %587 to i32
  store i32 %588, i32* %16, align 4
  %589 = load i32, i32* %4, align 4
  %590 = load i32, i32* @SERIAL_SETUNFRAM, align 4
  %591 = call i64 (i32, i32, ...) @ioctl(i32 %589, i32 %590, i32* %16)
  br label %1013

592:                                              ; preds = %571
  %593 = load i8**, i8*** %6, align 8
  %594 = load i32, i32* %7, align 4
  %595 = sext i32 %594 to i64
  %596 = getelementptr inbounds i8*, i8** %593, i64 %595
  %597 = load i8*, i8** %596, align 8
  %598 = call i64 @strncasecmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i64 0, i64 0), i8* %597, i32 10)
  %599 = icmp eq i64 %598, 0
  br i1 %599, label %600, label %613

600:                                              ; preds = %592
  %601 = load i8**, i8*** %6, align 8
  %602 = load i32, i32* %7, align 4
  %603 = sext i32 %602 to i64
  %604 = getelementptr inbounds i8*, i8** %601, i64 %603
  %605 = load i8*, i8** %604, align 8
  %606 = getelementptr inbounds i8, i8* %605, i64 10
  %607 = call i64 @strcasecmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), i8* %606)
  %608 = icmp eq i64 %607, 0
  %609 = zext i1 %608 to i32
  store i32 %609, i32* %28, align 4
  %610 = load i32, i32* %4, align 4
  %611 = load i32, i32* @SERIAL_SETSCRAMBLER, align 4
  %612 = call i64 (i32, i32, ...) @ioctl(i32 %610, i32 %611, i32* %28)
  br label %1012

613:                                              ; preds = %592
  %614 = load i8**, i8*** %6, align 8
  %615 = load i32, i32* %7, align 4
  %616 = sext i32 %615 to i64
  %617 = getelementptr inbounds i8*, i8** %614, i64 %616
  %618 = load i8*, i8** %617, align 8
  %619 = call i64 @strncasecmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i64 0, i64 0), i8* %618, i32 8)
  %620 = icmp eq i64 %619, 0
  br i1 %620, label %621, label %634

621:                                              ; preds = %613
  %622 = load i8**, i8*** %6, align 8
  %623 = load i32, i32* %7, align 4
  %624 = sext i32 %623 to i64
  %625 = getelementptr inbounds i8*, i8** %622, i64 %624
  %626 = load i8*, i8** %625, align 8
  %627 = getelementptr inbounds i8, i8* %626, i64 8
  %628 = call i64 @strcasecmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), i8* %627)
  %629 = icmp eq i64 %628, 0
  %630 = zext i1 %629 to i32
  store i32 %630, i32* %26, align 4
  %631 = load i32, i32* %4, align 4
  %632 = load i32, i32* @SERIAL_SETMONITOR, align 4
  %633 = call i64 (i32, i32, ...) @ioctl(i32 %631, i32 %632, i32* %26)
  br label %1011

634:                                              ; preds = %613
  %635 = load i8**, i8*** %6, align 8
  %636 = load i32, i32* %7, align 4
  %637 = sext i32 %636 to i64
  %638 = getelementptr inbounds i8*, i8** %635, i64 %637
  %639 = load i8*, i8** %638, align 8
  %640 = call i64 @strncasecmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i64 0, i64 0), i8* %639, i32 6)
  %641 = icmp eq i64 %640, 0
  br i1 %641, label %642, label %655

642:                                              ; preds = %634
  %643 = load i8**, i8*** %6, align 8
  %644 = load i32, i32* %7, align 4
  %645 = sext i32 %644 to i64
  %646 = getelementptr inbounds i8*, i8** %643, i64 %645
  %647 = load i8*, i8** %646, align 8
  %648 = getelementptr inbounds i8, i8* %647, i64 6
  %649 = call i64 @strcasecmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), i8* %648)
  %650 = icmp eq i64 %649, 0
  %651 = zext i1 %650 to i32
  store i32 %651, i32* %14, align 4
  %652 = load i32, i32* %4, align 4
  %653 = load i32, i32* @SERIAL_SETUSE16, align 4
  %654 = call i64 (i32, i32, ...) @ioctl(i32 %652, i32 %653, i32* %14)
  br label %1010

655:                                              ; preds = %634
  %656 = load i8**, i8*** %6, align 8
  %657 = load i32, i32* %7, align 4
  %658 = sext i32 %657 to i64
  %659 = getelementptr inbounds i8*, i8** %656, i64 %658
  %660 = load i8*, i8** %659, align 8
  %661 = call i64 @strncasecmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i64 0, i64 0), i8* %660, i32 5)
  %662 = icmp eq i64 %661, 0
  br i1 %662, label %663, label %676

663:                                              ; preds = %655
  %664 = load i8**, i8*** %6, align 8
  %665 = load i32, i32* %7, align 4
  %666 = sext i32 %665 to i64
  %667 = getelementptr inbounds i8*, i8** %664, i64 %666
  %668 = load i8*, i8** %667, align 8
  %669 = getelementptr inbounds i8, i8* %668, i64 5
  %670 = call i64 @strcasecmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), i8* %669)
  %671 = icmp eq i64 %670, 0
  %672 = zext i1 %671 to i32
  store i32 %672, i32* %15, align 4
  %673 = load i32, i32* %4, align 4
  %674 = load i32, i32* @SERIAL_SETCRC4, align 4
  %675 = call i64 (i32, i32, ...) @ioctl(i32 %673, i32 %674, i32* %15)
  br label %1009

676:                                              ; preds = %655
  %677 = load i8**, i8*** %6, align 8
  %678 = load i32, i32* %7, align 4
  %679 = sext i32 %678 to i64
  %680 = getelementptr inbounds i8*, i8** %677, i64 %679
  %681 = load i8*, i8** %680, align 8
  %682 = call i64 @strncasecmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i64 0, i64 0), i8* %681, i32 4)
  %683 = icmp eq i64 %682, 0
  br i1 %683, label %684, label %697

684:                                              ; preds = %676
  %685 = load i8**, i8*** %6, align 8
  %686 = load i32, i32* %7, align 4
  %687 = sext i32 %686 to i64
  %688 = getelementptr inbounds i8*, i8** %685, i64 %687
  %689 = load i8*, i8** %688, align 8
  %690 = getelementptr inbounds i8, i8* %689, i64 4
  %691 = call i64 @strcasecmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), i8* %690)
  %692 = icmp eq i64 %691, 0
  %693 = zext i1 %692 to i32
  store i32 %693, i32* %17, align 4
  %694 = load i32, i32* %4, align 4
  %695 = load i32, i32* @SERIAL_SETLCODE, align 4
  %696 = call i64 (i32, i32, ...) @ioctl(i32 %694, i32 %695, i32* %17)
  br label %1008

697:                                              ; preds = %676
  %698 = load i8**, i8*** %6, align 8
  %699 = load i32, i32* %7, align 4
  %700 = sext i32 %699 to i64
  %701 = getelementptr inbounds i8*, i8** %698, i64 %700
  %702 = load i8*, i8** %701, align 8
  %703 = call i64 @strncasecmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i64 0, i64 0), i8* %702, i32 4)
  %704 = icmp eq i64 %703, 0
  br i1 %704, label %705, label %717

705:                                              ; preds = %697
  %706 = load i8**, i8*** %6, align 8
  %707 = load i32, i32* %7, align 4
  %708 = sext i32 %707 to i64
  %709 = getelementptr inbounds i8*, i8** %706, i64 %708
  %710 = load i8*, i8** %709, align 8
  %711 = getelementptr inbounds i8, i8* %710, i64 4
  %712 = call i8* @strtol(i8* %711, i32 0, i32 10)
  %713 = ptrtoint i8* %712 to i64
  store i64 %713, i64* %34, align 8
  %714 = load i32, i32* %4, align 4
  %715 = load i32, i32* @SERIAL_SETMTU, align 4
  %716 = call i64 (i32, i32, ...) @ioctl(i32 %714, i32 %715, i64* %34)
  br label %1007

717:                                              ; preds = %697
  %718 = load i8**, i8*** %6, align 8
  %719 = load i32, i32* %7, align 4
  %720 = sext i32 %719 to i64
  %721 = getelementptr inbounds i8*, i8** %718, i64 %720
  %722 = load i8*, i8** %721, align 8
  %723 = call i64 @strncasecmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i64 0, i64 0), i8* %722, i32 6)
  %724 = icmp eq i64 %723, 0
  br i1 %724, label %725, label %737

725:                                              ; preds = %717
  %726 = load i8**, i8*** %6, align 8
  %727 = load i32, i32* %7, align 4
  %728 = sext i32 %727 to i64
  %729 = getelementptr inbounds i8*, i8** %726, i64 %728
  %730 = load i8*, i8** %729, align 8
  %731 = getelementptr inbounds i8, i8* %730, i64 6
  %732 = call i8* @strtol(i8* %731, i32 0, i32 10)
  %733 = ptrtoint i8* %732 to i64
  store i64 %733, i64* %35, align 8
  %734 = load i32, i32* %4, align 4
  %735 = load i32, i32* @SERIAL_SETRQLEN, align 4
  %736 = call i64 (i32, i32, ...) @ioctl(i32 %734, i32 %735, i64* %35)
  br label %1006

737:                                              ; preds = %717
  %738 = load i8**, i8*** %6, align 8
  %739 = load i32, i32* %7, align 4
  %740 = sext i32 %739 to i64
  %741 = getelementptr inbounds i8*, i8** %738, i64 %740
  %742 = load i8*, i8** %741, align 8
  %743 = call i64 @strcasecmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i64 0, i64 0), i8* %742)
  %744 = icmp eq i64 %743, 0
  br i1 %744, label %745, label %750

745:                                              ; preds = %737
  %746 = load i32, i32* @E1CLK_INTERNAL, align 4
  store i32 %746, i32* %19, align 4
  %747 = load i32, i32* %4, align 4
  %748 = load i32, i32* @SERIAL_SETCLK, align 4
  %749 = call i64 (i32, i32, ...) @ioctl(i32 %747, i32 %748, i32* %19)
  br label %1005

750:                                              ; preds = %737
  %751 = load i8**, i8*** %6, align 8
  %752 = load i32, i32* %7, align 4
  %753 = sext i32 %752 to i64
  %754 = getelementptr inbounds i8*, i8** %751, i64 %753
  %755 = load i8*, i8** %754, align 8
  %756 = call i64 @strcasecmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i64 0, i64 0), i8* %755)
  %757 = icmp eq i64 %756, 0
  br i1 %757, label %758, label %763

758:                                              ; preds = %750
  %759 = load i32, i32* @E1CLK_RECEIVE, align 4
  store i32 %759, i32* %19, align 4
  %760 = load i32, i32* %4, align 4
  %761 = load i32, i32* @SERIAL_SETCLK, align 4
  %762 = call i64 (i32, i32, ...) @ioctl(i32 %760, i32 %761, i32* %19)
  br label %1004

763:                                              ; preds = %750
  %764 = load i8**, i8*** %6, align 8
  %765 = load i32, i32* %7, align 4
  %766 = sext i32 %765 to i64
  %767 = getelementptr inbounds i8*, i8** %764, i64 %766
  %768 = load i8*, i8** %767, align 8
  %769 = call i64 @strcasecmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i64 0, i64 0), i8* %768)
  %770 = icmp eq i64 %769, 0
  br i1 %770, label %771, label %776

771:                                              ; preds = %763
  %772 = load i32, i32* @E1CLK_RECEIVE_CHAN0, align 4
  store i32 %772, i32* %19, align 4
  %773 = load i32, i32* %4, align 4
  %774 = load i32, i32* @SERIAL_SETCLK, align 4
  %775 = call i64 (i32, i32, ...) @ioctl(i32 %773, i32 %774, i32* %19)
  br label %1003

776:                                              ; preds = %763
  %777 = load i8**, i8*** %6, align 8
  %778 = load i32, i32* %7, align 4
  %779 = sext i32 %778 to i64
  %780 = getelementptr inbounds i8*, i8** %777, i64 %779
  %781 = load i8*, i8** %780, align 8
  %782 = call i64 @strcasecmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i64 0, i64 0), i8* %781)
  %783 = icmp eq i64 %782, 0
  br i1 %783, label %784, label %789

784:                                              ; preds = %776
  %785 = load i32, i32* @E1CLK_RECEIVE_CHAN1, align 4
  store i32 %785, i32* %19, align 4
  %786 = load i32, i32* %4, align 4
  %787 = load i32, i32* @SERIAL_SETCLK, align 4
  %788 = call i64 (i32, i32, ...) @ioctl(i32 %786, i32 %787, i32* %19)
  br label %1002

789:                                              ; preds = %776
  %790 = load i8**, i8*** %6, align 8
  %791 = load i32, i32* %7, align 4
  %792 = sext i32 %791 to i64
  %793 = getelementptr inbounds i8*, i8** %790, i64 %792
  %794 = load i8*, i8** %793, align 8
  %795 = call i64 @strcasecmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i64 0, i64 0), i8* %794)
  %796 = icmp eq i64 %795, 0
  br i1 %796, label %797, label %802

797:                                              ; preds = %789
  %798 = load i32, i32* @E1CLK_RECEIVE_CHAN2, align 4
  store i32 %798, i32* %19, align 4
  %799 = load i32, i32* %4, align 4
  %800 = load i32, i32* @SERIAL_SETCLK, align 4
  %801 = call i64 (i32, i32, ...) @ioctl(i32 %799, i32 %800, i32* %19)
  br label %1001

802:                                              ; preds = %789
  %803 = load i8**, i8*** %6, align 8
  %804 = load i32, i32* %7, align 4
  %805 = sext i32 %804 to i64
  %806 = getelementptr inbounds i8*, i8** %803, i64 %805
  %807 = load i8*, i8** %806, align 8
  %808 = call i64 @strcasecmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.52, i64 0, i64 0), i8* %807)
  %809 = icmp eq i64 %808, 0
  br i1 %809, label %810, label %815

810:                                              ; preds = %802
  %811 = load i32, i32* @E1CLK_RECEIVE_CHAN3, align 4
  store i32 %811, i32* %19, align 4
  %812 = load i32, i32* %4, align 4
  %813 = load i32, i32* @SERIAL_SETCLK, align 4
  %814 = call i64 (i32, i32, ...) @ioctl(i32 %812, i32 %813, i32* %19)
  br label %1000

815:                                              ; preds = %802
  %816 = load i8**, i8*** %6, align 8
  %817 = load i32, i32* %7, align 4
  %818 = sext i32 %817 to i64
  %819 = getelementptr inbounds i8*, i8** %816, i64 %818
  %820 = load i8*, i8** %819, align 8
  %821 = call i64 @strncasecmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i64 0, i64 0), i8* %820, i32 3)
  %822 = icmp eq i64 %821, 0
  br i1 %822, label %823, label %834

823:                                              ; preds = %815
  %824 = load i8**, i8*** %6, align 8
  %825 = load i32, i32* %7, align 4
  %826 = sext i32 %825 to i64
  %827 = getelementptr inbounds i8*, i8** %824, i64 %826
  %828 = load i8*, i8** %827, align 8
  %829 = getelementptr inbounds i8, i8* %828, i64 3
  %830 = call i64 @scan_timeslots(i8* %829)
  store i64 %830, i64* %33, align 8
  %831 = load i32, i32* %4, align 4
  %832 = load i32, i32* @SERIAL_SETTIMESLOTS, align 4
  %833 = call i64 (i32, i32, ...) @ioctl(i32 %831, i32 %832, i64* %33)
  br label %999

834:                                              ; preds = %815
  %835 = load i8**, i8*** %6, align 8
  %836 = load i32, i32* %7, align 4
  %837 = sext i32 %836 to i64
  %838 = getelementptr inbounds i8*, i8** %835, i64 %837
  %839 = load i8*, i8** %838, align 8
  %840 = call i64 @strncasecmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.54, i64 0, i64 0), i8* %839, i32 5)
  %841 = icmp eq i64 %840, 0
  br i1 %841, label %842, label %853

842:                                              ; preds = %834
  %843 = load i8**, i8*** %6, align 8
  %844 = load i32, i32* %7, align 4
  %845 = sext i32 %844 to i64
  %846 = getelementptr inbounds i8*, i8** %843, i64 %845
  %847 = load i8*, i8** %846, align 8
  %848 = getelementptr inbounds i8, i8* %847, i64 5
  %849 = call i64 @scan_timeslots(i8* %848)
  store i64 %849, i64* %33, align 8
  %850 = load i32, i32* %4, align 4
  %851 = load i32, i32* @SERIAL_SETSUBCHAN, align 4
  %852 = call i64 (i32, i32, ...) @ioctl(i32 %850, i32 %851, i64* %33)
  br label %998

853:                                              ; preds = %834
  %854 = load i8**, i8*** %6, align 8
  %855 = load i32, i32* %7, align 4
  %856 = sext i32 %855 to i64
  %857 = getelementptr inbounds i8*, i8** %854, i64 %856
  %858 = load i8*, i8** %857, align 8
  %859 = call i64 @strncasecmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i64 0, i64 0), i8* %858, i32 4)
  %860 = icmp eq i64 %859, 0
  br i1 %860, label %861, label %873

861:                                              ; preds = %853
  %862 = load i8**, i8*** %6, align 8
  %863 = load i32, i32* %7, align 4
  %864 = sext i32 %863 to i64
  %865 = getelementptr inbounds i8*, i8** %862, i64 %864
  %866 = load i8*, i8** %865, align 8
  %867 = getelementptr inbounds i8, i8* %866, i64 4
  %868 = call i8* @strtol(i8* %867, i32 0, i32 10)
  %869 = ptrtoint i8* %868 to i32
  store i32 %869, i32* %23, align 4
  %870 = load i32, i32* %4, align 4
  %871 = load i32, i32* @SERIAL_ADDDLCI, align 4
  %872 = call i64 (i32, i32, ...) @ioctl(i32 %870, i32 %871, i32* %23)
  br label %997

873:                                              ; preds = %853
  %874 = load i8**, i8*** %6, align 8
  %875 = load i32, i32* %7, align 4
  %876 = sext i32 %875 to i64
  %877 = getelementptr inbounds i8*, i8** %874, i64 %876
  %878 = load i8*, i8** %877, align 8
  %879 = call i64 @strncasecmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i64 0, i64 0), i8* %878, i32 4)
  %880 = icmp eq i64 %879, 0
  br i1 %880, label %881, label %893

881:                                              ; preds = %873
  %882 = load i8**, i8*** %6, align 8
  %883 = load i32, i32* %7, align 4
  %884 = sext i32 %883 to i64
  %885 = getelementptr inbounds i8*, i8** %882, i64 %884
  %886 = load i8*, i8** %885, align 8
  %887 = getelementptr inbounds i8, i8* %886, i64 4
  %888 = call i8* @strtol(i8* %887, i32 0, i32 10)
  %889 = ptrtoint i8* %888 to i32
  store i32 %889, i32* %27, align 4
  %890 = load i32, i32* %4, align 4
  %891 = load i32, i32* @SERIAL_SETDIR, align 4
  %892 = call i64 (i32, i32, ...) @ioctl(i32 %890, i32 %891, i32* %27)
  br label %996

893:                                              ; preds = %873
  %894 = load i8**, i8*** %6, align 8
  %895 = load i32, i32* %7, align 4
  %896 = sext i32 %895 to i64
  %897 = getelementptr inbounds i8*, i8** %894, i64 %896
  %898 = load i8*, i8** %897, align 8
  %899 = call i64 @strncasecmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i64 0, i64 0), i8* %898, i32 5)
  %900 = icmp eq i64 %899, 0
  br i1 %900, label %901, label %947

901:                                              ; preds = %893
  %902 = load i8**, i8*** %6, align 8
  %903 = load i32, i32* %7, align 4
  %904 = sext i32 %903 to i64
  %905 = getelementptr inbounds i8*, i8** %902, i64 %904
  %906 = load i8*, i8** %905, align 8
  %907 = getelementptr inbounds i8, i8* %906, i64 5
  %908 = call i64 @strncasecmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i64 0, i64 0), i8* %907, i32 5)
  %909 = icmp eq i64 %908, 0
  br i1 %909, label %910, label %914

910:                                              ; preds = %901
  store i32 0, i32* %22, align 4
  %911 = load i32, i32* %4, align 4
  %912 = load i32, i32* @SERIAL_SETPORT, align 4
  %913 = call i64 (i32, i32, ...) @ioctl(i32 %911, i32 %912, i32* %22)
  br label %945

914:                                              ; preds = %901
  %915 = load i8**, i8*** %6, align 8
  %916 = load i32, i32* %7, align 4
  %917 = sext i32 %916 to i64
  %918 = getelementptr inbounds i8*, i8** %915, i64 %917
  %919 = load i8*, i8** %918, align 8
  %920 = getelementptr inbounds i8, i8* %919, i64 5
  %921 = call i64 @strncasecmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i64 0, i64 0), i8* %920, i32 3)
  %922 = icmp eq i64 %921, 0
  br i1 %922, label %923, label %927

923:                                              ; preds = %914
  store i32 1, i32* %22, align 4
  %924 = load i32, i32* %4, align 4
  %925 = load i32, i32* @SERIAL_SETPORT, align 4
  %926 = call i64 (i32, i32, ...) @ioctl(i32 %924, i32 %925, i32* %22)
  br label %944

927:                                              ; preds = %914
  %928 = load i8**, i8*** %6, align 8
  %929 = load i32, i32* %7, align 4
  %930 = sext i32 %929 to i64
  %931 = getelementptr inbounds i8*, i8** %928, i64 %930
  %932 = load i8*, i8** %931, align 8
  %933 = getelementptr inbounds i8, i8* %932, i64 5
  %934 = call i64 @strncasecmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.60, i64 0, i64 0), i8* %933, i32 5)
  %935 = icmp eq i64 %934, 0
  br i1 %935, label %936, label %940

936:                                              ; preds = %927
  store i32 2, i32* %22, align 4
  %937 = load i32, i32* %4, align 4
  %938 = load i32, i32* @SERIAL_SETPORT, align 4
  %939 = call i64 (i32, i32, ...) @ioctl(i32 %937, i32 %938, i32* %22)
  br label %943

940:                                              ; preds = %927
  %941 = load i32, i32* @stderr, align 4
  %942 = call i32 @fprintf(i32 %941, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.61, i64 0, i64 0))
  br label %943

943:                                              ; preds = %940, %936
  br label %944

944:                                              ; preds = %943, %923
  br label %945

945:                                              ; preds = %944, %910
  %946 = call i32 @exit(i32 -1) #3
  unreachable

947:                                              ; preds = %893
  %948 = load i8**, i8*** %6, align 8
  %949 = load i32, i32* %7, align 4
  %950 = sext i32 %949 to i64
  %951 = getelementptr inbounds i8*, i8** %948, i64 %950
  %952 = load i8*, i8** %951, align 8
  %953 = call i64 @strcasecmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i64 0, i64 0), i8* %952)
  %954 = icmp eq i64 %953, 0
  br i1 %954, label %955, label %959

955:                                              ; preds = %947
  %956 = load i32, i32* %4, align 4
  %957 = load i32, i32* @SERIAL_RESET, align 4
  %958 = call i64 (i32, i32, ...) @ioctl(i32 %956, i32 %957, i32 0)
  br label %994

959:                                              ; preds = %947
  %960 = load i8**, i8*** %6, align 8
  %961 = load i32, i32* %7, align 4
  %962 = sext i32 %961 to i64
  %963 = getelementptr inbounds i8*, i8** %960, i64 %962
  %964 = load i8*, i8** %963, align 8
  %965 = call i64 @strcasecmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.63, i64 0, i64 0), i8* %964)
  %966 = icmp eq i64 %965, 0
  br i1 %966, label %967, label %971

967:                                              ; preds = %959
  %968 = load i32, i32* %4, align 4
  %969 = load i32, i32* @SERIAL_HARDRESET, align 4
  %970 = call i64 (i32, i32, ...) @ioctl(i32 %968, i32 %969, i32 0)
  br label %993

971:                                              ; preds = %959
  %972 = load i8**, i8*** %6, align 8
  %973 = load i32, i32* %7, align 4
  %974 = sext i32 %973 to i64
  %975 = getelementptr inbounds i8*, i8** %972, i64 %974
  %976 = load i8*, i8** %975, align 8
  %977 = call i64 @strncasecmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.64, i64 0, i64 0), i8* %976, i32 7)
  %978 = icmp eq i64 %977, 0
  br i1 %978, label %979, label %992

979:                                              ; preds = %971
  %980 = load i8**, i8*** %6, align 8
  %981 = load i32, i32* %7, align 4
  %982 = sext i32 %981 to i64
  %983 = getelementptr inbounds i8*, i8** %980, i64 %982
  %984 = load i8*, i8** %983, align 8
  %985 = getelementptr inbounds i8, i8* %984, i64 7
  %986 = call i64 @strcasecmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), i8* %985)
  %987 = icmp eq i64 %986, 0
  %988 = zext i1 %987 to i32
  store i32 %988, i32* %9, align 4
  %989 = load i32, i32* %4, align 4
  %990 = load i32, i32* @SERIAL_SETCABLEN, align 4
  %991 = call i64 (i32, i32, ...) @ioctl(i32 %989, i32 %990, i32* %30)
  br label %992

992:                                              ; preds = %979, %971
  br label %993

993:                                              ; preds = %992, %967
  br label %994

994:                                              ; preds = %993, %955
  br label %995

995:                                              ; preds = %994
  br label %996

996:                                              ; preds = %995, %881
  br label %997

997:                                              ; preds = %996, %861
  br label %998

998:                                              ; preds = %997, %842
  br label %999

999:                                              ; preds = %998, %823
  br label %1000

1000:                                             ; preds = %999, %810
  br label %1001

1001:                                             ; preds = %1000, %797
  br label %1002

1002:                                             ; preds = %1001, %784
  br label %1003

1003:                                             ; preds = %1002, %771
  br label %1004

1004:                                             ; preds = %1003, %758
  br label %1005

1005:                                             ; preds = %1004, %745
  br label %1006

1006:                                             ; preds = %1005, %725
  br label %1007

1007:                                             ; preds = %1006, %705
  br label %1008

1008:                                             ; preds = %1007, %684
  br label %1009

1009:                                             ; preds = %1008, %663
  br label %1010

1010:                                             ; preds = %1009, %642
  br label %1011

1011:                                             ; preds = %1010, %621
  br label %1012

1012:                                             ; preds = %1011, %600
  br label %1013

1013:                                             ; preds = %1012, %579
  br label %1014

1014:                                             ; preds = %1013, %558
  br label %1015

1015:                                             ; preds = %1014, %537
  br label %1016

1016:                                             ; preds = %1015, %516
  br label %1017

1017:                                             ; preds = %1016, %495
  br label %1018

1018:                                             ; preds = %1017, %474
  br label %1019

1019:                                             ; preds = %1018, %453
  br label %1020

1020:                                             ; preds = %1019, %432
  br label %1021

1021:                                             ; preds = %1020, %411
  br label %1022

1022:                                             ; preds = %1021, %390
  br label %1023

1023:                                             ; preds = %1022, %381
  br label %1024

1024:                                             ; preds = %1023, %330
  br label %1025

1025:                                             ; preds = %1024, %314
  br label %1026

1026:                                             ; preds = %1025, %293
  br label %1027

1027:                                             ; preds = %1026, %284
  br label %1028

1028:                                             ; preds = %1027, %257
  br label %1029

1029:                                             ; preds = %1028, %241
  br label %1030

1030:                                             ; preds = %1029, %225
  br label %1031

1031:                                             ; preds = %1030, %209
  br label %1032

1032:                                             ; preds = %1031, %200
  br label %1033

1033:                                             ; preds = %1032, %181
  br label %1034

1034:                                             ; preds = %1033, %159
  br label %1035

1035:                                             ; preds = %1034, %150
  br label %1036

1036:                                             ; preds = %1035, %79
  br label %1037

1037:                                             ; preds = %1036, %60
  br label %1038

1038:                                             ; preds = %1037
  %1039 = load i32, i32* %7, align 4
  %1040 = add nsw i32 %1039, 1
  store i32 %1040, i32* %7, align 4
  br label %36

1041:                                             ; preds = %36
  ret void
}

declare dso_local i8* @strtol(i8*, i32, i32) #1

declare dso_local i64 @ioctl(i32, i32, ...) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @ppp_ok(...) #1

declare dso_local i32 @set_debug_ifconfig(i32) #1

declare dso_local i64 @scan_timeslots(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
