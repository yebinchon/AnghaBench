; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/sconfig/extr_sconfig.c_print_chan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/sconfig/extr_sconfig.c_print_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SERIAL_GETPROTO = common dso_local global i32 0, align 4
@SERIAL_GETCFG = common dso_local global i32 0, align 4
@SERIAL_GETBAUD = common dso_local global i32 0, align 4
@SERIAL_GETLOOP = common dso_local global i32 0, align 4
@SERIAL_GETDPLL = common dso_local global i32 0, align 4
@SERIAL_GETNRZI = common dso_local global i32 0, align 4
@SERIAL_GETINVCLK = common dso_local global i32 0, align 4
@SERIAL_GETINVRCLK = common dso_local global i32 0, align 4
@SERIAL_GETINVTCLK = common dso_local global i32 0, align 4
@SERIAL_GETCLK = common dso_local global i32 0, align 4
@SERIAL_GETTIMESLOTS = common dso_local global i32 0, align 4
@SERIAL_GETSUBCHAN = common dso_local global i32 0, align 4
@SERIAL_GETHIGAIN = common dso_local global i32 0, align 4
@SERIAL_GETPHONY = common dso_local global i32 0, align 4
@SERIAL_GETUNFRAM = common dso_local global i32 0, align 4
@SERIAL_GETMONITOR = common dso_local global i32 0, align 4
@SERIAL_GETUSE16 = common dso_local global i32 0, align 4
@SERIAL_GETCRC4 = common dso_local global i32 0, align 4
@SERIAL_GETLCODE = common dso_local global i32 0, align 4
@SERIAL_GETLEVEL = common dso_local global i32 0, align 4
@SERIAL_GETKEEPALIVE = common dso_local global i32 0, align 4
@SERIAL_GETDEBUG = common dso_local global i32 0, align 4
@SERIAL_GETPORT = common dso_local global i32 0, align 4
@SERIAL_GETCABLE = common dso_local global i32 0, align 4
@SERIAL_GETDIR = common dso_local global i32 0, align 4
@SERIAL_GETSCRAMBLER = common dso_local global i32 0, align 4
@SERIAL_GETCABLEN = common dso_local global i32 0, align 4
@SERIAL_GETRLOOP = common dso_local global i32 0, align 4
@SERIAL_GETMTU = common dso_local global i32 0, align 4
@SERIAL_GETRQLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@chan_name = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c" (rs232)\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c" (v35)\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c" (rs530)\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c" (x21)\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c" (rs485)\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c" (no cable)\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c" debug=%d\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c" %.8s\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c" idle\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c" cablen=%s\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c" keepalive=%s\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c" cfg=A\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c" cfg=B\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c" cfg=C\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c" cfg=D\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c" cfg=unknown\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c" dir=%d\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c" %ld\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c" extclock\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c" mtu=%d\00", align 1
@aflag = common dso_local global i64 0, align 8
@.str.23 = private unnamed_addr constant [10 x i8] c" rqlen=%d\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c" syn=int\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c" syn=rcv\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c" syn=rcv0\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c" syn=rcv1\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c" syn=rcv2\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c" syn=rcv3\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c" syn=%d\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c" dpll=%s\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c" nrzi=%s\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c" invclk=%s\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c" invrclk=%s\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c" invtclk=%s\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c" unfram=%s\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c" use16=%s\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c" crc4=%s\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c" higain=%s\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c" monitor=%s\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c" phony=%s\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c" scrambler=%s\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c" loop=%s\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c" rloop=%s\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c" ami=%s\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c" ts=%s\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c" pass=%s\00", align 1
@.str.48 = private unnamed_addr constant [17 x i8] c" (level=-%.1fdB)\00", align 1
@.str.49 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @print_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_chan(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [8 x i8], align 1
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
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
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  %54 = alloca i32, align 4
  %55 = alloca i32, align 4
  %56 = alloca i32, align 4
  %57 = alloca i32, align 4
  %58 = alloca i32, align 4
  %59 = alloca i32, align 4
  %60 = alloca i32, align 4
  %61 = alloca i32, align 4
  %62 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %63 = load i32, i32* %2, align 4
  %64 = load i32, i32* @SERIAL_GETPROTO, align 4
  %65 = call i64 (i32, i32, ...) @ioctl(i32 %63, i32 %64, [8 x i8]* %3)
  %66 = icmp sge i64 %65, 0
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %33, align 4
  %68 = load i32, i32* %2, align 4
  %69 = load i32, i32* @SERIAL_GETCFG, align 4
  %70 = call i64 (i32, i32, ...) @ioctl(i32 %68, i32 %69, i8* %4)
  %71 = icmp sge i64 %70, 0
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %49, align 4
  %73 = load i32, i32* %2, align 4
  %74 = load i32, i32* @SERIAL_GETBAUD, align 4
  %75 = call i64 (i32, i32, ...) @ioctl(i32 %73, i32 %74, i64* %30)
  %76 = icmp sge i64 %75, 0
  %77 = zext i1 %76 to i32
  store i32 %77, i32* %34, align 4
  %78 = load i32, i32* %2, align 4
  %79 = load i32, i32* @SERIAL_GETLOOP, align 4
  %80 = call i64 (i32, i32, ...) @ioctl(i32 %78, i32 %79, i32* %5)
  %81 = icmp sge i64 %80, 0
  %82 = zext i1 %81 to i32
  store i32 %82, i32* %35, align 4
  %83 = load i32, i32* %2, align 4
  %84 = load i32, i32* @SERIAL_GETDPLL, align 4
  %85 = call i64 (i32, i32, ...) @ioctl(i32 %83, i32 %84, i32* %6)
  %86 = icmp sge i64 %85, 0
  %87 = zext i1 %86 to i32
  store i32 %87, i32* %38, align 4
  %88 = load i32, i32* %2, align 4
  %89 = load i32, i32* @SERIAL_GETNRZI, align 4
  %90 = call i64 (i32, i32, ...) @ioctl(i32 %88, i32 %89, i32* %7)
  %91 = icmp sge i64 %90, 0
  %92 = zext i1 %91 to i32
  store i32 %92, i32* %39, align 4
  %93 = load i32, i32* %2, align 4
  %94 = load i32, i32* @SERIAL_GETINVCLK, align 4
  %95 = call i64 (i32, i32, ...) @ioctl(i32 %93, i32 %94, i32* %8)
  %96 = icmp sge i64 %95, 0
  %97 = zext i1 %96 to i32
  store i32 %97, i32* %40, align 4
  %98 = load i32, i32* %2, align 4
  %99 = load i32, i32* @SERIAL_GETINVRCLK, align 4
  %100 = call i64 (i32, i32, ...) @ioctl(i32 %98, i32 %99, i32* %18)
  %101 = icmp sge i64 %100, 0
  %102 = zext i1 %101 to i32
  store i32 %102, i32* %51, align 4
  %103 = load i32, i32* %2, align 4
  %104 = load i32, i32* @SERIAL_GETINVTCLK, align 4
  %105 = call i64 (i32, i32, ...) @ioctl(i32 %103, i32 %104, i32* %19)
  %106 = icmp sge i64 %105, 0
  %107 = zext i1 %106 to i32
  store i32 %107, i32* %52, align 4
  %108 = load i32, i32* %2, align 4
  %109 = load i32, i32* @SERIAL_GETCLK, align 4
  %110 = call i64 (i32, i32, ...) @ioctl(i32 %108, i32 %109, i32* %9)
  %111 = icmp sge i64 %110, 0
  %112 = zext i1 %111 to i32
  store i32 %112, i32* %41, align 4
  %113 = load i32, i32* %2, align 4
  %114 = load i32, i32* @SERIAL_GETTIMESLOTS, align 4
  %115 = call i64 (i32, i32, ...) @ioctl(i32 %113, i32 %114, i64* %31)
  %116 = icmp sge i64 %115, 0
  %117 = zext i1 %116 to i32
  store i32 %117, i32* %43, align 4
  %118 = load i32, i32* %2, align 4
  %119 = load i32, i32* @SERIAL_GETSUBCHAN, align 4
  %120 = call i64 (i32, i32, ...) @ioctl(i32 %118, i32 %119, i64* %32)
  %121 = icmp sge i64 %120, 0
  %122 = zext i1 %121 to i32
  store i32 %122, i32* %44, align 4
  %123 = load i32, i32* %2, align 4
  %124 = load i32, i32* @SERIAL_GETHIGAIN, align 4
  %125 = call i64 (i32, i32, ...) @ioctl(i32 %123, i32 %124, i32* %10)
  %126 = icmp sge i64 %125, 0
  %127 = zext i1 %126 to i32
  store i32 %127, i32* %45, align 4
  %128 = load i32, i32* %2, align 4
  %129 = load i32, i32* @SERIAL_GETPHONY, align 4
  %130 = call i64 (i32, i32, ...) @ioctl(i32 %128, i32 %129, i32* %11)
  %131 = icmp sge i64 %130, 0
  %132 = zext i1 %131 to i32
  store i32 %132, i32* %42, align 4
  %133 = load i32, i32* %2, align 4
  %134 = load i32, i32* @SERIAL_GETUNFRAM, align 4
  %135 = call i64 (i32, i32, ...) @ioctl(i32 %133, i32 %134, i32* %20)
  %136 = icmp sge i64 %135, 0
  %137 = zext i1 %136 to i32
  store i32 %137, i32* %53, align 4
  %138 = load i32, i32* %2, align 4
  %139 = load i32, i32* @SERIAL_GETMONITOR, align 4
  %140 = call i64 (i32, i32, ...) @ioctl(i32 %138, i32 %139, i32* %21)
  %141 = icmp sge i64 %140, 0
  %142 = zext i1 %141 to i32
  store i32 %142, i32* %54, align 4
  %143 = load i32, i32* %2, align 4
  %144 = load i32, i32* @SERIAL_GETUSE16, align 4
  %145 = call i64 (i32, i32, ...) @ioctl(i32 %143, i32 %144, i32* %12)
  %146 = icmp sge i64 %145, 0
  %147 = zext i1 %146 to i32
  store i32 %147, i32* %36, align 4
  %148 = load i32, i32* %2, align 4
  %149 = load i32, i32* @SERIAL_GETCRC4, align 4
  %150 = call i64 (i32, i32, ...) @ioctl(i32 %148, i32 %149, i32* %13)
  %151 = icmp sge i64 %150, 0
  %152 = zext i1 %151 to i32
  store i32 %152, i32* %37, align 4
  %153 = load i32, i32* %2, align 4
  %154 = load i32, i32* @SERIAL_GETLCODE, align 4
  %155 = call i64 (i32, i32, ...) @ioctl(i32 %153, i32 %154, i32* %25)
  %156 = icmp sge i64 %155, 0
  %157 = zext i1 %156 to i32
  store i32 %157, i32* %58, align 4
  %158 = load i32, i32* %2, align 4
  %159 = load i32, i32* @SERIAL_GETLEVEL, align 4
  %160 = call i64 (i32, i32, ...) @ioctl(i32 %158, i32 %159, i32* %14)
  %161 = icmp sge i64 %160, 0
  %162 = zext i1 %161 to i32
  store i32 %162, i32* %46, align 4
  %163 = load i32, i32* %2, align 4
  %164 = load i32, i32* @SERIAL_GETKEEPALIVE, align 4
  %165 = call i64 (i32, i32, ...) @ioctl(i32 %163, i32 %164, i32* %15)
  %166 = icmp sge i64 %165, 0
  %167 = zext i1 %166 to i32
  store i32 %167, i32* %47, align 4
  %168 = load i32, i32* %2, align 4
  %169 = load i32, i32* @SERIAL_GETDEBUG, align 4
  %170 = call i64 (i32, i32, ...) @ioctl(i32 %168, i32 %169, i32* %16)
  %171 = icmp sge i64 %170, 0
  %172 = zext i1 %171 to i32
  store i32 %172, i32* %48, align 4
  %173 = load i32, i32* %2, align 4
  %174 = load i32, i32* @SERIAL_GETPORT, align 4
  %175 = call i64 (i32, i32, ...) @ioctl(i32 %173, i32 %174, i32* %17)
  %176 = icmp sge i64 %175, 0
  %177 = zext i1 %176 to i32
  store i32 %177, i32* %50, align 4
  %178 = load i32, i32* %2, align 4
  %179 = load i32, i32* @SERIAL_GETCABLE, align 4
  %180 = call i64 (i32, i32, ...) @ioctl(i32 %178, i32 %179, i32* %22)
  %181 = icmp sge i64 %180, 0
  %182 = zext i1 %181 to i32
  store i32 %182, i32* %55, align 4
  %183 = load i32, i32* %2, align 4
  %184 = load i32, i32* @SERIAL_GETDIR, align 4
  %185 = call i64 (i32, i32, ...) @ioctl(i32 %183, i32 %184, i32* %23)
  %186 = icmp sge i64 %185, 0
  %187 = zext i1 %186 to i32
  store i32 %187, i32* %56, align 4
  %188 = load i32, i32* %2, align 4
  %189 = load i32, i32* @SERIAL_GETSCRAMBLER, align 4
  %190 = call i64 (i32, i32, ...) @ioctl(i32 %188, i32 %189, i32* %24)
  %191 = icmp sge i64 %190, 0
  %192 = zext i1 %191 to i32
  store i32 %192, i32* %57, align 4
  %193 = load i32, i32* %2, align 4
  %194 = load i32, i32* @SERIAL_GETCABLEN, align 4
  %195 = call i64 (i32, i32, ...) @ioctl(i32 %193, i32 %194, i32* %27)
  %196 = icmp sge i64 %195, 0
  %197 = zext i1 %196 to i32
  store i32 %197, i32* %60, align 4
  %198 = load i32, i32* %2, align 4
  %199 = load i32, i32* @SERIAL_GETRLOOP, align 4
  %200 = call i64 (i32, i32, ...) @ioctl(i32 %198, i32 %199, i32* %28)
  %201 = icmp sge i64 %200, 0
  %202 = zext i1 %201 to i32
  store i32 %202, i32* %61, align 4
  %203 = load i32, i32* %2, align 4
  %204 = load i32, i32* @SERIAL_GETMTU, align 4
  %205 = call i64 (i32, i32, ...) @ioctl(i32 %203, i32 %204, i32* %26)
  %206 = icmp sge i64 %205, 0
  %207 = zext i1 %206 to i32
  store i32 %207, i32* %59, align 4
  %208 = load i32, i32* %2, align 4
  %209 = load i32, i32* @SERIAL_GETRQLEN, align 4
  %210 = call i64 (i32, i32, ...) @ioctl(i32 %208, i32 %209, i32* %29)
  %211 = icmp sge i64 %210, 0
  %212 = zext i1 %211 to i32
  store i32 %212, i32* %62, align 4
  %213 = load i8*, i8** @chan_name, align 8
  %214 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %213)
  %215 = load i32, i32* %50, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %226

217:                                              ; preds = %1
  %218 = load i32, i32* %17, align 4
  switch i32 %218, label %225 [
    i32 0, label %219
    i32 1, label %221
    i32 2, label %223
  ]

219:                                              ; preds = %217
  %220 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %225

221:                                              ; preds = %217
  %222 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %225

223:                                              ; preds = %217
  %224 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %225

225:                                              ; preds = %217, %223, %221, %219
  br label %245

226:                                              ; preds = %1
  %227 = load i32, i32* %55, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %244

229:                                              ; preds = %226
  %230 = load i32, i32* %22, align 4
  switch i32 %230, label %243 [
    i32 0, label %231
    i32 1, label %233
    i32 2, label %235
    i32 3, label %237
    i32 4, label %239
    i32 9, label %241
  ]

231:                                              ; preds = %229
  %232 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %243

233:                                              ; preds = %229
  %234 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %243

235:                                              ; preds = %229
  %236 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %243

237:                                              ; preds = %229
  %238 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %243

239:                                              ; preds = %229
  %240 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  br label %243

241:                                              ; preds = %229
  %242 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  br label %243

243:                                              ; preds = %229, %241, %239, %237, %235, %233, %231
  br label %244

244:                                              ; preds = %243, %226
  br label %245

245:                                              ; preds = %244, %225
  %246 = load i32, i32* %48, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %254

248:                                              ; preds = %245
  %249 = load i32, i32* %16, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %254

251:                                              ; preds = %248
  %252 = load i32, i32* %16, align 4
  %253 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %252)
  br label %254

254:                                              ; preds = %251, %248, %245
  %255 = load i32, i32* %33, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %265

257:                                              ; preds = %254
  %258 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %259 = load i8, i8* %258, align 1
  %260 = sext i8 %259 to i32
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %265

262:                                              ; preds = %257
  %263 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %264 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* %263)
  br label %267

265:                                              ; preds = %257, %254
  %266 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  br label %267

267:                                              ; preds = %265, %262
  %268 = load i32, i32* %60, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %276

270:                                              ; preds = %267
  %271 = load i32, i32* %27, align 4
  %272 = icmp ne i32 %271, 0
  %273 = zext i1 %272 to i64
  %274 = select i1 %272, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0)
  %275 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8* %274)
  br label %276

276:                                              ; preds = %270, %267
  %277 = load i32, i32* %47, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %285

279:                                              ; preds = %276
  %280 = load i32, i32* %15, align 4
  %281 = icmp ne i32 %280, 0
  %282 = zext i1 %281 to i64
  %283 = select i1 %281, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0)
  %284 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* %283)
  br label %285

285:                                              ; preds = %279, %276
  %286 = load i32, i32* %49, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %302

288:                                              ; preds = %285
  %289 = load i8, i8* %4, align 1
  %290 = sext i8 %289 to i32
  switch i32 %290, label %299 [
    i32 97, label %291
    i32 98, label %293
    i32 99, label %295
    i32 100, label %297
  ]

291:                                              ; preds = %288
  %292 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  br label %301

293:                                              ; preds = %288
  %294 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0))
  br label %301

295:                                              ; preds = %288
  %296 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0))
  br label %301

297:                                              ; preds = %288
  %298 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0))
  br label %301

299:                                              ; preds = %288
  %300 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0))
  br label %301

301:                                              ; preds = %299, %297, %295, %293, %291
  br label %302

302:                                              ; preds = %301, %285
  %303 = load i32, i32* %56, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %308

305:                                              ; preds = %302
  %306 = load i32, i32* %23, align 4
  %307 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i32 %306)
  br label %308

308:                                              ; preds = %305, %302
  %309 = load i32, i32* %34, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %320

311:                                              ; preds = %308
  %312 = load i64, i64* %30, align 8
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %317

314:                                              ; preds = %311
  %315 = load i64, i64* %30, align 8
  %316 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i64 %315)
  br label %319

317:                                              ; preds = %311
  %318 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0))
  br label %319

319:                                              ; preds = %317, %314
  br label %320

320:                                              ; preds = %319, %308
  %321 = load i32, i32* %59, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %326

323:                                              ; preds = %320
  %324 = load i32, i32* %26, align 4
  %325 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0), i32 %324)
  br label %326

326:                                              ; preds = %323, %320
  %327 = load i64, i64* @aflag, align 8
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %329, label %335

329:                                              ; preds = %326
  %330 = load i32, i32* %62, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %335

332:                                              ; preds = %329
  %333 = load i32, i32* %29, align 4
  %334 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0), i32 %333)
  br label %335

335:                                              ; preds = %332, %329, %326
  %336 = load i32, i32* %41, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %356

338:                                              ; preds = %335
  %339 = load i32, i32* %9, align 4
  switch i32 %339, label %352 [
    i32 133, label %340
    i32 132, label %342
    i32 131, label %344
    i32 130, label %346
    i32 129, label %348
    i32 128, label %350
  ]

340:                                              ; preds = %338
  %341 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0))
  br label %355

342:                                              ; preds = %338
  %343 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0))
  br label %355

344:                                              ; preds = %338
  %345 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0))
  br label %355

346:                                              ; preds = %338
  %347 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i64 0, i64 0))
  br label %355

348:                                              ; preds = %338
  %349 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i64 0, i64 0))
  br label %355

350:                                              ; preds = %338
  %351 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i64 0, i64 0))
  br label %355

352:                                              ; preds = %338
  %353 = load i32, i32* %9, align 4
  %354 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i64 0, i64 0), i32 %353)
  br label %355

355:                                              ; preds = %352, %350, %348, %346, %344, %342, %340
  br label %356

356:                                              ; preds = %355, %335
  %357 = load i32, i32* %38, align 4
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %365

359:                                              ; preds = %356
  %360 = load i32, i32* %6, align 4
  %361 = icmp ne i32 %360, 0
  %362 = zext i1 %361 to i64
  %363 = select i1 %361, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0)
  %364 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i64 0, i64 0), i8* %363)
  br label %365

365:                                              ; preds = %359, %356
  %366 = load i32, i32* %39, align 4
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %374

368:                                              ; preds = %365
  %369 = load i32, i32* %7, align 4
  %370 = icmp ne i32 %369, 0
  %371 = zext i1 %370 to i64
  %372 = select i1 %370, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0)
  %373 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i64 0, i64 0), i8* %372)
  br label %374

374:                                              ; preds = %368, %365
  %375 = load i32, i32* %40, align 4
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %383

377:                                              ; preds = %374
  %378 = load i32, i32* %8, align 4
  %379 = icmp ne i32 %378, 0
  %380 = zext i1 %379 to i64
  %381 = select i1 %379, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0)
  %382 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i64 0, i64 0), i8* %381)
  br label %383

383:                                              ; preds = %377, %374
  %384 = load i32, i32* %51, align 4
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %392

386:                                              ; preds = %383
  %387 = load i32, i32* %18, align 4
  %388 = icmp ne i32 %387, 0
  %389 = zext i1 %388 to i64
  %390 = select i1 %388, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0)
  %391 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i64 0, i64 0), i8* %390)
  br label %392

392:                                              ; preds = %386, %383
  %393 = load i32, i32* %52, align 4
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %401

395:                                              ; preds = %392
  %396 = load i32, i32* %19, align 4
  %397 = icmp ne i32 %396, 0
  %398 = zext i1 %397 to i64
  %399 = select i1 %397, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0)
  %400 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i64 0, i64 0), i8* %399)
  br label %401

401:                                              ; preds = %395, %392
  %402 = load i32, i32* %53, align 4
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %404, label %410

404:                                              ; preds = %401
  %405 = load i32, i32* %20, align 4
  %406 = icmp ne i32 %405, 0
  %407 = zext i1 %406 to i64
  %408 = select i1 %406, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0)
  %409 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i64 0, i64 0), i8* %408)
  br label %410

410:                                              ; preds = %404, %401
  %411 = load i32, i32* %36, align 4
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %419

413:                                              ; preds = %410
  %414 = load i32, i32* %12, align 4
  %415 = icmp ne i32 %414, 0
  %416 = zext i1 %415 to i64
  %417 = select i1 %415, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0)
  %418 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i64 0, i64 0), i8* %417)
  br label %419

419:                                              ; preds = %413, %410
  %420 = load i64, i64* @aflag, align 8
  %421 = icmp ne i64 %420, 0
  br i1 %421, label %422, label %495

422:                                              ; preds = %419
  %423 = load i32, i32* %37, align 4
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %425, label %431

425:                                              ; preds = %422
  %426 = load i32, i32* %13, align 4
  %427 = icmp ne i32 %426, 0
  %428 = zext i1 %427 to i64
  %429 = select i1 %427, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0)
  %430 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i64 0, i64 0), i8* %429)
  br label %431

431:                                              ; preds = %425, %422
  %432 = load i32, i32* %45, align 4
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %440

434:                                              ; preds = %431
  %435 = load i32, i32* %10, align 4
  %436 = icmp ne i32 %435, 0
  %437 = zext i1 %436 to i64
  %438 = select i1 %436, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0)
  %439 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i64 0, i64 0), i8* %438)
  br label %440

440:                                              ; preds = %434, %431
  %441 = load i32, i32* %54, align 4
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %443, label %449

443:                                              ; preds = %440
  %444 = load i32, i32* %21, align 4
  %445 = icmp ne i32 %444, 0
  %446 = zext i1 %445 to i64
  %447 = select i1 %445, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0)
  %448 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i64 0, i64 0), i8* %447)
  br label %449

449:                                              ; preds = %443, %440
  %450 = load i32, i32* %42, align 4
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %452, label %458

452:                                              ; preds = %449
  %453 = load i32, i32* %11, align 4
  %454 = icmp ne i32 %453, 0
  %455 = zext i1 %454 to i64
  %456 = select i1 %454, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0)
  %457 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i64 0, i64 0), i8* %456)
  br label %458

458:                                              ; preds = %452, %449
  %459 = load i32, i32* %57, align 4
  %460 = icmp ne i32 %459, 0
  br i1 %460, label %461, label %467

461:                                              ; preds = %458
  %462 = load i32, i32* %24, align 4
  %463 = icmp ne i32 %462, 0
  %464 = zext i1 %463 to i64
  %465 = select i1 %463, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0)
  %466 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i64 0, i64 0), i8* %465)
  br label %467

467:                                              ; preds = %461, %458
  %468 = load i32, i32* %35, align 4
  %469 = icmp ne i32 %468, 0
  br i1 %469, label %470, label %476

470:                                              ; preds = %467
  %471 = load i32, i32* %5, align 4
  %472 = icmp ne i32 %471, 0
  %473 = zext i1 %472 to i64
  %474 = select i1 %472, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0)
  %475 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i64 0, i64 0), i8* %474)
  br label %476

476:                                              ; preds = %470, %467
  %477 = load i32, i32* %61, align 4
  %478 = icmp ne i32 %477, 0
  br i1 %478, label %479, label %485

479:                                              ; preds = %476
  %480 = load i32, i32* %28, align 4
  %481 = icmp ne i32 %480, 0
  %482 = zext i1 %481 to i64
  %483 = select i1 %481, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0)
  %484 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i64 0, i64 0), i8* %483)
  br label %485

485:                                              ; preds = %479, %476
  %486 = load i32, i32* %58, align 4
  %487 = icmp ne i32 %486, 0
  br i1 %487, label %488, label %494

488:                                              ; preds = %485
  %489 = load i32, i32* %25, align 4
  %490 = icmp ne i32 %489, 0
  %491 = zext i1 %490 to i64
  %492 = select i1 %490, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0)
  %493 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i64 0, i64 0), i8* %492)
  br label %494

494:                                              ; preds = %488, %485
  br label %495

495:                                              ; preds = %494, %419
  %496 = load i32, i32* %43, align 4
  %497 = icmp ne i32 %496, 0
  br i1 %497, label %498, label %502

498:                                              ; preds = %495
  %499 = load i64, i64* %31, align 8
  %500 = call i8* @format_timeslots(i64 %499)
  %501 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i64 0, i64 0), i8* %500)
  br label %502

502:                                              ; preds = %498, %495
  %503 = load i32, i32* %44, align 4
  %504 = icmp ne i32 %503, 0
  br i1 %504, label %505, label %509

505:                                              ; preds = %502
  %506 = load i64, i64* %32, align 8
  %507 = call i8* @format_timeslots(i64 %506)
  %508 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.47, i64 0, i64 0), i8* %507)
  br label %509

509:                                              ; preds = %505, %502
  %510 = load i32, i32* %46, align 4
  %511 = icmp ne i32 %510, 0
  br i1 %511, label %512, label %517

512:                                              ; preds = %509
  %513 = load i32, i32* %14, align 4
  %514 = sitofp i32 %513 to double
  %515 = fdiv double %514, 1.000000e+01
  %516 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.48, i64 0, i64 0), double %515)
  br label %517

517:                                              ; preds = %512, %509
  %518 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.49, i64 0, i64 0))
  ret void
}

declare dso_local i64 @ioctl(i32, i32, ...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @format_timeslots(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
