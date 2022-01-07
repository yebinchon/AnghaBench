; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-eigrp.c_eigrp_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-eigrp.c_eigrp_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.eigrp_common_header = type { i64, i32, i32***, i32***, i32***, i32***, i32*** }
%struct.eigrp_tlv_header = type { i32***, i32*** }
%union.anon = type { %struct.eigrp_tlv_general_parm_t* }
%struct.eigrp_tlv_general_parm_t = type { i32, i32, i32, i32, i32, i32**** }
%struct.eigrp_tlv_sw_version_t = type { i32, i32, i32, i32 }
%struct.eigrp_tlv_ip_int_t = type { i32, i32, i32, i32, i32, i32***, i32***, i32***, i32 }
%struct.eigrp_tlv_ip_ext_t = type { i32, i32, i32, i32, i32, i32, i32***, i32***, i32****, i32****, i32, i32****, i32****, i32***, i32 }
%struct.eigrp_tlv_at_cable_setup_t = type { i32***, i32***, i32*** }
%struct.eigrp_tlv_at_int_t = type { i32, i32, i32, i32, i32***, i32***, i32****, i32***, i32*** }
%struct.eigrp_tlv_at_ext_t = type { i32, i32, i32, i32, i32, i32***, i32***, i32****, i32****, i32, i32****, i32****, i32****, i32***, i32*** }

@EIGRP_VERSION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"EIGRP version %u packet not supported\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"EIGRP %s, length: %u\00", align 1
@eigrp_opcode_values = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"unknown (%u)\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"EIGRP %s, length: %u (too short, < %u)\00", align 1
@.str.4 = private unnamed_addr constant [104 x i8] c"\0A\09EIGRP v%u, opcode: %s (%u), chksum: 0x%04x, Flags: [%s]\0A\09seq: 0x%08x, ack: 0x%08x, AS: %u, length: %u\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"unknown, type: %u\00", align 1
@eigrp_common_header_flag_values = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"\0A\09    \00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"\0A\09  %s TLV (0x%04x), length: %u\00", align 1
@eigrp_tlv_values = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c" (too short, < %u)\00", align 1
@.str.11 = private unnamed_addr constant [55 x i8] c"\0A\09    holdtime: %us, k1 %u, k2 %u, k3 %u, k4 %u, k5 %u\00", align 1
@.str.12 = private unnamed_addr constant [46 x i8] c"\0A\09    IOS version: %u.%u, EIGRP version %u.%u\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"\0A\09    illegal prefix length %u\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"\0A\09    IPv4 prefix: %15s/%u, nexthop: \00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"self\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.17 = private unnamed_addr constant [80 x i8] c"\0A\09      delay %u ms, bandwidth %u Kbps, mtu %u, hop %u, reliability %u, load %u\00", align 1
@.str.18 = private unnamed_addr constant [95 x i8] c"\0A\09      origin-router %s, origin-as %u, origin-proto %s, flags [0x%02x], tag 0x%08x, metric %u\00", align 1
@eigrp_ext_proto_id_values = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.20 = private unnamed_addr constant [39 x i8] c"\0A\09    Cable-range: %u-%u, Router-ID %u\00", align 1
@.str.21 = private unnamed_addr constant [37 x i8] c"\0A\09     Cable-Range: %u-%u, nexthop: \00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"%u.%u\00", align 1
@.str.23 = private unnamed_addr constant [95 x i8] c"\0A\09      origin-router %u, origin-as %u, origin-proto %s, flags [0x%02x], tag 0x%08x, metric %u\00", align 1
@.str.24 = private unnamed_addr constant [29 x i8] c"\0A\09\09 packet exceeded snapshot\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eigrp_print(%struct.TYPE_6__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.eigrp_common_header*, align 8
  %8 = alloca %struct.eigrp_tlv_header*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [4 x i32**], align 16
  %18 = alloca %union.anon, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %19 = load i32*, i32** %5, align 8
  store i32* %19, i32** %9, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = bitcast i32* %20 to %struct.eigrp_common_header*
  store %struct.eigrp_common_header* %21, %struct.eigrp_common_header** %7, align 8
  %22 = load %struct.eigrp_common_header*, %struct.eigrp_common_header** %7, align 8
  %23 = call i32 @ND_TCHECK(%struct.eigrp_common_header* byval(%struct.eigrp_common_header) align 8 %22)
  %24 = load %struct.eigrp_common_header*, %struct.eigrp_common_header** %7, align 8
  %25 = getelementptr inbounds %struct.eigrp_common_header, %struct.eigrp_common_header* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @EIGRP_VERSION, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %3
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %31 = load %struct.eigrp_common_header*, %struct.eigrp_common_header** %7, align 8
  %32 = getelementptr inbounds %struct.eigrp_common_header, %struct.eigrp_common_header* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.TYPE_6__*
  %35 = call i32 @ND_PRINT(%struct.TYPE_6__* %34)
  br label %741

36:                                               ; preds = %3
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %39, 1
  br i1 %40, label %41, label %52

41:                                               ; preds = %36
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %43 = load i32, i32* @eigrp_opcode_values, align 4
  %44 = load %struct.eigrp_common_header*, %struct.eigrp_common_header** %7, align 8
  %45 = getelementptr inbounds %struct.eigrp_common_header, %struct.eigrp_common_header* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @tok2str(i32 %43, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to %struct.TYPE_6__*
  %51 = call i32 @ND_PRINT(%struct.TYPE_6__* %50)
  br label %741

52:                                               ; preds = %36
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = icmp ult i64 %54, 56
  br i1 %55, label %56, label %65

56:                                               ; preds = %52
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %58 = load i32, i32* @eigrp_opcode_values, align 4
  %59 = load %struct.eigrp_common_header*, %struct.eigrp_common_header** %7, align 8
  %60 = getelementptr inbounds %struct.eigrp_common_header, %struct.eigrp_common_header* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @tok2str(i32 %58, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @ND_PRINT(%struct.TYPE_6__* inttoptr (i64 56 to %struct.TYPE_6__*))
  br label %741

65:                                               ; preds = %52
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = sub i64 %67, 56
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %11, align 4
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %71 = load %struct.eigrp_common_header*, %struct.eigrp_common_header** %7, align 8
  %72 = getelementptr inbounds %struct.eigrp_common_header, %struct.eigrp_common_header* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i32, i32* @eigrp_opcode_values, align 4
  %75 = load %struct.eigrp_common_header*, %struct.eigrp_common_header** %7, align 8
  %76 = getelementptr inbounds %struct.eigrp_common_header, %struct.eigrp_common_header* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @tok2str(i32 %74, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %77)
  %79 = load %struct.eigrp_common_header*, %struct.eigrp_common_header** %7, align 8
  %80 = getelementptr inbounds %struct.eigrp_common_header, %struct.eigrp_common_header* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.eigrp_common_header*, %struct.eigrp_common_header** %7, align 8
  %83 = getelementptr inbounds %struct.eigrp_common_header, %struct.eigrp_common_header* %82, i32 0, i32 6
  %84 = bitcast i32**** %83 to i32***
  %85 = call i32 @EXTRACT_16BITS(i32*** %84)
  %86 = load i32, i32* @eigrp_common_header_flag_values, align 4
  %87 = load %struct.eigrp_common_header*, %struct.eigrp_common_header** %7, align 8
  %88 = getelementptr inbounds %struct.eigrp_common_header, %struct.eigrp_common_header* %87, i32 0, i32 5
  %89 = bitcast i32**** %88 to i32***
  %90 = call i32 @EXTRACT_32BITS(i32*** %89)
  %91 = call i32 @tok2str(i32 %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %90)
  %92 = load %struct.eigrp_common_header*, %struct.eigrp_common_header** %7, align 8
  %93 = getelementptr inbounds %struct.eigrp_common_header, %struct.eigrp_common_header* %92, i32 0, i32 4
  %94 = bitcast i32**** %93 to i32***
  %95 = call i32 @EXTRACT_32BITS(i32*** %94)
  %96 = load %struct.eigrp_common_header*, %struct.eigrp_common_header** %7, align 8
  %97 = getelementptr inbounds %struct.eigrp_common_header, %struct.eigrp_common_header* %96, i32 0, i32 3
  %98 = bitcast i32**** %97 to i32***
  %99 = call i32 @EXTRACT_32BITS(i32*** %98)
  %100 = load %struct.eigrp_common_header*, %struct.eigrp_common_header** %7, align 8
  %101 = getelementptr inbounds %struct.eigrp_common_header, %struct.eigrp_common_header* %100, i32 0, i32 2
  %102 = bitcast i32**** %101 to i32***
  %103 = call i32 @EXTRACT_32BITS(i32*** %102)
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = inttoptr i64 %105 to %struct.TYPE_6__*
  %107 = call i32 @ND_PRINT(%struct.TYPE_6__* %106)
  %108 = load i32*, i32** %9, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 56
  store i32* %109, i32** %9, align 8
  br label %110

110:                                              ; preds = %729, %65
  %111 = load i32, i32* %11, align 4
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %737

113:                                              ; preds = %110
  %114 = load i32*, i32** %9, align 8
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @ND_TCHECK2(i32 %115, i32 16)
  %117 = load i32*, i32** %9, align 8
  %118 = bitcast i32* %117 to %struct.eigrp_tlv_header*
  store %struct.eigrp_tlv_header* %118, %struct.eigrp_tlv_header** %8, align 8
  %119 = load %struct.eigrp_tlv_header*, %struct.eigrp_tlv_header** %8, align 8
  %120 = getelementptr inbounds %struct.eigrp_tlv_header, %struct.eigrp_tlv_header* %119, i32 0, i32 1
  %121 = bitcast i32**** %120 to i32***
  %122 = call i32 @EXTRACT_16BITS(i32*** %121)
  store i32 %122, i32* %12, align 4
  %123 = load %struct.eigrp_tlv_header*, %struct.eigrp_tlv_header** %8, align 8
  %124 = getelementptr inbounds %struct.eigrp_tlv_header, %struct.eigrp_tlv_header* %123, i32 0, i32 0
  %125 = bitcast i32**** %124 to i32***
  %126 = call i32 @EXTRACT_16BITS(i32*** %125)
  store i32 %126, i32* %13, align 4
  %127 = load i32, i32* %12, align 4
  %128 = sext i32 %127 to i64
  %129 = icmp ult i64 %128, 16
  br i1 %129, label %134, label %130

130:                                              ; preds = %113
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* %11, align 4
  %133 = icmp sgt i32 %131, %132
  br i1 %133, label %134, label %140

134:                                              ; preds = %130, %113
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %136 = load i32*, i32** %9, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 16
  %138 = load i32, i32* %11, align 4
  %139 = call i32 @print_unknown_data(%struct.TYPE_6__* %135, i32* %137, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %138)
  br label %741

140:                                              ; preds = %130
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %142 = load i32, i32* @eigrp_tlv_values, align 4
  %143 = load i32, i32* %13, align 4
  %144 = call i32 @tok2str(i32 %142, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 %143)
  %145 = load i32, i32* %13, align 4
  %146 = load i32, i32* %12, align 4
  %147 = sext i32 %146 to i64
  %148 = inttoptr i64 %147 to %struct.TYPE_6__*
  %149 = call i32 @ND_PRINT(%struct.TYPE_6__* %148)
  %150 = load i32, i32* %12, align 4
  %151 = sext i32 %150 to i64
  %152 = icmp ult i64 %151, 16
  br i1 %152, label %153, label %156

153:                                              ; preds = %140
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %155 = call i32 @ND_PRINT(%struct.TYPE_6__* inttoptr (i64 16 to %struct.TYPE_6__*))
  br label %737

156:                                              ; preds = %140
  %157 = load i32*, i32** %9, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 16
  store i32* %158, i32** %10, align 8
  %159 = load i32, i32* %12, align 4
  %160 = sext i32 %159 to i64
  %161 = sub i64 %160, 16
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* %14, align 4
  %163 = load i32*, i32** %9, align 8
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* %12, align 4
  %166 = call i32 @ND_TCHECK2(i32 %164, i32 %165)
  %167 = load i32, i32* %13, align 4
  switch i32 %167, label %704 [
    i32 135, label %168
    i32 128, label %209
    i32 131, label %240
    i32 132, label %335
    i32 139, label %469
    i32 137, label %499
    i32 138, label %582
    i32 136, label %703
    i32 129, label %703
    i32 130, label %703
    i32 133, label %703
    i32 134, label %703
  ]

168:                                              ; preds = %156
  %169 = load i32*, i32** %10, align 8
  %170 = bitcast i32* %169 to %struct.eigrp_tlv_general_parm_t*
  %171 = bitcast %union.anon* %18 to %struct.eigrp_tlv_general_parm_t**
  store %struct.eigrp_tlv_general_parm_t* %170, %struct.eigrp_tlv_general_parm_t** %171, align 8
  %172 = load i32, i32* %14, align 4
  %173 = sext i32 %172 to i64
  %174 = icmp ult i64 %173, 32
  br i1 %174, label %175, label %178

175:                                              ; preds = %168
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %177 = call i32 @ND_PRINT(%struct.TYPE_6__* inttoptr (i64 48 to %struct.TYPE_6__*))
  br label %715

178:                                              ; preds = %168
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %180 = bitcast %union.anon* %18 to %struct.eigrp_tlv_general_parm_t**
  %181 = load %struct.eigrp_tlv_general_parm_t*, %struct.eigrp_tlv_general_parm_t** %180, align 8
  %182 = getelementptr inbounds %struct.eigrp_tlv_general_parm_t, %struct.eigrp_tlv_general_parm_t* %181, i32 0, i32 5
  %183 = load i32****, i32***** %182, align 8
  %184 = bitcast i32**** %183 to i32***
  %185 = call i32 @EXTRACT_16BITS(i32*** %184)
  %186 = bitcast %union.anon* %18 to %struct.eigrp_tlv_general_parm_t**
  %187 = load %struct.eigrp_tlv_general_parm_t*, %struct.eigrp_tlv_general_parm_t** %186, align 8
  %188 = getelementptr inbounds %struct.eigrp_tlv_general_parm_t, %struct.eigrp_tlv_general_parm_t* %187, i32 0, i32 4
  %189 = load i32, i32* %188, align 8
  %190 = bitcast %union.anon* %18 to %struct.eigrp_tlv_general_parm_t**
  %191 = load %struct.eigrp_tlv_general_parm_t*, %struct.eigrp_tlv_general_parm_t** %190, align 8
  %192 = getelementptr inbounds %struct.eigrp_tlv_general_parm_t, %struct.eigrp_tlv_general_parm_t* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 4
  %194 = bitcast %union.anon* %18 to %struct.eigrp_tlv_general_parm_t**
  %195 = load %struct.eigrp_tlv_general_parm_t*, %struct.eigrp_tlv_general_parm_t** %194, align 8
  %196 = getelementptr inbounds %struct.eigrp_tlv_general_parm_t, %struct.eigrp_tlv_general_parm_t* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = bitcast %union.anon* %18 to %struct.eigrp_tlv_general_parm_t**
  %199 = load %struct.eigrp_tlv_general_parm_t*, %struct.eigrp_tlv_general_parm_t** %198, align 8
  %200 = getelementptr inbounds %struct.eigrp_tlv_general_parm_t, %struct.eigrp_tlv_general_parm_t* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = bitcast %union.anon* %18 to %struct.eigrp_tlv_general_parm_t**
  %203 = load %struct.eigrp_tlv_general_parm_t*, %struct.eigrp_tlv_general_parm_t** %202, align 8
  %204 = getelementptr inbounds %struct.eigrp_tlv_general_parm_t, %struct.eigrp_tlv_general_parm_t* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = sext i32 %205 to i64
  %207 = inttoptr i64 %206 to %struct.TYPE_6__*
  %208 = call i32 @ND_PRINT(%struct.TYPE_6__* %207)
  br label %715

209:                                              ; preds = %156
  %210 = load i32*, i32** %10, align 8
  %211 = bitcast i32* %210 to %struct.eigrp_tlv_sw_version_t*
  %212 = bitcast %union.anon* %18 to %struct.eigrp_tlv_sw_version_t**
  store %struct.eigrp_tlv_sw_version_t* %211, %struct.eigrp_tlv_sw_version_t** %212, align 8
  %213 = load i32, i32* %14, align 4
  %214 = sext i32 %213 to i64
  %215 = icmp ult i64 %214, 16
  br i1 %215, label %216, label %219

216:                                              ; preds = %209
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %218 = call i32 @ND_PRINT(%struct.TYPE_6__* inttoptr (i64 32 to %struct.TYPE_6__*))
  br label %715

219:                                              ; preds = %209
  %220 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %221 = bitcast %union.anon* %18 to %struct.eigrp_tlv_sw_version_t**
  %222 = load %struct.eigrp_tlv_sw_version_t*, %struct.eigrp_tlv_sw_version_t** %221, align 8
  %223 = getelementptr inbounds %struct.eigrp_tlv_sw_version_t, %struct.eigrp_tlv_sw_version_t* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 4
  %225 = bitcast %union.anon* %18 to %struct.eigrp_tlv_sw_version_t**
  %226 = load %struct.eigrp_tlv_sw_version_t*, %struct.eigrp_tlv_sw_version_t** %225, align 8
  %227 = getelementptr inbounds %struct.eigrp_tlv_sw_version_t, %struct.eigrp_tlv_sw_version_t* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 4
  %229 = bitcast %union.anon* %18 to %struct.eigrp_tlv_sw_version_t**
  %230 = load %struct.eigrp_tlv_sw_version_t*, %struct.eigrp_tlv_sw_version_t** %229, align 8
  %231 = getelementptr inbounds %struct.eigrp_tlv_sw_version_t, %struct.eigrp_tlv_sw_version_t* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = bitcast %union.anon* %18 to %struct.eigrp_tlv_sw_version_t**
  %234 = load %struct.eigrp_tlv_sw_version_t*, %struct.eigrp_tlv_sw_version_t** %233, align 8
  %235 = getelementptr inbounds %struct.eigrp_tlv_sw_version_t, %struct.eigrp_tlv_sw_version_t* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = sext i32 %236 to i64
  %238 = inttoptr i64 %237 to %struct.TYPE_6__*
  %239 = call i32 @ND_PRINT(%struct.TYPE_6__* %238)
  br label %715

240:                                              ; preds = %156
  %241 = load i32*, i32** %10, align 8
  %242 = bitcast i32* %241 to %struct.eigrp_tlv_ip_int_t*
  %243 = bitcast %union.anon* %18 to %struct.eigrp_tlv_ip_int_t**
  store %struct.eigrp_tlv_ip_int_t* %242, %struct.eigrp_tlv_ip_int_t** %243, align 8
  %244 = load i32, i32* %14, align 4
  %245 = sext i32 %244 to i64
  %246 = icmp ult i64 %245, 56
  br i1 %246, label %247, label %250

247:                                              ; preds = %240
  %248 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %249 = call i32 @ND_PRINT(%struct.TYPE_6__* inttoptr (i64 72 to %struct.TYPE_6__*))
  br label %715

250:                                              ; preds = %240
  %251 = bitcast %union.anon* %18 to %struct.eigrp_tlv_ip_int_t**
  %252 = load %struct.eigrp_tlv_ip_int_t*, %struct.eigrp_tlv_ip_int_t** %251, align 8
  %253 = getelementptr inbounds %struct.eigrp_tlv_ip_int_t, %struct.eigrp_tlv_ip_int_t* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  store i32 %254, i32* %16, align 4
  %255 = load i32, i32* %16, align 4
  %256 = icmp sgt i32 %255, 32
  br i1 %256, label %257, label %263

257:                                              ; preds = %250
  %258 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %259 = load i32, i32* %16, align 4
  %260 = sext i32 %259 to i64
  %261 = inttoptr i64 %260 to %struct.TYPE_6__*
  %262 = call i32 @ND_PRINT(%struct.TYPE_6__* %261)
  br label %715

263:                                              ; preds = %250
  %264 = load i32, i32* %16, align 4
  %265 = add nsw i32 %264, 7
  %266 = sdiv i32 %265, 8
  store i32 %266, i32* %15, align 4
  %267 = getelementptr inbounds [4 x i32**], [4 x i32**]* %17, i64 0, i64 0
  %268 = call i32 @memset(i32*** %267, i32 0, i32 4)
  %269 = getelementptr inbounds [4 x i32**], [4 x i32**]* %17, i64 0, i64 0
  %270 = bitcast %union.anon* %18 to %struct.eigrp_tlv_ip_int_t**
  %271 = load %struct.eigrp_tlv_ip_int_t*, %struct.eigrp_tlv_ip_int_t** %270, align 8
  %272 = getelementptr inbounds %struct.eigrp_tlv_ip_int_t, %struct.eigrp_tlv_ip_int_t* %271, i32 0, i32 8
  %273 = load i32, i32* %15, align 4
  %274 = call i32 @memcpy(i32*** %269, i32* %272, i32 %273)
  %275 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %276 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %277 = getelementptr inbounds [4 x i32**], [4 x i32**]* %17, i64 0, i64 0
  %278 = call i32 @ipaddr_string(%struct.TYPE_6__* %276, i32*** %277)
  %279 = load i32, i32* %16, align 4
  %280 = sext i32 %279 to i64
  %281 = inttoptr i64 %280 to %struct.TYPE_6__*
  %282 = call i32 @ND_PRINT(%struct.TYPE_6__* %281)
  %283 = bitcast %union.anon* %18 to %struct.eigrp_tlv_ip_int_t**
  %284 = load %struct.eigrp_tlv_ip_int_t*, %struct.eigrp_tlv_ip_int_t** %283, align 8
  %285 = getelementptr inbounds %struct.eigrp_tlv_ip_int_t, %struct.eigrp_tlv_ip_int_t* %284, i32 0, i32 7
  %286 = bitcast i32**** %285 to i32***
  %287 = call i32 @EXTRACT_32BITS(i32*** %286)
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %289, label %292

289:                                              ; preds = %263
  %290 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %291 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([5 x i8]* @.str.15 to %struct.TYPE_6__*))
  br label %303

292:                                              ; preds = %263
  %293 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %294 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %295 = bitcast %union.anon* %18 to %struct.eigrp_tlv_ip_int_t**
  %296 = load %struct.eigrp_tlv_ip_int_t*, %struct.eigrp_tlv_ip_int_t** %295, align 8
  %297 = getelementptr inbounds %struct.eigrp_tlv_ip_int_t, %struct.eigrp_tlv_ip_int_t* %296, i32 0, i32 7
  %298 = bitcast i32**** %297 to i32***
  %299 = call i32 @ipaddr_string(%struct.TYPE_6__* %294, i32*** %298)
  %300 = sext i32 %299 to i64
  %301 = inttoptr i64 %300 to %struct.TYPE_6__*
  %302 = call i32 @ND_PRINT(%struct.TYPE_6__* %301)
  br label %303

303:                                              ; preds = %292, %289
  %304 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %305 = bitcast %union.anon* %18 to %struct.eigrp_tlv_ip_int_t**
  %306 = load %struct.eigrp_tlv_ip_int_t*, %struct.eigrp_tlv_ip_int_t** %305, align 8
  %307 = getelementptr inbounds %struct.eigrp_tlv_ip_int_t, %struct.eigrp_tlv_ip_int_t* %306, i32 0, i32 6
  %308 = bitcast i32**** %307 to i32***
  %309 = call i32 @EXTRACT_32BITS(i32*** %308)
  %310 = sdiv i32 %309, 100
  %311 = bitcast %union.anon* %18 to %struct.eigrp_tlv_ip_int_t**
  %312 = load %struct.eigrp_tlv_ip_int_t*, %struct.eigrp_tlv_ip_int_t** %311, align 8
  %313 = getelementptr inbounds %struct.eigrp_tlv_ip_int_t, %struct.eigrp_tlv_ip_int_t* %312, i32 0, i32 5
  %314 = bitcast i32**** %313 to i32***
  %315 = call i32 @EXTRACT_32BITS(i32*** %314)
  %316 = bitcast %union.anon* %18 to %struct.eigrp_tlv_ip_int_t**
  %317 = load %struct.eigrp_tlv_ip_int_t*, %struct.eigrp_tlv_ip_int_t** %316, align 8
  %318 = getelementptr inbounds %struct.eigrp_tlv_ip_int_t, %struct.eigrp_tlv_ip_int_t* %317, i32 0, i32 4
  %319 = call i32 @EXTRACT_24BITS(i32* %318)
  %320 = bitcast %union.anon* %18 to %struct.eigrp_tlv_ip_int_t**
  %321 = load %struct.eigrp_tlv_ip_int_t*, %struct.eigrp_tlv_ip_int_t** %320, align 8
  %322 = getelementptr inbounds %struct.eigrp_tlv_ip_int_t, %struct.eigrp_tlv_ip_int_t* %321, i32 0, i32 3
  %323 = load i32, i32* %322, align 4
  %324 = bitcast %union.anon* %18 to %struct.eigrp_tlv_ip_int_t**
  %325 = load %struct.eigrp_tlv_ip_int_t*, %struct.eigrp_tlv_ip_int_t** %324, align 8
  %326 = getelementptr inbounds %struct.eigrp_tlv_ip_int_t, %struct.eigrp_tlv_ip_int_t* %325, i32 0, i32 2
  %327 = load i32, i32* %326, align 8
  %328 = bitcast %union.anon* %18 to %struct.eigrp_tlv_ip_int_t**
  %329 = load %struct.eigrp_tlv_ip_int_t*, %struct.eigrp_tlv_ip_int_t** %328, align 8
  %330 = getelementptr inbounds %struct.eigrp_tlv_ip_int_t, %struct.eigrp_tlv_ip_int_t* %329, i32 0, i32 1
  %331 = load i32, i32* %330, align 4
  %332 = sext i32 %331 to i64
  %333 = inttoptr i64 %332 to %struct.TYPE_6__*
  %334 = call i32 @ND_PRINT(%struct.TYPE_6__* %333)
  br label %715

335:                                              ; preds = %156
  %336 = load i32*, i32** %10, align 8
  %337 = bitcast i32* %336 to %struct.eigrp_tlv_ip_ext_t*
  %338 = bitcast %union.anon* %18 to %struct.eigrp_tlv_ip_ext_t**
  store %struct.eigrp_tlv_ip_ext_t* %337, %struct.eigrp_tlv_ip_ext_t** %338, align 8
  %339 = load i32, i32* %14, align 4
  %340 = sext i32 %339 to i64
  %341 = icmp ult i64 %340, 96
  br i1 %341, label %342, label %345

342:                                              ; preds = %335
  %343 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %344 = call i32 @ND_PRINT(%struct.TYPE_6__* inttoptr (i64 112 to %struct.TYPE_6__*))
  br label %715

345:                                              ; preds = %335
  %346 = bitcast %union.anon* %18 to %struct.eigrp_tlv_ip_ext_t**
  %347 = load %struct.eigrp_tlv_ip_ext_t*, %struct.eigrp_tlv_ip_ext_t** %346, align 8
  %348 = getelementptr inbounds %struct.eigrp_tlv_ip_ext_t, %struct.eigrp_tlv_ip_ext_t* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 8
  store i32 %349, i32* %16, align 4
  %350 = load i32, i32* %16, align 4
  %351 = icmp sgt i32 %350, 32
  br i1 %351, label %352, label %358

352:                                              ; preds = %345
  %353 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %354 = load i32, i32* %16, align 4
  %355 = sext i32 %354 to i64
  %356 = inttoptr i64 %355 to %struct.TYPE_6__*
  %357 = call i32 @ND_PRINT(%struct.TYPE_6__* %356)
  br label %715

358:                                              ; preds = %345
  %359 = load i32, i32* %16, align 4
  %360 = add nsw i32 %359, 7
  %361 = sdiv i32 %360, 8
  store i32 %361, i32* %15, align 4
  %362 = getelementptr inbounds [4 x i32**], [4 x i32**]* %17, i64 0, i64 0
  %363 = call i32 @memset(i32*** %362, i32 0, i32 4)
  %364 = getelementptr inbounds [4 x i32**], [4 x i32**]* %17, i64 0, i64 0
  %365 = bitcast %union.anon* %18 to %struct.eigrp_tlv_ip_ext_t**
  %366 = load %struct.eigrp_tlv_ip_ext_t*, %struct.eigrp_tlv_ip_ext_t** %365, align 8
  %367 = getelementptr inbounds %struct.eigrp_tlv_ip_ext_t, %struct.eigrp_tlv_ip_ext_t* %366, i32 0, i32 14
  %368 = load i32, i32* %15, align 4
  %369 = call i32 @memcpy(i32*** %364, i32* %367, i32 %368)
  %370 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %371 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %372 = getelementptr inbounds [4 x i32**], [4 x i32**]* %17, i64 0, i64 0
  %373 = call i32 @ipaddr_string(%struct.TYPE_6__* %371, i32*** %372)
  %374 = load i32, i32* %16, align 4
  %375 = sext i32 %374 to i64
  %376 = inttoptr i64 %375 to %struct.TYPE_6__*
  %377 = call i32 @ND_PRINT(%struct.TYPE_6__* %376)
  %378 = bitcast %union.anon* %18 to %struct.eigrp_tlv_ip_ext_t**
  %379 = load %struct.eigrp_tlv_ip_ext_t*, %struct.eigrp_tlv_ip_ext_t** %378, align 8
  %380 = getelementptr inbounds %struct.eigrp_tlv_ip_ext_t, %struct.eigrp_tlv_ip_ext_t* %379, i32 0, i32 13
  %381 = bitcast i32**** %380 to i32***
  %382 = call i32 @EXTRACT_32BITS(i32*** %381)
  %383 = icmp eq i32 %382, 0
  br i1 %383, label %384, label %387

384:                                              ; preds = %358
  %385 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %386 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([5 x i8]* @.str.15 to %struct.TYPE_6__*))
  br label %398

387:                                              ; preds = %358
  %388 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %389 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %390 = bitcast %union.anon* %18 to %struct.eigrp_tlv_ip_ext_t**
  %391 = load %struct.eigrp_tlv_ip_ext_t*, %struct.eigrp_tlv_ip_ext_t** %390, align 8
  %392 = getelementptr inbounds %struct.eigrp_tlv_ip_ext_t, %struct.eigrp_tlv_ip_ext_t* %391, i32 0, i32 13
  %393 = bitcast i32**** %392 to i32***
  %394 = call i32 @ipaddr_string(%struct.TYPE_6__* %389, i32*** %393)
  %395 = sext i32 %394 to i64
  %396 = inttoptr i64 %395 to %struct.TYPE_6__*
  %397 = call i32 @ND_PRINT(%struct.TYPE_6__* %396)
  br label %398

398:                                              ; preds = %387, %384
  %399 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %400 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %401 = bitcast %union.anon* %18 to %struct.eigrp_tlv_ip_ext_t**
  %402 = load %struct.eigrp_tlv_ip_ext_t*, %struct.eigrp_tlv_ip_ext_t** %401, align 8
  %403 = getelementptr inbounds %struct.eigrp_tlv_ip_ext_t, %struct.eigrp_tlv_ip_ext_t* %402, i32 0, i32 12
  %404 = load i32****, i32***** %403, align 8
  %405 = bitcast i32**** %404 to i32***
  %406 = call i32 @ipaddr_string(%struct.TYPE_6__* %400, i32*** %405)
  %407 = bitcast %union.anon* %18 to %struct.eigrp_tlv_ip_ext_t**
  %408 = load %struct.eigrp_tlv_ip_ext_t*, %struct.eigrp_tlv_ip_ext_t** %407, align 8
  %409 = getelementptr inbounds %struct.eigrp_tlv_ip_ext_t, %struct.eigrp_tlv_ip_ext_t* %408, i32 0, i32 11
  %410 = load i32****, i32***** %409, align 8
  %411 = bitcast i32**** %410 to i32***
  %412 = call i32 @EXTRACT_32BITS(i32*** %411)
  %413 = load i32, i32* @eigrp_ext_proto_id_values, align 4
  %414 = bitcast %union.anon* %18 to %struct.eigrp_tlv_ip_ext_t**
  %415 = load %struct.eigrp_tlv_ip_ext_t*, %struct.eigrp_tlv_ip_ext_t** %414, align 8
  %416 = getelementptr inbounds %struct.eigrp_tlv_ip_ext_t, %struct.eigrp_tlv_ip_ext_t* %415, i32 0, i32 1
  %417 = load i32, i32* %416, align 4
  %418 = call i32 @tok2str(i32 %413, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i32 %417)
  %419 = bitcast %union.anon* %18 to %struct.eigrp_tlv_ip_ext_t**
  %420 = load %struct.eigrp_tlv_ip_ext_t*, %struct.eigrp_tlv_ip_ext_t** %419, align 8
  %421 = getelementptr inbounds %struct.eigrp_tlv_ip_ext_t, %struct.eigrp_tlv_ip_ext_t* %420, i32 0, i32 10
  %422 = load i32, i32* %421, align 8
  %423 = bitcast %union.anon* %18 to %struct.eigrp_tlv_ip_ext_t**
  %424 = load %struct.eigrp_tlv_ip_ext_t*, %struct.eigrp_tlv_ip_ext_t** %423, align 8
  %425 = getelementptr inbounds %struct.eigrp_tlv_ip_ext_t, %struct.eigrp_tlv_ip_ext_t* %424, i32 0, i32 9
  %426 = load i32****, i32***** %425, align 8
  %427 = bitcast i32**** %426 to i32***
  %428 = call i32 @EXTRACT_32BITS(i32*** %427)
  %429 = bitcast %union.anon* %18 to %struct.eigrp_tlv_ip_ext_t**
  %430 = load %struct.eigrp_tlv_ip_ext_t*, %struct.eigrp_tlv_ip_ext_t** %429, align 8
  %431 = getelementptr inbounds %struct.eigrp_tlv_ip_ext_t, %struct.eigrp_tlv_ip_ext_t* %430, i32 0, i32 8
  %432 = load i32****, i32***** %431, align 8
  %433 = bitcast i32**** %432 to i32***
  %434 = call i32 @EXTRACT_32BITS(i32*** %433)
  %435 = sext i32 %434 to i64
  %436 = inttoptr i64 %435 to %struct.TYPE_6__*
  %437 = call i32 @ND_PRINT(%struct.TYPE_6__* %436)
  %438 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %439 = bitcast %union.anon* %18 to %struct.eigrp_tlv_ip_ext_t**
  %440 = load %struct.eigrp_tlv_ip_ext_t*, %struct.eigrp_tlv_ip_ext_t** %439, align 8
  %441 = getelementptr inbounds %struct.eigrp_tlv_ip_ext_t, %struct.eigrp_tlv_ip_ext_t* %440, i32 0, i32 7
  %442 = bitcast i32**** %441 to i32***
  %443 = call i32 @EXTRACT_32BITS(i32*** %442)
  %444 = sdiv i32 %443, 100
  %445 = bitcast %union.anon* %18 to %struct.eigrp_tlv_ip_ext_t**
  %446 = load %struct.eigrp_tlv_ip_ext_t*, %struct.eigrp_tlv_ip_ext_t** %445, align 8
  %447 = getelementptr inbounds %struct.eigrp_tlv_ip_ext_t, %struct.eigrp_tlv_ip_ext_t* %446, i32 0, i32 6
  %448 = bitcast i32**** %447 to i32***
  %449 = call i32 @EXTRACT_32BITS(i32*** %448)
  %450 = bitcast %union.anon* %18 to %struct.eigrp_tlv_ip_ext_t**
  %451 = load %struct.eigrp_tlv_ip_ext_t*, %struct.eigrp_tlv_ip_ext_t** %450, align 8
  %452 = getelementptr inbounds %struct.eigrp_tlv_ip_ext_t, %struct.eigrp_tlv_ip_ext_t* %451, i32 0, i32 5
  %453 = call i32 @EXTRACT_24BITS(i32* %452)
  %454 = bitcast %union.anon* %18 to %struct.eigrp_tlv_ip_ext_t**
  %455 = load %struct.eigrp_tlv_ip_ext_t*, %struct.eigrp_tlv_ip_ext_t** %454, align 8
  %456 = getelementptr inbounds %struct.eigrp_tlv_ip_ext_t, %struct.eigrp_tlv_ip_ext_t* %455, i32 0, i32 4
  %457 = load i32, i32* %456, align 8
  %458 = bitcast %union.anon* %18 to %struct.eigrp_tlv_ip_ext_t**
  %459 = load %struct.eigrp_tlv_ip_ext_t*, %struct.eigrp_tlv_ip_ext_t** %458, align 8
  %460 = getelementptr inbounds %struct.eigrp_tlv_ip_ext_t, %struct.eigrp_tlv_ip_ext_t* %459, i32 0, i32 3
  %461 = load i32, i32* %460, align 4
  %462 = bitcast %union.anon* %18 to %struct.eigrp_tlv_ip_ext_t**
  %463 = load %struct.eigrp_tlv_ip_ext_t*, %struct.eigrp_tlv_ip_ext_t** %462, align 8
  %464 = getelementptr inbounds %struct.eigrp_tlv_ip_ext_t, %struct.eigrp_tlv_ip_ext_t* %463, i32 0, i32 2
  %465 = load i32, i32* %464, align 8
  %466 = sext i32 %465 to i64
  %467 = inttoptr i64 %466 to %struct.TYPE_6__*
  %468 = call i32 @ND_PRINT(%struct.TYPE_6__* %467)
  br label %715

469:                                              ; preds = %156
  %470 = load i32*, i32** %10, align 8
  %471 = bitcast i32* %470 to %struct.eigrp_tlv_at_cable_setup_t*
  %472 = bitcast %union.anon* %18 to %struct.eigrp_tlv_at_cable_setup_t**
  store %struct.eigrp_tlv_at_cable_setup_t* %471, %struct.eigrp_tlv_at_cable_setup_t** %472, align 8
  %473 = load i32, i32* %14, align 4
  %474 = sext i32 %473 to i64
  %475 = icmp ult i64 %474, 24
  br i1 %475, label %476, label %479

476:                                              ; preds = %469
  %477 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %478 = call i32 @ND_PRINT(%struct.TYPE_6__* inttoptr (i64 40 to %struct.TYPE_6__*))
  br label %715

479:                                              ; preds = %469
  %480 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %481 = bitcast %union.anon* %18 to %struct.eigrp_tlv_at_cable_setup_t**
  %482 = load %struct.eigrp_tlv_at_cable_setup_t*, %struct.eigrp_tlv_at_cable_setup_t** %481, align 8
  %483 = getelementptr inbounds %struct.eigrp_tlv_at_cable_setup_t, %struct.eigrp_tlv_at_cable_setup_t* %482, i32 0, i32 2
  %484 = bitcast i32**** %483 to i32***
  %485 = call i32 @EXTRACT_16BITS(i32*** %484)
  %486 = bitcast %union.anon* %18 to %struct.eigrp_tlv_at_cable_setup_t**
  %487 = load %struct.eigrp_tlv_at_cable_setup_t*, %struct.eigrp_tlv_at_cable_setup_t** %486, align 8
  %488 = getelementptr inbounds %struct.eigrp_tlv_at_cable_setup_t, %struct.eigrp_tlv_at_cable_setup_t* %487, i32 0, i32 1
  %489 = bitcast i32**** %488 to i32***
  %490 = call i32 @EXTRACT_16BITS(i32*** %489)
  %491 = bitcast %union.anon* %18 to %struct.eigrp_tlv_at_cable_setup_t**
  %492 = load %struct.eigrp_tlv_at_cable_setup_t*, %struct.eigrp_tlv_at_cable_setup_t** %491, align 8
  %493 = getelementptr inbounds %struct.eigrp_tlv_at_cable_setup_t, %struct.eigrp_tlv_at_cable_setup_t* %492, i32 0, i32 0
  %494 = bitcast i32**** %493 to i32***
  %495 = call i32 @EXTRACT_32BITS(i32*** %494)
  %496 = sext i32 %495 to i64
  %497 = inttoptr i64 %496 to %struct.TYPE_6__*
  %498 = call i32 @ND_PRINT(%struct.TYPE_6__* %497)
  br label %715

499:                                              ; preds = %156
  %500 = load i32*, i32** %10, align 8
  %501 = bitcast i32* %500 to %struct.eigrp_tlv_at_int_t*
  %502 = bitcast %union.anon* %18 to %struct.eigrp_tlv_at_int_t**
  store %struct.eigrp_tlv_at_int_t* %501, %struct.eigrp_tlv_at_int_t** %502, align 8
  %503 = load i32, i32* %14, align 4
  %504 = sext i32 %503 to i64
  %505 = icmp ult i64 %504, 56
  br i1 %505, label %506, label %509

506:                                              ; preds = %499
  %507 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %508 = call i32 @ND_PRINT(%struct.TYPE_6__* inttoptr (i64 72 to %struct.TYPE_6__*))
  br label %715

509:                                              ; preds = %499
  %510 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %511 = bitcast %union.anon* %18 to %struct.eigrp_tlv_at_int_t**
  %512 = load %struct.eigrp_tlv_at_int_t*, %struct.eigrp_tlv_at_int_t** %511, align 8
  %513 = getelementptr inbounds %struct.eigrp_tlv_at_int_t, %struct.eigrp_tlv_at_int_t* %512, i32 0, i32 8
  %514 = bitcast i32**** %513 to i32***
  %515 = call i32 @EXTRACT_16BITS(i32*** %514)
  %516 = bitcast %union.anon* %18 to %struct.eigrp_tlv_at_int_t**
  %517 = load %struct.eigrp_tlv_at_int_t*, %struct.eigrp_tlv_at_int_t** %516, align 8
  %518 = getelementptr inbounds %struct.eigrp_tlv_at_int_t, %struct.eigrp_tlv_at_int_t* %517, i32 0, i32 7
  %519 = bitcast i32**** %518 to i32***
  %520 = call i32 @EXTRACT_16BITS(i32*** %519)
  %521 = sext i32 %520 to i64
  %522 = inttoptr i64 %521 to %struct.TYPE_6__*
  %523 = call i32 @ND_PRINT(%struct.TYPE_6__* %522)
  %524 = bitcast %union.anon* %18 to %struct.eigrp_tlv_at_int_t**
  %525 = load %struct.eigrp_tlv_at_int_t*, %struct.eigrp_tlv_at_int_t** %524, align 8
  %526 = getelementptr inbounds %struct.eigrp_tlv_at_int_t, %struct.eigrp_tlv_at_int_t* %525, i32 0, i32 6
  %527 = bitcast i32***** %526 to i32***
  %528 = call i32 @EXTRACT_32BITS(i32*** %527)
  %529 = icmp eq i32 %528, 0
  br i1 %529, label %530, label %533

530:                                              ; preds = %509
  %531 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %532 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([5 x i8]* @.str.15 to %struct.TYPE_6__*))
  br label %550

533:                                              ; preds = %509
  %534 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %535 = bitcast %union.anon* %18 to %struct.eigrp_tlv_at_int_t**
  %536 = load %struct.eigrp_tlv_at_int_t*, %struct.eigrp_tlv_at_int_t** %535, align 8
  %537 = getelementptr inbounds %struct.eigrp_tlv_at_int_t, %struct.eigrp_tlv_at_int_t* %536, i32 0, i32 6
  %538 = bitcast i32***** %537 to i32***
  %539 = call i32 @EXTRACT_16BITS(i32*** %538)
  %540 = bitcast %union.anon* %18 to %struct.eigrp_tlv_at_int_t**
  %541 = load %struct.eigrp_tlv_at_int_t*, %struct.eigrp_tlv_at_int_t** %540, align 8
  %542 = getelementptr inbounds %struct.eigrp_tlv_at_int_t, %struct.eigrp_tlv_at_int_t* %541, i32 0, i32 6
  %543 = load i32****, i32***** %542, align 8
  %544 = getelementptr inbounds i32***, i32**** %543, i64 2
  %545 = bitcast i32**** %544 to i32***
  %546 = call i32 @EXTRACT_16BITS(i32*** %545)
  %547 = sext i32 %546 to i64
  %548 = inttoptr i64 %547 to %struct.TYPE_6__*
  %549 = call i32 @ND_PRINT(%struct.TYPE_6__* %548)
  br label %550

550:                                              ; preds = %533, %530
  %551 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %552 = bitcast %union.anon* %18 to %struct.eigrp_tlv_at_int_t**
  %553 = load %struct.eigrp_tlv_at_int_t*, %struct.eigrp_tlv_at_int_t** %552, align 8
  %554 = getelementptr inbounds %struct.eigrp_tlv_at_int_t, %struct.eigrp_tlv_at_int_t* %553, i32 0, i32 5
  %555 = bitcast i32**** %554 to i32***
  %556 = call i32 @EXTRACT_32BITS(i32*** %555)
  %557 = sdiv i32 %556, 100
  %558 = bitcast %union.anon* %18 to %struct.eigrp_tlv_at_int_t**
  %559 = load %struct.eigrp_tlv_at_int_t*, %struct.eigrp_tlv_at_int_t** %558, align 8
  %560 = getelementptr inbounds %struct.eigrp_tlv_at_int_t, %struct.eigrp_tlv_at_int_t* %559, i32 0, i32 4
  %561 = bitcast i32**** %560 to i32***
  %562 = call i32 @EXTRACT_32BITS(i32*** %561)
  %563 = bitcast %union.anon* %18 to %struct.eigrp_tlv_at_int_t**
  %564 = load %struct.eigrp_tlv_at_int_t*, %struct.eigrp_tlv_at_int_t** %563, align 8
  %565 = getelementptr inbounds %struct.eigrp_tlv_at_int_t, %struct.eigrp_tlv_at_int_t* %564, i32 0, i32 3
  %566 = call i32 @EXTRACT_24BITS(i32* %565)
  %567 = bitcast %union.anon* %18 to %struct.eigrp_tlv_at_int_t**
  %568 = load %struct.eigrp_tlv_at_int_t*, %struct.eigrp_tlv_at_int_t** %567, align 8
  %569 = getelementptr inbounds %struct.eigrp_tlv_at_int_t, %struct.eigrp_tlv_at_int_t* %568, i32 0, i32 2
  %570 = load i32, i32* %569, align 8
  %571 = bitcast %union.anon* %18 to %struct.eigrp_tlv_at_int_t**
  %572 = load %struct.eigrp_tlv_at_int_t*, %struct.eigrp_tlv_at_int_t** %571, align 8
  %573 = getelementptr inbounds %struct.eigrp_tlv_at_int_t, %struct.eigrp_tlv_at_int_t* %572, i32 0, i32 1
  %574 = load i32, i32* %573, align 4
  %575 = bitcast %union.anon* %18 to %struct.eigrp_tlv_at_int_t**
  %576 = load %struct.eigrp_tlv_at_int_t*, %struct.eigrp_tlv_at_int_t** %575, align 8
  %577 = getelementptr inbounds %struct.eigrp_tlv_at_int_t, %struct.eigrp_tlv_at_int_t* %576, i32 0, i32 0
  %578 = load i32, i32* %577, align 8
  %579 = sext i32 %578 to i64
  %580 = inttoptr i64 %579 to %struct.TYPE_6__*
  %581 = call i32 @ND_PRINT(%struct.TYPE_6__* %580)
  br label %715

582:                                              ; preds = %156
  %583 = load i32*, i32** %10, align 8
  %584 = bitcast i32* %583 to %struct.eigrp_tlv_at_ext_t*
  %585 = bitcast %union.anon* %18 to %struct.eigrp_tlv_at_ext_t**
  store %struct.eigrp_tlv_at_ext_t* %584, %struct.eigrp_tlv_at_ext_t** %585, align 8
  %586 = load i32, i32* %14, align 4
  %587 = sext i32 %586 to i64
  %588 = icmp ult i64 %587, 104
  br i1 %588, label %589, label %592

589:                                              ; preds = %582
  %590 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %591 = call i32 @ND_PRINT(%struct.TYPE_6__* inttoptr (i64 120 to %struct.TYPE_6__*))
  br label %715

592:                                              ; preds = %582
  %593 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %594 = bitcast %union.anon* %18 to %struct.eigrp_tlv_at_ext_t**
  %595 = load %struct.eigrp_tlv_at_ext_t*, %struct.eigrp_tlv_at_ext_t** %594, align 8
  %596 = getelementptr inbounds %struct.eigrp_tlv_at_ext_t, %struct.eigrp_tlv_at_ext_t* %595, i32 0, i32 14
  %597 = bitcast i32**** %596 to i32***
  %598 = call i32 @EXTRACT_16BITS(i32*** %597)
  %599 = bitcast %union.anon* %18 to %struct.eigrp_tlv_at_ext_t**
  %600 = load %struct.eigrp_tlv_at_ext_t*, %struct.eigrp_tlv_at_ext_t** %599, align 8
  %601 = getelementptr inbounds %struct.eigrp_tlv_at_ext_t, %struct.eigrp_tlv_at_ext_t* %600, i32 0, i32 13
  %602 = bitcast i32**** %601 to i32***
  %603 = call i32 @EXTRACT_16BITS(i32*** %602)
  %604 = sext i32 %603 to i64
  %605 = inttoptr i64 %604 to %struct.TYPE_6__*
  %606 = call i32 @ND_PRINT(%struct.TYPE_6__* %605)
  %607 = bitcast %union.anon* %18 to %struct.eigrp_tlv_at_ext_t**
  %608 = load %struct.eigrp_tlv_at_ext_t*, %struct.eigrp_tlv_at_ext_t** %607, align 8
  %609 = getelementptr inbounds %struct.eigrp_tlv_at_ext_t, %struct.eigrp_tlv_at_ext_t* %608, i32 0, i32 12
  %610 = bitcast i32***** %609 to i32***
  %611 = call i32 @EXTRACT_32BITS(i32*** %610)
  %612 = icmp eq i32 %611, 0
  br i1 %612, label %613, label %616

613:                                              ; preds = %592
  %614 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %615 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([5 x i8]* @.str.15 to %struct.TYPE_6__*))
  br label %633

616:                                              ; preds = %592
  %617 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %618 = bitcast %union.anon* %18 to %struct.eigrp_tlv_at_ext_t**
  %619 = load %struct.eigrp_tlv_at_ext_t*, %struct.eigrp_tlv_at_ext_t** %618, align 8
  %620 = getelementptr inbounds %struct.eigrp_tlv_at_ext_t, %struct.eigrp_tlv_at_ext_t* %619, i32 0, i32 12
  %621 = bitcast i32***** %620 to i32***
  %622 = call i32 @EXTRACT_16BITS(i32*** %621)
  %623 = bitcast %union.anon* %18 to %struct.eigrp_tlv_at_ext_t**
  %624 = load %struct.eigrp_tlv_at_ext_t*, %struct.eigrp_tlv_at_ext_t** %623, align 8
  %625 = getelementptr inbounds %struct.eigrp_tlv_at_ext_t, %struct.eigrp_tlv_at_ext_t* %624, i32 0, i32 12
  %626 = load i32****, i32***** %625, align 8
  %627 = getelementptr inbounds i32***, i32**** %626, i64 2
  %628 = bitcast i32**** %627 to i32***
  %629 = call i32 @EXTRACT_16BITS(i32*** %628)
  %630 = sext i32 %629 to i64
  %631 = inttoptr i64 %630 to %struct.TYPE_6__*
  %632 = call i32 @ND_PRINT(%struct.TYPE_6__* %631)
  br label %633

633:                                              ; preds = %616, %613
  %634 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %635 = bitcast %union.anon* %18 to %struct.eigrp_tlv_at_ext_t**
  %636 = load %struct.eigrp_tlv_at_ext_t*, %struct.eigrp_tlv_at_ext_t** %635, align 8
  %637 = getelementptr inbounds %struct.eigrp_tlv_at_ext_t, %struct.eigrp_tlv_at_ext_t* %636, i32 0, i32 11
  %638 = load i32****, i32***** %637, align 8
  %639 = bitcast i32**** %638 to i32***
  %640 = call i32 @EXTRACT_32BITS(i32*** %639)
  %641 = bitcast %union.anon* %18 to %struct.eigrp_tlv_at_ext_t**
  %642 = load %struct.eigrp_tlv_at_ext_t*, %struct.eigrp_tlv_at_ext_t** %641, align 8
  %643 = getelementptr inbounds %struct.eigrp_tlv_at_ext_t, %struct.eigrp_tlv_at_ext_t* %642, i32 0, i32 10
  %644 = load i32****, i32***** %643, align 8
  %645 = bitcast i32**** %644 to i32***
  %646 = call i32 @EXTRACT_32BITS(i32*** %645)
  %647 = load i32, i32* @eigrp_ext_proto_id_values, align 4
  %648 = bitcast %union.anon* %18 to %struct.eigrp_tlv_at_ext_t**
  %649 = load %struct.eigrp_tlv_at_ext_t*, %struct.eigrp_tlv_at_ext_t** %648, align 8
  %650 = getelementptr inbounds %struct.eigrp_tlv_at_ext_t, %struct.eigrp_tlv_at_ext_t* %649, i32 0, i32 0
  %651 = load i32, i32* %650, align 8
  %652 = call i32 @tok2str(i32 %647, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i32 %651)
  %653 = bitcast %union.anon* %18 to %struct.eigrp_tlv_at_ext_t**
  %654 = load %struct.eigrp_tlv_at_ext_t*, %struct.eigrp_tlv_at_ext_t** %653, align 8
  %655 = getelementptr inbounds %struct.eigrp_tlv_at_ext_t, %struct.eigrp_tlv_at_ext_t* %654, i32 0, i32 9
  %656 = load i32, i32* %655, align 8
  %657 = bitcast %union.anon* %18 to %struct.eigrp_tlv_at_ext_t**
  %658 = load %struct.eigrp_tlv_at_ext_t*, %struct.eigrp_tlv_at_ext_t** %657, align 8
  %659 = getelementptr inbounds %struct.eigrp_tlv_at_ext_t, %struct.eigrp_tlv_at_ext_t* %658, i32 0, i32 8
  %660 = load i32****, i32***** %659, align 8
  %661 = bitcast i32**** %660 to i32***
  %662 = call i32 @EXTRACT_32BITS(i32*** %661)
  %663 = bitcast %union.anon* %18 to %struct.eigrp_tlv_at_ext_t**
  %664 = load %struct.eigrp_tlv_at_ext_t*, %struct.eigrp_tlv_at_ext_t** %663, align 8
  %665 = getelementptr inbounds %struct.eigrp_tlv_at_ext_t, %struct.eigrp_tlv_at_ext_t* %664, i32 0, i32 7
  %666 = load i32****, i32***** %665, align 8
  %667 = bitcast i32**** %666 to i32***
  %668 = call i32 @EXTRACT_16BITS(i32*** %667)
  %669 = sext i32 %668 to i64
  %670 = inttoptr i64 %669 to %struct.TYPE_6__*
  %671 = call i32 @ND_PRINT(%struct.TYPE_6__* %670)
  %672 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %673 = bitcast %union.anon* %18 to %struct.eigrp_tlv_at_ext_t**
  %674 = load %struct.eigrp_tlv_at_ext_t*, %struct.eigrp_tlv_at_ext_t** %673, align 8
  %675 = getelementptr inbounds %struct.eigrp_tlv_at_ext_t, %struct.eigrp_tlv_at_ext_t* %674, i32 0, i32 6
  %676 = bitcast i32**** %675 to i32***
  %677 = call i32 @EXTRACT_32BITS(i32*** %676)
  %678 = sdiv i32 %677, 100
  %679 = bitcast %union.anon* %18 to %struct.eigrp_tlv_at_ext_t**
  %680 = load %struct.eigrp_tlv_at_ext_t*, %struct.eigrp_tlv_at_ext_t** %679, align 8
  %681 = getelementptr inbounds %struct.eigrp_tlv_at_ext_t, %struct.eigrp_tlv_at_ext_t* %680, i32 0, i32 5
  %682 = bitcast i32**** %681 to i32***
  %683 = call i32 @EXTRACT_32BITS(i32*** %682)
  %684 = bitcast %union.anon* %18 to %struct.eigrp_tlv_at_ext_t**
  %685 = load %struct.eigrp_tlv_at_ext_t*, %struct.eigrp_tlv_at_ext_t** %684, align 8
  %686 = getelementptr inbounds %struct.eigrp_tlv_at_ext_t, %struct.eigrp_tlv_at_ext_t* %685, i32 0, i32 4
  %687 = call i32 @EXTRACT_24BITS(i32* %686)
  %688 = bitcast %union.anon* %18 to %struct.eigrp_tlv_at_ext_t**
  %689 = load %struct.eigrp_tlv_at_ext_t*, %struct.eigrp_tlv_at_ext_t** %688, align 8
  %690 = getelementptr inbounds %struct.eigrp_tlv_at_ext_t, %struct.eigrp_tlv_at_ext_t* %689, i32 0, i32 3
  %691 = load i32, i32* %690, align 4
  %692 = bitcast %union.anon* %18 to %struct.eigrp_tlv_at_ext_t**
  %693 = load %struct.eigrp_tlv_at_ext_t*, %struct.eigrp_tlv_at_ext_t** %692, align 8
  %694 = getelementptr inbounds %struct.eigrp_tlv_at_ext_t, %struct.eigrp_tlv_at_ext_t* %693, i32 0, i32 2
  %695 = load i32, i32* %694, align 8
  %696 = bitcast %union.anon* %18 to %struct.eigrp_tlv_at_ext_t**
  %697 = load %struct.eigrp_tlv_at_ext_t*, %struct.eigrp_tlv_at_ext_t** %696, align 8
  %698 = getelementptr inbounds %struct.eigrp_tlv_at_ext_t, %struct.eigrp_tlv_at_ext_t* %697, i32 0, i32 1
  %699 = load i32, i32* %698, align 4
  %700 = sext i32 %699 to i64
  %701 = inttoptr i64 %700 to %struct.TYPE_6__*
  %702 = call i32 @ND_PRINT(%struct.TYPE_6__* %701)
  br label %715

703:                                              ; preds = %156, %156, %156, %156, %156
  br label %704

704:                                              ; preds = %156, %703
  %705 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %706 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %705, i32 0, i32 0
  %707 = load i32, i32* %706, align 4
  %708 = icmp sle i32 %707, 1
  br i1 %708, label %709, label %714

709:                                              ; preds = %704
  %710 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %711 = load i32*, i32** %10, align 8
  %712 = load i32, i32* %14, align 4
  %713 = call i32 @print_unknown_data(%struct.TYPE_6__* %710, i32* %711, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %712)
  br label %714

714:                                              ; preds = %709, %704
  br label %715

715:                                              ; preds = %714, %633, %589, %550, %506, %479, %476, %398, %352, %342, %303, %257, %247, %219, %216, %178, %175
  %716 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %717 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %716, i32 0, i32 0
  %718 = load i32, i32* %717, align 4
  %719 = icmp sgt i32 %718, 1
  br i1 %719, label %720, label %729

720:                                              ; preds = %715
  %721 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %722 = load i32*, i32** %9, align 8
  %723 = getelementptr inbounds i32, i32* %722, i64 16
  %724 = load i32, i32* %12, align 4
  %725 = sext i32 %724 to i64
  %726 = sub i64 %725, 16
  %727 = trunc i64 %726 to i32
  %728 = call i32 @print_unknown_data(%struct.TYPE_6__* %721, i32* %723, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %727)
  br label %729

729:                                              ; preds = %720, %715
  %730 = load i32, i32* %12, align 4
  %731 = load i32*, i32** %9, align 8
  %732 = sext i32 %730 to i64
  %733 = getelementptr inbounds i32, i32* %731, i64 %732
  store i32* %733, i32** %9, align 8
  %734 = load i32, i32* %12, align 4
  %735 = load i32, i32* %11, align 4
  %736 = sub nsw i32 %735, %734
  store i32 %736, i32* %11, align 4
  br label %110

737:                                              ; preds = %153, %110
  br label %741

738:                                              ; No predecessors!
  %739 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %740 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([29 x i8]* @.str.24 to %struct.TYPE_6__*))
  br label %741

741:                                              ; preds = %738, %737, %134, %56, %41, %29
  ret void
}

declare dso_local i32 @ND_TCHECK(%struct.eigrp_common_header* byval(%struct.eigrp_common_header) align 8) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_6__*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @EXTRACT_16BITS(i32***) #1

declare dso_local i32 @EXTRACT_32BITS(i32***) #1

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @print_unknown_data(%struct.TYPE_6__*, i32*, i8*, i32) #1

declare dso_local i32 @memset(i32***, i32, i32) #1

declare dso_local i32 @memcpy(i32***, i32*, i32) #1

declare dso_local i32 @ipaddr_string(%struct.TYPE_6__*, i32***) #1

declare dso_local i32 @EXTRACT_24BITS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
