; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_check_xfer_packet.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_check_xfer_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_xfer = type { i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64, i32, i32, i32, i32, i64, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32 }

@LDNS_HEADER_SIZE = common dso_local global i64 0, align 8
@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"xfr to %s failed, packet too small\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"xfr to %s failed, packet has no QR flag\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"xfr to %s failed, packet has TC flag\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"xfr to %s failed, packet wrong ID\00", align 1
@LDNS_RCODE_NOERROR = common dso_local global i64 0, align 8
@LDNS_RCODE_NOTIMPL = common dso_local global i64 0, align 8
@LDNS_RCODE_SERVFAIL = common dso_local global i64 0, align 8
@LDNS_RCODE_REFUSED = common dso_local global i64 0, align 8
@LDNS_RCODE_FORMERR = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [54 x i8] c"xfr to %s, fallback from IXFR to AXFR (with rcode %s)\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"xfr to %s failed, packet with rcode %s\00", align 1
@LDNS_PACKET_QUERY = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [41 x i8] c"xfr to %s failed, packet with bad opcode\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"xfr to %s failed, packet has qdcount %d\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"xfr to %s failed, packet with malformed dname\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"xfr to %s failed, packet with wrong qname\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"xfr to %s failed, packet with truncated query RR\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"xfr to %s failed, packet with wrong qclass\00", align 1
@LDNS_RR_TYPE_IXFR = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [57 x i8] c"xfr to %s failed, packet with wrong qtype, expected IXFR\00", align 1
@LDNS_RR_TYPE_AXFR = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [57 x i8] c"xfr to %s failed, packet with wrong qtype, expected AXFR\00", align 1
@.str.14 = private unnamed_addr constant [64 x i8] c"xfr to %s failed, packet with malformed dname in answer section\00", align 1
@.str.15 = private unnamed_addr constant [43 x i8] c"xfr to %s failed, packet with truncated RR\00", align 1
@.str.16 = private unnamed_addr constant [49 x i8] c"xfr to %s failed, packet with truncated RR rdata\00", align 1
@LDNS_RR_TYPE_SOA = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [68 x i8] c"xfr to %s failed, packet with malformed zone transfer, no start SOA\00", align 1
@.str.18 = private unnamed_addr constant [55 x i8] c"xfr to %s failed, packet with SOA with malformed rdata\00", align 1
@.str.19 = private unnamed_addr constant [51 x i8] c"xfr to %s failed, packet with SOA with wrong dname\00", align 1
@.str.20 = private unnamed_addr constant [52 x i8] c"xfr to %s ended, IXFR reply that zone has serial %u\00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c"xfr %s: contains SOA serial %u\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"xfr %s: last AXFR packet\00", align 1
@.str.23 = private unnamed_addr constant [25 x i8] c"xfr %s: last IXFR packet\00", align 1
@.str.24 = private unnamed_addr constant [67 x i8] c"xfr to %s failed, packet with malformed dname in authority section\00", align 1
@.str.25 = private unnamed_addr constant [68 x i8] c"xfr to %s failed, packet with malformed dname in additional section\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.auth_xfer*, i32*, i32*)* @check_xfer_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_xfer_packet(i32* %0, %struct.auth_xfer* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.auth_xfer*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [32 x i8], align 16
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store %struct.auth_xfer* %1, %struct.auth_xfer** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = call i32* @sldns_buffer_begin(i32* %22)
  store i32* %23, i32** %10, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = call i64 @sldns_buffer_limit(i32* %24)
  %26 = load i64, i64* @LDNS_HEADER_SIZE, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %4
  %29 = load i32, i32* @VERB_ALGO, align 4
  %30 = load %struct.auth_xfer*, %struct.auth_xfer** %7, align 8
  %31 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 6
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i32, i8*, i32, ...) @verbose(i32 %29, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %36)
  store i32 0, i32* %5, align 4
  br label %723

38:                                               ; preds = %4
  %39 = load i32*, i32** %10, align 8
  %40 = call i32 @LDNS_QR_WIRE(i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* @VERB_ALGO, align 4
  %44 = load %struct.auth_xfer*, %struct.auth_xfer** %7, align 8
  %45 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 6
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i32, i8*, i32, ...) @verbose(i32 %43, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  store i32 0, i32* %5, align 4
  br label %723

52:                                               ; preds = %38
  %53 = load i32*, i32** %10, align 8
  %54 = call i64 @LDNS_TC_WIRE(i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %52
  %57 = load i32, i32* @VERB_ALGO, align 4
  %58 = load %struct.auth_xfer*, %struct.auth_xfer** %7, align 8
  %59 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 6
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i32, i8*, i32, ...) @verbose(i32 %57, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  store i32 0, i32* %5, align 4
  br label %723

66:                                               ; preds = %52
  %67 = load i32*, i32** %10, align 8
  %68 = call i64 @LDNS_ID_WIRE(i32* %67)
  %69 = load %struct.auth_xfer*, %struct.auth_xfer** %7, align 8
  %70 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %69, i32 0, i32 1
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %68, %73
  br i1 %74, label %75, label %85

75:                                               ; preds = %66
  %76 = load i32, i32* @VERB_ALGO, align 4
  %77 = load %struct.auth_xfer*, %struct.auth_xfer** %7, align 8
  %78 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %77, i32 0, i32 1
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 6
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 (i32, i8*, i32, ...) @verbose(i32 %76, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %83)
  store i32 0, i32* %5, align 4
  br label %723

85:                                               ; preds = %66
  %86 = load i32*, i32** %10, align 8
  %87 = call i64 @LDNS_RCODE_WIRE(i32* %86)
  %88 = load i64, i64* @LDNS_RCODE_NOERROR, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %150

90:                                               ; preds = %85
  %91 = load i32*, i32** %10, align 8
  %92 = call i64 @LDNS_RCODE_WIRE(i32* %91)
  %93 = trunc i64 %92 to i32
  %94 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %95 = call i32 @sldns_wire2str_rcode_buf(i32 %93, i8* %94, i32 32)
  %96 = load %struct.auth_xfer*, %struct.auth_xfer** %7, align 8
  %97 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %96, i32 0, i32 1
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 7
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %139

102:                                              ; preds = %90
  %103 = load i32*, i32** %10, align 8
  %104 = call i64 @LDNS_RCODE_WIRE(i32* %103)
  %105 = load i64, i64* @LDNS_RCODE_NOTIMPL, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %122, label %107

107:                                              ; preds = %102
  %108 = load i32*, i32** %10, align 8
  %109 = call i64 @LDNS_RCODE_WIRE(i32* %108)
  %110 = load i64, i64* @LDNS_RCODE_SERVFAIL, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %122, label %112

112:                                              ; preds = %107
  %113 = load i32*, i32** %10, align 8
  %114 = call i64 @LDNS_RCODE_WIRE(i32* %113)
  %115 = load i64, i64* @LDNS_RCODE_REFUSED, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %122, label %117

117:                                              ; preds = %112
  %118 = load i32*, i32** %10, align 8
  %119 = call i64 @LDNS_RCODE_WIRE(i32* %118)
  %120 = load i64, i64* @LDNS_RCODE_FORMERR, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %138

122:                                              ; preds = %117, %112, %107, %102
  %123 = load i32, i32* @VERB_ALGO, align 4
  %124 = load %struct.auth_xfer*, %struct.auth_xfer** %7, align 8
  %125 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %124, i32 0, i32 1
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 6
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %132 = call i32 (i32, i8*, i32, ...) @verbose(i32 %123, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 %130, i8* %131)
  %133 = load %struct.auth_xfer*, %struct.auth_xfer** %7, align 8
  %134 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %133, i32 0, i32 1
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 1
  store i32 1, i32* %136, align 8
  %137 = load i32*, i32** %8, align 8
  store i32 0, i32* %137, align 4
  store i32 0, i32* %5, align 4
  br label %723

138:                                              ; preds = %117
  br label %139

139:                                              ; preds = %138, %90
  %140 = load i32, i32* @VERB_ALGO, align 4
  %141 = load %struct.auth_xfer*, %struct.auth_xfer** %7, align 8
  %142 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %141, i32 0, i32 1
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 6
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %149 = call i32 (i32, i8*, i32, ...) @verbose(i32 %140, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %147, i8* %148)
  store i32 0, i32* %5, align 4
  br label %723

150:                                              ; preds = %85
  %151 = load i32*, i32** %10, align 8
  %152 = call i64 @LDNS_OPCODE_WIRE(i32* %151)
  %153 = load i64, i64* @LDNS_PACKET_QUERY, align 8
  %154 = icmp ne i64 %152, %153
  br i1 %154, label %155, label %165

155:                                              ; preds = %150
  %156 = load i32, i32* @VERB_ALGO, align 4
  %157 = load %struct.auth_xfer*, %struct.auth_xfer** %7, align 8
  %158 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %157, i32 0, i32 1
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 6
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i32 (i32, i8*, i32, ...) @verbose(i32 %156, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i32 %163)
  store i32 0, i32* %5, align 4
  br label %723

165:                                              ; preds = %150
  %166 = load i32*, i32** %10, align 8
  %167 = call i32 @LDNS_QDCOUNT(i32* %166)
  %168 = icmp sgt i32 %167, 1
  br i1 %168, label %169, label %181

169:                                              ; preds = %165
  %170 = load i32, i32* @VERB_ALGO, align 4
  %171 = load %struct.auth_xfer*, %struct.auth_xfer** %7, align 8
  %172 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %171, i32 0, i32 1
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 6
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load i32*, i32** %10, align 8
  %179 = call i32 @LDNS_QDCOUNT(i32* %178)
  %180 = call i32 (i32, i8*, i32, ...) @verbose(i32 %170, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i32 %177, i32 %179)
  store i32 0, i32* %5, align 4
  br label %723

181:                                              ; preds = %165
  %182 = load i32*, i32** %6, align 8
  %183 = load i64, i64* @LDNS_HEADER_SIZE, align 8
  %184 = call i32 @sldns_buffer_set_position(i32* %182, i64 %183)
  store i32 0, i32* %11, align 4
  br label %185

185:                                              ; preds = %298, %181
  %186 = load i32, i32* %11, align 4
  %187 = load i32*, i32** %10, align 8
  %188 = call i32 @LDNS_QDCOUNT(i32* %187)
  %189 = icmp slt i32 %186, %188
  br i1 %189, label %190, label %301

190:                                              ; preds = %185
  %191 = load i32*, i32** %6, align 8
  %192 = call i64 @sldns_buffer_position(i32* %191)
  store i64 %192, i64* %13, align 8
  %193 = load i32*, i32** %6, align 8
  %194 = call i64 @pkt_dname_len(i32* %193)
  %195 = icmp eq i64 %194, 0
  br i1 %195, label %196, label %206

196:                                              ; preds = %190
  %197 = load i32, i32* @VERB_ALGO, align 4
  %198 = load %struct.auth_xfer*, %struct.auth_xfer** %7, align 8
  %199 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %198, i32 0, i32 1
  %200 = load %struct.TYPE_4__*, %struct.TYPE_4__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 6
  %202 = load %struct.TYPE_3__*, %struct.TYPE_3__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = call i32 (i32, i8*, i32, ...) @verbose(i32 %197, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0), i32 %204)
  store i32 0, i32* %5, align 4
  br label %723

206:                                              ; preds = %190
  %207 = load i32*, i32** %6, align 8
  %208 = load i32*, i32** %6, align 8
  %209 = load i64, i64* %13, align 8
  %210 = call i32 @sldns_buffer_at(i32* %208, i64 %209)
  %211 = load %struct.auth_xfer*, %struct.auth_xfer** %7, align 8
  %212 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = call i64 @dname_pkt_compare(i32* %207, i32 %210, i32 %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %226

216:                                              ; preds = %206
  %217 = load i32, i32* @VERB_ALGO, align 4
  %218 = load %struct.auth_xfer*, %struct.auth_xfer** %7, align 8
  %219 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %218, i32 0, i32 1
  %220 = load %struct.TYPE_4__*, %struct.TYPE_4__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 6
  %222 = load %struct.TYPE_3__*, %struct.TYPE_3__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = call i32 (i32, i8*, i32, ...) @verbose(i32 %217, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0), i32 %224)
  store i32 0, i32* %5, align 4
  br label %723

226:                                              ; preds = %206
  %227 = load i32*, i32** %6, align 8
  %228 = call i64 @sldns_buffer_remaining(i32* %227)
  %229 = icmp slt i64 %228, 4
  br i1 %229, label %230, label %240

230:                                              ; preds = %226
  %231 = load i32, i32* @VERB_ALGO, align 4
  %232 = load %struct.auth_xfer*, %struct.auth_xfer** %7, align 8
  %233 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %232, i32 0, i32 1
  %234 = load %struct.TYPE_4__*, %struct.TYPE_4__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 6
  %236 = load %struct.TYPE_3__*, %struct.TYPE_3__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = call i32 (i32, i8*, i32, ...) @verbose(i32 %231, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0), i32 %238)
  store i32 0, i32* %5, align 4
  br label %723

240:                                              ; preds = %226
  %241 = load i32*, i32** %6, align 8
  %242 = call i64 @sldns_buffer_read_u16(i32* %241)
  store i64 %242, i64* %14, align 8
  %243 = load i32*, i32** %6, align 8
  %244 = call i64 @sldns_buffer_read_u16(i32* %243)
  store i64 %244, i64* %15, align 8
  %245 = load i64, i64* %15, align 8
  %246 = load %struct.auth_xfer*, %struct.auth_xfer** %7, align 8
  %247 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = icmp ne i64 %245, %248
  br i1 %249, label %250, label %260

250:                                              ; preds = %240
  %251 = load i32, i32* @VERB_ALGO, align 4
  %252 = load %struct.auth_xfer*, %struct.auth_xfer** %7, align 8
  %253 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %252, i32 0, i32 1
  %254 = load %struct.TYPE_4__*, %struct.TYPE_4__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %254, i32 0, i32 6
  %256 = load %struct.TYPE_3__*, %struct.TYPE_3__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = call i32 (i32, i8*, i32, ...) @verbose(i32 %251, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i64 0, i64 0), i32 %258)
  store i32 0, i32* %5, align 4
  br label %723

260:                                              ; preds = %240
  %261 = load %struct.auth_xfer*, %struct.auth_xfer** %7, align 8
  %262 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %261, i32 0, i32 1
  %263 = load %struct.TYPE_4__*, %struct.TYPE_4__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %263, i32 0, i32 7
  %265 = load i64, i64* %264, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %282

267:                                              ; preds = %260
  %268 = load i64, i64* %14, align 8
  %269 = load i64, i64* @LDNS_RR_TYPE_IXFR, align 8
  %270 = icmp ne i64 %268, %269
  br i1 %270, label %271, label %281

271:                                              ; preds = %267
  %272 = load i32, i32* @VERB_ALGO, align 4
  %273 = load %struct.auth_xfer*, %struct.auth_xfer** %7, align 8
  %274 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %273, i32 0, i32 1
  %275 = load %struct.TYPE_4__*, %struct.TYPE_4__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %275, i32 0, i32 6
  %277 = load %struct.TYPE_3__*, %struct.TYPE_3__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = call i32 (i32, i8*, i32, ...) @verbose(i32 %272, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.12, i64 0, i64 0), i32 %279)
  store i32 0, i32* %5, align 4
  br label %723

281:                                              ; preds = %267
  br label %297

282:                                              ; preds = %260
  %283 = load i64, i64* %14, align 8
  %284 = load i64, i64* @LDNS_RR_TYPE_AXFR, align 8
  %285 = icmp ne i64 %283, %284
  br i1 %285, label %286, label %296

286:                                              ; preds = %282
  %287 = load i32, i32* @VERB_ALGO, align 4
  %288 = load %struct.auth_xfer*, %struct.auth_xfer** %7, align 8
  %289 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %288, i32 0, i32 1
  %290 = load %struct.TYPE_4__*, %struct.TYPE_4__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %290, i32 0, i32 6
  %292 = load %struct.TYPE_3__*, %struct.TYPE_3__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = call i32 (i32, i8*, i32, ...) @verbose(i32 %287, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.13, i64 0, i64 0), i32 %294)
  store i32 0, i32* %5, align 4
  br label %723

296:                                              ; preds = %282
  br label %297

297:                                              ; preds = %296, %281
  br label %298

298:                                              ; preds = %297
  %299 = load i32, i32* %11, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %11, align 4
  br label %185

301:                                              ; preds = %185
  store i32 0, i32* %11, align 4
  br label %302

302:                                              ; preds = %587, %301
  %303 = load i32, i32* %11, align 4
  %304 = load i32*, i32** %10, align 8
  %305 = call i32 @LDNS_ANCOUNT(i32* %304)
  %306 = icmp slt i32 %303, %305
  br i1 %306, label %307, label %590

307:                                              ; preds = %302
  %308 = load i32*, i32** %6, align 8
  %309 = call i64 @sldns_buffer_position(i32* %308)
  store i64 %309, i64* %16, align 8
  %310 = load i32*, i32** %6, align 8
  %311 = call i64 @pkt_dname_len(i32* %310)
  %312 = icmp eq i64 %311, 0
  br i1 %312, label %313, label %323

313:                                              ; preds = %307
  %314 = load i32, i32* @VERB_ALGO, align 4
  %315 = load %struct.auth_xfer*, %struct.auth_xfer** %7, align 8
  %316 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %315, i32 0, i32 1
  %317 = load %struct.TYPE_4__*, %struct.TYPE_4__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %317, i32 0, i32 6
  %319 = load %struct.TYPE_3__*, %struct.TYPE_3__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 4
  %322 = call i32 (i32, i8*, i32, ...) @verbose(i32 %314, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.14, i64 0, i64 0), i32 %321)
  store i32 0, i32* %5, align 4
  br label %723

323:                                              ; preds = %307
  %324 = load i32*, i32** %6, align 8
  %325 = call i64 @sldns_buffer_remaining(i32* %324)
  %326 = icmp slt i64 %325, 10
  br i1 %326, label %327, label %337

327:                                              ; preds = %323
  %328 = load i32, i32* @VERB_ALGO, align 4
  %329 = load %struct.auth_xfer*, %struct.auth_xfer** %7, align 8
  %330 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %329, i32 0, i32 1
  %331 = load %struct.TYPE_4__*, %struct.TYPE_4__** %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %331, i32 0, i32 6
  %333 = load %struct.TYPE_3__*, %struct.TYPE_3__** %332, align 8
  %334 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 4
  %336 = call i32 (i32, i8*, i32, ...) @verbose(i32 %328, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.15, i64 0, i64 0), i32 %335)
  store i32 0, i32* %5, align 4
  br label %723

337:                                              ; preds = %323
  %338 = load i32*, i32** %6, align 8
  %339 = call i64 @sldns_buffer_read_u16(i32* %338)
  store i64 %339, i64* %17, align 8
  %340 = load i32*, i32** %6, align 8
  %341 = call i64 @sldns_buffer_read_u16(i32* %340)
  %342 = load i32*, i32** %6, align 8
  %343 = call i32 @sldns_buffer_read_u32(i32* %342)
  %344 = load i32*, i32** %6, align 8
  %345 = call i64 @sldns_buffer_read_u16(i32* %344)
  store i64 %345, i64* %18, align 8
  %346 = load i32*, i32** %6, align 8
  %347 = call i64 @sldns_buffer_remaining(i32* %346)
  %348 = load i64, i64* %18, align 8
  %349 = icmp slt i64 %347, %348
  br i1 %349, label %350, label %360

350:                                              ; preds = %337
  %351 = load i32, i32* @VERB_ALGO, align 4
  %352 = load %struct.auth_xfer*, %struct.auth_xfer** %7, align 8
  %353 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %352, i32 0, i32 1
  %354 = load %struct.TYPE_4__*, %struct.TYPE_4__** %353, align 8
  %355 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %354, i32 0, i32 6
  %356 = load %struct.TYPE_3__*, %struct.TYPE_3__** %355, align 8
  %357 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 4
  %359 = call i32 (i32, i8*, i32, ...) @verbose(i32 %351, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.16, i64 0, i64 0), i32 %358)
  store i32 0, i32* %5, align 4
  br label %723

360:                                              ; preds = %337
  %361 = load %struct.auth_xfer*, %struct.auth_xfer** %7, align 8
  %362 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %361, i32 0, i32 1
  %363 = load %struct.TYPE_4__*, %struct.TYPE_4__** %362, align 8
  %364 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %363, i32 0, i32 2
  %365 = load i32, i32* %364, align 4
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %367, label %381

367:                                              ; preds = %360
  %368 = load i64, i64* %17, align 8
  %369 = load i64, i64* @LDNS_RR_TYPE_SOA, align 8
  %370 = icmp ne i64 %368, %369
  br i1 %370, label %371, label %381

371:                                              ; preds = %367
  %372 = load i32, i32* @VERB_ALGO, align 4
  %373 = load %struct.auth_xfer*, %struct.auth_xfer** %7, align 8
  %374 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %373, i32 0, i32 1
  %375 = load %struct.TYPE_4__*, %struct.TYPE_4__** %374, align 8
  %376 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %375, i32 0, i32 6
  %377 = load %struct.TYPE_3__*, %struct.TYPE_3__** %376, align 8
  %378 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 4
  %380 = call i32 (i32, i8*, i32, ...) @verbose(i32 %372, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.17, i64 0, i64 0), i32 %379)
  store i32 0, i32* %5, align 4
  br label %723

381:                                              ; preds = %367, %360
  %382 = load %struct.auth_xfer*, %struct.auth_xfer** %7, align 8
  %383 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %382, i32 0, i32 1
  %384 = load %struct.TYPE_4__*, %struct.TYPE_4__** %383, align 8
  %385 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %384, i32 0, i32 2
  %386 = load i32, i32* %385, align 4
  %387 = icmp eq i32 %386, 1
  br i1 %387, label %388, label %397

388:                                              ; preds = %381
  %389 = load i64, i64* %17, align 8
  %390 = load i64, i64* @LDNS_RR_TYPE_SOA, align 8
  %391 = icmp ne i64 %389, %390
  br i1 %391, label %392, label %397

392:                                              ; preds = %388
  %393 = load %struct.auth_xfer*, %struct.auth_xfer** %7, align 8
  %394 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %393, i32 0, i32 1
  %395 = load %struct.TYPE_4__*, %struct.TYPE_4__** %394, align 8
  %396 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %395, i32 0, i32 3
  store i32 1, i32* %396, align 8
  br label %397

397:                                              ; preds = %392, %388, %381
  %398 = load i64, i64* %17, align 8
  %399 = load i64, i64* @LDNS_RR_TYPE_SOA, align 8
  %400 = icmp eq i64 %398, %399
  br i1 %400, label %401, label %576

401:                                              ; preds = %397
  %402 = load i64, i64* %18, align 8
  %403 = icmp slt i64 %402, 22
  br i1 %403, label %404, label %414

404:                                              ; preds = %401
  %405 = load i32, i32* @VERB_ALGO, align 4
  %406 = load %struct.auth_xfer*, %struct.auth_xfer** %7, align 8
  %407 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %406, i32 0, i32 1
  %408 = load %struct.TYPE_4__*, %struct.TYPE_4__** %407, align 8
  %409 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %408, i32 0, i32 6
  %410 = load %struct.TYPE_3__*, %struct.TYPE_3__** %409, align 8
  %411 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %410, i32 0, i32 0
  %412 = load i32, i32* %411, align 4
  %413 = call i32 (i32, i8*, i32, ...) @verbose(i32 %405, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.18, i64 0, i64 0), i32 %412)
  store i32 0, i32* %5, align 4
  br label %723

414:                                              ; preds = %401
  %415 = load i32*, i32** %6, align 8
  %416 = load i32*, i32** %6, align 8
  %417 = load i64, i64* %16, align 8
  %418 = call i32 @sldns_buffer_at(i32* %416, i64 %417)
  %419 = load %struct.auth_xfer*, %struct.auth_xfer** %7, align 8
  %420 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %419, i32 0, i32 2
  %421 = load i32, i32* %420, align 8
  %422 = call i64 @dname_pkt_compare(i32* %415, i32 %418, i32 %421)
  %423 = icmp ne i64 %422, 0
  br i1 %423, label %424, label %434

424:                                              ; preds = %414
  %425 = load i32, i32* @VERB_ALGO, align 4
  %426 = load %struct.auth_xfer*, %struct.auth_xfer** %7, align 8
  %427 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %426, i32 0, i32 1
  %428 = load %struct.TYPE_4__*, %struct.TYPE_4__** %427, align 8
  %429 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %428, i32 0, i32 6
  %430 = load %struct.TYPE_3__*, %struct.TYPE_3__** %429, align 8
  %431 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %430, i32 0, i32 0
  %432 = load i32, i32* %431, align 4
  %433 = call i32 (i32, i8*, i32, ...) @verbose(i32 %425, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.19, i64 0, i64 0), i32 %432)
  store i32 0, i32* %5, align 4
  br label %723

434:                                              ; preds = %414
  %435 = load i32*, i32** %6, align 8
  %436 = load i32*, i32** %6, align 8
  %437 = call i64 @sldns_buffer_position(i32* %436)
  %438 = load i64, i64* %18, align 8
  %439 = add nsw i64 %437, %438
  %440 = sub nsw i64 %439, 20
  %441 = call i64 @sldns_buffer_read_u32_at(i32* %435, i64 %440)
  store i64 %441, i64* %19, align 8
  %442 = load %struct.auth_xfer*, %struct.auth_xfer** %7, align 8
  %443 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %442, i32 0, i32 1
  %444 = load %struct.TYPE_4__*, %struct.TYPE_4__** %443, align 8
  %445 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %444, i32 0, i32 7
  %446 = load i64, i64* %445, align 8
  %447 = icmp ne i64 %446, 0
  br i1 %447, label %448, label %471

448:                                              ; preds = %434
  %449 = load %struct.auth_xfer*, %struct.auth_xfer** %7, align 8
  %450 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %449, i32 0, i32 1
  %451 = load %struct.TYPE_4__*, %struct.TYPE_4__** %450, align 8
  %452 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %451, i32 0, i32 2
  %453 = load i32, i32* %452, align 4
  %454 = icmp eq i32 %453, 0
  br i1 %454, label %455, label %471

455:                                              ; preds = %448
  %456 = load i32*, i32** %10, align 8
  %457 = call i32 @LDNS_ANCOUNT(i32* %456)
  %458 = icmp eq i32 %457, 1
  br i1 %458, label %459, label %471

459:                                              ; preds = %455
  %460 = load i32, i32* @VERB_ALGO, align 4
  %461 = load %struct.auth_xfer*, %struct.auth_xfer** %7, align 8
  %462 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %461, i32 0, i32 1
  %463 = load %struct.TYPE_4__*, %struct.TYPE_4__** %462, align 8
  %464 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %463, i32 0, i32 6
  %465 = load %struct.TYPE_3__*, %struct.TYPE_3__** %464, align 8
  %466 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %465, i32 0, i32 0
  %467 = load i32, i32* %466, align 4
  %468 = load i64, i64* %19, align 8
  %469 = trunc i64 %468 to i32
  %470 = call i32 (i32, i8*, i32, ...) @verbose(i32 %460, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.20, i64 0, i64 0), i32 %467, i32 %469)
  store i32 0, i32* %5, align 4
  br label %723

471:                                              ; preds = %455, %448, %434
  %472 = load %struct.auth_xfer*, %struct.auth_xfer** %7, align 8
  %473 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %472, i32 0, i32 1
  %474 = load %struct.TYPE_4__*, %struct.TYPE_4__** %473, align 8
  %475 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %474, i32 0, i32 4
  %476 = load i32, i32* %475, align 4
  %477 = icmp eq i32 %476, 0
  br i1 %477, label %478, label %499

478:                                              ; preds = %471
  %479 = load %struct.auth_xfer*, %struct.auth_xfer** %7, align 8
  %480 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %479, i32 0, i32 1
  %481 = load %struct.TYPE_4__*, %struct.TYPE_4__** %480, align 8
  %482 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %481, i32 0, i32 4
  store i32 1, i32* %482, align 4
  %483 = load i64, i64* %19, align 8
  %484 = load %struct.auth_xfer*, %struct.auth_xfer** %7, align 8
  %485 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %484, i32 0, i32 1
  %486 = load %struct.TYPE_4__*, %struct.TYPE_4__** %485, align 8
  %487 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %486, i32 0, i32 5
  store i64 %483, i64* %487, align 8
  %488 = load i32, i32* @VERB_ALGO, align 4
  %489 = load %struct.auth_xfer*, %struct.auth_xfer** %7, align 8
  %490 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %489, i32 0, i32 1
  %491 = load %struct.TYPE_4__*, %struct.TYPE_4__** %490, align 8
  %492 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %491, i32 0, i32 6
  %493 = load %struct.TYPE_3__*, %struct.TYPE_3__** %492, align 8
  %494 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %493, i32 0, i32 0
  %495 = load i32, i32* %494, align 4
  %496 = load i64, i64* %19, align 8
  %497 = trunc i64 %496 to i32
  %498 = call i32 (i32, i8*, i32, ...) @verbose(i32 %488, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.21, i64 0, i64 0), i32 %495, i32 %497)
  br label %575

499:                                              ; preds = %471
  %500 = load %struct.auth_xfer*, %struct.auth_xfer** %7, align 8
  %501 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %500, i32 0, i32 1
  %502 = load %struct.TYPE_4__*, %struct.TYPE_4__** %501, align 8
  %503 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %502, i32 0, i32 7
  %504 = load i64, i64* %503, align 8
  %505 = icmp ne i64 %504, 0
  br i1 %505, label %506, label %513

506:                                              ; preds = %499
  %507 = load %struct.auth_xfer*, %struct.auth_xfer** %7, align 8
  %508 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %507, i32 0, i32 1
  %509 = load %struct.TYPE_4__*, %struct.TYPE_4__** %508, align 8
  %510 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %509, i32 0, i32 3
  %511 = load i32, i32* %510, align 8
  %512 = icmp ne i32 %511, 0
  br i1 %512, label %513, label %524

513:                                              ; preds = %506, %499
  %514 = load i32*, i32** %9, align 8
  store i32 1, i32* %514, align 4
  %515 = load i32, i32* @VERB_ALGO, align 4
  %516 = load %struct.auth_xfer*, %struct.auth_xfer** %7, align 8
  %517 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %516, i32 0, i32 1
  %518 = load %struct.TYPE_4__*, %struct.TYPE_4__** %517, align 8
  %519 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %518, i32 0, i32 6
  %520 = load %struct.TYPE_3__*, %struct.TYPE_3__** %519, align 8
  %521 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %520, i32 0, i32 0
  %522 = load i32, i32* %521, align 4
  %523 = call i32 (i32, i8*, i32, ...) @verbose(i32 %515, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i64 0, i64 0), i32 %522)
  br label %574

524:                                              ; preds = %506
  %525 = load %struct.auth_xfer*, %struct.auth_xfer** %7, align 8
  %526 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %525, i32 0, i32 1
  %527 = load %struct.TYPE_4__*, %struct.TYPE_4__** %526, align 8
  %528 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %527, i32 0, i32 5
  %529 = load i64, i64* %528, align 8
  %530 = load i64, i64* %19, align 8
  %531 = icmp eq i64 %529, %530
  br i1 %531, label %532, label %546

532:                                              ; preds = %524
  %533 = load %struct.auth_xfer*, %struct.auth_xfer** %7, align 8
  %534 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %533, i32 0, i32 1
  %535 = load %struct.TYPE_4__*, %struct.TYPE_4__** %534, align 8
  %536 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %535, i32 0, i32 4
  %537 = load i32, i32* %536, align 4
  %538 = icmp eq i32 %537, 1
  br i1 %538, label %539, label %546

539:                                              ; preds = %532
  %540 = load %struct.auth_xfer*, %struct.auth_xfer** %7, align 8
  %541 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %540, i32 0, i32 1
  %542 = load %struct.TYPE_4__*, %struct.TYPE_4__** %541, align 8
  %543 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %542, i32 0, i32 4
  %544 = load i32, i32* %543, align 4
  %545 = add nsw i32 %544, 1
  store i32 %545, i32* %543, align 4
  br label %573

546:                                              ; preds = %532, %524
  %547 = load %struct.auth_xfer*, %struct.auth_xfer** %7, align 8
  %548 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %547, i32 0, i32 1
  %549 = load %struct.TYPE_4__*, %struct.TYPE_4__** %548, align 8
  %550 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %549, i32 0, i32 5
  %551 = load i64, i64* %550, align 8
  %552 = load i64, i64* %19, align 8
  %553 = icmp eq i64 %551, %552
  br i1 %553, label %554, label %572

554:                                              ; preds = %546
  %555 = load %struct.auth_xfer*, %struct.auth_xfer** %7, align 8
  %556 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %555, i32 0, i32 1
  %557 = load %struct.TYPE_4__*, %struct.TYPE_4__** %556, align 8
  %558 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %557, i32 0, i32 4
  %559 = load i32, i32* %558, align 4
  %560 = icmp eq i32 %559, 2
  br i1 %560, label %561, label %572

561:                                              ; preds = %554
  %562 = load i32, i32* @VERB_ALGO, align 4
  %563 = load %struct.auth_xfer*, %struct.auth_xfer** %7, align 8
  %564 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %563, i32 0, i32 1
  %565 = load %struct.TYPE_4__*, %struct.TYPE_4__** %564, align 8
  %566 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %565, i32 0, i32 6
  %567 = load %struct.TYPE_3__*, %struct.TYPE_3__** %566, align 8
  %568 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %567, i32 0, i32 0
  %569 = load i32, i32* %568, align 4
  %570 = call i32 (i32, i8*, i32, ...) @verbose(i32 %562, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.23, i64 0, i64 0), i32 %569)
  %571 = load i32*, i32** %9, align 8
  store i32 1, i32* %571, align 4
  br label %572

572:                                              ; preds = %561, %554, %546
  br label %573

573:                                              ; preds = %572, %539
  br label %574

574:                                              ; preds = %573, %513
  br label %575

575:                                              ; preds = %574, %478
  br label %576

576:                                              ; preds = %575, %397
  %577 = load %struct.auth_xfer*, %struct.auth_xfer** %7, align 8
  %578 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %577, i32 0, i32 1
  %579 = load %struct.TYPE_4__*, %struct.TYPE_4__** %578, align 8
  %580 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %579, i32 0, i32 2
  %581 = load i32, i32* %580, align 4
  %582 = add nsw i32 %581, 1
  store i32 %582, i32* %580, align 4
  %583 = load i32*, i32** %6, align 8
  %584 = load i64, i64* %18, align 8
  %585 = trunc i64 %584 to i32
  %586 = call i32 @sldns_buffer_skip(i32* %583, i32 %585)
  br label %587

587:                                              ; preds = %576
  %588 = load i32, i32* %11, align 4
  %589 = add nsw i32 %588, 1
  store i32 %589, i32* %11, align 4
  br label %302

590:                                              ; preds = %302
  store i32 0, i32* %11, align 4
  br label %591

591:                                              ; preds = %653, %590
  %592 = load i32, i32* %11, align 4
  %593 = load i32*, i32** %10, align 8
  %594 = call i64 @LDNS_NSCOUNT(i32* %593)
  %595 = trunc i64 %594 to i32
  %596 = icmp slt i32 %592, %595
  br i1 %596, label %597, label %656

597:                                              ; preds = %591
  %598 = load i32*, i32** %6, align 8
  %599 = call i64 @pkt_dname_len(i32* %598)
  %600 = icmp eq i64 %599, 0
  br i1 %600, label %601, label %611

601:                                              ; preds = %597
  %602 = load i32, i32* @VERB_ALGO, align 4
  %603 = load %struct.auth_xfer*, %struct.auth_xfer** %7, align 8
  %604 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %603, i32 0, i32 1
  %605 = load %struct.TYPE_4__*, %struct.TYPE_4__** %604, align 8
  %606 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %605, i32 0, i32 6
  %607 = load %struct.TYPE_3__*, %struct.TYPE_3__** %606, align 8
  %608 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %607, i32 0, i32 0
  %609 = load i32, i32* %608, align 4
  %610 = call i32 (i32, i8*, i32, ...) @verbose(i32 %602, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.24, i64 0, i64 0), i32 %609)
  store i32 0, i32* %5, align 4
  br label %723

611:                                              ; preds = %597
  %612 = load i32*, i32** %6, align 8
  %613 = call i64 @sldns_buffer_remaining(i32* %612)
  %614 = icmp slt i64 %613, 10
  br i1 %614, label %615, label %625

615:                                              ; preds = %611
  %616 = load i32, i32* @VERB_ALGO, align 4
  %617 = load %struct.auth_xfer*, %struct.auth_xfer** %7, align 8
  %618 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %617, i32 0, i32 1
  %619 = load %struct.TYPE_4__*, %struct.TYPE_4__** %618, align 8
  %620 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %619, i32 0, i32 6
  %621 = load %struct.TYPE_3__*, %struct.TYPE_3__** %620, align 8
  %622 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %621, i32 0, i32 0
  %623 = load i32, i32* %622, align 4
  %624 = call i32 (i32, i8*, i32, ...) @verbose(i32 %616, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.15, i64 0, i64 0), i32 %623)
  store i32 0, i32* %5, align 4
  br label %723

625:                                              ; preds = %611
  %626 = load i32*, i32** %6, align 8
  %627 = call i64 @sldns_buffer_read_u16(i32* %626)
  %628 = load i32*, i32** %6, align 8
  %629 = call i64 @sldns_buffer_read_u16(i32* %628)
  %630 = load i32*, i32** %6, align 8
  %631 = call i32 @sldns_buffer_read_u32(i32* %630)
  %632 = load i32*, i32** %6, align 8
  %633 = call i64 @sldns_buffer_read_u16(i32* %632)
  store i64 %633, i64* %20, align 8
  %634 = load i32*, i32** %6, align 8
  %635 = call i64 @sldns_buffer_remaining(i32* %634)
  %636 = load i64, i64* %20, align 8
  %637 = icmp slt i64 %635, %636
  br i1 %637, label %638, label %648

638:                                              ; preds = %625
  %639 = load i32, i32* @VERB_ALGO, align 4
  %640 = load %struct.auth_xfer*, %struct.auth_xfer** %7, align 8
  %641 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %640, i32 0, i32 1
  %642 = load %struct.TYPE_4__*, %struct.TYPE_4__** %641, align 8
  %643 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %642, i32 0, i32 6
  %644 = load %struct.TYPE_3__*, %struct.TYPE_3__** %643, align 8
  %645 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %644, i32 0, i32 0
  %646 = load i32, i32* %645, align 4
  %647 = call i32 (i32, i8*, i32, ...) @verbose(i32 %639, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.16, i64 0, i64 0), i32 %646)
  store i32 0, i32* %5, align 4
  br label %723

648:                                              ; preds = %625
  %649 = load i32*, i32** %6, align 8
  %650 = load i64, i64* %20, align 8
  %651 = trunc i64 %650 to i32
  %652 = call i32 @sldns_buffer_skip(i32* %649, i32 %651)
  br label %653

653:                                              ; preds = %648
  %654 = load i32, i32* %11, align 4
  %655 = add nsw i32 %654, 1
  store i32 %655, i32* %11, align 4
  br label %591

656:                                              ; preds = %591
  store i32 0, i32* %11, align 4
  br label %657

657:                                              ; preds = %719, %656
  %658 = load i32, i32* %11, align 4
  %659 = load i32*, i32** %10, align 8
  %660 = call i64 @LDNS_ARCOUNT(i32* %659)
  %661 = trunc i64 %660 to i32
  %662 = icmp slt i32 %658, %661
  br i1 %662, label %663, label %722

663:                                              ; preds = %657
  %664 = load i32*, i32** %6, align 8
  %665 = call i64 @pkt_dname_len(i32* %664)
  %666 = icmp eq i64 %665, 0
  br i1 %666, label %667, label %677

667:                                              ; preds = %663
  %668 = load i32, i32* @VERB_ALGO, align 4
  %669 = load %struct.auth_xfer*, %struct.auth_xfer** %7, align 8
  %670 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %669, i32 0, i32 1
  %671 = load %struct.TYPE_4__*, %struct.TYPE_4__** %670, align 8
  %672 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %671, i32 0, i32 6
  %673 = load %struct.TYPE_3__*, %struct.TYPE_3__** %672, align 8
  %674 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %673, i32 0, i32 0
  %675 = load i32, i32* %674, align 4
  %676 = call i32 (i32, i8*, i32, ...) @verbose(i32 %668, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.25, i64 0, i64 0), i32 %675)
  store i32 0, i32* %5, align 4
  br label %723

677:                                              ; preds = %663
  %678 = load i32*, i32** %6, align 8
  %679 = call i64 @sldns_buffer_remaining(i32* %678)
  %680 = icmp slt i64 %679, 10
  br i1 %680, label %681, label %691

681:                                              ; preds = %677
  %682 = load i32, i32* @VERB_ALGO, align 4
  %683 = load %struct.auth_xfer*, %struct.auth_xfer** %7, align 8
  %684 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %683, i32 0, i32 1
  %685 = load %struct.TYPE_4__*, %struct.TYPE_4__** %684, align 8
  %686 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %685, i32 0, i32 6
  %687 = load %struct.TYPE_3__*, %struct.TYPE_3__** %686, align 8
  %688 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %687, i32 0, i32 0
  %689 = load i32, i32* %688, align 4
  %690 = call i32 (i32, i8*, i32, ...) @verbose(i32 %682, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.15, i64 0, i64 0), i32 %689)
  store i32 0, i32* %5, align 4
  br label %723

691:                                              ; preds = %677
  %692 = load i32*, i32** %6, align 8
  %693 = call i64 @sldns_buffer_read_u16(i32* %692)
  %694 = load i32*, i32** %6, align 8
  %695 = call i64 @sldns_buffer_read_u16(i32* %694)
  %696 = load i32*, i32** %6, align 8
  %697 = call i32 @sldns_buffer_read_u32(i32* %696)
  %698 = load i32*, i32** %6, align 8
  %699 = call i64 @sldns_buffer_read_u16(i32* %698)
  store i64 %699, i64* %21, align 8
  %700 = load i32*, i32** %6, align 8
  %701 = call i64 @sldns_buffer_remaining(i32* %700)
  %702 = load i64, i64* %21, align 8
  %703 = icmp slt i64 %701, %702
  br i1 %703, label %704, label %714

704:                                              ; preds = %691
  %705 = load i32, i32* @VERB_ALGO, align 4
  %706 = load %struct.auth_xfer*, %struct.auth_xfer** %7, align 8
  %707 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %706, i32 0, i32 1
  %708 = load %struct.TYPE_4__*, %struct.TYPE_4__** %707, align 8
  %709 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %708, i32 0, i32 6
  %710 = load %struct.TYPE_3__*, %struct.TYPE_3__** %709, align 8
  %711 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %710, i32 0, i32 0
  %712 = load i32, i32* %711, align 4
  %713 = call i32 (i32, i8*, i32, ...) @verbose(i32 %705, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.16, i64 0, i64 0), i32 %712)
  store i32 0, i32* %5, align 4
  br label %723

714:                                              ; preds = %691
  %715 = load i32*, i32** %6, align 8
  %716 = load i64, i64* %21, align 8
  %717 = trunc i64 %716 to i32
  %718 = call i32 @sldns_buffer_skip(i32* %715, i32 %717)
  br label %719

719:                                              ; preds = %714
  %720 = load i32, i32* %11, align 4
  %721 = add nsw i32 %720, 1
  store i32 %721, i32* %11, align 4
  br label %657

722:                                              ; preds = %657
  store i32 1, i32* %5, align 4
  br label %723

723:                                              ; preds = %722, %704, %681, %667, %638, %615, %601, %459, %424, %404, %371, %350, %327, %313, %286, %271, %250, %230, %216, %196, %169, %155, %139, %122, %75, %56, %42, %28
  %724 = load i32, i32* %5, align 4
  ret i32 %724
}

declare dso_local i32* @sldns_buffer_begin(i32*) #1

declare dso_local i64 @sldns_buffer_limit(i32*) #1

declare dso_local i32 @verbose(i32, i8*, i32, ...) #1

declare dso_local i32 @LDNS_QR_WIRE(i32*) #1

declare dso_local i64 @LDNS_TC_WIRE(i32*) #1

declare dso_local i64 @LDNS_ID_WIRE(i32*) #1

declare dso_local i64 @LDNS_RCODE_WIRE(i32*) #1

declare dso_local i32 @sldns_wire2str_rcode_buf(i32, i8*, i32) #1

declare dso_local i64 @LDNS_OPCODE_WIRE(i32*) #1

declare dso_local i32 @LDNS_QDCOUNT(i32*) #1

declare dso_local i32 @sldns_buffer_set_position(i32*, i64) #1

declare dso_local i64 @sldns_buffer_position(i32*) #1

declare dso_local i64 @pkt_dname_len(i32*) #1

declare dso_local i64 @dname_pkt_compare(i32*, i32, i32) #1

declare dso_local i32 @sldns_buffer_at(i32*, i64) #1

declare dso_local i64 @sldns_buffer_remaining(i32*) #1

declare dso_local i64 @sldns_buffer_read_u16(i32*) #1

declare dso_local i32 @LDNS_ANCOUNT(i32*) #1

declare dso_local i32 @sldns_buffer_read_u32(i32*) #1

declare dso_local i64 @sldns_buffer_read_u32_at(i32*, i64) #1

declare dso_local i32 @sldns_buffer_skip(i32*, i32) #1

declare dso_local i64 @LDNS_NSCOUNT(i32*) #1

declare dso_local i64 @LDNS_ARCOUNT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
