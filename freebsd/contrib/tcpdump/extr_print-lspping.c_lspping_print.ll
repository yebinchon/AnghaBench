; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-lspping.c_lspping_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-lspping.c_lspping_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.lspping_common_header = type { i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32* }
%struct.lspping_tlv_header = type { i32*, i32* }
%struct.timeval = type { i64, i64 }
%union.anon = type { %struct.lspping_tlv_downstream_map_t* }
%struct.lspping_tlv_downstream_map_t = type { i32, i32* }
%union.anon.0 = type { %struct.lspping_tlv_targetfec_subtlv_ldp_ipv4_t* }
%struct.lspping_tlv_targetfec_subtlv_ldp_ipv4_t = type { i32, i32 }
%struct.lspping_tlv_targetfec_subtlv_ldp_ipv6_t = type { i32, i32 }
%struct.lspping_tlv_targetfec_subtlv_bgp_ipv4_t = type { i32, i32 }
%struct.lspping_tlv_targetfec_subtlv_bgp_ipv6_t = type { i32, i32 }
%struct.lspping_tlv_targetfec_subtlv_rsvp_ipv4_t = type { i32, i32*, i32*, i32, i32 }
%struct.lspping_tlv_targetfec_subtlv_rsvp_ipv6_t = type { i32, i32*, i32*, i32, i32 }
%struct.lspping_tlv_targetfec_subtlv_l3vpn_ipv4_t = type { i32, i32, i32 }
%struct.lspping_tlv_targetfec_subtlv_l3vpn_ipv6_t = type { i32, i32, i32 }
%struct.lspping_tlv_targetfec_subtlv_l2vpn_endpt_t = type { i32*, i32*, i32*, i32 }
%struct.lspping_tlv_targetfec_subtlv_fec_128_pw_old = type { i32*, i32*, i32 }
%struct.lspping_tlv_targetfec_subtlv_fec_128_pw = type { i32*, i32*, i32, i32 }
%struct.lspping_tlv_downstream_map_ipv4_t = type { i32, i32 }
%struct.lspping_tlv_downstream_map_ipv4_unmb_t = type { i32*, i32 }
%struct.lspping_tlv_downstream_map_ipv6_t = type { i32, i32 }
%struct.lspping_tlv_downstream_map_ipv6_unmb_t = type { i32*, i32 }
%struct.lspping_tlv_downstream_map_info_t = type { i32 }

@LSPPING_VERSION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"LSP-PING version %u packet not supported\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"LSP-PINGv%u, %s, seq %u, length: %u\00", align 1
@lspping_msg_type_values = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"unknown (%u)\00", align 1
@.str.3 = private unnamed_addr constant [68 x i8] c"\0A\09LSP-PINGv%u, msg-type: %s (%u), length: %u\0A\09  reply-mode: %s (%u)\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@lspping_reply_mode_values = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [52 x i8] c"\0A\09  Return Code: %s %u (%u)\0A\09  Return Subcode: (%u)\00", align 1
@lspping_return_code_values = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [49 x i8] c"\0A\09  Return Code: %s (%u)\0A\09  Return Subcode: (%u)\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"\0A\09  Sender Handle: 0x%08x, Sequence: %u\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"\0A\09  Sender Timestamp: \00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"Receiver Timestamp: \00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"no timestamp\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"\0A\09  %s TLV (%u), length: %u\00", align 1
@lspping_tlv_values = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [25 x i8] c"\0A\09      TLV is too short\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [33 x i8] c"\0A\09    %s subTLV (%u), length: %u\00", align 1
@lspping_tlvtargetfec_subtlv_values = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [43 x i8] c"\0A\09      invalid subTLV length, should be 5\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"\0A\09      %s/%u\00", align 1
@.str.17 = private unnamed_addr constant [44 x i8] c"\0A\09      invalid subTLV length, should be 17\00", align 1
@.str.18 = private unnamed_addr constant [44 x i8] c"\0A\09      invalid subTLV length, should be 20\00", align 1
@.str.19 = private unnamed_addr constant [108 x i8] c"\0A\09      tunnel end-point %s, tunnel sender %s, lsp-id 0x%04x\0A\09      tunnel-id 0x%04x, extended tunnel-id %s\00", align 1
@.str.20 = private unnamed_addr constant [44 x i8] c"\0A\09      invalid subTLV length, should be 56\00", align 1
@.str.21 = private unnamed_addr constant [44 x i8] c"\0A\09      invalid subTLV length, should be 13\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"\0A\09      RD: %s, %s/%u\00", align 1
@.str.23 = private unnamed_addr constant [44 x i8] c"\0A\09      invalid subTLV length, should be 25\00", align 1
@.str.24 = private unnamed_addr constant [44 x i8] c"\0A\09      invalid subTLV length, should be 14\00", align 1
@.str.25 = private unnamed_addr constant [88 x i8] c"\0A\09      RD: %s, Sender VE ID: %u, Receiver VE ID: %u\0A\09      Encapsulation Type: %s (%u)\00", align 1
@mpls_pw_types_values = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [44 x i8] c"\0A\09      invalid subTLV length, should be 10\00", align 1
@.str.27 = private unnamed_addr constant [61 x i8] c"\0A\09      Remote PE: %s\0A\09      PW ID: 0x%08x, PW Type: %s (%u)\00", align 1
@.str.28 = private unnamed_addr constant [76 x i8] c"\0A\09      Sender PE: %s, Remote PE: %s\0A\09      PW ID: 0x%08x, PW Type: %s (%u)\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"\0A\09      \00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c"\0A\09\09 TLV is too short\00", align 1
@.str.31 = private unnamed_addr constant [37 x i8] c"\0A\09    MTU: %u, Address-Type: %s (%u)\00", align 1
@lspping_tlv_downstream_addr_values = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [57 x i8] c"\0A\09    Downstream IP: %s\0A\09    Downstream Interface IP: %s\00", align 1
@.str.33 = private unnamed_addr constant [64 x i8] c"\0A\09    Downstream IP: %s\0A\09    Downstream Interface Index: 0x%08x\00", align 1
@LSPPING_TLV_BFD_DISCRIMINATOR_LEN = common dso_local global i32 0, align 4
@.str.34 = private unnamed_addr constant [31 x i8] c"\0A\09    BFD Discriminator 0x%08x\00", align 1
@LSPPING_TLV_VENDOR_ENTERPRISE_LEN = common dso_local global i32 0, align 4
@.str.35 = private unnamed_addr constant [26 x i8] c"\0A\09    Vendor: %s (0x%04x)\00", align 1
@smi_values = common dso_local global i32 0, align 4
@.str.36 = private unnamed_addr constant [7 x i8] c"\0A\09    \00", align 1
@.str.37 = private unnamed_addr constant [24 x i8] c"\0A\09\09 packet is too short\00", align 1
@.str.38 = private unnamed_addr constant [29 x i8] c"\0A\09\09 packet exceeded snapshot\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lspping_print(%struct.TYPE_9__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.lspping_common_header*, align 8
  %8 = alloca %struct.lspping_tlv_header*, align 8
  %9 = alloca %struct.lspping_tlv_header*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.timeval, align 8
  %22 = alloca %union.anon, align 8
  %23 = alloca %union.anon.0, align 8
  %24 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %25 = load i32*, i32** %5, align 8
  store i32* %25, i32** %10, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = bitcast i32* %26 to %struct.lspping_common_header*
  store %struct.lspping_common_header* %27, %struct.lspping_common_header** %7, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = icmp ult i64 %29, 80
  br i1 %30, label %31, label %32

31:                                               ; preds = %3
  br label %1087

32:                                               ; preds = %3
  %33 = load %struct.lspping_common_header*, %struct.lspping_common_header** %7, align 8
  %34 = call i32 @ND_TCHECK(%struct.lspping_common_header* byval(%struct.lspping_common_header) align 8 %33)
  %35 = load %struct.lspping_common_header*, %struct.lspping_common_header** %7, align 8
  %36 = getelementptr inbounds %struct.lspping_common_header, %struct.lspping_common_header* %35, i32 0, i32 10
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = call i32 @EXTRACT_16BITS(i32* %38)
  %40 = sext i32 %39 to i64
  %41 = load i64, i64* @LSPPING_VERSION, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %32
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %45 = load %struct.lspping_common_header*, %struct.lspping_common_header** %7, align 8
  %46 = getelementptr inbounds %struct.lspping_common_header, %struct.lspping_common_header* %45, i32 0, i32 10
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = call i32 @EXTRACT_16BITS(i32* %48)
  %50 = sext i32 %49 to i64
  %51 = inttoptr i64 %50 to %struct.TYPE_9__*
  %52 = call i32 @ND_PRINT(%struct.TYPE_9__* %51)
  br label %1093

53:                                               ; preds = %32
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %56, 1
  br i1 %57, label %58, label %78

58:                                               ; preds = %53
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %60 = load %struct.lspping_common_header*, %struct.lspping_common_header** %7, align 8
  %61 = getelementptr inbounds %struct.lspping_common_header, %struct.lspping_common_header* %60, i32 0, i32 10
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = call i32 @EXTRACT_16BITS(i32* %63)
  %65 = load i32, i32* @lspping_msg_type_values, align 4
  %66 = load %struct.lspping_common_header*, %struct.lspping_common_header** %7, align 8
  %67 = getelementptr inbounds %struct.lspping_common_header, %struct.lspping_common_header* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @tok2str(i32 %65, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  %70 = load %struct.lspping_common_header*, %struct.lspping_common_header** %7, align 8
  %71 = getelementptr inbounds %struct.lspping_common_header, %struct.lspping_common_header* %70, i32 0, i32 7
  %72 = load i32*, i32** %71, align 8
  %73 = call i8* @EXTRACT_32BITS(i32* %72)
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = inttoptr i64 %75 to %struct.TYPE_9__*
  %77 = call i32 @ND_PRINT(%struct.TYPE_9__* %76)
  br label %1093

78:                                               ; preds = %53
  %79 = load i32, i32* %6, align 4
  store i32 %79, i32* %13, align 4
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %81 = load %struct.lspping_common_header*, %struct.lspping_common_header** %7, align 8
  %82 = getelementptr inbounds %struct.lspping_common_header, %struct.lspping_common_header* %81, i32 0, i32 10
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = call i32 @EXTRACT_16BITS(i32* %84)
  %86 = load i32, i32* @lspping_msg_type_values, align 4
  %87 = load %struct.lspping_common_header*, %struct.lspping_common_header** %7, align 8
  %88 = getelementptr inbounds %struct.lspping_common_header, %struct.lspping_common_header* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @tok2str(i32 %86, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %89)
  %91 = load %struct.lspping_common_header*, %struct.lspping_common_header** %7, align 8
  %92 = getelementptr inbounds %struct.lspping_common_header, %struct.lspping_common_header* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* @lspping_reply_mode_values, align 4
  %96 = load %struct.lspping_common_header*, %struct.lspping_common_header** %7, align 8
  %97 = getelementptr inbounds %struct.lspping_common_header, %struct.lspping_common_header* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @tok2str(i32 %95, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %98)
  %100 = load %struct.lspping_common_header*, %struct.lspping_common_header** %7, align 8
  %101 = getelementptr inbounds %struct.lspping_common_header, %struct.lspping_common_header* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = inttoptr i64 %103 to %struct.TYPE_9__*
  %105 = call i32 @ND_PRINT(%struct.TYPE_9__* %104)
  %106 = load %struct.lspping_common_header*, %struct.lspping_common_header** %7, align 8
  %107 = getelementptr inbounds %struct.lspping_common_header, %struct.lspping_common_header* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = icmp eq i32 %108, 3
  br i1 %109, label %135, label %110

110:                                              ; preds = %78
  %111 = load %struct.lspping_common_header*, %struct.lspping_common_header** %7, align 8
  %112 = getelementptr inbounds %struct.lspping_common_header, %struct.lspping_common_header* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = icmp eq i32 %113, 4
  br i1 %114, label %135, label %115

115:                                              ; preds = %110
  %116 = load %struct.lspping_common_header*, %struct.lspping_common_header** %7, align 8
  %117 = getelementptr inbounds %struct.lspping_common_header, %struct.lspping_common_header* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = icmp eq i32 %118, 8
  br i1 %119, label %135, label %120

120:                                              ; preds = %115
  %121 = load %struct.lspping_common_header*, %struct.lspping_common_header** %7, align 8
  %122 = getelementptr inbounds %struct.lspping_common_header, %struct.lspping_common_header* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = icmp eq i32 %123, 10
  br i1 %124, label %135, label %125

125:                                              ; preds = %120
  %126 = load %struct.lspping_common_header*, %struct.lspping_common_header** %7, align 8
  %127 = getelementptr inbounds %struct.lspping_common_header, %struct.lspping_common_header* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = icmp eq i32 %128, 11
  br i1 %129, label %135, label %130

130:                                              ; preds = %125
  %131 = load %struct.lspping_common_header*, %struct.lspping_common_header** %7, align 8
  %132 = getelementptr inbounds %struct.lspping_common_header, %struct.lspping_common_header* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = icmp eq i32 %133, 12
  br i1 %134, label %135, label %154

135:                                              ; preds = %130, %125, %120, %115, %110, %78
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %137 = load i32, i32* @lspping_return_code_values, align 4
  %138 = load %struct.lspping_common_header*, %struct.lspping_common_header** %7, align 8
  %139 = getelementptr inbounds %struct.lspping_common_header, %struct.lspping_common_header* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @tok2str(i32 %137, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %140)
  %142 = load %struct.lspping_common_header*, %struct.lspping_common_header** %7, align 8
  %143 = getelementptr inbounds %struct.lspping_common_header, %struct.lspping_common_header* %142, i32 0, i32 9
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.lspping_common_header*, %struct.lspping_common_header** %7, align 8
  %146 = getelementptr inbounds %struct.lspping_common_header, %struct.lspping_common_header* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.lspping_common_header*, %struct.lspping_common_header** %7, align 8
  %149 = getelementptr inbounds %struct.lspping_common_header, %struct.lspping_common_header* %148, i32 0, i32 9
  %150 = load i32, i32* %149, align 8
  %151 = sext i32 %150 to i64
  %152 = inttoptr i64 %151 to %struct.TYPE_9__*
  %153 = call i32 @ND_PRINT(%struct.TYPE_9__* %152)
  br label %170

154:                                              ; preds = %130
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %156 = load i32, i32* @lspping_return_code_values, align 4
  %157 = load %struct.lspping_common_header*, %struct.lspping_common_header** %7, align 8
  %158 = getelementptr inbounds %struct.lspping_common_header, %struct.lspping_common_header* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @tok2str(i32 %156, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %159)
  %161 = load %struct.lspping_common_header*, %struct.lspping_common_header** %7, align 8
  %162 = getelementptr inbounds %struct.lspping_common_header, %struct.lspping_common_header* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.lspping_common_header*, %struct.lspping_common_header** %7, align 8
  %165 = getelementptr inbounds %struct.lspping_common_header, %struct.lspping_common_header* %164, i32 0, i32 9
  %166 = load i32, i32* %165, align 8
  %167 = sext i32 %166 to i64
  %168 = inttoptr i64 %167 to %struct.TYPE_9__*
  %169 = call i32 @ND_PRINT(%struct.TYPE_9__* %168)
  br label %170

170:                                              ; preds = %154, %135
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %172 = load %struct.lspping_common_header*, %struct.lspping_common_header** %7, align 8
  %173 = getelementptr inbounds %struct.lspping_common_header, %struct.lspping_common_header* %172, i32 0, i32 8
  %174 = load i32*, i32** %173, align 8
  %175 = call i8* @EXTRACT_32BITS(i32* %174)
  %176 = load %struct.lspping_common_header*, %struct.lspping_common_header** %7, align 8
  %177 = getelementptr inbounds %struct.lspping_common_header, %struct.lspping_common_header* %176, i32 0, i32 7
  %178 = load i32*, i32** %177, align 8
  %179 = call i8* @EXTRACT_32BITS(i32* %178)
  %180 = bitcast i8* %179 to %struct.TYPE_9__*
  %181 = call i32 @ND_PRINT(%struct.TYPE_9__* %180)
  %182 = load %struct.lspping_common_header*, %struct.lspping_common_header** %7, align 8
  %183 = getelementptr inbounds %struct.lspping_common_header, %struct.lspping_common_header* %182, i32 0, i32 6
  %184 = load i32*, i32** %183, align 8
  %185 = call i8* @EXTRACT_32BITS(i32* %184)
  %186 = ptrtoint i8* %185 to i64
  %187 = getelementptr inbounds %struct.timeval, %struct.timeval* %21, i32 0, i32 0
  store i64 %186, i64* %187, align 8
  %188 = load %struct.lspping_common_header*, %struct.lspping_common_header** %7, align 8
  %189 = getelementptr inbounds %struct.lspping_common_header, %struct.lspping_common_header* %188, i32 0, i32 5
  %190 = load i32*, i32** %189, align 8
  %191 = call i8* @EXTRACT_32BITS(i32* %190)
  %192 = ptrtoint i8* %191 to i64
  %193 = getelementptr inbounds %struct.timeval, %struct.timeval* %21, i32 0, i32 1
  store i64 %192, i64* %193, align 8
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %195 = call i32 @ND_PRINT(%struct.TYPE_9__* bitcast ([23 x i8]* @.str.8 to %struct.TYPE_9__*))
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %197 = call i32 @ts_print(%struct.TYPE_9__* %196, %struct.timeval* %21)
  %198 = load %struct.lspping_common_header*, %struct.lspping_common_header** %7, align 8
  %199 = getelementptr inbounds %struct.lspping_common_header, %struct.lspping_common_header* %198, i32 0, i32 4
  %200 = load i32*, i32** %199, align 8
  %201 = call i8* @EXTRACT_32BITS(i32* %200)
  %202 = ptrtoint i8* %201 to i64
  %203 = getelementptr inbounds %struct.timeval, %struct.timeval* %21, i32 0, i32 0
  store i64 %202, i64* %203, align 8
  %204 = load %struct.lspping_common_header*, %struct.lspping_common_header** %7, align 8
  %205 = getelementptr inbounds %struct.lspping_common_header, %struct.lspping_common_header* %204, i32 0, i32 3
  %206 = load i32*, i32** %205, align 8
  %207 = call i8* @EXTRACT_32BITS(i32* %206)
  %208 = ptrtoint i8* %207 to i64
  %209 = getelementptr inbounds %struct.timeval, %struct.timeval* %21, i32 0, i32 1
  store i64 %208, i64* %209, align 8
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %211 = call i32 @ND_PRINT(%struct.TYPE_9__* bitcast ([21 x i8]* @.str.9 to %struct.TYPE_9__*))
  %212 = getelementptr inbounds %struct.timeval, %struct.timeval* %21, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %222

215:                                              ; preds = %170
  %216 = getelementptr inbounds %struct.timeval, %struct.timeval* %21, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %215
  %220 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %221 = call i32 @ts_print(%struct.TYPE_9__* %220, %struct.timeval* %21)
  br label %225

222:                                              ; preds = %215, %170
  %223 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %224 = call i32 @ND_PRINT(%struct.TYPE_9__* bitcast ([13 x i8]* @.str.10 to %struct.TYPE_9__*))
  br label %225

225:                                              ; preds = %222, %219
  %226 = load i32*, i32** %10, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 80
  store i32* %227, i32** %10, align 8
  %228 = load i32, i32* %13, align 4
  %229 = sext i32 %228 to i64
  %230 = sub i64 %229, 80
  %231 = trunc i64 %230 to i32
  store i32 %231, i32* %13, align 4
  br label %232

232:                                              ; preds = %1073, %265, %225
  %233 = load i32, i32* %13, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %1086

235:                                              ; preds = %232
  %236 = load i32, i32* %13, align 4
  %237 = sext i32 %236 to i64
  %238 = icmp ult i64 %237, 16
  br i1 %238, label %239, label %240

239:                                              ; preds = %235
  br label %1087

240:                                              ; preds = %235
  %241 = load i32*, i32** %10, align 8
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @ND_TCHECK2(i32 %242, i32 16)
  %244 = load i32*, i32** %10, align 8
  %245 = bitcast i32* %244 to %struct.lspping_tlv_header*
  store %struct.lspping_tlv_header* %245, %struct.lspping_tlv_header** %8, align 8
  %246 = load %struct.lspping_tlv_header*, %struct.lspping_tlv_header** %8, align 8
  %247 = getelementptr inbounds %struct.lspping_tlv_header, %struct.lspping_tlv_header* %246, i32 0, i32 1
  %248 = load i32*, i32** %247, align 8
  %249 = call i32 @EXTRACT_16BITS(i32* %248)
  store i32 %249, i32* %15, align 4
  %250 = load %struct.lspping_tlv_header*, %struct.lspping_tlv_header** %8, align 8
  %251 = getelementptr inbounds %struct.lspping_tlv_header, %struct.lspping_tlv_header* %250, i32 0, i32 0
  %252 = load i32*, i32** %251, align 8
  %253 = call i32 @EXTRACT_16BITS(i32* %252)
  store i32 %253, i32* %14, align 4
  %254 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %255 = load i32, i32* @lspping_tlv_values, align 4
  %256 = load i32, i32* %15, align 4
  %257 = call i32 @tok2str(i32 %255, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 %256)
  %258 = load i32, i32* %15, align 4
  %259 = load i32, i32* %14, align 4
  %260 = sext i32 %259 to i64
  %261 = inttoptr i64 %260 to %struct.TYPE_9__*
  %262 = call i32 @ND_PRINT(%struct.TYPE_9__* %261)
  %263 = load i32, i32* %14, align 4
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %272

265:                                              ; preds = %240
  %266 = load i32*, i32** %10, align 8
  %267 = getelementptr inbounds i32, i32* %266, i64 16
  store i32* %267, i32** %10, align 8
  %268 = load i32, i32* %13, align 4
  %269 = sext i32 %268 to i64
  %270 = sub i64 %269, 16
  %271 = trunc i64 %270 to i32
  store i32 %271, i32* %13, align 4
  br label %232

272:                                              ; preds = %240
  %273 = load i32*, i32** %10, align 8
  %274 = getelementptr inbounds i32, i32* %273, i64 16
  store i32* %274, i32** %11, align 8
  %275 = load i32, i32* %14, align 4
  store i32 %275, i32* %16, align 4
  %276 = load i32, i32* %13, align 4
  %277 = sext i32 %276 to i64
  %278 = load i32, i32* %14, align 4
  %279 = sext i32 %278 to i64
  %280 = add i64 %279, 16
  %281 = icmp ult i64 %277, %280
  br i1 %281, label %282, label %283

282:                                              ; preds = %272
  br label %1087

283:                                              ; preds = %272
  %284 = load i32*, i32** %11, align 8
  %285 = load i32, i32* %284, align 4
  %286 = load i32, i32* %14, align 4
  %287 = call i32 @ND_TCHECK2(i32 %285, i32 %286)
  %288 = load i32, i32* @FALSE, align 4
  store i32 %288, i32* %17, align 4
  %289 = load i32, i32* %15, align 4
  switch i32 %289, label %1028 [
    i32 130, label %290
    i32 144, label %778
    i32 145, label %983
    i32 129, label %1002
    i32 142, label %1027
    i32 143, label %1027
    i32 128, label %1027
  ]

290:                                              ; preds = %283
  br label %291

291:                                              ; preds = %765, %290
  %292 = load i32, i32* %16, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %777

294:                                              ; preds = %291
  %295 = load i32, i32* %16, align 4
  %296 = sext i32 %295 to i64
  %297 = icmp ult i64 %296, 16
  br i1 %297, label %298, label %302

298:                                              ; preds = %294
  %299 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %300 = call i32 @ND_PRINT(%struct.TYPE_9__* bitcast ([25 x i8]* @.str.13 to %struct.TYPE_9__*))
  %301 = load i32, i32* @TRUE, align 4
  store i32 %301, i32* %17, align 4
  br label %1040

302:                                              ; preds = %294
  %303 = load i32*, i32** %11, align 8
  %304 = load i32, i32* %303, align 4
  %305 = call i32 @ND_TCHECK2(i32 %304, i32 16)
  %306 = load i32, i32* @FALSE, align 4
  store i32 %306, i32* %18, align 4
  %307 = load i32*, i32** %11, align 8
  %308 = bitcast i32* %307 to %struct.lspping_tlv_header*
  store %struct.lspping_tlv_header* %308, %struct.lspping_tlv_header** %9, align 8
  %309 = load %struct.lspping_tlv_header*, %struct.lspping_tlv_header** %9, align 8
  %310 = getelementptr inbounds %struct.lspping_tlv_header, %struct.lspping_tlv_header* %309, i32 0, i32 1
  %311 = load i32*, i32** %310, align 8
  %312 = call i32 @EXTRACT_16BITS(i32* %311)
  store i32 %312, i32* %20, align 4
  %313 = load %struct.lspping_tlv_header*, %struct.lspping_tlv_header** %9, align 8
  %314 = getelementptr inbounds %struct.lspping_tlv_header, %struct.lspping_tlv_header* %313, i32 0, i32 0
  %315 = load i32*, i32** %314, align 8
  %316 = call i32 @EXTRACT_16BITS(i32* %315)
  store i32 %316, i32* %19, align 4
  %317 = load i32*, i32** %11, align 8
  %318 = getelementptr inbounds i32, i32* %317, i64 16
  store i32* %318, i32** %12, align 8
  %319 = load i32, i32* %16, align 4
  %320 = sext i32 %319 to i64
  %321 = load i32, i32* %19, align 4
  %322 = sext i32 %321 to i64
  %323 = add i64 %322, 16
  %324 = icmp ult i64 %320, %323
  br i1 %324, label %325, label %329

325:                                              ; preds = %302
  %326 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %327 = call i32 @ND_PRINT(%struct.TYPE_9__* bitcast ([25 x i8]* @.str.13 to %struct.TYPE_9__*))
  %328 = load i32, i32* @TRUE, align 4
  store i32 %328, i32* %17, align 4
  br label %1040

329:                                              ; preds = %302
  %330 = load i32*, i32** %12, align 8
  %331 = load i32, i32* %330, align 4
  %332 = load i32, i32* %19, align 4
  %333 = call i32 @ND_TCHECK2(i32 %331, i32 %332)
  %334 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %335 = load i32, i32* @lspping_tlvtargetfec_subtlv_values, align 4
  %336 = load i32, i32* %20, align 4
  %337 = call i32 @tok2str(i32 %335, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 %336)
  %338 = load i32, i32* %20, align 4
  %339 = load i32, i32* %19, align 4
  %340 = sext i32 %339 to i64
  %341 = inttoptr i64 %340 to %struct.TYPE_9__*
  %342 = call i32 @ND_PRINT(%struct.TYPE_9__* %341)
  %343 = load i32, i32* %20, align 4
  switch i32 %343, label %728 [
    i32 134, label %344
    i32 133, label %370
    i32 141, label %396
    i32 140, label %422
    i32 132, label %448
    i32 131, label %492
    i32 136, label %536
    i32 135, label %568
    i32 137, label %600
    i32 138, label %644
    i32 139, label %683
  ]

344:                                              ; preds = %329
  %345 = load i32, i32* %19, align 4
  %346 = icmp ne i32 %345, 5
  br i1 %346, label %347, label %351

347:                                              ; preds = %344
  %348 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %349 = call i32 @ND_PRINT(%struct.TYPE_9__* bitcast ([43 x i8]* @.str.15 to %struct.TYPE_9__*))
  %350 = load i32, i32* @TRUE, align 4
  store i32 %350, i32* %18, align 4
  br label %369

351:                                              ; preds = %344
  %352 = load i32*, i32** %12, align 8
  %353 = bitcast i32* %352 to %struct.lspping_tlv_targetfec_subtlv_ldp_ipv4_t*
  %354 = bitcast %union.anon.0* %23 to %struct.lspping_tlv_targetfec_subtlv_ldp_ipv4_t**
  store %struct.lspping_tlv_targetfec_subtlv_ldp_ipv4_t* %353, %struct.lspping_tlv_targetfec_subtlv_ldp_ipv4_t** %354, align 8
  %355 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %356 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %357 = bitcast %union.anon.0* %23 to %struct.lspping_tlv_targetfec_subtlv_ldp_ipv4_t**
  %358 = load %struct.lspping_tlv_targetfec_subtlv_ldp_ipv4_t*, %struct.lspping_tlv_targetfec_subtlv_ldp_ipv4_t** %357, align 8
  %359 = getelementptr inbounds %struct.lspping_tlv_targetfec_subtlv_ldp_ipv4_t, %struct.lspping_tlv_targetfec_subtlv_ldp_ipv4_t* %358, i32 0, i32 1
  %360 = load i32, i32* %359, align 4
  %361 = call i32 @ipaddr_string(%struct.TYPE_9__* %356, i32 %360)
  %362 = bitcast %union.anon.0* %23 to %struct.lspping_tlv_targetfec_subtlv_ldp_ipv4_t**
  %363 = load %struct.lspping_tlv_targetfec_subtlv_ldp_ipv4_t*, %struct.lspping_tlv_targetfec_subtlv_ldp_ipv4_t** %362, align 8
  %364 = getelementptr inbounds %struct.lspping_tlv_targetfec_subtlv_ldp_ipv4_t, %struct.lspping_tlv_targetfec_subtlv_ldp_ipv4_t* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 4
  %366 = sext i32 %365 to i64
  %367 = inttoptr i64 %366 to %struct.TYPE_9__*
  %368 = call i32 @ND_PRINT(%struct.TYPE_9__* %367)
  br label %369

369:                                              ; preds = %351, %347
  br label %730

370:                                              ; preds = %329
  %371 = load i32, i32* %19, align 4
  %372 = icmp ne i32 %371, 17
  br i1 %372, label %373, label %377

373:                                              ; preds = %370
  %374 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %375 = call i32 @ND_PRINT(%struct.TYPE_9__* bitcast ([44 x i8]* @.str.17 to %struct.TYPE_9__*))
  %376 = load i32, i32* @TRUE, align 4
  store i32 %376, i32* %18, align 4
  br label %395

377:                                              ; preds = %370
  %378 = load i32*, i32** %12, align 8
  %379 = bitcast i32* %378 to %struct.lspping_tlv_targetfec_subtlv_ldp_ipv6_t*
  %380 = bitcast %union.anon.0* %23 to %struct.lspping_tlv_targetfec_subtlv_ldp_ipv6_t**
  store %struct.lspping_tlv_targetfec_subtlv_ldp_ipv6_t* %379, %struct.lspping_tlv_targetfec_subtlv_ldp_ipv6_t** %380, align 8
  %381 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %382 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %383 = bitcast %union.anon.0* %23 to %struct.lspping_tlv_targetfec_subtlv_ldp_ipv6_t**
  %384 = load %struct.lspping_tlv_targetfec_subtlv_ldp_ipv6_t*, %struct.lspping_tlv_targetfec_subtlv_ldp_ipv6_t** %383, align 8
  %385 = getelementptr inbounds %struct.lspping_tlv_targetfec_subtlv_ldp_ipv6_t, %struct.lspping_tlv_targetfec_subtlv_ldp_ipv6_t* %384, i32 0, i32 1
  %386 = load i32, i32* %385, align 4
  %387 = call i32 @ip6addr_string(%struct.TYPE_9__* %382, i32 %386)
  %388 = bitcast %union.anon.0* %23 to %struct.lspping_tlv_targetfec_subtlv_ldp_ipv6_t**
  %389 = load %struct.lspping_tlv_targetfec_subtlv_ldp_ipv6_t*, %struct.lspping_tlv_targetfec_subtlv_ldp_ipv6_t** %388, align 8
  %390 = getelementptr inbounds %struct.lspping_tlv_targetfec_subtlv_ldp_ipv6_t, %struct.lspping_tlv_targetfec_subtlv_ldp_ipv6_t* %389, i32 0, i32 0
  %391 = load i32, i32* %390, align 4
  %392 = sext i32 %391 to i64
  %393 = inttoptr i64 %392 to %struct.TYPE_9__*
  %394 = call i32 @ND_PRINT(%struct.TYPE_9__* %393)
  br label %395

395:                                              ; preds = %377, %373
  br label %730

396:                                              ; preds = %329
  %397 = load i32, i32* %19, align 4
  %398 = icmp ne i32 %397, 5
  br i1 %398, label %399, label %403

399:                                              ; preds = %396
  %400 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %401 = call i32 @ND_PRINT(%struct.TYPE_9__* bitcast ([43 x i8]* @.str.15 to %struct.TYPE_9__*))
  %402 = load i32, i32* @TRUE, align 4
  store i32 %402, i32* %18, align 4
  br label %421

403:                                              ; preds = %396
  %404 = load i32*, i32** %12, align 8
  %405 = bitcast i32* %404 to %struct.lspping_tlv_targetfec_subtlv_bgp_ipv4_t*
  %406 = bitcast %union.anon.0* %23 to %struct.lspping_tlv_targetfec_subtlv_bgp_ipv4_t**
  store %struct.lspping_tlv_targetfec_subtlv_bgp_ipv4_t* %405, %struct.lspping_tlv_targetfec_subtlv_bgp_ipv4_t** %406, align 8
  %407 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %408 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %409 = bitcast %union.anon.0* %23 to %struct.lspping_tlv_targetfec_subtlv_bgp_ipv4_t**
  %410 = load %struct.lspping_tlv_targetfec_subtlv_bgp_ipv4_t*, %struct.lspping_tlv_targetfec_subtlv_bgp_ipv4_t** %409, align 8
  %411 = getelementptr inbounds %struct.lspping_tlv_targetfec_subtlv_bgp_ipv4_t, %struct.lspping_tlv_targetfec_subtlv_bgp_ipv4_t* %410, i32 0, i32 1
  %412 = load i32, i32* %411, align 4
  %413 = call i32 @ipaddr_string(%struct.TYPE_9__* %408, i32 %412)
  %414 = bitcast %union.anon.0* %23 to %struct.lspping_tlv_targetfec_subtlv_bgp_ipv4_t**
  %415 = load %struct.lspping_tlv_targetfec_subtlv_bgp_ipv4_t*, %struct.lspping_tlv_targetfec_subtlv_bgp_ipv4_t** %414, align 8
  %416 = getelementptr inbounds %struct.lspping_tlv_targetfec_subtlv_bgp_ipv4_t, %struct.lspping_tlv_targetfec_subtlv_bgp_ipv4_t* %415, i32 0, i32 0
  %417 = load i32, i32* %416, align 4
  %418 = sext i32 %417 to i64
  %419 = inttoptr i64 %418 to %struct.TYPE_9__*
  %420 = call i32 @ND_PRINT(%struct.TYPE_9__* %419)
  br label %421

421:                                              ; preds = %403, %399
  br label %730

422:                                              ; preds = %329
  %423 = load i32, i32* %19, align 4
  %424 = icmp ne i32 %423, 17
  br i1 %424, label %425, label %429

425:                                              ; preds = %422
  %426 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %427 = call i32 @ND_PRINT(%struct.TYPE_9__* bitcast ([44 x i8]* @.str.17 to %struct.TYPE_9__*))
  %428 = load i32, i32* @TRUE, align 4
  store i32 %428, i32* %18, align 4
  br label %447

429:                                              ; preds = %422
  %430 = load i32*, i32** %12, align 8
  %431 = bitcast i32* %430 to %struct.lspping_tlv_targetfec_subtlv_bgp_ipv6_t*
  %432 = bitcast %union.anon.0* %23 to %struct.lspping_tlv_targetfec_subtlv_bgp_ipv6_t**
  store %struct.lspping_tlv_targetfec_subtlv_bgp_ipv6_t* %431, %struct.lspping_tlv_targetfec_subtlv_bgp_ipv6_t** %432, align 8
  %433 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %434 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %435 = bitcast %union.anon.0* %23 to %struct.lspping_tlv_targetfec_subtlv_bgp_ipv6_t**
  %436 = load %struct.lspping_tlv_targetfec_subtlv_bgp_ipv6_t*, %struct.lspping_tlv_targetfec_subtlv_bgp_ipv6_t** %435, align 8
  %437 = getelementptr inbounds %struct.lspping_tlv_targetfec_subtlv_bgp_ipv6_t, %struct.lspping_tlv_targetfec_subtlv_bgp_ipv6_t* %436, i32 0, i32 1
  %438 = load i32, i32* %437, align 4
  %439 = call i32 @ip6addr_string(%struct.TYPE_9__* %434, i32 %438)
  %440 = bitcast %union.anon.0* %23 to %struct.lspping_tlv_targetfec_subtlv_bgp_ipv6_t**
  %441 = load %struct.lspping_tlv_targetfec_subtlv_bgp_ipv6_t*, %struct.lspping_tlv_targetfec_subtlv_bgp_ipv6_t** %440, align 8
  %442 = getelementptr inbounds %struct.lspping_tlv_targetfec_subtlv_bgp_ipv6_t, %struct.lspping_tlv_targetfec_subtlv_bgp_ipv6_t* %441, i32 0, i32 0
  %443 = load i32, i32* %442, align 4
  %444 = sext i32 %443 to i64
  %445 = inttoptr i64 %444 to %struct.TYPE_9__*
  %446 = call i32 @ND_PRINT(%struct.TYPE_9__* %445)
  br label %447

447:                                              ; preds = %429, %425
  br label %730

448:                                              ; preds = %329
  %449 = load i32, i32* %19, align 4
  %450 = icmp ne i32 %449, 20
  br i1 %450, label %451, label %455

451:                                              ; preds = %448
  %452 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %453 = call i32 @ND_PRINT(%struct.TYPE_9__* bitcast ([44 x i8]* @.str.18 to %struct.TYPE_9__*))
  %454 = load i32, i32* @TRUE, align 4
  store i32 %454, i32* %18, align 4
  br label %491

455:                                              ; preds = %448
  %456 = load i32*, i32** %12, align 8
  %457 = bitcast i32* %456 to %struct.lspping_tlv_targetfec_subtlv_rsvp_ipv4_t*
  %458 = bitcast %union.anon.0* %23 to %struct.lspping_tlv_targetfec_subtlv_rsvp_ipv4_t**
  store %struct.lspping_tlv_targetfec_subtlv_rsvp_ipv4_t* %457, %struct.lspping_tlv_targetfec_subtlv_rsvp_ipv4_t** %458, align 8
  %459 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %460 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %461 = bitcast %union.anon.0* %23 to %struct.lspping_tlv_targetfec_subtlv_rsvp_ipv4_t**
  %462 = load %struct.lspping_tlv_targetfec_subtlv_rsvp_ipv4_t*, %struct.lspping_tlv_targetfec_subtlv_rsvp_ipv4_t** %461, align 8
  %463 = getelementptr inbounds %struct.lspping_tlv_targetfec_subtlv_rsvp_ipv4_t, %struct.lspping_tlv_targetfec_subtlv_rsvp_ipv4_t* %462, i32 0, i32 4
  %464 = load i32, i32* %463, align 4
  %465 = call i32 @ipaddr_string(%struct.TYPE_9__* %460, i32 %464)
  %466 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %467 = bitcast %union.anon.0* %23 to %struct.lspping_tlv_targetfec_subtlv_rsvp_ipv4_t**
  %468 = load %struct.lspping_tlv_targetfec_subtlv_rsvp_ipv4_t*, %struct.lspping_tlv_targetfec_subtlv_rsvp_ipv4_t** %467, align 8
  %469 = getelementptr inbounds %struct.lspping_tlv_targetfec_subtlv_rsvp_ipv4_t, %struct.lspping_tlv_targetfec_subtlv_rsvp_ipv4_t* %468, i32 0, i32 3
  %470 = load i32, i32* %469, align 8
  %471 = call i32 @ipaddr_string(%struct.TYPE_9__* %466, i32 %470)
  %472 = bitcast %union.anon.0* %23 to %struct.lspping_tlv_targetfec_subtlv_rsvp_ipv4_t**
  %473 = load %struct.lspping_tlv_targetfec_subtlv_rsvp_ipv4_t*, %struct.lspping_tlv_targetfec_subtlv_rsvp_ipv4_t** %472, align 8
  %474 = getelementptr inbounds %struct.lspping_tlv_targetfec_subtlv_rsvp_ipv4_t, %struct.lspping_tlv_targetfec_subtlv_rsvp_ipv4_t* %473, i32 0, i32 2
  %475 = load i32*, i32** %474, align 8
  %476 = call i32 @EXTRACT_16BITS(i32* %475)
  %477 = bitcast %union.anon.0* %23 to %struct.lspping_tlv_targetfec_subtlv_rsvp_ipv4_t**
  %478 = load %struct.lspping_tlv_targetfec_subtlv_rsvp_ipv4_t*, %struct.lspping_tlv_targetfec_subtlv_rsvp_ipv4_t** %477, align 8
  %479 = getelementptr inbounds %struct.lspping_tlv_targetfec_subtlv_rsvp_ipv4_t, %struct.lspping_tlv_targetfec_subtlv_rsvp_ipv4_t* %478, i32 0, i32 1
  %480 = load i32*, i32** %479, align 8
  %481 = call i32 @EXTRACT_16BITS(i32* %480)
  %482 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %483 = bitcast %union.anon.0* %23 to %struct.lspping_tlv_targetfec_subtlv_rsvp_ipv4_t**
  %484 = load %struct.lspping_tlv_targetfec_subtlv_rsvp_ipv4_t*, %struct.lspping_tlv_targetfec_subtlv_rsvp_ipv4_t** %483, align 8
  %485 = getelementptr inbounds %struct.lspping_tlv_targetfec_subtlv_rsvp_ipv4_t, %struct.lspping_tlv_targetfec_subtlv_rsvp_ipv4_t* %484, i32 0, i32 0
  %486 = load i32, i32* %485, align 8
  %487 = call i32 @ipaddr_string(%struct.TYPE_9__* %482, i32 %486)
  %488 = sext i32 %487 to i64
  %489 = inttoptr i64 %488 to %struct.TYPE_9__*
  %490 = call i32 @ND_PRINT(%struct.TYPE_9__* %489)
  br label %491

491:                                              ; preds = %455, %451
  br label %730

492:                                              ; preds = %329
  %493 = load i32, i32* %19, align 4
  %494 = icmp ne i32 %493, 56
  br i1 %494, label %495, label %499

495:                                              ; preds = %492
  %496 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %497 = call i32 @ND_PRINT(%struct.TYPE_9__* bitcast ([44 x i8]* @.str.20 to %struct.TYPE_9__*))
  %498 = load i32, i32* @TRUE, align 4
  store i32 %498, i32* %18, align 4
  br label %535

499:                                              ; preds = %492
  %500 = load i32*, i32** %12, align 8
  %501 = bitcast i32* %500 to %struct.lspping_tlv_targetfec_subtlv_rsvp_ipv6_t*
  %502 = bitcast %union.anon.0* %23 to %struct.lspping_tlv_targetfec_subtlv_rsvp_ipv6_t**
  store %struct.lspping_tlv_targetfec_subtlv_rsvp_ipv6_t* %501, %struct.lspping_tlv_targetfec_subtlv_rsvp_ipv6_t** %502, align 8
  %503 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %504 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %505 = bitcast %union.anon.0* %23 to %struct.lspping_tlv_targetfec_subtlv_rsvp_ipv6_t**
  %506 = load %struct.lspping_tlv_targetfec_subtlv_rsvp_ipv6_t*, %struct.lspping_tlv_targetfec_subtlv_rsvp_ipv6_t** %505, align 8
  %507 = getelementptr inbounds %struct.lspping_tlv_targetfec_subtlv_rsvp_ipv6_t, %struct.lspping_tlv_targetfec_subtlv_rsvp_ipv6_t* %506, i32 0, i32 4
  %508 = load i32, i32* %507, align 4
  %509 = call i32 @ip6addr_string(%struct.TYPE_9__* %504, i32 %508)
  %510 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %511 = bitcast %union.anon.0* %23 to %struct.lspping_tlv_targetfec_subtlv_rsvp_ipv6_t**
  %512 = load %struct.lspping_tlv_targetfec_subtlv_rsvp_ipv6_t*, %struct.lspping_tlv_targetfec_subtlv_rsvp_ipv6_t** %511, align 8
  %513 = getelementptr inbounds %struct.lspping_tlv_targetfec_subtlv_rsvp_ipv6_t, %struct.lspping_tlv_targetfec_subtlv_rsvp_ipv6_t* %512, i32 0, i32 3
  %514 = load i32, i32* %513, align 8
  %515 = call i32 @ip6addr_string(%struct.TYPE_9__* %510, i32 %514)
  %516 = bitcast %union.anon.0* %23 to %struct.lspping_tlv_targetfec_subtlv_rsvp_ipv6_t**
  %517 = load %struct.lspping_tlv_targetfec_subtlv_rsvp_ipv6_t*, %struct.lspping_tlv_targetfec_subtlv_rsvp_ipv6_t** %516, align 8
  %518 = getelementptr inbounds %struct.lspping_tlv_targetfec_subtlv_rsvp_ipv6_t, %struct.lspping_tlv_targetfec_subtlv_rsvp_ipv6_t* %517, i32 0, i32 2
  %519 = load i32*, i32** %518, align 8
  %520 = call i32 @EXTRACT_16BITS(i32* %519)
  %521 = bitcast %union.anon.0* %23 to %struct.lspping_tlv_targetfec_subtlv_rsvp_ipv6_t**
  %522 = load %struct.lspping_tlv_targetfec_subtlv_rsvp_ipv6_t*, %struct.lspping_tlv_targetfec_subtlv_rsvp_ipv6_t** %521, align 8
  %523 = getelementptr inbounds %struct.lspping_tlv_targetfec_subtlv_rsvp_ipv6_t, %struct.lspping_tlv_targetfec_subtlv_rsvp_ipv6_t* %522, i32 0, i32 1
  %524 = load i32*, i32** %523, align 8
  %525 = call i32 @EXTRACT_16BITS(i32* %524)
  %526 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %527 = bitcast %union.anon.0* %23 to %struct.lspping_tlv_targetfec_subtlv_rsvp_ipv6_t**
  %528 = load %struct.lspping_tlv_targetfec_subtlv_rsvp_ipv6_t*, %struct.lspping_tlv_targetfec_subtlv_rsvp_ipv6_t** %527, align 8
  %529 = getelementptr inbounds %struct.lspping_tlv_targetfec_subtlv_rsvp_ipv6_t, %struct.lspping_tlv_targetfec_subtlv_rsvp_ipv6_t* %528, i32 0, i32 0
  %530 = load i32, i32* %529, align 8
  %531 = call i32 @ip6addr_string(%struct.TYPE_9__* %526, i32 %530)
  %532 = sext i32 %531 to i64
  %533 = inttoptr i64 %532 to %struct.TYPE_9__*
  %534 = call i32 @ND_PRINT(%struct.TYPE_9__* %533)
  br label %535

535:                                              ; preds = %499, %495
  br label %730

536:                                              ; preds = %329
  %537 = load i32, i32* %19, align 4
  %538 = icmp ne i32 %537, 13
  br i1 %538, label %539, label %543

539:                                              ; preds = %536
  %540 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %541 = call i32 @ND_PRINT(%struct.TYPE_9__* bitcast ([44 x i8]* @.str.21 to %struct.TYPE_9__*))
  %542 = load i32, i32* @TRUE, align 4
  store i32 %542, i32* %18, align 4
  br label %567

543:                                              ; preds = %536
  %544 = load i32*, i32** %12, align 8
  %545 = bitcast i32* %544 to %struct.lspping_tlv_targetfec_subtlv_l3vpn_ipv4_t*
  %546 = bitcast %union.anon.0* %23 to %struct.lspping_tlv_targetfec_subtlv_l3vpn_ipv4_t**
  store %struct.lspping_tlv_targetfec_subtlv_l3vpn_ipv4_t* %545, %struct.lspping_tlv_targetfec_subtlv_l3vpn_ipv4_t** %546, align 8
  %547 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %548 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %549 = bitcast %union.anon.0* %23 to %struct.lspping_tlv_targetfec_subtlv_l3vpn_ipv4_t**
  %550 = load %struct.lspping_tlv_targetfec_subtlv_l3vpn_ipv4_t*, %struct.lspping_tlv_targetfec_subtlv_l3vpn_ipv4_t** %549, align 8
  %551 = getelementptr inbounds %struct.lspping_tlv_targetfec_subtlv_l3vpn_ipv4_t, %struct.lspping_tlv_targetfec_subtlv_l3vpn_ipv4_t* %550, i32 0, i32 2
  %552 = load i32, i32* %551, align 4
  %553 = call i32 @bgp_vpn_rd_print(%struct.TYPE_9__* %548, i32 %552)
  %554 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %555 = bitcast %union.anon.0* %23 to %struct.lspping_tlv_targetfec_subtlv_l3vpn_ipv4_t**
  %556 = load %struct.lspping_tlv_targetfec_subtlv_l3vpn_ipv4_t*, %struct.lspping_tlv_targetfec_subtlv_l3vpn_ipv4_t** %555, align 8
  %557 = getelementptr inbounds %struct.lspping_tlv_targetfec_subtlv_l3vpn_ipv4_t, %struct.lspping_tlv_targetfec_subtlv_l3vpn_ipv4_t* %556, i32 0, i32 1
  %558 = load i32, i32* %557, align 4
  %559 = call i32 @ipaddr_string(%struct.TYPE_9__* %554, i32 %558)
  %560 = bitcast %union.anon.0* %23 to %struct.lspping_tlv_targetfec_subtlv_l3vpn_ipv4_t**
  %561 = load %struct.lspping_tlv_targetfec_subtlv_l3vpn_ipv4_t*, %struct.lspping_tlv_targetfec_subtlv_l3vpn_ipv4_t** %560, align 8
  %562 = getelementptr inbounds %struct.lspping_tlv_targetfec_subtlv_l3vpn_ipv4_t, %struct.lspping_tlv_targetfec_subtlv_l3vpn_ipv4_t* %561, i32 0, i32 0
  %563 = load i32, i32* %562, align 4
  %564 = sext i32 %563 to i64
  %565 = inttoptr i64 %564 to %struct.TYPE_9__*
  %566 = call i32 @ND_PRINT(%struct.TYPE_9__* %565)
  br label %567

567:                                              ; preds = %543, %539
  br label %730

568:                                              ; preds = %329
  %569 = load i32, i32* %19, align 4
  %570 = icmp ne i32 %569, 25
  br i1 %570, label %571, label %575

571:                                              ; preds = %568
  %572 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %573 = call i32 @ND_PRINT(%struct.TYPE_9__* bitcast ([44 x i8]* @.str.23 to %struct.TYPE_9__*))
  %574 = load i32, i32* @TRUE, align 4
  store i32 %574, i32* %18, align 4
  br label %599

575:                                              ; preds = %568
  %576 = load i32*, i32** %12, align 8
  %577 = bitcast i32* %576 to %struct.lspping_tlv_targetfec_subtlv_l3vpn_ipv6_t*
  %578 = bitcast %union.anon.0* %23 to %struct.lspping_tlv_targetfec_subtlv_l3vpn_ipv6_t**
  store %struct.lspping_tlv_targetfec_subtlv_l3vpn_ipv6_t* %577, %struct.lspping_tlv_targetfec_subtlv_l3vpn_ipv6_t** %578, align 8
  %579 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %580 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %581 = bitcast %union.anon.0* %23 to %struct.lspping_tlv_targetfec_subtlv_l3vpn_ipv6_t**
  %582 = load %struct.lspping_tlv_targetfec_subtlv_l3vpn_ipv6_t*, %struct.lspping_tlv_targetfec_subtlv_l3vpn_ipv6_t** %581, align 8
  %583 = getelementptr inbounds %struct.lspping_tlv_targetfec_subtlv_l3vpn_ipv6_t, %struct.lspping_tlv_targetfec_subtlv_l3vpn_ipv6_t* %582, i32 0, i32 2
  %584 = load i32, i32* %583, align 4
  %585 = call i32 @bgp_vpn_rd_print(%struct.TYPE_9__* %580, i32 %584)
  %586 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %587 = bitcast %union.anon.0* %23 to %struct.lspping_tlv_targetfec_subtlv_l3vpn_ipv6_t**
  %588 = load %struct.lspping_tlv_targetfec_subtlv_l3vpn_ipv6_t*, %struct.lspping_tlv_targetfec_subtlv_l3vpn_ipv6_t** %587, align 8
  %589 = getelementptr inbounds %struct.lspping_tlv_targetfec_subtlv_l3vpn_ipv6_t, %struct.lspping_tlv_targetfec_subtlv_l3vpn_ipv6_t* %588, i32 0, i32 1
  %590 = load i32, i32* %589, align 4
  %591 = call i32 @ip6addr_string(%struct.TYPE_9__* %586, i32 %590)
  %592 = bitcast %union.anon.0* %23 to %struct.lspping_tlv_targetfec_subtlv_l3vpn_ipv6_t**
  %593 = load %struct.lspping_tlv_targetfec_subtlv_l3vpn_ipv6_t*, %struct.lspping_tlv_targetfec_subtlv_l3vpn_ipv6_t** %592, align 8
  %594 = getelementptr inbounds %struct.lspping_tlv_targetfec_subtlv_l3vpn_ipv6_t, %struct.lspping_tlv_targetfec_subtlv_l3vpn_ipv6_t* %593, i32 0, i32 0
  %595 = load i32, i32* %594, align 4
  %596 = sext i32 %595 to i64
  %597 = inttoptr i64 %596 to %struct.TYPE_9__*
  %598 = call i32 @ND_PRINT(%struct.TYPE_9__* %597)
  br label %599

599:                                              ; preds = %575, %571
  br label %730

600:                                              ; preds = %329
  %601 = load i32, i32* %19, align 4
  %602 = icmp ne i32 %601, 14
  br i1 %602, label %603, label %607

603:                                              ; preds = %600
  %604 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %605 = call i32 @ND_PRINT(%struct.TYPE_9__* bitcast ([44 x i8]* @.str.24 to %struct.TYPE_9__*))
  %606 = load i32, i32* @TRUE, align 4
  store i32 %606, i32* %18, align 4
  br label %643

607:                                              ; preds = %600
  %608 = load i32*, i32** %12, align 8
  %609 = bitcast i32* %608 to %struct.lspping_tlv_targetfec_subtlv_l2vpn_endpt_t*
  %610 = bitcast %union.anon.0* %23 to %struct.lspping_tlv_targetfec_subtlv_l2vpn_endpt_t**
  store %struct.lspping_tlv_targetfec_subtlv_l2vpn_endpt_t* %609, %struct.lspping_tlv_targetfec_subtlv_l2vpn_endpt_t** %610, align 8
  %611 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %612 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %613 = bitcast %union.anon.0* %23 to %struct.lspping_tlv_targetfec_subtlv_l2vpn_endpt_t**
  %614 = load %struct.lspping_tlv_targetfec_subtlv_l2vpn_endpt_t*, %struct.lspping_tlv_targetfec_subtlv_l2vpn_endpt_t** %613, align 8
  %615 = getelementptr inbounds %struct.lspping_tlv_targetfec_subtlv_l2vpn_endpt_t, %struct.lspping_tlv_targetfec_subtlv_l2vpn_endpt_t* %614, i32 0, i32 3
  %616 = load i32, i32* %615, align 8
  %617 = call i32 @bgp_vpn_rd_print(%struct.TYPE_9__* %612, i32 %616)
  %618 = bitcast %union.anon.0* %23 to %struct.lspping_tlv_targetfec_subtlv_l2vpn_endpt_t**
  %619 = load %struct.lspping_tlv_targetfec_subtlv_l2vpn_endpt_t*, %struct.lspping_tlv_targetfec_subtlv_l2vpn_endpt_t** %618, align 8
  %620 = getelementptr inbounds %struct.lspping_tlv_targetfec_subtlv_l2vpn_endpt_t, %struct.lspping_tlv_targetfec_subtlv_l2vpn_endpt_t* %619, i32 0, i32 2
  %621 = load i32*, i32** %620, align 8
  %622 = call i32 @EXTRACT_16BITS(i32* %621)
  %623 = bitcast %union.anon.0* %23 to %struct.lspping_tlv_targetfec_subtlv_l2vpn_endpt_t**
  %624 = load %struct.lspping_tlv_targetfec_subtlv_l2vpn_endpt_t*, %struct.lspping_tlv_targetfec_subtlv_l2vpn_endpt_t** %623, align 8
  %625 = getelementptr inbounds %struct.lspping_tlv_targetfec_subtlv_l2vpn_endpt_t, %struct.lspping_tlv_targetfec_subtlv_l2vpn_endpt_t* %624, i32 0, i32 1
  %626 = load i32*, i32** %625, align 8
  %627 = call i32 @EXTRACT_16BITS(i32* %626)
  %628 = load i32, i32* @mpls_pw_types_values, align 4
  %629 = bitcast %union.anon.0* %23 to %struct.lspping_tlv_targetfec_subtlv_l2vpn_endpt_t**
  %630 = load %struct.lspping_tlv_targetfec_subtlv_l2vpn_endpt_t*, %struct.lspping_tlv_targetfec_subtlv_l2vpn_endpt_t** %629, align 8
  %631 = getelementptr inbounds %struct.lspping_tlv_targetfec_subtlv_l2vpn_endpt_t, %struct.lspping_tlv_targetfec_subtlv_l2vpn_endpt_t* %630, i32 0, i32 0
  %632 = load i32*, i32** %631, align 8
  %633 = call i32 @EXTRACT_16BITS(i32* %632)
  %634 = call i32 @tok2str(i32 %628, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %633)
  %635 = bitcast %union.anon.0* %23 to %struct.lspping_tlv_targetfec_subtlv_l2vpn_endpt_t**
  %636 = load %struct.lspping_tlv_targetfec_subtlv_l2vpn_endpt_t*, %struct.lspping_tlv_targetfec_subtlv_l2vpn_endpt_t** %635, align 8
  %637 = getelementptr inbounds %struct.lspping_tlv_targetfec_subtlv_l2vpn_endpt_t, %struct.lspping_tlv_targetfec_subtlv_l2vpn_endpt_t* %636, i32 0, i32 0
  %638 = load i32*, i32** %637, align 8
  %639 = call i32 @EXTRACT_16BITS(i32* %638)
  %640 = sext i32 %639 to i64
  %641 = inttoptr i64 %640 to %struct.TYPE_9__*
  %642 = call i32 @ND_PRINT(%struct.TYPE_9__* %641)
  br label %643

643:                                              ; preds = %607, %603
  br label %730

644:                                              ; preds = %329
  %645 = load i32, i32* %19, align 4
  %646 = icmp ne i32 %645, 10
  br i1 %646, label %647, label %651

647:                                              ; preds = %644
  %648 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %649 = call i32 @ND_PRINT(%struct.TYPE_9__* bitcast ([44 x i8]* @.str.26 to %struct.TYPE_9__*))
  %650 = load i32, i32* @TRUE, align 4
  store i32 %650, i32* %18, align 4
  br label %682

651:                                              ; preds = %644
  %652 = load i32*, i32** %12, align 8
  %653 = bitcast i32* %652 to %struct.lspping_tlv_targetfec_subtlv_fec_128_pw_old*
  %654 = bitcast %union.anon.0* %23 to %struct.lspping_tlv_targetfec_subtlv_fec_128_pw_old**
  store %struct.lspping_tlv_targetfec_subtlv_fec_128_pw_old* %653, %struct.lspping_tlv_targetfec_subtlv_fec_128_pw_old** %654, align 8
  %655 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %656 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %657 = bitcast %union.anon.0* %23 to %struct.lspping_tlv_targetfec_subtlv_fec_128_pw_old**
  %658 = load %struct.lspping_tlv_targetfec_subtlv_fec_128_pw_old*, %struct.lspping_tlv_targetfec_subtlv_fec_128_pw_old** %657, align 8
  %659 = getelementptr inbounds %struct.lspping_tlv_targetfec_subtlv_fec_128_pw_old, %struct.lspping_tlv_targetfec_subtlv_fec_128_pw_old* %658, i32 0, i32 2
  %660 = load i32, i32* %659, align 8
  %661 = call i32 @ipaddr_string(%struct.TYPE_9__* %656, i32 %660)
  %662 = bitcast %union.anon.0* %23 to %struct.lspping_tlv_targetfec_subtlv_fec_128_pw_old**
  %663 = load %struct.lspping_tlv_targetfec_subtlv_fec_128_pw_old*, %struct.lspping_tlv_targetfec_subtlv_fec_128_pw_old** %662, align 8
  %664 = getelementptr inbounds %struct.lspping_tlv_targetfec_subtlv_fec_128_pw_old, %struct.lspping_tlv_targetfec_subtlv_fec_128_pw_old* %663, i32 0, i32 1
  %665 = load i32*, i32** %664, align 8
  %666 = call i8* @EXTRACT_32BITS(i32* %665)
  %667 = load i32, i32* @mpls_pw_types_values, align 4
  %668 = bitcast %union.anon.0* %23 to %struct.lspping_tlv_targetfec_subtlv_fec_128_pw_old**
  %669 = load %struct.lspping_tlv_targetfec_subtlv_fec_128_pw_old*, %struct.lspping_tlv_targetfec_subtlv_fec_128_pw_old** %668, align 8
  %670 = getelementptr inbounds %struct.lspping_tlv_targetfec_subtlv_fec_128_pw_old, %struct.lspping_tlv_targetfec_subtlv_fec_128_pw_old* %669, i32 0, i32 0
  %671 = load i32*, i32** %670, align 8
  %672 = call i32 @EXTRACT_16BITS(i32* %671)
  %673 = call i32 @tok2str(i32 %667, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %672)
  %674 = bitcast %union.anon.0* %23 to %struct.lspping_tlv_targetfec_subtlv_fec_128_pw_old**
  %675 = load %struct.lspping_tlv_targetfec_subtlv_fec_128_pw_old*, %struct.lspping_tlv_targetfec_subtlv_fec_128_pw_old** %674, align 8
  %676 = getelementptr inbounds %struct.lspping_tlv_targetfec_subtlv_fec_128_pw_old, %struct.lspping_tlv_targetfec_subtlv_fec_128_pw_old* %675, i32 0, i32 0
  %677 = load i32*, i32** %676, align 8
  %678 = call i32 @EXTRACT_16BITS(i32* %677)
  %679 = sext i32 %678 to i64
  %680 = inttoptr i64 %679 to %struct.TYPE_9__*
  %681 = call i32 @ND_PRINT(%struct.TYPE_9__* %680)
  br label %682

682:                                              ; preds = %651, %647
  br label %730

683:                                              ; preds = %329
  %684 = load i32, i32* %19, align 4
  %685 = icmp ne i32 %684, 14
  br i1 %685, label %686, label %690

686:                                              ; preds = %683
  %687 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %688 = call i32 @ND_PRINT(%struct.TYPE_9__* bitcast ([44 x i8]* @.str.24 to %struct.TYPE_9__*))
  %689 = load i32, i32* @TRUE, align 4
  store i32 %689, i32* %18, align 4
  br label %727

690:                                              ; preds = %683
  %691 = load i32*, i32** %12, align 8
  %692 = bitcast i32* %691 to %struct.lspping_tlv_targetfec_subtlv_fec_128_pw*
  %693 = bitcast %union.anon.0* %23 to %struct.lspping_tlv_targetfec_subtlv_fec_128_pw**
  store %struct.lspping_tlv_targetfec_subtlv_fec_128_pw* %692, %struct.lspping_tlv_targetfec_subtlv_fec_128_pw** %693, align 8
  %694 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %695 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %696 = bitcast %union.anon.0* %23 to %struct.lspping_tlv_targetfec_subtlv_fec_128_pw**
  %697 = load %struct.lspping_tlv_targetfec_subtlv_fec_128_pw*, %struct.lspping_tlv_targetfec_subtlv_fec_128_pw** %696, align 8
  %698 = getelementptr inbounds %struct.lspping_tlv_targetfec_subtlv_fec_128_pw, %struct.lspping_tlv_targetfec_subtlv_fec_128_pw* %697, i32 0, i32 3
  %699 = load i32, i32* %698, align 4
  %700 = call i32 @ipaddr_string(%struct.TYPE_9__* %695, i32 %699)
  %701 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %702 = bitcast %union.anon.0* %23 to %struct.lspping_tlv_targetfec_subtlv_fec_128_pw**
  %703 = load %struct.lspping_tlv_targetfec_subtlv_fec_128_pw*, %struct.lspping_tlv_targetfec_subtlv_fec_128_pw** %702, align 8
  %704 = getelementptr inbounds %struct.lspping_tlv_targetfec_subtlv_fec_128_pw, %struct.lspping_tlv_targetfec_subtlv_fec_128_pw* %703, i32 0, i32 2
  %705 = load i32, i32* %704, align 8
  %706 = call i32 @ipaddr_string(%struct.TYPE_9__* %701, i32 %705)
  %707 = bitcast %union.anon.0* %23 to %struct.lspping_tlv_targetfec_subtlv_fec_128_pw**
  %708 = load %struct.lspping_tlv_targetfec_subtlv_fec_128_pw*, %struct.lspping_tlv_targetfec_subtlv_fec_128_pw** %707, align 8
  %709 = getelementptr inbounds %struct.lspping_tlv_targetfec_subtlv_fec_128_pw, %struct.lspping_tlv_targetfec_subtlv_fec_128_pw* %708, i32 0, i32 1
  %710 = load i32*, i32** %709, align 8
  %711 = call i8* @EXTRACT_32BITS(i32* %710)
  %712 = load i32, i32* @mpls_pw_types_values, align 4
  %713 = bitcast %union.anon.0* %23 to %struct.lspping_tlv_targetfec_subtlv_fec_128_pw**
  %714 = load %struct.lspping_tlv_targetfec_subtlv_fec_128_pw*, %struct.lspping_tlv_targetfec_subtlv_fec_128_pw** %713, align 8
  %715 = getelementptr inbounds %struct.lspping_tlv_targetfec_subtlv_fec_128_pw, %struct.lspping_tlv_targetfec_subtlv_fec_128_pw* %714, i32 0, i32 0
  %716 = load i32*, i32** %715, align 8
  %717 = call i32 @EXTRACT_16BITS(i32* %716)
  %718 = call i32 @tok2str(i32 %712, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %717)
  %719 = bitcast %union.anon.0* %23 to %struct.lspping_tlv_targetfec_subtlv_fec_128_pw**
  %720 = load %struct.lspping_tlv_targetfec_subtlv_fec_128_pw*, %struct.lspping_tlv_targetfec_subtlv_fec_128_pw** %719, align 8
  %721 = getelementptr inbounds %struct.lspping_tlv_targetfec_subtlv_fec_128_pw, %struct.lspping_tlv_targetfec_subtlv_fec_128_pw* %720, i32 0, i32 0
  %722 = load i32*, i32** %721, align 8
  %723 = call i32 @EXTRACT_16BITS(i32* %722)
  %724 = sext i32 %723 to i64
  %725 = inttoptr i64 %724 to %struct.TYPE_9__*
  %726 = call i32 @ND_PRINT(%struct.TYPE_9__* %725)
  br label %727

727:                                              ; preds = %690, %686
  br label %730

728:                                              ; preds = %329
  %729 = load i32, i32* @TRUE, align 4
  store i32 %729, i32* %18, align 4
  br label %730

730:                                              ; preds = %728, %727, %682, %643, %599, %567, %535, %491, %447, %421, %395, %369
  %731 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %732 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %731, i32 0, i32 0
  %733 = load i32, i32* %732, align 4
  %734 = icmp sgt i32 %733, 1
  br i1 %734, label %739, label %735

735:                                              ; preds = %730
  %736 = load i32, i32* %18, align 4
  %737 = load i32, i32* @TRUE, align 4
  %738 = icmp eq i32 %736, %737
  br i1 %738, label %739, label %745

739:                                              ; preds = %735, %730
  %740 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %741 = load i32*, i32** %11, align 8
  %742 = getelementptr inbounds i32, i32* %741, i64 16
  %743 = load i32, i32* %19, align 4
  %744 = call i32 @print_unknown_data(%struct.TYPE_9__* %740, i32* %742, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i64 0, i64 0), i32 %743)
  br label %745

745:                                              ; preds = %739, %735
  %746 = load i32, i32* %19, align 4
  %747 = srem i32 %746, 4
  %748 = icmp ne i32 %747, 0
  br i1 %748, label %749, label %765

749:                                              ; preds = %745
  %750 = load i32, i32* %19, align 4
  %751 = srem i32 %750, 4
  %752 = sub nsw i32 4, %751
  %753 = load i32, i32* %19, align 4
  %754 = add nsw i32 %753, %752
  store i32 %754, i32* %19, align 4
  %755 = load i32, i32* %16, align 4
  %756 = sext i32 %755 to i64
  %757 = load i32, i32* %19, align 4
  %758 = sext i32 %757 to i64
  %759 = add i64 %758, 16
  %760 = icmp ult i64 %756, %759
  br i1 %760, label %761, label %764

761:                                              ; preds = %749
  %762 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %763 = call i32 @ND_PRINT(%struct.TYPE_9__* bitcast ([21 x i8]* @.str.30 to %struct.TYPE_9__*))
  br label %1093

764:                                              ; preds = %749
  br label %765

765:                                              ; preds = %764, %745
  %766 = load i32, i32* %19, align 4
  %767 = load i32*, i32** %11, align 8
  %768 = sext i32 %766 to i64
  %769 = getelementptr inbounds i32, i32* %767, i64 %768
  store i32* %769, i32** %11, align 8
  %770 = load i32, i32* %19, align 4
  %771 = sext i32 %770 to i64
  %772 = add i64 %771, 16
  %773 = load i32, i32* %16, align 4
  %774 = sext i32 %773 to i64
  %775 = sub i64 %774, %772
  %776 = trunc i64 %775 to i32
  store i32 %776, i32* %16, align 4
  br label %291

777:                                              ; preds = %291
  br label %1039

778:                                              ; preds = %283
  %779 = load i32, i32* %16, align 4
  %780 = sext i32 %779 to i64
  %781 = icmp ult i64 %780, 16
  br i1 %781, label %782, label %786

782:                                              ; preds = %778
  %783 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %784 = call i32 @ND_PRINT(%struct.TYPE_9__* bitcast ([25 x i8]* @.str.13 to %struct.TYPE_9__*))
  %785 = load i32, i32* @TRUE, align 4
  store i32 %785, i32* %17, align 4
  br label %1040

786:                                              ; preds = %778
  %787 = load i32*, i32** %11, align 8
  %788 = load i32, i32* %787, align 4
  %789 = call i32 @ND_TCHECK2(i32 %788, i32 16)
  %790 = load i32*, i32** %11, align 8
  %791 = bitcast i32* %790 to %struct.lspping_tlv_downstream_map_t*
  %792 = bitcast %union.anon* %22 to %struct.lspping_tlv_downstream_map_t**
  store %struct.lspping_tlv_downstream_map_t* %791, %struct.lspping_tlv_downstream_map_t** %792, align 8
  %793 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %794 = bitcast %union.anon* %22 to %struct.lspping_tlv_downstream_map_t**
  %795 = load %struct.lspping_tlv_downstream_map_t*, %struct.lspping_tlv_downstream_map_t** %794, align 8
  %796 = getelementptr inbounds %struct.lspping_tlv_downstream_map_t, %struct.lspping_tlv_downstream_map_t* %795, i32 0, i32 1
  %797 = load i32*, i32** %796, align 8
  %798 = call i32 @EXTRACT_16BITS(i32* %797)
  %799 = load i32, i32* @lspping_tlv_downstream_addr_values, align 4
  %800 = bitcast %union.anon* %22 to %struct.lspping_tlv_downstream_map_t**
  %801 = load %struct.lspping_tlv_downstream_map_t*, %struct.lspping_tlv_downstream_map_t** %800, align 8
  %802 = getelementptr inbounds %struct.lspping_tlv_downstream_map_t, %struct.lspping_tlv_downstream_map_t* %801, i32 0, i32 0
  %803 = load i32, i32* %802, align 8
  %804 = call i32 @tok2str(i32 %799, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %803)
  %805 = bitcast %union.anon* %22 to %struct.lspping_tlv_downstream_map_t**
  %806 = load %struct.lspping_tlv_downstream_map_t*, %struct.lspping_tlv_downstream_map_t** %805, align 8
  %807 = getelementptr inbounds %struct.lspping_tlv_downstream_map_t, %struct.lspping_tlv_downstream_map_t* %806, i32 0, i32 0
  %808 = load i32, i32* %807, align 8
  %809 = sext i32 %808 to i64
  %810 = inttoptr i64 %809 to %struct.TYPE_9__*
  %811 = call i32 @ND_PRINT(%struct.TYPE_9__* %810)
  %812 = bitcast %union.anon* %22 to %struct.lspping_tlv_downstream_map_t**
  %813 = load %struct.lspping_tlv_downstream_map_t*, %struct.lspping_tlv_downstream_map_t** %812, align 8
  %814 = getelementptr inbounds %struct.lspping_tlv_downstream_map_t, %struct.lspping_tlv_downstream_map_t* %813, i32 0, i32 0
  %815 = load i32, i32* %814, align 8
  switch i32 %815, label %960 [
    i32 149, label %816
    i32 148, label %853
    i32 147, label %888
    i32 146, label %925
  ]

816:                                              ; preds = %786
  %817 = load i32, i32* %16, align 4
  %818 = sext i32 %817 to i64
  %819 = icmp ult i64 %818, 8
  br i1 %819, label %820, label %824

820:                                              ; preds = %816
  %821 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %822 = call i32 @ND_PRINT(%struct.TYPE_9__* bitcast ([25 x i8]* @.str.13 to %struct.TYPE_9__*))
  %823 = load i32, i32* @TRUE, align 4
  store i32 %823, i32* %17, align 4
  br label %1040

824:                                              ; preds = %816
  %825 = load i32*, i32** %11, align 8
  %826 = load i32, i32* %825, align 4
  %827 = call i32 @ND_TCHECK2(i32 %826, i32 8)
  %828 = load i32*, i32** %11, align 8
  %829 = bitcast i32* %828 to %struct.lspping_tlv_downstream_map_ipv4_t*
  %830 = bitcast %union.anon* %22 to %struct.lspping_tlv_downstream_map_ipv4_t**
  store %struct.lspping_tlv_downstream_map_ipv4_t* %829, %struct.lspping_tlv_downstream_map_ipv4_t** %830, align 8
  %831 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %832 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %833 = bitcast %union.anon* %22 to %struct.lspping_tlv_downstream_map_ipv4_t**
  %834 = load %struct.lspping_tlv_downstream_map_ipv4_t*, %struct.lspping_tlv_downstream_map_ipv4_t** %833, align 8
  %835 = getelementptr inbounds %struct.lspping_tlv_downstream_map_ipv4_t, %struct.lspping_tlv_downstream_map_ipv4_t* %834, i32 0, i32 1
  %836 = load i32, i32* %835, align 4
  %837 = call i32 @ipaddr_string(%struct.TYPE_9__* %832, i32 %836)
  %838 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %839 = bitcast %union.anon* %22 to %struct.lspping_tlv_downstream_map_ipv4_t**
  %840 = load %struct.lspping_tlv_downstream_map_ipv4_t*, %struct.lspping_tlv_downstream_map_ipv4_t** %839, align 8
  %841 = getelementptr inbounds %struct.lspping_tlv_downstream_map_ipv4_t, %struct.lspping_tlv_downstream_map_ipv4_t* %840, i32 0, i32 0
  %842 = load i32, i32* %841, align 4
  %843 = call i32 @ipaddr_string(%struct.TYPE_9__* %838, i32 %842)
  %844 = sext i32 %843 to i64
  %845 = inttoptr i64 %844 to %struct.TYPE_9__*
  %846 = call i32 @ND_PRINT(%struct.TYPE_9__* %845)
  %847 = load i32*, i32** %11, align 8
  %848 = getelementptr inbounds i32, i32* %847, i64 8
  store i32* %848, i32** %11, align 8
  %849 = load i32, i32* %16, align 4
  %850 = sext i32 %849 to i64
  %851 = sub i64 %850, 8
  %852 = trunc i64 %851 to i32
  store i32 %852, i32* %16, align 4
  br label %961

853:                                              ; preds = %786
  %854 = load i32, i32* %16, align 4
  %855 = sext i32 %854 to i64
  %856 = icmp ult i64 %855, 16
  br i1 %856, label %857, label %861

857:                                              ; preds = %853
  %858 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %859 = call i32 @ND_PRINT(%struct.TYPE_9__* bitcast ([25 x i8]* @.str.13 to %struct.TYPE_9__*))
  %860 = load i32, i32* @TRUE, align 4
  store i32 %860, i32* %17, align 4
  br label %1040

861:                                              ; preds = %853
  %862 = load i32*, i32** %11, align 8
  %863 = load i32, i32* %862, align 4
  %864 = call i32 @ND_TCHECK2(i32 %863, i32 16)
  %865 = load i32*, i32** %11, align 8
  %866 = bitcast i32* %865 to %struct.lspping_tlv_downstream_map_ipv4_unmb_t*
  %867 = bitcast %union.anon* %22 to %struct.lspping_tlv_downstream_map_ipv4_unmb_t**
  store %struct.lspping_tlv_downstream_map_ipv4_unmb_t* %866, %struct.lspping_tlv_downstream_map_ipv4_unmb_t** %867, align 8
  %868 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %869 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %870 = bitcast %union.anon* %22 to %struct.lspping_tlv_downstream_map_ipv4_unmb_t**
  %871 = load %struct.lspping_tlv_downstream_map_ipv4_unmb_t*, %struct.lspping_tlv_downstream_map_ipv4_unmb_t** %870, align 8
  %872 = getelementptr inbounds %struct.lspping_tlv_downstream_map_ipv4_unmb_t, %struct.lspping_tlv_downstream_map_ipv4_unmb_t* %871, i32 0, i32 1
  %873 = load i32, i32* %872, align 8
  %874 = call i32 @ipaddr_string(%struct.TYPE_9__* %869, i32 %873)
  %875 = bitcast %union.anon* %22 to %struct.lspping_tlv_downstream_map_ipv4_unmb_t**
  %876 = load %struct.lspping_tlv_downstream_map_ipv4_unmb_t*, %struct.lspping_tlv_downstream_map_ipv4_unmb_t** %875, align 8
  %877 = getelementptr inbounds %struct.lspping_tlv_downstream_map_ipv4_unmb_t, %struct.lspping_tlv_downstream_map_ipv4_unmb_t* %876, i32 0, i32 0
  %878 = load i32*, i32** %877, align 8
  %879 = call i8* @EXTRACT_32BITS(i32* %878)
  %880 = bitcast i8* %879 to %struct.TYPE_9__*
  %881 = call i32 @ND_PRINT(%struct.TYPE_9__* %880)
  %882 = load i32*, i32** %11, align 8
  %883 = getelementptr inbounds i32, i32* %882, i64 16
  store i32* %883, i32** %11, align 8
  %884 = load i32, i32* %16, align 4
  %885 = sext i32 %884 to i64
  %886 = sub i64 %885, 16
  %887 = trunc i64 %886 to i32
  store i32 %887, i32* %16, align 4
  br label %961

888:                                              ; preds = %786
  %889 = load i32, i32* %16, align 4
  %890 = sext i32 %889 to i64
  %891 = icmp ult i64 %890, 8
  br i1 %891, label %892, label %896

892:                                              ; preds = %888
  %893 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %894 = call i32 @ND_PRINT(%struct.TYPE_9__* bitcast ([25 x i8]* @.str.13 to %struct.TYPE_9__*))
  %895 = load i32, i32* @TRUE, align 4
  store i32 %895, i32* %17, align 4
  br label %1040

896:                                              ; preds = %888
  %897 = load i32*, i32** %11, align 8
  %898 = load i32, i32* %897, align 4
  %899 = call i32 @ND_TCHECK2(i32 %898, i32 8)
  %900 = load i32*, i32** %11, align 8
  %901 = bitcast i32* %900 to %struct.lspping_tlv_downstream_map_ipv6_t*
  %902 = bitcast %union.anon* %22 to %struct.lspping_tlv_downstream_map_ipv6_t**
  store %struct.lspping_tlv_downstream_map_ipv6_t* %901, %struct.lspping_tlv_downstream_map_ipv6_t** %902, align 8
  %903 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %904 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %905 = bitcast %union.anon* %22 to %struct.lspping_tlv_downstream_map_ipv6_t**
  %906 = load %struct.lspping_tlv_downstream_map_ipv6_t*, %struct.lspping_tlv_downstream_map_ipv6_t** %905, align 8
  %907 = getelementptr inbounds %struct.lspping_tlv_downstream_map_ipv6_t, %struct.lspping_tlv_downstream_map_ipv6_t* %906, i32 0, i32 1
  %908 = load i32, i32* %907, align 4
  %909 = call i32 @ip6addr_string(%struct.TYPE_9__* %904, i32 %908)
  %910 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %911 = bitcast %union.anon* %22 to %struct.lspping_tlv_downstream_map_ipv6_t**
  %912 = load %struct.lspping_tlv_downstream_map_ipv6_t*, %struct.lspping_tlv_downstream_map_ipv6_t** %911, align 8
  %913 = getelementptr inbounds %struct.lspping_tlv_downstream_map_ipv6_t, %struct.lspping_tlv_downstream_map_ipv6_t* %912, i32 0, i32 0
  %914 = load i32, i32* %913, align 4
  %915 = call i32 @ip6addr_string(%struct.TYPE_9__* %910, i32 %914)
  %916 = sext i32 %915 to i64
  %917 = inttoptr i64 %916 to %struct.TYPE_9__*
  %918 = call i32 @ND_PRINT(%struct.TYPE_9__* %917)
  %919 = load i32*, i32** %11, align 8
  %920 = getelementptr inbounds i32, i32* %919, i64 8
  store i32* %920, i32** %11, align 8
  %921 = load i32, i32* %16, align 4
  %922 = sext i32 %921 to i64
  %923 = sub i64 %922, 8
  %924 = trunc i64 %923 to i32
  store i32 %924, i32* %16, align 4
  br label %961

925:                                              ; preds = %786
  %926 = load i32, i32* %16, align 4
  %927 = sext i32 %926 to i64
  %928 = icmp ult i64 %927, 16
  br i1 %928, label %929, label %933

929:                                              ; preds = %925
  %930 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %931 = call i32 @ND_PRINT(%struct.TYPE_9__* bitcast ([25 x i8]* @.str.13 to %struct.TYPE_9__*))
  %932 = load i32, i32* @TRUE, align 4
  store i32 %932, i32* %17, align 4
  br label %1040

933:                                              ; preds = %925
  %934 = load i32*, i32** %11, align 8
  %935 = load i32, i32* %934, align 4
  %936 = call i32 @ND_TCHECK2(i32 %935, i32 16)
  %937 = load i32*, i32** %11, align 8
  %938 = bitcast i32* %937 to %struct.lspping_tlv_downstream_map_ipv6_unmb_t*
  %939 = bitcast %union.anon* %22 to %struct.lspping_tlv_downstream_map_ipv6_unmb_t**
  store %struct.lspping_tlv_downstream_map_ipv6_unmb_t* %938, %struct.lspping_tlv_downstream_map_ipv6_unmb_t** %939, align 8
  %940 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %941 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %942 = bitcast %union.anon* %22 to %struct.lspping_tlv_downstream_map_ipv6_unmb_t**
  %943 = load %struct.lspping_tlv_downstream_map_ipv6_unmb_t*, %struct.lspping_tlv_downstream_map_ipv6_unmb_t** %942, align 8
  %944 = getelementptr inbounds %struct.lspping_tlv_downstream_map_ipv6_unmb_t, %struct.lspping_tlv_downstream_map_ipv6_unmb_t* %943, i32 0, i32 1
  %945 = load i32, i32* %944, align 8
  %946 = call i32 @ip6addr_string(%struct.TYPE_9__* %941, i32 %945)
  %947 = bitcast %union.anon* %22 to %struct.lspping_tlv_downstream_map_ipv6_unmb_t**
  %948 = load %struct.lspping_tlv_downstream_map_ipv6_unmb_t*, %struct.lspping_tlv_downstream_map_ipv6_unmb_t** %947, align 8
  %949 = getelementptr inbounds %struct.lspping_tlv_downstream_map_ipv6_unmb_t, %struct.lspping_tlv_downstream_map_ipv6_unmb_t* %948, i32 0, i32 0
  %950 = load i32*, i32** %949, align 8
  %951 = call i8* @EXTRACT_32BITS(i32* %950)
  %952 = bitcast i8* %951 to %struct.TYPE_9__*
  %953 = call i32 @ND_PRINT(%struct.TYPE_9__* %952)
  %954 = load i32*, i32** %11, align 8
  %955 = getelementptr inbounds i32, i32* %954, i64 16
  store i32* %955, i32** %11, align 8
  %956 = load i32, i32* %16, align 4
  %957 = sext i32 %956 to i64
  %958 = sub i64 %957, 16
  %959 = trunc i64 %958 to i32
  store i32 %959, i32* %16, align 4
  br label %961

960:                                              ; preds = %786
  br label %961

961:                                              ; preds = %960, %933, %896, %861, %824
  %962 = load i32, i32* %16, align 4
  %963 = sext i32 %962 to i64
  %964 = icmp ult i64 %963, 4
  br i1 %964, label %965, label %969

965:                                              ; preds = %961
  %966 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %967 = call i32 @ND_PRINT(%struct.TYPE_9__* bitcast ([25 x i8]* @.str.13 to %struct.TYPE_9__*))
  %968 = load i32, i32* @TRUE, align 4
  store i32 %968, i32* %17, align 4
  br label %1040

969:                                              ; preds = %961
  %970 = load i32*, i32** %11, align 8
  %971 = load i32, i32* %970, align 4
  %972 = call i32 @ND_TCHECK2(i32 %971, i32 4)
  %973 = load i32*, i32** %11, align 8
  %974 = bitcast i32* %973 to %struct.lspping_tlv_downstream_map_info_t*
  %975 = bitcast %union.anon* %22 to %struct.lspping_tlv_downstream_map_info_t**
  store %struct.lspping_tlv_downstream_map_info_t* %974, %struct.lspping_tlv_downstream_map_info_t** %975, align 8
  %976 = load i32*, i32** %11, align 8
  %977 = getelementptr inbounds i32, i32* %976, i64 4
  store i32* %977, i32** %11, align 8
  %978 = load i32, i32* %16, align 4
  %979 = sext i32 %978 to i64
  %980 = sub i64 %979, 4
  %981 = trunc i64 %980 to i32
  store i32 %981, i32* %16, align 4
  %982 = load i32, i32* @TRUE, align 4
  store i32 %982, i32* %17, align 4
  br label %1039

983:                                              ; preds = %283
  %984 = load i32, i32* %16, align 4
  %985 = load i32, i32* @LSPPING_TLV_BFD_DISCRIMINATOR_LEN, align 4
  %986 = icmp slt i32 %984, %985
  br i1 %986, label %987, label %991

987:                                              ; preds = %983
  %988 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %989 = call i32 @ND_PRINT(%struct.TYPE_9__* bitcast ([25 x i8]* @.str.13 to %struct.TYPE_9__*))
  %990 = load i32, i32* @TRUE, align 4
  store i32 %990, i32* %17, align 4
  br label %1040

991:                                              ; preds = %983
  %992 = load i32*, i32** %10, align 8
  %993 = load i32, i32* %992, align 4
  %994 = load i32, i32* @LSPPING_TLV_BFD_DISCRIMINATOR_LEN, align 4
  %995 = call i32 @ND_TCHECK2(i32 %993, i32 %994)
  %996 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %997 = load i32*, i32** %10, align 8
  %998 = call i8* @EXTRACT_32BITS(i32* %997)
  %999 = bitcast i8* %998 to %struct.TYPE_9__*
  %1000 = call i32 @ND_PRINT(%struct.TYPE_9__* %999)
  br label %1001

1001:                                             ; preds = %991
  br label %1039

1002:                                             ; preds = %283
  %1003 = load i32, i32* %16, align 4
  %1004 = load i32, i32* @LSPPING_TLV_VENDOR_ENTERPRISE_LEN, align 4
  %1005 = icmp slt i32 %1003, %1004
  br i1 %1005, label %1006, label %1010

1006:                                             ; preds = %1002
  %1007 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %1008 = call i32 @ND_PRINT(%struct.TYPE_9__* bitcast ([25 x i8]* @.str.13 to %struct.TYPE_9__*))
  %1009 = load i32, i32* @TRUE, align 4
  store i32 %1009, i32* %17, align 4
  br label %1040

1010:                                             ; preds = %1002
  %1011 = load i32*, i32** %10, align 8
  %1012 = load i32, i32* %1011, align 4
  %1013 = load i32, i32* @LSPPING_TLV_VENDOR_ENTERPRISE_LEN, align 4
  %1014 = call i32 @ND_TCHECK2(i32 %1012, i32 %1013)
  %1015 = load i32*, i32** %11, align 8
  %1016 = call i8* @EXTRACT_32BITS(i32* %1015)
  %1017 = ptrtoint i8* %1016 to i32
  store i32 %1017, i32* %24, align 4
  %1018 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %1019 = load i32, i32* @smi_values, align 4
  %1020 = load i32, i32* %24, align 4
  %1021 = call i32 @tok2str(i32 %1019, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 %1020)
  %1022 = load i32, i32* %24, align 4
  %1023 = sext i32 %1022 to i64
  %1024 = inttoptr i64 %1023 to %struct.TYPE_9__*
  %1025 = call i32 @ND_PRINT(%struct.TYPE_9__* %1024)
  br label %1026

1026:                                             ; preds = %1010
  br label %1039

1027:                                             ; preds = %283, %283, %283
  br label %1028

1028:                                             ; preds = %283, %1027
  %1029 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %1030 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1029, i32 0, i32 0
  %1031 = load i32, i32* %1030, align 4
  %1032 = icmp sle i32 %1031, 1
  br i1 %1032, label %1033, label %1038

1033:                                             ; preds = %1028
  %1034 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %1035 = load i32*, i32** %11, align 8
  %1036 = load i32, i32* %16, align 4
  %1037 = call i32 @print_unknown_data(%struct.TYPE_9__* %1034, i32* %1035, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i64 0, i64 0), i32 %1036)
  br label %1038

1038:                                             ; preds = %1033, %1028
  br label %1039

1039:                                             ; preds = %1038, %1026, %1001, %969, %777
  br label %1040

1040:                                             ; preds = %1039, %1006, %987, %965, %929, %892, %857, %820, %782, %325, %298
  %1041 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %1042 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1041, i32 0, i32 0
  %1043 = load i32, i32* %1042, align 4
  %1044 = icmp sgt i32 %1043, 1
  br i1 %1044, label %1049, label %1045

1045:                                             ; preds = %1040
  %1046 = load i32, i32* %17, align 4
  %1047 = load i32, i32* @TRUE, align 4
  %1048 = icmp eq i32 %1046, %1047
  br i1 %1048, label %1049, label %1055

1049:                                             ; preds = %1045, %1040
  %1050 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %1051 = load i32*, i32** %10, align 8
  %1052 = getelementptr inbounds i32, i32* %1051, i64 16
  %1053 = load i32, i32* %14, align 4
  %1054 = call i32 @print_unknown_data(%struct.TYPE_9__* %1050, i32* %1052, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i64 0, i64 0), i32 %1053)
  br label %1055

1055:                                             ; preds = %1049, %1045
  %1056 = load i32, i32* %14, align 4
  %1057 = srem i32 %1056, 4
  %1058 = icmp ne i32 %1057, 0
  br i1 %1058, label %1059, label %1073

1059:                                             ; preds = %1055
  %1060 = load i32, i32* %14, align 4
  %1061 = srem i32 %1060, 4
  %1062 = sub nsw i32 4, %1061
  %1063 = load i32, i32* %14, align 4
  %1064 = add nsw i32 %1063, %1062
  store i32 %1064, i32* %14, align 4
  %1065 = load i32, i32* %13, align 4
  %1066 = sext i32 %1065 to i64
  %1067 = load i32, i32* %14, align 4
  %1068 = sext i32 %1067 to i64
  %1069 = add i64 %1068, 16
  %1070 = icmp ult i64 %1066, %1069
  br i1 %1070, label %1071, label %1072

1071:                                             ; preds = %1059
  br label %1087

1072:                                             ; preds = %1059
  br label %1073

1073:                                             ; preds = %1072, %1055
  %1074 = load i32, i32* %14, align 4
  %1075 = sext i32 %1074 to i64
  %1076 = add i64 %1075, 16
  %1077 = load i32*, i32** %10, align 8
  %1078 = getelementptr inbounds i32, i32* %1077, i64 %1076
  store i32* %1078, i32** %10, align 8
  %1079 = load i32, i32* %14, align 4
  %1080 = sext i32 %1079 to i64
  %1081 = add i64 %1080, 16
  %1082 = load i32, i32* %13, align 4
  %1083 = sext i32 %1082 to i64
  %1084 = sub i64 %1083, %1081
  %1085 = trunc i64 %1084 to i32
  store i32 %1085, i32* %13, align 4
  br label %232

1086:                                             ; preds = %232
  br label %1093

1087:                                             ; preds = %1071, %282, %239, %31
  %1088 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %1089 = call i32 @ND_PRINT(%struct.TYPE_9__* bitcast ([24 x i8]* @.str.37 to %struct.TYPE_9__*))
  br label %1093

1090:                                             ; No predecessors!
  %1091 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %1092 = call i32 @ND_PRINT(%struct.TYPE_9__* bitcast ([29 x i8]* @.str.38 to %struct.TYPE_9__*))
  br label %1093

1093:                                             ; preds = %1090, %1087, %1086, %761, %58, %43
  ret void
}

declare dso_local i32 @ND_TCHECK(%struct.lspping_common_header* byval(%struct.lspping_common_header) align 8) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_9__*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i8* @EXTRACT_32BITS(i32*) #1

declare dso_local i32 @ts_print(%struct.TYPE_9__*, %struct.timeval*) #1

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @ipaddr_string(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @ip6addr_string(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @bgp_vpn_rd_print(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @print_unknown_data(%struct.TYPE_9__*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
