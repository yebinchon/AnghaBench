; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-lldp.c_lldp_private_8021_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-lldp.c_lldp_private_8021_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"\0A\09  %s Subtype (%u)\00", align 1
@lldp_8021_subtype_values = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"\0A\09    port vlan id (PVID): %u\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"\0A\09    port and protocol vlan id (PPVID): %u, flags [%s] (0x%02x)\00", align 1
@lldp_8021_port_protocol_id_values = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"\0A\09    vlan id (VID): %u\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"\0A\09    vlan name: \00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"\0A\09    protocol identity: \00", align 1
@LLDP_PRIVATE_8021_SUBTYPE_CONGESTION_NOTIFICATION_LENGTH = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [34 x i8] c"\0A\09    Pre-Priority CNPV Indicator\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"\0A\09     Priority : 0  1  2  3  4  5  6  7\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"\0A\09     Value    : \00", align 1
@NO_OF_BITS = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [6 x i8] c"%-2d \00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"\0A\09    Pre-Priority Ready Indicator\00", align 1
@LLDP_PRIVATE_8021_SUBTYPE_ETS_CONFIGURATION_LENGTH = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [45 x i8] c"\0A\09    Willing:%d, CBS:%d, RES:%d, Max TCs:%d\00", align 1
@LLDP_PRIVATE_8021_SUBTYPE_ETS_RECOMMENDATION_LENGTH = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [14 x i8] c"\0A\09    RES: %d\00", align 1
@LLDP_PRIVATE_8021_SUBTYPE_PFC_CONFIGURATION_LENGTH = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [49 x i8] c"\0A\09    Willing: %d, MBC: %d, RES: %d, PFC cap:%d \00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"\0A\09    PFC Enable\00", align 1
@LLDP_PRIVATE_8021_SUBTYPE_APPLICATION_PRIORITY_MIN_LENGTH = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [33 x i8] c"\0A\09    Application Priority Table\00", align 1
@.str.18 = private unnamed_addr constant [56 x i8] c"\0A\09      Priority: %u, RES: %u, Sel: %u, Protocol ID: %u\00", align 1
@LLDP_PRIVATE_8021_SUBTYPE_EVB_LENGTH = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [24 x i8] c"\0A\09    EVB Bridge Status\00", align 1
@.str.20 = private unnamed_addr constant [48 x i8] c"\0A\09      RES: %d, BGID: %d, RRCAP: %d, RRCTR: %d\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"\0A\09    EVB Station Status\00", align 1
@.str.22 = private unnamed_addr constant [48 x i8] c"\0A\09      RES: %d, SGID: %d, RRREQ: %d,RRSTAT: %d\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"\0A\09    R: %d, RTE: %d, \00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"EVB Mode: %s [%d]\00", align 1
@lldp_evb_mode_values = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [25 x i8] c"\0A\09    ROL: %d, RWD: %d, \00", align 1
@.str.26 = private unnamed_addr constant [26 x i8] c"RES: %d, ROL: %d, RKA: %d\00", align 1
@LLDP_PRIVATE_8021_SUBTYPE_CDCP_MIN_LENGTH = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [36 x i8] c"\0A\09    Role: %d, RES: %d, Scomp: %d \00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"ChnCap: %d\00", align 1
@.str.29 = private unnamed_addr constant [25 x i8] c"\0A\09    SCID: %d, SVID: %d\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @lldp_private_8021_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lldp_private_8021_print(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 4
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %9, align 4
  store i32 %17, i32* %4, align 4
  br label %511

18:                                               ; preds = %3
  %19 = load i32*, i32** %6, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 3
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* @lldp_8021_subtype_values, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @tok2str(i32 %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i32*
  %29 = call i32 @ND_PRINT(i32* %28)
  %30 = load i32, i32* %8, align 4
  switch i32 %30, label %507 [
    i32 131, label %31
    i32 129, label %44
    i32 128, label %65
    i32 130, label %100
    i32 136, label %123
    i32 135, label %182
    i32 134, label %218
    i32 132, label %244
    i32 138, label %294
    i32 133, label %355
    i32 137, label %447
  ]

31:                                               ; preds = %18
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 6
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %4, align 4
  br label %511

36:                                               ; preds = %31
  %37 = load i32*, i32** %5, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 4
  %40 = call i32 @EXTRACT_16BITS(i32* %39)
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to i32*
  %43 = call i32 @ND_PRINT(i32* %42)
  br label %509

44:                                               ; preds = %18
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %45, 7
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %4, align 4
  br label %511

49:                                               ; preds = %44
  %50 = load i32*, i32** %5, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 5
  %53 = call i32 @EXTRACT_16BITS(i32* %52)
  %54 = load i32, i32* @lldp_8021_port_protocol_id_values, align 4
  %55 = load i32*, i32** %6, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 4
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @bittok2str(i32 %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %57)
  %59 = load i32*, i32** %6, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 4
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = inttoptr i64 %62 to i32*
  %64 = call i32 @ND_PRINT(i32* %63)
  br label %509

65:                                               ; preds = %18
  %66 = load i32, i32* %7, align 4
  %67 = icmp slt i32 %66, 6
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %4, align 4
  br label %511

70:                                               ; preds = %65
  %71 = load i32*, i32** %5, align 8
  %72 = load i32*, i32** %6, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 4
  %74 = call i32 @EXTRACT_16BITS(i32* %73)
  %75 = sext i32 %74 to i64
  %76 = inttoptr i64 %75 to i32*
  %77 = call i32 @ND_PRINT(i32* %76)
  %78 = load i32, i32* %7, align 4
  %79 = icmp slt i32 %78, 7
  br i1 %79, label %80, label %82

80:                                               ; preds = %70
  %81 = load i32, i32* %9, align 4
  store i32 %81, i32* %4, align 4
  br label %511

82:                                               ; preds = %70
  %83 = load i32*, i32** %6, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 6
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 7, %87
  %89 = icmp slt i32 %86, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %82
  %91 = load i32, i32* %9, align 4
  store i32 %91, i32* %4, align 4
  br label %511

92:                                               ; preds = %82
  %93 = load i32*, i32** %5, align 8
  %94 = call i32 @ND_PRINT(i32* bitcast ([18 x i8]* @.str.6 to i32*))
  %95 = load i32*, i32** %5, align 8
  %96 = load i32*, i32** %6, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 7
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @safeputs(i32* %95, i32* %97, i32 %98)
  br label %509

100:                                              ; preds = %18
  %101 = load i32, i32* %7, align 4
  %102 = icmp slt i32 %101, 5
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = load i32, i32* %9, align 4
  store i32 %104, i32* %4, align 4
  br label %511

105:                                              ; preds = %100
  %106 = load i32*, i32** %6, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 4
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* %10, align 4
  %111 = add nsw i32 5, %110
  %112 = icmp slt i32 %109, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %105
  %114 = load i32, i32* %9, align 4
  store i32 %114, i32* %4, align 4
  br label %511

115:                                              ; preds = %105
  %116 = load i32*, i32** %5, align 8
  %117 = call i32 @ND_PRINT(i32* bitcast ([26 x i8]* @.str.7 to i32*))
  %118 = load i32*, i32** %5, align 8
  %119 = load i32*, i32** %6, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 5
  %121 = load i32, i32* %10, align 4
  %122 = call i32 @safeputs(i32* %118, i32* %120, i32 %121)
  br label %509

123:                                              ; preds = %18
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* @LLDP_PRIVATE_8021_SUBTYPE_CONGESTION_NOTIFICATION_LENGTH, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = load i32, i32* %9, align 4
  store i32 %128, i32* %4, align 4
  br label %511

129:                                              ; preds = %123
  %130 = load i32*, i32** %6, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 4
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %11, align 4
  %133 = load i32*, i32** %5, align 8
  %134 = call i32 @ND_PRINT(i32* bitcast ([34 x i8]* @.str.8 to i32*))
  %135 = load i32*, i32** %5, align 8
  %136 = call i32 @ND_PRINT(i32* bitcast ([41 x i8]* @.str.9 to i32*))
  %137 = load i32*, i32** %5, align 8
  %138 = call i32 @ND_PRINT(i32* bitcast ([19 x i8]* @.str.10 to i32*))
  store i32 0, i32* %12, align 4
  br label %139

139:                                              ; preds = %152, %129
  %140 = load i32, i32* %12, align 4
  %141 = load i32, i32* @NO_OF_BITS, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %155

143:                                              ; preds = %139
  %144 = load i32*, i32** %5, align 8
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* %12, align 4
  %147 = ashr i32 %145, %146
  %148 = and i32 %147, 1
  %149 = sext i32 %148 to i64
  %150 = inttoptr i64 %149 to i32*
  %151 = call i32 @ND_PRINT(i32* %150)
  br label %152

152:                                              ; preds = %143
  %153 = load i32, i32* %12, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %12, align 4
  br label %139

155:                                              ; preds = %139
  %156 = load i32*, i32** %6, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 5
  %158 = load i32, i32* %157, align 4
  store i32 %158, i32* %11, align 4
  %159 = load i32*, i32** %5, align 8
  %160 = call i32 @ND_PRINT(i32* bitcast ([35 x i8]* @.str.12 to i32*))
  %161 = load i32*, i32** %5, align 8
  %162 = call i32 @ND_PRINT(i32* bitcast ([41 x i8]* @.str.9 to i32*))
  %163 = load i32*, i32** %5, align 8
  %164 = call i32 @ND_PRINT(i32* bitcast ([19 x i8]* @.str.10 to i32*))
  store i32 0, i32* %12, align 4
  br label %165

165:                                              ; preds = %178, %155
  %166 = load i32, i32* %12, align 4
  %167 = load i32, i32* @NO_OF_BITS, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %169, label %181

169:                                              ; preds = %165
  %170 = load i32*, i32** %5, align 8
  %171 = load i32, i32* %11, align 4
  %172 = load i32, i32* %12, align 4
  %173 = ashr i32 %171, %172
  %174 = and i32 %173, 1
  %175 = sext i32 %174 to i64
  %176 = inttoptr i64 %175 to i32*
  %177 = call i32 @ND_PRINT(i32* %176)
  br label %178

178:                                              ; preds = %169
  %179 = load i32, i32* %12, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %12, align 4
  br label %165

181:                                              ; preds = %165
  br label %509

182:                                              ; preds = %18
  %183 = load i32, i32* %7, align 4
  %184 = load i32, i32* @LLDP_PRIVATE_8021_SUBTYPE_ETS_CONFIGURATION_LENGTH, align 4
  %185 = icmp slt i32 %183, %184
  br i1 %185, label %186, label %188

186:                                              ; preds = %182
  %187 = load i32, i32* %9, align 4
  store i32 %187, i32* %4, align 4
  br label %511

188:                                              ; preds = %182
  %189 = load i32*, i32** %6, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 4
  %191 = load i32, i32* %190, align 4
  store i32 %191, i32* %11, align 4
  %192 = load i32*, i32** %5, align 8
  %193 = load i32, i32* %11, align 4
  %194 = ashr i32 %193, 7
  %195 = load i32, i32* %11, align 4
  %196 = ashr i32 %195, 6
  %197 = and i32 %196, 2
  %198 = load i32, i32* %11, align 4
  %199 = ashr i32 %198, 3
  %200 = and i32 %199, 7
  %201 = load i32, i32* %11, align 4
  %202 = and i32 %201, 7
  %203 = sext i32 %202 to i64
  %204 = inttoptr i64 %203 to i32*
  %205 = call i32 @ND_PRINT(i32* %204)
  %206 = load i32*, i32** %5, align 8
  %207 = load i32*, i32** %6, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 5
  %209 = call i32 @print_ets_priority_assignment_table(i32* %206, i32* %208)
  %210 = load i32*, i32** %5, align 8
  %211 = load i32*, i32** %6, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 9
  %213 = call i32 @print_tc_bandwidth_table(i32* %210, i32* %212)
  %214 = load i32*, i32** %5, align 8
  %215 = load i32*, i32** %6, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 17
  %217 = call i32 @print_tsa_assignment_table(i32* %214, i32* %216)
  br label %509

218:                                              ; preds = %18
  %219 = load i32, i32* %7, align 4
  %220 = load i32, i32* @LLDP_PRIVATE_8021_SUBTYPE_ETS_RECOMMENDATION_LENGTH, align 4
  %221 = icmp slt i32 %219, %220
  br i1 %221, label %222, label %224

222:                                              ; preds = %218
  %223 = load i32, i32* %9, align 4
  store i32 %223, i32* %4, align 4
  br label %511

224:                                              ; preds = %218
  %225 = load i32*, i32** %5, align 8
  %226 = load i32*, i32** %6, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 4
  %228 = load i32, i32* %227, align 4
  %229 = sext i32 %228 to i64
  %230 = inttoptr i64 %229 to i32*
  %231 = call i32 @ND_PRINT(i32* %230)
  %232 = load i32*, i32** %5, align 8
  %233 = load i32*, i32** %6, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 5
  %235 = call i32 @print_ets_priority_assignment_table(i32* %232, i32* %234)
  %236 = load i32*, i32** %5, align 8
  %237 = load i32*, i32** %6, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 9
  %239 = call i32 @print_tc_bandwidth_table(i32* %236, i32* %238)
  %240 = load i32*, i32** %5, align 8
  %241 = load i32*, i32** %6, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 17
  %243 = call i32 @print_tsa_assignment_table(i32* %240, i32* %242)
  br label %509

244:                                              ; preds = %18
  %245 = load i32, i32* %7, align 4
  %246 = load i32, i32* @LLDP_PRIVATE_8021_SUBTYPE_PFC_CONFIGURATION_LENGTH, align 4
  %247 = icmp slt i32 %245, %246
  br i1 %247, label %248, label %250

248:                                              ; preds = %244
  %249 = load i32, i32* %9, align 4
  store i32 %249, i32* %4, align 4
  br label %511

250:                                              ; preds = %244
  %251 = load i32*, i32** %6, align 8
  %252 = getelementptr inbounds i32, i32* %251, i64 4
  %253 = load i32, i32* %252, align 4
  store i32 %253, i32* %11, align 4
  %254 = load i32*, i32** %5, align 8
  %255 = load i32, i32* %11, align 4
  %256 = ashr i32 %255, 7
  %257 = load i32, i32* %11, align 4
  %258 = ashr i32 %257, 6
  %259 = and i32 %258, 1
  %260 = load i32, i32* %11, align 4
  %261 = ashr i32 %260, 4
  %262 = and i32 %261, 3
  %263 = load i32, i32* %11, align 4
  %264 = and i32 %263, 15
  %265 = sext i32 %264 to i64
  %266 = inttoptr i64 %265 to i32*
  %267 = call i32 @ND_PRINT(i32* %266)
  %268 = load i32*, i32** %5, align 8
  %269 = call i32 @ND_PRINT(i32* bitcast ([17 x i8]* @.str.16 to i32*))
  %270 = load i32*, i32** %6, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 5
  %272 = load i32, i32* %271, align 4
  store i32 %272, i32* %11, align 4
  %273 = load i32*, i32** %5, align 8
  %274 = call i32 @ND_PRINT(i32* bitcast ([41 x i8]* @.str.9 to i32*))
  %275 = load i32*, i32** %5, align 8
  %276 = call i32 @ND_PRINT(i32* bitcast ([19 x i8]* @.str.10 to i32*))
  store i32 0, i32* %12, align 4
  br label %277

277:                                              ; preds = %290, %250
  %278 = load i32, i32* %12, align 4
  %279 = load i32, i32* @NO_OF_BITS, align 4
  %280 = icmp slt i32 %278, %279
  br i1 %280, label %281, label %293

281:                                              ; preds = %277
  %282 = load i32*, i32** %5, align 8
  %283 = load i32, i32* %11, align 4
  %284 = load i32, i32* %12, align 4
  %285 = ashr i32 %283, %284
  %286 = and i32 %285, 1
  %287 = sext i32 %286 to i64
  %288 = inttoptr i64 %287 to i32*
  %289 = call i32 @ND_PRINT(i32* %288)
  br label %290

290:                                              ; preds = %281
  %291 = load i32, i32* %12, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %12, align 4
  br label %277

293:                                              ; preds = %277
  br label %509

294:                                              ; preds = %18
  %295 = load i32, i32* %7, align 4
  %296 = load i32, i32* @LLDP_PRIVATE_8021_SUBTYPE_APPLICATION_PRIORITY_MIN_LENGTH, align 4
  %297 = icmp slt i32 %295, %296
  br i1 %297, label %298, label %300

298:                                              ; preds = %294
  %299 = load i32, i32* %9, align 4
  store i32 %299, i32* %4, align 4
  br label %511

300:                                              ; preds = %294
  %301 = load i32*, i32** %5, align 8
  %302 = load i32*, i32** %6, align 8
  %303 = getelementptr inbounds i32, i32* %302, i64 4
  %304 = load i32, i32* %303, align 4
  %305 = sext i32 %304 to i64
  %306 = inttoptr i64 %305 to i32*
  %307 = call i32 @ND_PRINT(i32* %306)
  %308 = load i32, i32* %7, align 4
  %309 = load i32, i32* @LLDP_PRIVATE_8021_SUBTYPE_APPLICATION_PRIORITY_MIN_LENGTH, align 4
  %310 = icmp sle i32 %308, %309
  br i1 %310, label %311, label %313

311:                                              ; preds = %300
  %312 = load i32, i32* %9, align 4
  store i32 %312, i32* %4, align 4
  br label %511

313:                                              ; preds = %300
  %314 = load i32, i32* %7, align 4
  %315 = sub nsw i32 %314, 5
  store i32 %315, i32* %10, align 4
  %316 = load i32, i32* %10, align 4
  %317 = srem i32 %316, 3
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %321

319:                                              ; preds = %313
  %320 = load i32, i32* %9, align 4
  store i32 %320, i32* %4, align 4
  br label %511

321:                                              ; preds = %313
  store i32 0, i32* %12, align 4
  %322 = load i32*, i32** %5, align 8
  %323 = call i32 @ND_PRINT(i32* bitcast ([33 x i8]* @.str.17 to i32*))
  br label %324

324:                                              ; preds = %328, %321
  %325 = load i32, i32* %12, align 4
  %326 = load i32, i32* %10, align 4
  %327 = icmp slt i32 %325, %326
  br i1 %327, label %328, label %354

328:                                              ; preds = %324
  %329 = load i32*, i32** %6, align 8
  %330 = load i32, i32* %12, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i32, i32* %329, i64 %331
  %333 = getelementptr inbounds i32, i32* %332, i64 5
  %334 = load i32, i32* %333, align 4
  store i32 %334, i32* %11, align 4
  %335 = load i32*, i32** %5, align 8
  %336 = load i32, i32* %11, align 4
  %337 = ashr i32 %336, 5
  %338 = load i32, i32* %11, align 4
  %339 = ashr i32 %338, 3
  %340 = and i32 %339, 3
  %341 = load i32, i32* %11, align 4
  %342 = and i32 %341, 7
  %343 = load i32*, i32** %6, align 8
  %344 = load i32, i32* %12, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i32, i32* %343, i64 %345
  %347 = getelementptr inbounds i32, i32* %346, i64 5
  %348 = call i32 @EXTRACT_16BITS(i32* %347)
  %349 = sext i32 %348 to i64
  %350 = inttoptr i64 %349 to i32*
  %351 = call i32 @ND_PRINT(i32* %350)
  %352 = load i32, i32* %12, align 4
  %353 = add nsw i32 %352, 3
  store i32 %353, i32* %12, align 4
  br label %324

354:                                              ; preds = %324
  br label %509

355:                                              ; preds = %18
  %356 = load i32, i32* %7, align 4
  %357 = load i32, i32* @LLDP_PRIVATE_8021_SUBTYPE_EVB_LENGTH, align 4
  %358 = icmp slt i32 %356, %357
  br i1 %358, label %359, label %361

359:                                              ; preds = %355
  %360 = load i32, i32* %9, align 4
  store i32 %360, i32* %4, align 4
  br label %511

361:                                              ; preds = %355
  %362 = load i32*, i32** %5, align 8
  %363 = call i32 @ND_PRINT(i32* bitcast ([24 x i8]* @.str.19 to i32*))
  %364 = load i32*, i32** %6, align 8
  %365 = getelementptr inbounds i32, i32* %364, i64 4
  %366 = load i32, i32* %365, align 4
  store i32 %366, i32* %11, align 4
  %367 = load i32*, i32** %5, align 8
  %368 = load i32, i32* %11, align 4
  %369 = ashr i32 %368, 3
  %370 = load i32, i32* %11, align 4
  %371 = ashr i32 %370, 2
  %372 = and i32 %371, 1
  %373 = load i32, i32* %11, align 4
  %374 = ashr i32 %373, 1
  %375 = and i32 %374, 1
  %376 = load i32, i32* %11, align 4
  %377 = and i32 %376, 1
  %378 = sext i32 %377 to i64
  %379 = inttoptr i64 %378 to i32*
  %380 = call i32 @ND_PRINT(i32* %379)
  %381 = load i32*, i32** %5, align 8
  %382 = call i32 @ND_PRINT(i32* bitcast ([25 x i8]* @.str.21 to i32*))
  %383 = load i32*, i32** %6, align 8
  %384 = getelementptr inbounds i32, i32* %383, i64 5
  %385 = load i32, i32* %384, align 4
  store i32 %385, i32* %11, align 4
  %386 = load i32*, i32** %5, align 8
  %387 = load i32, i32* %11, align 4
  %388 = ashr i32 %387, 4
  %389 = load i32, i32* %11, align 4
  %390 = ashr i32 %389, 3
  %391 = and i32 %390, 1
  %392 = load i32, i32* %11, align 4
  %393 = ashr i32 %392, 2
  %394 = and i32 %393, 1
  %395 = load i32, i32* %11, align 4
  %396 = and i32 %395, 3
  %397 = sext i32 %396 to i64
  %398 = inttoptr i64 %397 to i32*
  %399 = call i32 @ND_PRINT(i32* %398)
  %400 = load i32*, i32** %6, align 8
  %401 = getelementptr inbounds i32, i32* %400, i64 6
  %402 = load i32, i32* %401, align 4
  store i32 %402, i32* %11, align 4
  %403 = load i32*, i32** %5, align 8
  %404 = load i32, i32* %11, align 4
  %405 = ashr i32 %404, 5
  %406 = load i32, i32* %11, align 4
  %407 = and i32 %406, 31
  %408 = sext i32 %407 to i64
  %409 = inttoptr i64 %408 to i32*
  %410 = call i32 @ND_PRINT(i32* %409)
  %411 = load i32*, i32** %6, align 8
  %412 = getelementptr inbounds i32, i32* %411, i64 7
  %413 = load i32, i32* %412, align 4
  store i32 %413, i32* %11, align 4
  %414 = load i32*, i32** %5, align 8
  %415 = load i32, i32* @lldp_evb_mode_values, align 4
  %416 = load i32, i32* %11, align 4
  %417 = ashr i32 %416, 6
  %418 = call i32 @tok2str(i32 %415, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %417)
  %419 = load i32, i32* %11, align 4
  %420 = ashr i32 %419, 6
  %421 = sext i32 %420 to i64
  %422 = inttoptr i64 %421 to i32*
  %423 = call i32 @ND_PRINT(i32* %422)
  %424 = load i32*, i32** %5, align 8
  %425 = load i32, i32* %11, align 4
  %426 = ashr i32 %425, 5
  %427 = and i32 %426, 1
  %428 = load i32, i32* %11, align 4
  %429 = and i32 %428, 31
  %430 = sext i32 %429 to i64
  %431 = inttoptr i64 %430 to i32*
  %432 = call i32 @ND_PRINT(i32* %431)
  %433 = load i32*, i32** %6, align 8
  %434 = getelementptr inbounds i32, i32* %433, i64 8
  %435 = load i32, i32* %434, align 4
  store i32 %435, i32* %11, align 4
  %436 = load i32*, i32** %5, align 8
  %437 = load i32, i32* %11, align 4
  %438 = ashr i32 %437, 6
  %439 = load i32, i32* %11, align 4
  %440 = ashr i32 %439, 5
  %441 = and i32 %440, 1
  %442 = load i32, i32* %11, align 4
  %443 = and i32 %442, 31
  %444 = sext i32 %443 to i64
  %445 = inttoptr i64 %444 to i32*
  %446 = call i32 @ND_PRINT(i32* %445)
  br label %509

447:                                              ; preds = %18
  %448 = load i32, i32* %7, align 4
  %449 = load i32, i32* @LLDP_PRIVATE_8021_SUBTYPE_CDCP_MIN_LENGTH, align 4
  %450 = icmp slt i32 %448, %449
  br i1 %450, label %451, label %453

451:                                              ; preds = %447
  %452 = load i32, i32* %9, align 4
  store i32 %452, i32* %4, align 4
  br label %511

453:                                              ; preds = %447
  %454 = load i32*, i32** %6, align 8
  %455 = getelementptr inbounds i32, i32* %454, i64 4
  %456 = load i32, i32* %455, align 4
  store i32 %456, i32* %11, align 4
  %457 = load i32*, i32** %5, align 8
  %458 = load i32, i32* %11, align 4
  %459 = ashr i32 %458, 7
  %460 = load i32, i32* %11, align 4
  %461 = ashr i32 %460, 4
  %462 = and i32 %461, 7
  %463 = load i32, i32* %11, align 4
  %464 = ashr i32 %463, 3
  %465 = and i32 %464, 1
  %466 = sext i32 %465 to i64
  %467 = inttoptr i64 %466 to i32*
  %468 = call i32 @ND_PRINT(i32* %467)
  %469 = load i32*, i32** %5, align 8
  %470 = load i32*, i32** %6, align 8
  %471 = getelementptr inbounds i32, i32* %470, i64 6
  %472 = call i32 @EXTRACT_16BITS(i32* %471)
  %473 = and i32 %472, 4095
  %474 = sext i32 %473 to i64
  %475 = inttoptr i64 %474 to i32*
  %476 = call i32 @ND_PRINT(i32* %475)
  %477 = load i32, i32* %7, align 4
  %478 = sub nsw i32 %477, 8
  store i32 %478, i32* %10, align 4
  %479 = load i32, i32* %10, align 4
  %480 = srem i32 %479, 3
  %481 = icmp ne i32 %480, 0
  br i1 %481, label %482, label %484

482:                                              ; preds = %453
  %483 = load i32, i32* %9, align 4
  store i32 %483, i32* %4, align 4
  br label %511

484:                                              ; preds = %453
  store i32 0, i32* %12, align 4
  br label %485

485:                                              ; preds = %489, %484
  %486 = load i32, i32* %12, align 4
  %487 = load i32, i32* %10, align 4
  %488 = icmp slt i32 %486, %487
  br i1 %488, label %489, label %506

489:                                              ; preds = %485
  %490 = load i32*, i32** %6, align 8
  %491 = load i32, i32* %12, align 4
  %492 = sext i32 %491 to i64
  %493 = getelementptr inbounds i32, i32* %490, i64 %492
  %494 = getelementptr inbounds i32, i32* %493, i64 8
  %495 = call i32 @EXTRACT_24BITS(i32* %494)
  store i32 %495, i32* %11, align 4
  %496 = load i32*, i32** %5, align 8
  %497 = load i32, i32* %11, align 4
  %498 = ashr i32 %497, 12
  %499 = load i32, i32* %11, align 4
  %500 = and i32 %499, 4095
  %501 = sext i32 %500 to i64
  %502 = inttoptr i64 %501 to i32*
  %503 = call i32 @ND_PRINT(i32* %502)
  %504 = load i32, i32* %12, align 4
  %505 = add nsw i32 %504, 3
  store i32 %505, i32* %12, align 4
  br label %485

506:                                              ; preds = %485
  br label %509

507:                                              ; preds = %18
  %508 = load i32, i32* @TRUE, align 4
  store i32 %508, i32* %9, align 4
  br label %509

509:                                              ; preds = %507, %506, %361, %354, %293, %224, %188, %181, %115, %92, %49, %36
  %510 = load i32, i32* %9, align 4
  store i32 %510, i32* %4, align 4
  br label %511

511:                                              ; preds = %509, %482, %451, %359, %319, %311, %298, %248, %222, %186, %127, %113, %103, %90, %80, %68, %47, %34, %16
  %512 = load i32, i32* %4, align 4
  ret i32 %512
}

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @bittok2str(i32, i8*, i32) #1

declare dso_local i32 @safeputs(i32*, i32*, i32) #1

declare dso_local i32 @print_ets_priority_assignment_table(i32*, i32*) #1

declare dso_local i32 @print_tc_bandwidth_table(i32*, i32*) #1

declare dso_local i32 @print_tsa_assignment_table(i32*, i32*) #1

declare dso_local i32 @EXTRACT_24BITS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
