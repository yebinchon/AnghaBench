; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_proto.c_fast_xmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_proto.c_fast_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }
%struct.recvbuf = type { i64, i32, %struct.TYPE_4__*, i32, %struct.pkt }
%struct.TYPE_4__ = type { i32, i32 }
%struct.pkt = type { i32*, i32, i32, i32, i32, i32, i8*, i8*, i32, i8*, i32, i8* }

@INT_MCASTOPEN = common dso_local global i32 0, align 4
@RES_KOD = common dso_local global i32 0, align 4
@sys_kodsent = common dso_local global i32 0, align 4
@LEAP_NOTINSYNC = common dso_local global i32 0, align 4
@STRATUM_PKT_UNSPEC = common dso_local global i32 0, align 4
@ntp_minpoll = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"RATE\00", align 1
@xmt_leap = common dso_local global i32 0, align 4
@sys_stratum = common dso_local global i32 0, align 4
@sys_precision = common dso_local global i32 0, align 4
@sys_refid = common dso_local global i32 0, align 4
@sys_rootdelay = common dso_local global i32 0, align 4
@sys_rootdisp = common dso_local global i32 0, align 4
@sys_reftime = common dso_local global i32 0, align 4
@LEN_PKT_NOMAC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"fast_xmit: at %ld %s->%s mode %d len %lu\0A\00", align 1
@current_time = common dso_local global i32 0, align 4
@sys_authdelay = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"fast_xmit: at %ld %s->%s mode %d keyid %08x len %lu\0A\00", align 1
@CRYPTO_RESP = common dso_local global i32 0, align 4
@MAX_MAC_LEN = common dso_local global i64 0, align 8
@NTP_MAXKEY = common dso_local global i64 0, align 8
@RES_MSSNTP = common dso_local global i32 0, align 4
@leap_smear = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@sys_private = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.recvbuf*, i32, i64, i32)* @fast_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fast_xmit(%struct.recvbuf* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.recvbuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pkt, align 8
  %10 = alloca %struct.pkt*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.recvbuf* %0, %struct.recvbuf** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.recvbuf*, %struct.recvbuf** %5, align 8
  %15 = getelementptr inbounds %struct.recvbuf, %struct.recvbuf* %14, i32 0, i32 4
  store %struct.pkt* %15, %struct.pkt** %10, align 8
  %16 = load %struct.recvbuf*, %struct.recvbuf** %5, align 8
  %17 = getelementptr inbounds %struct.recvbuf, %struct.recvbuf* %16, i32 0, i32 2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @INT_MCASTOPEN, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %4
  %25 = load %struct.recvbuf*, %struct.recvbuf** %5, align 8
  %26 = getelementptr inbounds %struct.recvbuf, %struct.recvbuf* %25, i32 0, i32 1
  %27 = call %struct.TYPE_4__* @findinterface(i32* %26)
  %28 = load %struct.recvbuf*, %struct.recvbuf** %5, align 8
  %29 = getelementptr inbounds %struct.recvbuf, %struct.recvbuf* %28, i32 0, i32 2
  store %struct.TYPE_4__* %27, %struct.TYPE_4__** %29, align 8
  br label %30

30:                                               ; preds = %24, %4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @RES_KOD, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %84

35:                                               ; preds = %30
  %36 = load i32, i32* @sys_kodsent, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* @sys_kodsent, align 4
  %38 = load i32, i32* @LEAP_NOTINSYNC, align 4
  %39 = load %struct.pkt*, %struct.pkt** %10, align 8
  %40 = getelementptr inbounds %struct.pkt, %struct.pkt* %39, i32 0, i32 11
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @PKT_VERSION(i8* %41)
  %43 = load i32, i32* %6, align 4
  %44 = call i8* @PKT_LI_VN_MODE(i32 %38, i32 %42, i32 %43)
  %45 = getelementptr inbounds %struct.pkt, %struct.pkt* %9, i32 0, i32 11
  store i8* %44, i8** %45, align 8
  %46 = load i32, i32* @STRATUM_PKT_UNSPEC, align 4
  %47 = getelementptr inbounds %struct.pkt, %struct.pkt* %9, i32 0, i32 10
  store i32 %46, i32* %47, align 8
  %48 = load %struct.pkt*, %struct.pkt** %10, align 8
  %49 = getelementptr inbounds %struct.pkt, %struct.pkt* %48, i32 0, i32 9
  %50 = load i8*, i8** %49, align 8
  %51 = load i32, i32* @ntp_minpoll, align 4
  %52 = call i8* @max(i8* %50, i32 %51)
  %53 = getelementptr inbounds %struct.pkt, %struct.pkt* %9, i32 0, i32 9
  store i8* %52, i8** %53, align 8
  %54 = load %struct.pkt*, %struct.pkt** %10, align 8
  %55 = getelementptr inbounds %struct.pkt, %struct.pkt* %54, i32 0, i32 8
  %56 = load i32, i32* %55, align 8
  %57 = getelementptr inbounds %struct.pkt, %struct.pkt* %9, i32 0, i32 8
  store i32 %56, i32* %57, align 8
  %58 = getelementptr inbounds %struct.pkt, %struct.pkt* %9, i32 0, i32 5
  %59 = call i32 @memcpy(i32* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %60 = load %struct.pkt*, %struct.pkt** %10, align 8
  %61 = getelementptr inbounds %struct.pkt, %struct.pkt* %60, i32 0, i32 7
  %62 = load i8*, i8** %61, align 8
  %63 = getelementptr inbounds %struct.pkt, %struct.pkt* %9, i32 0, i32 7
  store i8* %62, i8** %63, align 8
  %64 = load %struct.pkt*, %struct.pkt** %10, align 8
  %65 = getelementptr inbounds %struct.pkt, %struct.pkt* %64, i32 0, i32 6
  %66 = load i8*, i8** %65, align 8
  %67 = getelementptr inbounds %struct.pkt, %struct.pkt* %9, i32 0, i32 6
  store i8* %66, i8** %67, align 8
  %68 = load %struct.pkt*, %struct.pkt** %10, align 8
  %69 = getelementptr inbounds %struct.pkt, %struct.pkt* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.pkt, %struct.pkt* %9, i32 0, i32 4
  store i32 %70, i32* %71, align 4
  %72 = load %struct.pkt*, %struct.pkt** %10, align 8
  %73 = getelementptr inbounds %struct.pkt, %struct.pkt* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = getelementptr inbounds %struct.pkt, %struct.pkt* %9, i32 0, i32 3
  store i32 %74, i32* %75, align 8
  %76 = load %struct.pkt*, %struct.pkt** %10, align 8
  %77 = getelementptr inbounds %struct.pkt, %struct.pkt* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = getelementptr inbounds %struct.pkt, %struct.pkt* %9, i32 0, i32 2
  store i32 %78, i32* %79, align 4
  %80 = load %struct.pkt*, %struct.pkt** %10, align 8
  %81 = getelementptr inbounds %struct.pkt, %struct.pkt* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = getelementptr inbounds %struct.pkt, %struct.pkt* %9, i32 0, i32 1
  store i32 %82, i32* %83, align 8
  br label %127

84:                                               ; preds = %30
  %85 = load i32, i32* @xmt_leap, align 4
  %86 = load %struct.pkt*, %struct.pkt** %10, align 8
  %87 = getelementptr inbounds %struct.pkt, %struct.pkt* %86, i32 0, i32 11
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @PKT_VERSION(i8* %88)
  %90 = load i32, i32* %6, align 4
  %91 = call i8* @PKT_LI_VN_MODE(i32 %85, i32 %89, i32 %90)
  %92 = getelementptr inbounds %struct.pkt, %struct.pkt* %9, i32 0, i32 11
  store i8* %91, i8** %92, align 8
  %93 = load i32, i32* @sys_stratum, align 4
  %94 = call i32 @STRATUM_TO_PKT(i32 %93)
  %95 = getelementptr inbounds %struct.pkt, %struct.pkt* %9, i32 0, i32 10
  store i32 %94, i32* %95, align 8
  %96 = load %struct.pkt*, %struct.pkt** %10, align 8
  %97 = getelementptr inbounds %struct.pkt, %struct.pkt* %96, i32 0, i32 9
  %98 = load i8*, i8** %97, align 8
  %99 = load i32, i32* @ntp_minpoll, align 4
  %100 = call i8* @max(i8* %98, i32 %99)
  %101 = getelementptr inbounds %struct.pkt, %struct.pkt* %9, i32 0, i32 9
  store i8* %100, i8** %101, align 8
  %102 = load i32, i32* @sys_precision, align 4
  %103 = getelementptr inbounds %struct.pkt, %struct.pkt* %9, i32 0, i32 8
  store i32 %102, i32* %103, align 8
  %104 = load i32, i32* @sys_refid, align 4
  %105 = getelementptr inbounds %struct.pkt, %struct.pkt* %9, i32 0, i32 5
  store i32 %104, i32* %105, align 8
  %106 = load i32, i32* @sys_rootdelay, align 4
  %107 = call i32 @DTOFP(i32 %106)
  %108 = call i8* @HTONS_FP(i32 %107)
  %109 = getelementptr inbounds %struct.pkt, %struct.pkt* %9, i32 0, i32 7
  store i8* %108, i8** %109, align 8
  %110 = load i32, i32* @sys_rootdisp, align 4
  %111 = call i32 @DTOUFP(i32 %110)
  %112 = call i8* @HTONS_FP(i32 %111)
  %113 = getelementptr inbounds %struct.pkt, %struct.pkt* %9, i32 0, i32 6
  store i8* %112, i8** %113, align 8
  %114 = getelementptr inbounds %struct.pkt, %struct.pkt* %9, i32 0, i32 4
  %115 = call i32 @HTONL_FP(i32* @sys_reftime, i32* %114)
  %116 = load %struct.pkt*, %struct.pkt** %10, align 8
  %117 = getelementptr inbounds %struct.pkt, %struct.pkt* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = getelementptr inbounds %struct.pkt, %struct.pkt* %9, i32 0, i32 3
  store i32 %118, i32* %119, align 8
  %120 = load %struct.recvbuf*, %struct.recvbuf** %5, align 8
  %121 = getelementptr inbounds %struct.recvbuf, %struct.recvbuf* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.pkt, %struct.pkt* %9, i32 0, i32 2
  %123 = call i32 @HTONL_FP(i32* %121, i32* %122)
  %124 = call i32 @get_systime(i32* %11)
  %125 = getelementptr inbounds %struct.pkt, %struct.pkt* %9, i32 0, i32 1
  %126 = call i32 @HTONL_FP(i32* %11, i32* %125)
  br label %127

127:                                              ; preds = %84, %35
  %128 = load i64, i64* @LEN_PKT_NOMAC, align 8
  store i64 %128, i64* %13, align 8
  %129 = load %struct.recvbuf*, %struct.recvbuf** %5, align 8
  %130 = getelementptr inbounds %struct.recvbuf, %struct.recvbuf* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* %13, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %157

134:                                              ; preds = %127
  %135 = load %struct.recvbuf*, %struct.recvbuf** %5, align 8
  %136 = getelementptr inbounds %struct.recvbuf, %struct.recvbuf* %135, i32 0, i32 1
  %137 = load %struct.recvbuf*, %struct.recvbuf** %5, align 8
  %138 = getelementptr inbounds %struct.recvbuf, %struct.recvbuf* %137, i32 0, i32 2
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = load i64, i64* %13, align 8
  %141 = call i32 @sendpkt(i32* %136, %struct.TYPE_4__* %139, i32 0, %struct.pkt* %9, i64 %140)
  %142 = load i32, i32* @current_time, align 4
  %143 = load %struct.recvbuf*, %struct.recvbuf** %5, align 8
  %144 = getelementptr inbounds %struct.recvbuf, %struct.recvbuf* %143, i32 0, i32 2
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 1
  %147 = call i32 @stoa(i32* %146)
  %148 = load %struct.recvbuf*, %struct.recvbuf** %5, align 8
  %149 = getelementptr inbounds %struct.recvbuf, %struct.recvbuf* %148, i32 0, i32 1
  %150 = call i32 @stoa(i32* %149)
  %151 = load i32, i32* %6, align 4
  %152 = load i64, i64* %13, align 8
  %153 = trunc i64 %152 to i32
  %154 = sext i32 %153 to i64
  %155 = inttoptr i64 %154 to i8*
  %156 = call i32 @DPRINTF(i32 1, i8* %155)
  br label %191

157:                                              ; preds = %127
  %158 = call i32 @get_systime(i32* %11)
  %159 = load i64, i64* %7, align 8
  %160 = bitcast %struct.pkt* %9 to i32*
  %161 = load i64, i64* %13, align 8
  %162 = call i64 @authencrypt(i64 %159, i32* %160, i64 %161)
  %163 = load i64, i64* %13, align 8
  %164 = add i64 %163, %162
  store i64 %164, i64* %13, align 8
  %165 = load %struct.recvbuf*, %struct.recvbuf** %5, align 8
  %166 = getelementptr inbounds %struct.recvbuf, %struct.recvbuf* %165, i32 0, i32 1
  %167 = load %struct.recvbuf*, %struct.recvbuf** %5, align 8
  %168 = getelementptr inbounds %struct.recvbuf, %struct.recvbuf* %167, i32 0, i32 2
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %168, align 8
  %170 = load i64, i64* %13, align 8
  %171 = call i32 @sendpkt(i32* %166, %struct.TYPE_4__* %169, i32 0, %struct.pkt* %9, i64 %170)
  %172 = call i32 @get_systime(i32* %12)
  %173 = call i32 @L_SUB(i32* %12, i32* %11)
  %174 = load i32, i32* %12, align 4
  store i32 %174, i32* @sys_authdelay, align 4
  %175 = load i32, i32* @current_time, align 4
  %176 = load %struct.recvbuf*, %struct.recvbuf** %5, align 8
  %177 = getelementptr inbounds %struct.recvbuf, %struct.recvbuf* %176, i32 0, i32 2
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 1
  %180 = call i32 @ntoa(i32* %179)
  %181 = load %struct.recvbuf*, %struct.recvbuf** %5, align 8
  %182 = getelementptr inbounds %struct.recvbuf, %struct.recvbuf* %181, i32 0, i32 1
  %183 = call i32 @ntoa(i32* %182)
  %184 = load i32, i32* %6, align 4
  %185 = load i64, i64* %7, align 8
  %186 = load i64, i64* %13, align 8
  %187 = trunc i64 %186 to i32
  %188 = sext i32 %187 to i64
  %189 = inttoptr i64 %188 to i8*
  %190 = call i32 @DPRINTF(i32 1, i8* %189)
  br label %191

191:                                              ; preds = %157, %134
  ret void
}

declare dso_local %struct.TYPE_4__* @findinterface(i32*) #1

declare dso_local i8* @PKT_LI_VN_MODE(i32, i32, i32) #1

declare dso_local i32 @PKT_VERSION(i8*) #1

declare dso_local i8* @max(i8*, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @STRATUM_TO_PKT(i32) #1

declare dso_local i8* @HTONS_FP(i32) #1

declare dso_local i32 @DTOFP(i32) #1

declare dso_local i32 @DTOUFP(i32) #1

declare dso_local i32 @HTONL_FP(i32*, i32*) #1

declare dso_local i32 @get_systime(i32*) #1

declare dso_local i32 @sendpkt(i32*, %struct.TYPE_4__*, i32, %struct.pkt*, i64) #1

declare dso_local i32 @DPRINTF(i32, i8*) #1

declare dso_local i32 @stoa(i32*) #1

declare dso_local i64 @authencrypt(i64, i32*, i64) #1

declare dso_local i32 @L_SUB(i32*, i32*) #1

declare dso_local i32 @ntoa(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
