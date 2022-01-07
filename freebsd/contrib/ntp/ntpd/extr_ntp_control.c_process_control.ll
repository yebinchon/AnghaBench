; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_control.c_process_control.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_control.c_process_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__, i64, i32, i32, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.ctl_proc = type { i32, i64, i32 (%struct.recvbuf*, i32)* }
%struct.recvbuf = type { i32, i32, i32, i32 }
%struct.ntp_control = type { i32, i64, %struct.TYPE_5__, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [22 x i8] c"in process_control()\0A\00", align 1
@numctlreq = common dso_local global i32 0, align 4
@rmt_addr = common dso_local global i32* null, align 8
@lcl_inter = common dso_local global i32 0, align 4
@CTL_HEADER_LEN = common dso_local global i32 0, align 4
@CTL_RESPONSE = common dso_local global i32 0, align 4
@CTL_MORE = common dso_local global i32 0, align 4
@CTL_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"invalid format in control packet\0A\00", align 1
@numctltooshort = common dso_local global i32 0, align 4
@numctlinputresp = common dso_local global i32 0, align 4
@numctlinputfrag = common dso_local global i32 0, align 4
@numctlinputerr = common dso_local global i32 0, align 4
@numctlbadoffset = common dso_local global i32 0, align 4
@res_version = common dso_local global i64 0, align 8
@NTP_VERSION = common dso_local global i64 0, align 8
@NTP_OLDVERSION = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"unknown version %d in control packet\0A\00", align 1
@numctlbadversion = common dso_local global i32 0, align 4
@sys_leap = common dso_local global i32 0, align 4
@MODE_CONTROL = common dso_local global i32 0, align 4
@rpkt = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@res_opcode = common dso_local global i32 0, align 4
@res_frags = common dso_local global i32 0, align 4
@res_offset = common dso_local global i64 0, align 8
@res_associd = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@res_async = common dso_local global i8* null, align 8
@res_authenticate = common dso_local global i8* null, align 8
@res_keyid = common dso_local global i64 0, align 8
@res_authokay = common dso_local global i8* null, align 8
@datanotbinflag = common dso_local global i8* null, align 8
@datalinelen = common dso_local global i64 0, align 8
@datasent = common dso_local global i64 0, align 8
@datapt = common dso_local global i32* null, align 8
@CTL_MAX_DATA_LEN = common dso_local global i64 0, align 8
@dataend = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [36 x i8] c"Control packet length %d unrounded\0A\00", align 1
@CERR_BADFMT = common dso_local global i32 0, align 4
@numctldatatooshort = common dso_local global i32 0, align 4
@MIN_MAC_LEN = common dso_local global i64 0, align 8
@MAX_MAC_LEN = common dso_local global i64 0, align 8
@sys_authenticate = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [71 x i8] c"recv_len %d, properlen %d, wants auth with keyid %08x, MAC length=%zu\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"invalid keyid %08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"authenticated okay\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"authentication failed\0A\00", align 1
@reqpt = common dso_local global i8* null, align 8
@reqend = common dso_local global i8* null, align 8
@control_codes = common dso_local global %struct.ctl_proc* null, align 8
@NO_REQUEST = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [34 x i8] c"opcode %d, found command handler\0A\00", align 1
@AUTH = common dso_local global i64 0, align 8
@ctl_auth_keyid = common dso_local global i64 0, align 8
@CERR_PERMISSION = common dso_local global i32 0, align 4
@numctlbadop = common dso_local global i32 0, align 4
@CERR_BADOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_control(%struct.recvbuf* %0, i32 %1) #0 {
  %3 = alloca %struct.recvbuf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ntp_control*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ctl_proc*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.recvbuf* %0, %struct.recvbuf** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = call i32 @DPRINTF(i32 3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @numctlreq, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* @numctlreq, align 4
  %15 = load %struct.recvbuf*, %struct.recvbuf** %3, align 8
  %16 = getelementptr inbounds %struct.recvbuf, %struct.recvbuf* %15, i32 0, i32 1
  store i32* %16, i32** @rmt_addr, align 8
  %17 = load %struct.recvbuf*, %struct.recvbuf** %3, align 8
  %18 = getelementptr inbounds %struct.recvbuf, %struct.recvbuf* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* @lcl_inter, align 4
  %20 = load %struct.recvbuf*, %struct.recvbuf** %3, align 8
  %21 = getelementptr inbounds %struct.recvbuf, %struct.recvbuf* %20, i32 0, i32 2
  %22 = bitcast i32* %21 to %struct.ntp_control*
  store %struct.ntp_control* %22, %struct.ntp_control** %5, align 8
  %23 = load %struct.recvbuf*, %struct.recvbuf** %3, align 8
  %24 = getelementptr inbounds %struct.recvbuf, %struct.recvbuf* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @CTL_HEADER_LEN, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %44, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* @CTL_RESPONSE, align 4
  %30 = load i32, i32* @CTL_MORE, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @CTL_ERROR, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.ntp_control*, %struct.ntp_control** %5, align 8
  %35 = getelementptr inbounds %struct.ntp_control, %struct.ntp_control* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %33, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %28
  %40 = load %struct.ntp_control*, %struct.ntp_control** %5, align 8
  %41 = getelementptr inbounds %struct.ntp_control, %struct.ntp_control* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %93

44:                                               ; preds = %39, %28, %2
  %45 = call i32 @DPRINTF(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %46 = load %struct.recvbuf*, %struct.recvbuf** %3, align 8
  %47 = getelementptr inbounds %struct.recvbuf, %struct.recvbuf* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @CTL_HEADER_LEN, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load i32, i32* @numctltooshort, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* @numctltooshort, align 4
  br label %54

54:                                               ; preds = %51, %44
  %55 = load i32, i32* @CTL_RESPONSE, align 4
  %56 = load %struct.ntp_control*, %struct.ntp_control** %5, align 8
  %57 = getelementptr inbounds %struct.ntp_control, %struct.ntp_control* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = and i32 %55, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load i32, i32* @numctlinputresp, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* @numctlinputresp, align 4
  br label %64

64:                                               ; preds = %61, %54
  %65 = load i32, i32* @CTL_MORE, align 4
  %66 = load %struct.ntp_control*, %struct.ntp_control** %5, align 8
  %67 = getelementptr inbounds %struct.ntp_control, %struct.ntp_control* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = and i32 %65, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %64
  %72 = load i32, i32* @numctlinputfrag, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* @numctlinputfrag, align 4
  br label %74

74:                                               ; preds = %71, %64
  %75 = load i32, i32* @CTL_ERROR, align 4
  %76 = load %struct.ntp_control*, %struct.ntp_control** %5, align 8
  %77 = getelementptr inbounds %struct.ntp_control, %struct.ntp_control* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = and i32 %75, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %74
  %82 = load i32, i32* @numctlinputerr, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* @numctlinputerr, align 4
  br label %84

84:                                               ; preds = %81, %74
  %85 = load %struct.ntp_control*, %struct.ntp_control** %5, align 8
  %86 = getelementptr inbounds %struct.ntp_control, %struct.ntp_control* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load i32, i32* @numctlbadoffset, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* @numctlbadoffset, align 4
  br label %92

92:                                               ; preds = %89, %84
  br label %310

93:                                               ; preds = %39
  %94 = load %struct.ntp_control*, %struct.ntp_control** %5, align 8
  %95 = getelementptr inbounds %struct.ntp_control, %struct.ntp_control* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @PKT_VERSION(i32 %96)
  store i64 %97, i64* @res_version, align 8
  %98 = load i64, i64* @res_version, align 8
  %99 = load i64, i64* @NTP_VERSION, align 8
  %100 = icmp sgt i64 %98, %99
  br i1 %100, label %105, label %101

101:                                              ; preds = %93
  %102 = load i64, i64* @res_version, align 8
  %103 = load i64, i64* @NTP_OLDVERSION, align 8
  %104 = icmp slt i64 %102, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %101, %93
  %106 = load i64, i64* @res_version, align 8
  %107 = inttoptr i64 %106 to i8*
  %108 = call i32 @DPRINTF(i32 1, i8* %107)
  %109 = load i32, i32* @numctlbadversion, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* @numctlbadversion, align 4
  br label %310

111:                                              ; preds = %101
  %112 = load i32, i32* @sys_leap, align 4
  %113 = load i64, i64* @res_version, align 8
  %114 = load i32, i32* @MODE_CONTROL, align 4
  %115 = call i32 @PKT_LI_VN_MODE(i32 %112, i64 %113, i32 %114)
  store i32 %115, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @rpkt, i32 0, i32 4), align 8
  %116 = load %struct.ntp_control*, %struct.ntp_control** %5, align 8
  %117 = getelementptr inbounds %struct.ntp_control, %struct.ntp_control* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  store i32 %118, i32* @res_opcode, align 4
  %119 = load %struct.ntp_control*, %struct.ntp_control** %5, align 8
  %120 = getelementptr inbounds %struct.ntp_control, %struct.ntp_control* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 8
  store i32 %121, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @rpkt, i32 0, i32 3), align 4
  %122 = load %struct.ntp_control*, %struct.ntp_control** %5, align 8
  %123 = getelementptr inbounds %struct.ntp_control, %struct.ntp_control* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @rpkt, i32 0, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @rpkt, i32 0, i32 1), align 8
  store i32 1, i32* @res_frags, align 4
  store i64 0, i64* @res_offset, align 8
  %125 = load %struct.ntp_control*, %struct.ntp_control** %5, align 8
  %126 = getelementptr inbounds %struct.ntp_control, %struct.ntp_control* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @htons(i32 %127)
  store i32 %128, i32* @res_associd, align 4
  %129 = load i8*, i8** @FALSE, align 8
  store i8* %129, i8** @res_async, align 8
  %130 = load i8*, i8** @FALSE, align 8
  store i8* %130, i8** @res_authenticate, align 8
  store i64 0, i64* @res_keyid, align 8
  %131 = load i8*, i8** @FALSE, align 8
  store i8* %131, i8** @res_authokay, align 8
  %132 = load %struct.ntp_control*, %struct.ntp_control** %5, align 8
  %133 = getelementptr inbounds %struct.ntp_control, %struct.ntp_control* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = call i64 @ntohs(i32 %134)
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %6, align 4
  %137 = load i8*, i8** @FALSE, align 8
  store i8* %137, i8** @datanotbinflag, align 8
  store i64 0, i64* @datalinelen, align 8
  store i64 0, i64* @datasent, align 8
  %138 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @rpkt, i32 0, i32 0, i32 0), align 8
  store i32* %138, i32** @datapt, align 8
  %139 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @rpkt, i32 0, i32 0, i32 0), align 8
  %140 = load i64, i64* @CTL_MAX_DATA_LEN, align 8
  %141 = getelementptr inbounds i32, i32* %139, i64 %140
  store i32* %141, i32** @dataend, align 8
  %142 = load %struct.recvbuf*, %struct.recvbuf** %3, align 8
  %143 = getelementptr inbounds %struct.recvbuf, %struct.recvbuf* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = and i32 %144, 3
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %111
  %148 = load %struct.recvbuf*, %struct.recvbuf** %3, align 8
  %149 = getelementptr inbounds %struct.recvbuf, %struct.recvbuf* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = sext i32 %150 to i64
  %152 = inttoptr i64 %151 to i8*
  %153 = call i32 @DPRINTF(i32 3, i8* %152)
  br label %154

154:                                              ; preds = %147, %111
  %155 = load %struct.recvbuf*, %struct.recvbuf** %3, align 8
  %156 = getelementptr inbounds %struct.recvbuf, %struct.recvbuf* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @CTL_HEADER_LEN, align 4
  %159 = sub nsw i32 %157, %158
  store i32 %159, i32* %7, align 4
  %160 = load i32, i32* %7, align 4
  %161 = load i32, i32* %6, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %169, label %163

163:                                              ; preds = %154
  %164 = load %struct.recvbuf*, %struct.recvbuf** %3, align 8
  %165 = getelementptr inbounds %struct.recvbuf, %struct.recvbuf* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = and i32 %166, 3
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %163, %154
  %170 = load i32, i32* @CERR_BADFMT, align 4
  %171 = call i32 @ctl_error(i32 %170)
  %172 = load i32, i32* @numctldatatooshort, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* @numctldatatooshort, align 4
  br label %310

174:                                              ; preds = %163
  %175 = load i32, i32* %6, align 4
  %176 = load i32, i32* @CTL_HEADER_LEN, align 4
  %177 = add nsw i32 %175, %176
  store i32 %177, i32* %10, align 4
  %178 = load i32, i32* %10, align 4
  %179 = add nsw i32 %178, 7
  %180 = and i32 %179, -8
  store i32 %180, i32* %10, align 4
  %181 = load %struct.recvbuf*, %struct.recvbuf** %3, align 8
  %182 = getelementptr inbounds %struct.recvbuf, %struct.recvbuf* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %10, align 4
  %185 = sub nsw i32 %183, %184
  %186 = sext i32 %185 to i64
  store i64 %186, i64* %11, align 8
  %187 = load %struct.recvbuf*, %struct.recvbuf** %3, align 8
  %188 = getelementptr inbounds %struct.recvbuf, %struct.recvbuf* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = and i32 %189, 3
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %251

192:                                              ; preds = %174
  %193 = load i64, i64* %11, align 8
  %194 = load i64, i64* @MIN_MAC_LEN, align 8
  %195 = icmp uge i64 %193, %194
  br i1 %195, label %196, label %251

196:                                              ; preds = %192
  %197 = load i64, i64* %11, align 8
  %198 = load i64, i64* @MAX_MAC_LEN, align 8
  %199 = icmp ule i64 %197, %198
  br i1 %199, label %200, label %251

200:                                              ; preds = %196
  %201 = load i64, i64* @sys_authenticate, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %251

203:                                              ; preds = %200
  %204 = load i8*, i8** @TRUE, align 8
  store i8* %204, i8** @res_authenticate, align 8
  %205 = load %struct.ntp_control*, %struct.ntp_control** %5, align 8
  %206 = bitcast %struct.ntp_control* %205 to i8*
  %207 = load i32, i32* %10, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i8, i8* %206, i64 %208
  %210 = bitcast i8* %209 to i32*
  store i32* %210, i32** %9, align 8
  %211 = load i32*, i32** %9, align 8
  %212 = load i32, i32* %211, align 4
  %213 = call i64 @ntohl(i32 %212)
  store i64 %213, i64* @res_keyid, align 8
  %214 = load %struct.recvbuf*, %struct.recvbuf** %3, align 8
  %215 = getelementptr inbounds %struct.recvbuf, %struct.recvbuf* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* %10, align 4
  %218 = load i64, i64* @res_keyid, align 8
  %219 = load i64, i64* %11, align 8
  %220 = inttoptr i64 %219 to i8*
  %221 = call i32 @DPRINTF(i32 3, i8* %220)
  %222 = load i64, i64* @res_keyid, align 8
  %223 = load %struct.recvbuf*, %struct.recvbuf** %3, align 8
  %224 = getelementptr inbounds %struct.recvbuf, %struct.recvbuf* %223, i32 0, i32 1
  %225 = call i32 @authistrustedip(i64 %222, i32* %224)
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %231, label %227

227:                                              ; preds = %203
  %228 = load i64, i64* @res_keyid, align 8
  %229 = inttoptr i64 %228 to i8*
  %230 = call i32 @DPRINTF(i32 3, i8* %229)
  br label %250

231:                                              ; preds = %203
  %232 = load i64, i64* @res_keyid, align 8
  %233 = load %struct.ntp_control*, %struct.ntp_control** %5, align 8
  %234 = bitcast %struct.ntp_control* %233 to i32*
  %235 = load %struct.recvbuf*, %struct.recvbuf** %3, align 8
  %236 = getelementptr inbounds %struct.recvbuf, %struct.recvbuf* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = sext i32 %237 to i64
  %239 = load i64, i64* %11, align 8
  %240 = sub i64 %238, %239
  %241 = load i64, i64* %11, align 8
  %242 = call i64 @authdecrypt(i64 %232, i32* %234, i64 %240, i64 %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %247

244:                                              ; preds = %231
  %245 = load i8*, i8** @TRUE, align 8
  store i8* %245, i8** @res_authokay, align 8
  %246 = call i32 @DPRINTF(i32 3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  br label %249

247:                                              ; preds = %231
  store i64 0, i64* @res_keyid, align 8
  %248 = call i32 @DPRINTF(i32 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  br label %249

249:                                              ; preds = %247, %244
  br label %250

250:                                              ; preds = %249, %227
  br label %251

251:                                              ; preds = %250, %200, %196, %192, %174
  %252 = load %struct.ntp_control*, %struct.ntp_control** %5, align 8
  %253 = getelementptr inbounds %struct.ntp_control, %struct.ntp_control* %252, i32 0, i32 2
  %254 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = inttoptr i64 %255 to i8*
  store i8* %256, i8** @reqpt, align 8
  %257 = load i8*, i8** @reqpt, align 8
  %258 = load i32, i32* %6, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i8, i8* %257, i64 %259
  store i8* %260, i8** @reqend, align 8
  %261 = load %struct.ctl_proc*, %struct.ctl_proc** @control_codes, align 8
  store %struct.ctl_proc* %261, %struct.ctl_proc** %8, align 8
  br label %262

262:                                              ; preds = %302, %251
  %263 = load %struct.ctl_proc*, %struct.ctl_proc** %8, align 8
  %264 = getelementptr inbounds %struct.ctl_proc, %struct.ctl_proc* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = load i32, i32* @NO_REQUEST, align 4
  %267 = icmp ne i32 %265, %266
  br i1 %267, label %268, label %305

268:                                              ; preds = %262
  %269 = load %struct.ctl_proc*, %struct.ctl_proc** %8, align 8
  %270 = getelementptr inbounds %struct.ctl_proc, %struct.ctl_proc* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = load i32, i32* @res_opcode, align 4
  %273 = icmp eq i32 %271, %272
  br i1 %273, label %274, label %301

274:                                              ; preds = %268
  %275 = load i32, i32* @res_opcode, align 4
  %276 = sext i32 %275 to i64
  %277 = inttoptr i64 %276 to i8*
  %278 = call i32 @DPRINTF(i32 3, i8* %277)
  %279 = load %struct.ctl_proc*, %struct.ctl_proc** %8, align 8
  %280 = getelementptr inbounds %struct.ctl_proc, %struct.ctl_proc* %279, i32 0, i32 1
  %281 = load i64, i64* %280, align 8
  %282 = load i64, i64* @AUTH, align 8
  %283 = icmp eq i64 %281, %282
  br i1 %283, label %284, label %294

284:                                              ; preds = %274
  %285 = load i8*, i8** @res_authokay, align 8
  %286 = icmp ne i8* %285, null
  br i1 %286, label %287, label %291

287:                                              ; preds = %284
  %288 = load i64, i64* @res_keyid, align 8
  %289 = load i64, i64* @ctl_auth_keyid, align 8
  %290 = icmp ne i64 %288, %289
  br i1 %290, label %291, label %294

291:                                              ; preds = %287, %284
  %292 = load i32, i32* @CERR_PERMISSION, align 4
  %293 = call i32 @ctl_error(i32 %292)
  br label %310

294:                                              ; preds = %287, %274
  %295 = load %struct.ctl_proc*, %struct.ctl_proc** %8, align 8
  %296 = getelementptr inbounds %struct.ctl_proc, %struct.ctl_proc* %295, i32 0, i32 2
  %297 = load i32 (%struct.recvbuf*, i32)*, i32 (%struct.recvbuf*, i32)** %296, align 8
  %298 = load %struct.recvbuf*, %struct.recvbuf** %3, align 8
  %299 = load i32, i32* %4, align 4
  %300 = call i32 %297(%struct.recvbuf* %298, i32 %299)
  br label %310

301:                                              ; preds = %268
  br label %302

302:                                              ; preds = %301
  %303 = load %struct.ctl_proc*, %struct.ctl_proc** %8, align 8
  %304 = getelementptr inbounds %struct.ctl_proc, %struct.ctl_proc* %303, i32 1
  store %struct.ctl_proc* %304, %struct.ctl_proc** %8, align 8
  br label %262

305:                                              ; preds = %262
  %306 = load i32, i32* @numctlbadop, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* @numctlbadop, align 4
  %308 = load i32, i32* @CERR_BADOP, align 4
  %309 = call i32 @ctl_error(i32 %308)
  br label %310

310:                                              ; preds = %305, %294, %291, %169, %105, %92
  ret void
}

declare dso_local i32 @DPRINTF(i32, i8*) #1

declare dso_local i64 @PKT_VERSION(i32) #1

declare dso_local i32 @PKT_LI_VN_MODE(i32, i64, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @ctl_error(i32) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @authistrustedip(i64, i32*) #1

declare dso_local i64 @authdecrypt(i64, i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
