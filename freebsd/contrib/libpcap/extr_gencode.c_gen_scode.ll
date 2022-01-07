; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_scode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_scode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block = type { i32 }
%struct.TYPE_25__ = type { %struct.addrinfo*, %struct.TYPE_23__, i32 }
%struct.addrinfo = type { i64, i32, %struct.addrinfo* }
%struct.TYPE_23__ = type { i32 }
%struct.qual = type { i32, i32, i32 }
%struct.sockaddr_in = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"unknown network '%s'\00", align 1
@Q_LINK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"unknown ether host '%s'\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"unknown FDDI host '%s'\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"unknown token ring host '%s'\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"unknown 802.11 host '%s'\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"unknown Fibre Channel host '%s'\00", align 1
@.str.6 = private unnamed_addr constant [90 x i8] c"only ethernet/FDDI/token ring/802.11/ATM LANE/Fibre Channel supports link-level host name\00", align 1
@Q_DECNET = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [61 x i8] c"decnet name support not included, '%s' cannot be translated\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"unknown host '%s'\00", align 1
@OFFSET_NOT_SET = common dso_local global i32 0, align 4
@Q_IP = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [20 x i8] c"unknown host '%s'%s\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [30 x i8] c" for specified address family\00", align 1
@Q_UDP = common dso_local global i32 0, align 4
@Q_TCP = common dso_local global i32 0, align 4
@Q_SCTP = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [28 x i8] c"illegal qualifier of 'port'\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"unknown port '%s'\00", align 1
@IPPROTO_TCP = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [17 x i8] c"port '%s' is tcp\00", align 1
@IPPROTO_SCTP = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [18 x i8] c"port '%s' is sctp\00", align 1
@IPPROTO_UDP = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [17 x i8] c"port '%s' is udp\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"illegal port number %d < 0\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"illegal port number %d > 65535\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c"illegal qualifier of 'portrange'\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"unknown port in range '%s'\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"port in range '%s' is tcp\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"port in range '%s' is sctp\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"port in range '%s' is udp\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"unknown ether host: %s\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"unknown protocol: %s\00", align 1
@Q_IPV6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.block* @gen_scode(%struct.TYPE_25__* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.block*, align 8
  %6 = alloca %struct.qual, align 4
  %7 = alloca { i64, i32 }, align 4
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.addrinfo*, align 8
  %17 = alloca %struct.addrinfo*, align 8
  %18 = alloca %struct.sockaddr_in*, align 8
  %19 = alloca %struct.block*, align 8
  %20 = alloca %struct.block*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i16, align 2
  %26 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i32 0, i32 0
  store i64 %2, i64* %26, align 4
  %27 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i32 0, i32 1
  store i32 %3, i32* %27, align 4
  %28 = bitcast %struct.qual* %6 to i8*
  %29 = bitcast { i64, i32 }* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 4 %29, i64 12, i1 false)
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %8, align 8
  store i8* %1, i8** %9, align 8
  %30 = getelementptr inbounds %struct.qual, %struct.qual* %6, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %10, align 4
  %32 = getelementptr inbounds %struct.qual, %struct.qual* %6, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %11, align 4
  %34 = getelementptr inbounds %struct.qual, %struct.qual* %6, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %624 [
    i32 133, label %36
    i32 136, label %70
    i32 134, label %70
    i32 132, label %277
    i32 131, label %403
    i32 135, label %545
    i32 130, label %585
    i32 129, label %603
    i32 128, label %621
  ]

36:                                               ; preds = %4
  %37 = load i8*, i8** %9, align 8
  %38 = call i32 @pcap_nametonetaddr(i8* %37)
  store i32 %38, i32* %15, align 4
  %39 = load i32, i32* %15, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = call i32 (%struct.TYPE_25__*, i8*, ...) @bpf_error(%struct.TYPE_25__* %42, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %43)
  br label %45

45:                                               ; preds = %41, %36
  store i32 -1, i32* %14, align 4
  br label %46

46:                                               ; preds = %55, %45
  %47 = load i32, i32* %15, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i32, i32* %15, align 4
  %51 = and i32 %50, -16777216
  %52 = icmp eq i32 %51, 0
  br label %53

53:                                               ; preds = %49, %46
  %54 = phi i1 [ false, %46 ], [ %52, %49 ]
  br i1 %54, label %55, label %60

55:                                               ; preds = %53
  %56 = load i32, i32* %15, align 4
  %57 = shl i32 %56, 8
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %14, align 4
  %59 = shl i32 %58, 8
  store i32 %59, i32* %14, align 4
  br label %46

60:                                               ; preds = %53
  %61 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %62 = load i32, i32* %15, align 4
  %63 = trunc i32 %62 to i16
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %11, align 4
  %67 = getelementptr inbounds %struct.qual, %struct.qual* %6, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call %struct.block* @gen_host(%struct.TYPE_25__* %61, i16 zeroext %63, i32 %64, i32 %65, i32 %66, i32 %68)
  store %struct.block* %69, %struct.block** %5, align 8
  br label %626

70:                                               ; preds = %4, %4
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @Q_LINK, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %175

74:                                               ; preds = %70
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  switch i32 %77, label %172 [
    i32 147, label %78
    i32 140, label %78
    i32 139, label %78
    i32 146, label %104
    i32 145, label %121
    i32 144, label %138
    i32 137, label %138
    i32 142, label %138
    i32 143, label %138
    i32 138, label %138
    i32 141, label %155
  ]

78:                                               ; preds = %74, %74, %74
  %79 = load i8*, i8** %9, align 8
  %80 = call i32* @pcap_ether_hostton(i8* %79)
  store i32* %80, i32** %13, align 8
  %81 = load i32*, i32** %13, align 8
  %82 = icmp eq i32* %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %85 = load i8*, i8** %9, align 8
  %86 = call i32 (%struct.TYPE_25__*, i8*, ...) @bpf_error(%struct.TYPE_25__* %84, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %85)
  br label %87

87:                                               ; preds = %83, %78
  %88 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %89 = call %struct.block* @gen_prevlinkhdr_check(%struct.TYPE_25__* %88)
  store %struct.block* %89, %struct.block** %20, align 8
  %90 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %91 = load i32*, i32** %13, align 8
  %92 = load i32, i32* %11, align 4
  %93 = call %struct.block* @gen_ehostop(%struct.TYPE_25__* %90, i32* %91, i32 %92)
  store %struct.block* %93, %struct.block** %19, align 8
  %94 = load %struct.block*, %struct.block** %20, align 8
  %95 = icmp ne %struct.block* %94, null
  br i1 %95, label %96, label %100

96:                                               ; preds = %87
  %97 = load %struct.block*, %struct.block** %20, align 8
  %98 = load %struct.block*, %struct.block** %19, align 8
  %99 = call i32 @gen_and(%struct.block* %97, %struct.block* %98)
  br label %100

100:                                              ; preds = %96, %87
  %101 = load i32*, i32** %13, align 8
  %102 = call i32 @free(i32* %101)
  %103 = load %struct.block*, %struct.block** %19, align 8
  store %struct.block* %103, %struct.block** %5, align 8
  br label %626

104:                                              ; preds = %74
  %105 = load i8*, i8** %9, align 8
  %106 = call i32* @pcap_ether_hostton(i8* %105)
  store i32* %106, i32** %13, align 8
  %107 = load i32*, i32** %13, align 8
  %108 = icmp eq i32* %107, null
  br i1 %108, label %109, label %113

109:                                              ; preds = %104
  %110 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %111 = load i8*, i8** %9, align 8
  %112 = call i32 (%struct.TYPE_25__*, i8*, ...) @bpf_error(%struct.TYPE_25__* %110, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %111)
  br label %113

113:                                              ; preds = %109, %104
  %114 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %115 = load i32*, i32** %13, align 8
  %116 = load i32, i32* %11, align 4
  %117 = call %struct.block* @gen_fhostop(%struct.TYPE_25__* %114, i32* %115, i32 %116)
  store %struct.block* %117, %struct.block** %19, align 8
  %118 = load i32*, i32** %13, align 8
  %119 = call i32 @free(i32* %118)
  %120 = load %struct.block*, %struct.block** %19, align 8
  store %struct.block* %120, %struct.block** %5, align 8
  br label %626

121:                                              ; preds = %74
  %122 = load i8*, i8** %9, align 8
  %123 = call i32* @pcap_ether_hostton(i8* %122)
  store i32* %123, i32** %13, align 8
  %124 = load i32*, i32** %13, align 8
  %125 = icmp eq i32* %124, null
  br i1 %125, label %126, label %130

126:                                              ; preds = %121
  %127 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %128 = load i8*, i8** %9, align 8
  %129 = call i32 (%struct.TYPE_25__*, i8*, ...) @bpf_error(%struct.TYPE_25__* %127, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %128)
  br label %130

130:                                              ; preds = %126, %121
  %131 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %132 = load i32*, i32** %13, align 8
  %133 = load i32, i32* %11, align 4
  %134 = call %struct.block* @gen_thostop(%struct.TYPE_25__* %131, i32* %132, i32 %133)
  store %struct.block* %134, %struct.block** %19, align 8
  %135 = load i32*, i32** %13, align 8
  %136 = call i32 @free(i32* %135)
  %137 = load %struct.block*, %struct.block** %19, align 8
  store %struct.block* %137, %struct.block** %5, align 8
  br label %626

138:                                              ; preds = %74, %74, %74, %74, %74
  %139 = load i8*, i8** %9, align 8
  %140 = call i32* @pcap_ether_hostton(i8* %139)
  store i32* %140, i32** %13, align 8
  %141 = load i32*, i32** %13, align 8
  %142 = icmp eq i32* %141, null
  br i1 %142, label %143, label %147

143:                                              ; preds = %138
  %144 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %145 = load i8*, i8** %9, align 8
  %146 = call i32 (%struct.TYPE_25__*, i8*, ...) @bpf_error(%struct.TYPE_25__* %144, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %145)
  br label %147

147:                                              ; preds = %143, %138
  %148 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %149 = load i32*, i32** %13, align 8
  %150 = load i32, i32* %11, align 4
  %151 = call %struct.block* @gen_wlanhostop(%struct.TYPE_25__* %148, i32* %149, i32 %150)
  store %struct.block* %151, %struct.block** %19, align 8
  %152 = load i32*, i32** %13, align 8
  %153 = call i32 @free(i32* %152)
  %154 = load %struct.block*, %struct.block** %19, align 8
  store %struct.block* %154, %struct.block** %5, align 8
  br label %626

155:                                              ; preds = %74
  %156 = load i8*, i8** %9, align 8
  %157 = call i32* @pcap_ether_hostton(i8* %156)
  store i32* %157, i32** %13, align 8
  %158 = load i32*, i32** %13, align 8
  %159 = icmp eq i32* %158, null
  br i1 %159, label %160, label %164

160:                                              ; preds = %155
  %161 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %162 = load i8*, i8** %9, align 8
  %163 = call i32 (%struct.TYPE_25__*, i8*, ...) @bpf_error(%struct.TYPE_25__* %161, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i8* %162)
  br label %164

164:                                              ; preds = %160, %155
  %165 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %166 = load i32*, i32** %13, align 8
  %167 = load i32, i32* %11, align 4
  %168 = call %struct.block* @gen_ipfchostop(%struct.TYPE_25__* %165, i32* %166, i32 %167)
  store %struct.block* %168, %struct.block** %19, align 8
  %169 = load i32*, i32** %13, align 8
  %170 = call i32 @free(i32* %169)
  %171 = load %struct.block*, %struct.block** %19, align 8
  store %struct.block* %171, %struct.block** %5, align 8
  br label %626

172:                                              ; preds = %74
  %173 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %174 = call i32 (%struct.TYPE_25__*, i8*, ...) @bpf_error(%struct.TYPE_25__* %173, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.6, i64 0, i64 0))
  br label %276

175:                                              ; preds = %70
  %176 = load i32, i32* %10, align 4
  %177 = load i32, i32* @Q_DECNET, align 4
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %179, label %195

179:                                              ; preds = %175
  %180 = load i8*, i8** %9, align 8
  %181 = call i32 @__pcap_nametodnaddr(i8* %180, i16* %25)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %187, label %183

183:                                              ; preds = %179
  %184 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %185 = load i8*, i8** %9, align 8
  %186 = call i32 (%struct.TYPE_25__*, i8*, ...) @bpf_error(%struct.TYPE_25__* %184, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0), i8* %185)
  br label %187

187:                                              ; preds = %183, %179
  %188 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %189 = load i16, i16* %25, align 2
  %190 = load i32, i32* %10, align 4
  %191 = load i32, i32* %11, align 4
  %192 = getelementptr inbounds %struct.qual, %struct.qual* %6, i32 0, i32 2
  %193 = load i32, i32* %192, align 4
  %194 = call %struct.block* @gen_host(%struct.TYPE_25__* %188, i16 zeroext %189, i32 0, i32 %190, i32 %191, i32 %193)
  store %struct.block* %194, %struct.block** %5, align 8
  br label %626

195:                                              ; preds = %175
  %196 = load i8*, i8** %9, align 8
  %197 = call %struct.addrinfo* @pcap_nametoaddrinfo(i8* %196)
  store %struct.addrinfo* %197, %struct.addrinfo** %16, align 8
  store %struct.addrinfo* %197, %struct.addrinfo** %17, align 8
  %198 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %199 = icmp eq %struct.addrinfo* %198, null
  br i1 %199, label %200, label %204

200:                                              ; preds = %195
  %201 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %202 = load i8*, i8** %9, align 8
  %203 = call i32 (%struct.TYPE_25__*, i8*, ...) @bpf_error(%struct.TYPE_25__* %201, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i8* %202)
  br label %204

204:                                              ; preds = %200, %195
  %205 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %206 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %207 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %206, i32 0, i32 0
  store %struct.addrinfo* %205, %struct.addrinfo** %207, align 8
  store %struct.block* null, %struct.block** %20, align 8
  store %struct.block* null, %struct.block** %19, align 8
  %208 = load i32, i32* %10, align 4
  store i32 %208, i32* %12, align 4
  %209 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @OFFSET_NOT_SET, align 4
  %214 = icmp eq i32 %212, %213
  br i1 %214, label %215, label %220

215:                                              ; preds = %204
  %216 = load i32, i32* %12, align 4
  %217 = icmp eq i32 %216, 136
  br i1 %217, label %218, label %220

218:                                              ; preds = %215
  %219 = load i32, i32* @Q_IP, align 4
  store i32 %219, i32* %12, align 4
  br label %220

220:                                              ; preds = %218, %215, %204
  %221 = load %struct.addrinfo*, %struct.addrinfo** %17, align 8
  store %struct.addrinfo* %221, %struct.addrinfo** %16, align 8
  br label %222

222:                                              ; preds = %255, %220
  %223 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %224 = icmp ne %struct.addrinfo* %223, null
  br i1 %224, label %225, label %259

225:                                              ; preds = %222
  %226 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %227 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 8
  switch i32 %228, label %245 [
    i32 149, label %229
  ]

229:                                              ; preds = %225
  %230 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %231 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = inttoptr i64 %232 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %233, %struct.sockaddr_in** %18, align 8
  %234 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %235 = load %struct.sockaddr_in*, %struct.sockaddr_in** %18, align 8
  %236 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = call zeroext i16 @ntohl(i32 %238)
  %240 = load i32, i32* %12, align 4
  %241 = load i32, i32* %11, align 4
  %242 = getelementptr inbounds %struct.qual, %struct.qual* %6, i32 0, i32 2
  %243 = load i32, i32* %242, align 4
  %244 = call %struct.block* @gen_host(%struct.TYPE_25__* %234, i16 zeroext %239, i32 -1, i32 %240, i32 %241, i32 %243)
  store %struct.block* %244, %struct.block** %20, align 8
  br label %246

245:                                              ; preds = %225
  br label %255

246:                                              ; preds = %229
  %247 = load %struct.block*, %struct.block** %19, align 8
  %248 = icmp ne %struct.block* %247, null
  br i1 %248, label %249, label %253

249:                                              ; preds = %246
  %250 = load %struct.block*, %struct.block** %19, align 8
  %251 = load %struct.block*, %struct.block** %20, align 8
  %252 = call i32 @gen_or(%struct.block* %250, %struct.block* %251)
  br label %253

253:                                              ; preds = %249, %246
  %254 = load %struct.block*, %struct.block** %20, align 8
  store %struct.block* %254, %struct.block** %19, align 8
  br label %255

255:                                              ; preds = %253, %245
  %256 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %257 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %256, i32 0, i32 2
  %258 = load %struct.addrinfo*, %struct.addrinfo** %257, align 8
  store %struct.addrinfo* %258, %struct.addrinfo** %16, align 8
  br label %222

259:                                              ; preds = %222
  %260 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %261 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %260, i32 0, i32 0
  store %struct.addrinfo* null, %struct.addrinfo** %261, align 8
  %262 = load %struct.addrinfo*, %struct.addrinfo** %17, align 8
  %263 = call i32 @freeaddrinfo(%struct.addrinfo* %262)
  %264 = load %struct.block*, %struct.block** %19, align 8
  %265 = icmp eq %struct.block* %264, null
  br i1 %265, label %266, label %274

266:                                              ; preds = %259
  %267 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %268 = load i8*, i8** %9, align 8
  %269 = load i32, i32* %10, align 4
  %270 = icmp eq i32 %269, 136
  %271 = zext i1 %270 to i64
  %272 = select i1 %270, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0)
  %273 = call i32 (%struct.TYPE_25__*, i8*, ...) @bpf_error(%struct.TYPE_25__* %267, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i8* %268, i8* %272)
  br label %274

274:                                              ; preds = %266, %259
  %275 = load %struct.block*, %struct.block** %19, align 8
  store %struct.block* %275, %struct.block** %5, align 8
  br label %626

276:                                              ; preds = %172
  br label %277

277:                                              ; preds = %4, %276
  %278 = load i32, i32* %10, align 4
  %279 = icmp ne i32 %278, 136
  br i1 %279, label %280, label %295

280:                                              ; preds = %277
  %281 = load i32, i32* %10, align 4
  %282 = load i32, i32* @Q_UDP, align 4
  %283 = icmp ne i32 %281, %282
  br i1 %283, label %284, label %295

284:                                              ; preds = %280
  %285 = load i32, i32* %10, align 4
  %286 = load i32, i32* @Q_TCP, align 4
  %287 = icmp ne i32 %285, %286
  br i1 %287, label %288, label %295

288:                                              ; preds = %284
  %289 = load i32, i32* %10, align 4
  %290 = load i32, i32* @Q_SCTP, align 4
  %291 = icmp ne i32 %289, %290
  br i1 %291, label %292, label %295

292:                                              ; preds = %288
  %293 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %294 = call i32 (%struct.TYPE_25__*, i8*, ...) @bpf_error(%struct.TYPE_25__* %293, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0))
  br label %295

295:                                              ; preds = %292, %288, %284, %280, %277
  %296 = load i8*, i8** %9, align 8
  %297 = call i32 @pcap_nametoport(i8* %296, i32* %21, i32* %22)
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %299, label %303

299:                                              ; preds = %295
  %300 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %301 = load i8*, i8** %9, align 8
  %302 = call i32 (%struct.TYPE_25__*, i8*, ...) @bpf_error(%struct.TYPE_25__* %300, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i8* %301)
  br label %303

303:                                              ; preds = %299, %295
  %304 = load i32, i32* %10, align 4
  %305 = load i32, i32* @Q_UDP, align 4
  %306 = icmp eq i32 %304, %305
  br i1 %306, label %307, label %327

307:                                              ; preds = %303
  %308 = load i32, i32* %22, align 4
  %309 = load i32, i32* @IPPROTO_TCP, align 4
  %310 = icmp eq i32 %308, %309
  br i1 %310, label %311, label %315

311:                                              ; preds = %307
  %312 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %313 = load i8*, i8** %9, align 8
  %314 = call i32 (%struct.TYPE_25__*, i8*, ...) @bpf_error(%struct.TYPE_25__* %312, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i8* %313)
  br label %326

315:                                              ; preds = %307
  %316 = load i32, i32* %22, align 4
  %317 = load i32, i32* @IPPROTO_SCTP, align 4
  %318 = icmp eq i32 %316, %317
  br i1 %318, label %319, label %323

319:                                              ; preds = %315
  %320 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %321 = load i8*, i8** %9, align 8
  %322 = call i32 (%struct.TYPE_25__*, i8*, ...) @bpf_error(%struct.TYPE_25__* %320, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i8* %321)
  br label %325

323:                                              ; preds = %315
  %324 = load i32, i32* @IPPROTO_UDP, align 4
  store i32 %324, i32* %22, align 4
  br label %325

325:                                              ; preds = %323, %319
  br label %326

326:                                              ; preds = %325, %311
  br label %327

327:                                              ; preds = %326, %303
  %328 = load i32, i32* %10, align 4
  %329 = load i32, i32* @Q_TCP, align 4
  %330 = icmp eq i32 %328, %329
  br i1 %330, label %331, label %351

331:                                              ; preds = %327
  %332 = load i32, i32* %22, align 4
  %333 = load i32, i32* @IPPROTO_UDP, align 4
  %334 = icmp eq i32 %332, %333
  br i1 %334, label %335, label %339

335:                                              ; preds = %331
  %336 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %337 = load i8*, i8** %9, align 8
  %338 = call i32 (%struct.TYPE_25__*, i8*, ...) @bpf_error(%struct.TYPE_25__* %336, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0), i8* %337)
  br label %350

339:                                              ; preds = %331
  %340 = load i32, i32* %22, align 4
  %341 = load i32, i32* @IPPROTO_SCTP, align 4
  %342 = icmp eq i32 %340, %341
  br i1 %342, label %343, label %347

343:                                              ; preds = %339
  %344 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %345 = load i8*, i8** %9, align 8
  %346 = call i32 (%struct.TYPE_25__*, i8*, ...) @bpf_error(%struct.TYPE_25__* %344, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i8* %345)
  br label %349

347:                                              ; preds = %339
  %348 = load i32, i32* @IPPROTO_TCP, align 4
  store i32 %348, i32* %22, align 4
  br label %349

349:                                              ; preds = %347, %343
  br label %350

350:                                              ; preds = %349, %335
  br label %351

351:                                              ; preds = %350, %327
  %352 = load i32, i32* %10, align 4
  %353 = load i32, i32* @Q_SCTP, align 4
  %354 = icmp eq i32 %352, %353
  br i1 %354, label %355, label %375

355:                                              ; preds = %351
  %356 = load i32, i32* %22, align 4
  %357 = load i32, i32* @IPPROTO_UDP, align 4
  %358 = icmp eq i32 %356, %357
  br i1 %358, label %359, label %363

359:                                              ; preds = %355
  %360 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %361 = load i8*, i8** %9, align 8
  %362 = call i32 (%struct.TYPE_25__*, i8*, ...) @bpf_error(%struct.TYPE_25__* %360, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0), i8* %361)
  br label %374

363:                                              ; preds = %355
  %364 = load i32, i32* %22, align 4
  %365 = load i32, i32* @IPPROTO_TCP, align 4
  %366 = icmp eq i32 %364, %365
  br i1 %366, label %367, label %371

367:                                              ; preds = %363
  %368 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %369 = load i8*, i8** %9, align 8
  %370 = call i32 (%struct.TYPE_25__*, i8*, ...) @bpf_error(%struct.TYPE_25__* %368, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i8* %369)
  br label %373

371:                                              ; preds = %363
  %372 = load i32, i32* @IPPROTO_SCTP, align 4
  store i32 %372, i32* %22, align 4
  br label %373

373:                                              ; preds = %371, %367
  br label %374

374:                                              ; preds = %373, %359
  br label %375

375:                                              ; preds = %374, %351
  %376 = load i32, i32* %21, align 4
  %377 = icmp slt i32 %376, 0
  br i1 %377, label %378, label %382

378:                                              ; preds = %375
  %379 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %380 = load i32, i32* %21, align 4
  %381 = call i32 (%struct.TYPE_25__*, i8*, ...) @bpf_error(%struct.TYPE_25__* %379, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i64 0, i64 0), i32 %380)
  br label %382

382:                                              ; preds = %378, %375
  %383 = load i32, i32* %21, align 4
  %384 = icmp sgt i32 %383, 65535
  br i1 %384, label %385, label %389

385:                                              ; preds = %382
  %386 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %387 = load i32, i32* %21, align 4
  %388 = call i32 (%struct.TYPE_25__*, i8*, ...) @bpf_error(%struct.TYPE_25__* %386, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i64 0, i64 0), i32 %387)
  br label %389

389:                                              ; preds = %385, %382
  %390 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %391 = load i32, i32* %21, align 4
  %392 = load i32, i32* %22, align 4
  %393 = load i32, i32* %11, align 4
  %394 = call %struct.block* @gen_port(%struct.TYPE_25__* %390, i32 %391, i32 %392, i32 %393)
  store %struct.block* %394, %struct.block** %19, align 8
  %395 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %396 = load i32, i32* %21, align 4
  %397 = load i32, i32* %22, align 4
  %398 = load i32, i32* %11, align 4
  %399 = call %struct.block* @gen_port6(%struct.TYPE_25__* %395, i32 %396, i32 %397, i32 %398)
  %400 = load %struct.block*, %struct.block** %19, align 8
  %401 = call i32 @gen_or(%struct.block* %399, %struct.block* %400)
  %402 = load %struct.block*, %struct.block** %19, align 8
  store %struct.block* %402, %struct.block** %5, align 8
  br label %626

403:                                              ; preds = %4
  %404 = load i32, i32* %10, align 4
  %405 = icmp ne i32 %404, 136
  br i1 %405, label %406, label %421

406:                                              ; preds = %403
  %407 = load i32, i32* %10, align 4
  %408 = load i32, i32* @Q_UDP, align 4
  %409 = icmp ne i32 %407, %408
  br i1 %409, label %410, label %421

410:                                              ; preds = %406
  %411 = load i32, i32* %10, align 4
  %412 = load i32, i32* @Q_TCP, align 4
  %413 = icmp ne i32 %411, %412
  br i1 %413, label %414, label %421

414:                                              ; preds = %410
  %415 = load i32, i32* %10, align 4
  %416 = load i32, i32* @Q_SCTP, align 4
  %417 = icmp ne i32 %415, %416
  br i1 %417, label %418, label %421

418:                                              ; preds = %414
  %419 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %420 = call i32 (%struct.TYPE_25__*, i8*, ...) @bpf_error(%struct.TYPE_25__* %419, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.19, i64 0, i64 0))
  br label %421

421:                                              ; preds = %418, %414, %410, %406, %403
  %422 = load i8*, i8** %9, align 8
  %423 = call i32 @pcap_nametoportrange(i8* %422, i32* %23, i32* %24, i32* %22)
  %424 = icmp eq i32 %423, 0
  br i1 %424, label %425, label %429

425:                                              ; preds = %421
  %426 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %427 = load i8*, i8** %9, align 8
  %428 = call i32 (%struct.TYPE_25__*, i8*, ...) @bpf_error(%struct.TYPE_25__* %426, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i64 0, i64 0), i8* %427)
  br label %429

429:                                              ; preds = %425, %421
  %430 = load i32, i32* %10, align 4
  %431 = load i32, i32* @Q_UDP, align 4
  %432 = icmp eq i32 %430, %431
  br i1 %432, label %433, label %453

433:                                              ; preds = %429
  %434 = load i32, i32* %22, align 4
  %435 = load i32, i32* @IPPROTO_TCP, align 4
  %436 = icmp eq i32 %434, %435
  br i1 %436, label %437, label %441

437:                                              ; preds = %433
  %438 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %439 = load i8*, i8** %9, align 8
  %440 = call i32 (%struct.TYPE_25__*, i8*, ...) @bpf_error(%struct.TYPE_25__* %438, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i64 0, i64 0), i8* %439)
  br label %452

441:                                              ; preds = %433
  %442 = load i32, i32* %22, align 4
  %443 = load i32, i32* @IPPROTO_SCTP, align 4
  %444 = icmp eq i32 %442, %443
  br i1 %444, label %445, label %449

445:                                              ; preds = %441
  %446 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %447 = load i8*, i8** %9, align 8
  %448 = call i32 (%struct.TYPE_25__*, i8*, ...) @bpf_error(%struct.TYPE_25__* %446, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i64 0, i64 0), i8* %447)
  br label %451

449:                                              ; preds = %441
  %450 = load i32, i32* @IPPROTO_UDP, align 4
  store i32 %450, i32* %22, align 4
  br label %451

451:                                              ; preds = %449, %445
  br label %452

452:                                              ; preds = %451, %437
  br label %453

453:                                              ; preds = %452, %429
  %454 = load i32, i32* %10, align 4
  %455 = load i32, i32* @Q_TCP, align 4
  %456 = icmp eq i32 %454, %455
  br i1 %456, label %457, label %477

457:                                              ; preds = %453
  %458 = load i32, i32* %22, align 4
  %459 = load i32, i32* @IPPROTO_UDP, align 4
  %460 = icmp eq i32 %458, %459
  br i1 %460, label %461, label %465

461:                                              ; preds = %457
  %462 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %463 = load i8*, i8** %9, align 8
  %464 = call i32 (%struct.TYPE_25__*, i8*, ...) @bpf_error(%struct.TYPE_25__* %462, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.23, i64 0, i64 0), i8* %463)
  br label %476

465:                                              ; preds = %457
  %466 = load i32, i32* %22, align 4
  %467 = load i32, i32* @IPPROTO_SCTP, align 4
  %468 = icmp eq i32 %466, %467
  br i1 %468, label %469, label %473

469:                                              ; preds = %465
  %470 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %471 = load i8*, i8** %9, align 8
  %472 = call i32 (%struct.TYPE_25__*, i8*, ...) @bpf_error(%struct.TYPE_25__* %470, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i64 0, i64 0), i8* %471)
  br label %475

473:                                              ; preds = %465
  %474 = load i32, i32* @IPPROTO_TCP, align 4
  store i32 %474, i32* %22, align 4
  br label %475

475:                                              ; preds = %473, %469
  br label %476

476:                                              ; preds = %475, %461
  br label %477

477:                                              ; preds = %476, %453
  %478 = load i32, i32* %10, align 4
  %479 = load i32, i32* @Q_SCTP, align 4
  %480 = icmp eq i32 %478, %479
  br i1 %480, label %481, label %501

481:                                              ; preds = %477
  %482 = load i32, i32* %22, align 4
  %483 = load i32, i32* @IPPROTO_UDP, align 4
  %484 = icmp eq i32 %482, %483
  br i1 %484, label %485, label %489

485:                                              ; preds = %481
  %486 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %487 = load i8*, i8** %9, align 8
  %488 = call i32 (%struct.TYPE_25__*, i8*, ...) @bpf_error(%struct.TYPE_25__* %486, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.23, i64 0, i64 0), i8* %487)
  br label %500

489:                                              ; preds = %481
  %490 = load i32, i32* %22, align 4
  %491 = load i32, i32* @IPPROTO_TCP, align 4
  %492 = icmp eq i32 %490, %491
  br i1 %492, label %493, label %497

493:                                              ; preds = %489
  %494 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %495 = load i8*, i8** %9, align 8
  %496 = call i32 (%struct.TYPE_25__*, i8*, ...) @bpf_error(%struct.TYPE_25__* %494, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i64 0, i64 0), i8* %495)
  br label %499

497:                                              ; preds = %489
  %498 = load i32, i32* @IPPROTO_SCTP, align 4
  store i32 %498, i32* %22, align 4
  br label %499

499:                                              ; preds = %497, %493
  br label %500

500:                                              ; preds = %499, %485
  br label %501

501:                                              ; preds = %500, %477
  %502 = load i32, i32* %23, align 4
  %503 = icmp slt i32 %502, 0
  br i1 %503, label %504, label %508

504:                                              ; preds = %501
  %505 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %506 = load i32, i32* %23, align 4
  %507 = call i32 (%struct.TYPE_25__*, i8*, ...) @bpf_error(%struct.TYPE_25__* %505, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i64 0, i64 0), i32 %506)
  br label %508

508:                                              ; preds = %504, %501
  %509 = load i32, i32* %23, align 4
  %510 = icmp sgt i32 %509, 65535
  br i1 %510, label %511, label %515

511:                                              ; preds = %508
  %512 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %513 = load i32, i32* %23, align 4
  %514 = call i32 (%struct.TYPE_25__*, i8*, ...) @bpf_error(%struct.TYPE_25__* %512, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i64 0, i64 0), i32 %513)
  br label %515

515:                                              ; preds = %511, %508
  %516 = load i32, i32* %24, align 4
  %517 = icmp slt i32 %516, 0
  br i1 %517, label %518, label %522

518:                                              ; preds = %515
  %519 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %520 = load i32, i32* %24, align 4
  %521 = call i32 (%struct.TYPE_25__*, i8*, ...) @bpf_error(%struct.TYPE_25__* %519, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i64 0, i64 0), i32 %520)
  br label %522

522:                                              ; preds = %518, %515
  %523 = load i32, i32* %24, align 4
  %524 = icmp sgt i32 %523, 65535
  br i1 %524, label %525, label %529

525:                                              ; preds = %522
  %526 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %527 = load i32, i32* %24, align 4
  %528 = call i32 (%struct.TYPE_25__*, i8*, ...) @bpf_error(%struct.TYPE_25__* %526, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i64 0, i64 0), i32 %527)
  br label %529

529:                                              ; preds = %525, %522
  %530 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %531 = load i32, i32* %23, align 4
  %532 = load i32, i32* %24, align 4
  %533 = load i32, i32* %22, align 4
  %534 = load i32, i32* %11, align 4
  %535 = call %struct.block* @gen_portrange(%struct.TYPE_25__* %530, i32 %531, i32 %532, i32 %533, i32 %534)
  store %struct.block* %535, %struct.block** %19, align 8
  %536 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %537 = load i32, i32* %23, align 4
  %538 = load i32, i32* %24, align 4
  %539 = load i32, i32* %22, align 4
  %540 = load i32, i32* %11, align 4
  %541 = call %struct.block* @gen_portrange6(%struct.TYPE_25__* %536, i32 %537, i32 %538, i32 %539, i32 %540)
  %542 = load %struct.block*, %struct.block** %19, align 8
  %543 = call i32 @gen_or(%struct.block* %541, %struct.block* %542)
  %544 = load %struct.block*, %struct.block** %19, align 8
  store %struct.block* %544, %struct.block** %5, align 8
  br label %626

545:                                              ; preds = %4
  %546 = load i8*, i8** %9, align 8
  %547 = call i32* @pcap_ether_hostton(i8* %546)
  store i32* %547, i32** %13, align 8
  %548 = load i32*, i32** %13, align 8
  %549 = icmp eq i32* %548, null
  br i1 %549, label %550, label %554

550:                                              ; preds = %545
  %551 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %552 = load i8*, i8** %9, align 8
  %553 = call i32 (%struct.TYPE_25__*, i8*, ...) @bpf_error(%struct.TYPE_25__* %551, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i64 0, i64 0), i8* %552)
  br label %554

554:                                              ; preds = %550, %545
  %555 = load i8*, i8** %9, align 8
  %556 = call %struct.addrinfo* @pcap_nametoaddrinfo(i8* %555)
  store %struct.addrinfo* %556, %struct.addrinfo** %16, align 8
  %557 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %558 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %559 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %558, i32 0, i32 0
  store %struct.addrinfo* %557, %struct.addrinfo** %559, align 8
  %560 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %561 = icmp eq %struct.addrinfo* %560, null
  br i1 %561, label %562, label %566

562:                                              ; preds = %554
  %563 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %564 = load i8*, i8** %9, align 8
  %565 = call i32 (%struct.TYPE_25__*, i8*, ...) @bpf_error(%struct.TYPE_25__* %563, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i8* %564)
  br label %566

566:                                              ; preds = %562, %554
  %567 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %568 = load i32*, i32** %13, align 8
  %569 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %570 = load i32, i32* %10, align 4
  %571 = load i32, i32* %11, align 4
  %572 = call %struct.block* @gen_gateway(%struct.TYPE_25__* %567, i32* %568, %struct.addrinfo* %569, i32 %570, i32 %571)
  store %struct.block* %572, %struct.block** %19, align 8
  %573 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %574 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %573, i32 0, i32 0
  store %struct.addrinfo* null, %struct.addrinfo** %574, align 8
  %575 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %576 = call i32 @freeaddrinfo(%struct.addrinfo* %575)
  %577 = load %struct.block*, %struct.block** %19, align 8
  %578 = icmp eq %struct.block* %577, null
  br i1 %578, label %579, label %583

579:                                              ; preds = %566
  %580 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %581 = load i8*, i8** %9, align 8
  %582 = call i32 (%struct.TYPE_25__*, i8*, ...) @bpf_error(%struct.TYPE_25__* %580, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i8* %581)
  br label %583

583:                                              ; preds = %579, %566
  %584 = load %struct.block*, %struct.block** %19, align 8
  store %struct.block* %584, %struct.block** %5, align 8
  br label %626

585:                                              ; preds = %4
  %586 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %587 = load i8*, i8** %9, align 8
  %588 = load i32, i32* %10, align 4
  %589 = call i32 @lookup_proto(%struct.TYPE_25__* %586, i8* %587, i32 %588)
  store i32 %589, i32* %22, align 4
  %590 = load i32, i32* %22, align 4
  %591 = icmp sge i32 %590, 0
  br i1 %591, label %592, label %598

592:                                              ; preds = %585
  %593 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %594 = load i32, i32* %22, align 4
  %595 = load i32, i32* %10, align 4
  %596 = load i32, i32* %11, align 4
  %597 = call %struct.block* @gen_proto(%struct.TYPE_25__* %593, i32 %594, i32 %595, i32 %596)
  store %struct.block* %597, %struct.block** %5, align 8
  br label %626

598:                                              ; preds = %585
  %599 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %600 = load i8*, i8** %9, align 8
  %601 = call i32 (%struct.TYPE_25__*, i8*, ...) @bpf_error(%struct.TYPE_25__* %599, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i64 0, i64 0), i8* %600)
  br label %602

602:                                              ; preds = %598
  br label %603

603:                                              ; preds = %4, %602
  %604 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %605 = load i8*, i8** %9, align 8
  %606 = load i32, i32* %10, align 4
  %607 = call i32 @lookup_proto(%struct.TYPE_25__* %604, i8* %605, i32 %606)
  store i32 %607, i32* %22, align 4
  %608 = load i32, i32* %22, align 4
  %609 = icmp sge i32 %608, 0
  br i1 %609, label %610, label %616

610:                                              ; preds = %603
  %611 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %612 = load i32, i32* %22, align 4
  %613 = load i32, i32* %10, align 4
  %614 = load i32, i32* %11, align 4
  %615 = call %struct.block* @gen_protochain(%struct.TYPE_25__* %611, i32 %612, i32 %613, i32 %614)
  store %struct.block* %615, %struct.block** %5, align 8
  br label %626

616:                                              ; preds = %603
  %617 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %618 = load i8*, i8** %9, align 8
  %619 = call i32 (%struct.TYPE_25__*, i8*, ...) @bpf_error(%struct.TYPE_25__* %617, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i64 0, i64 0), i8* %618)
  br label %620

620:                                              ; preds = %616
  br label %621

621:                                              ; preds = %4, %620
  %622 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %623 = call i32 @syntax(%struct.TYPE_25__* %622)
  br label %624

624:                                              ; preds = %621, %4
  %625 = call i32 (...) @abort() #4
  unreachable

626:                                              ; preds = %610, %592, %583, %529, %389, %274, %187, %164, %147, %130, %113, %100, %60
  %627 = load %struct.block*, %struct.block** %5, align 8
  ret %struct.block* %627
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @pcap_nametonetaddr(i8*) #2

declare dso_local i32 @bpf_error(%struct.TYPE_25__*, i8*, ...) #2

declare dso_local %struct.block* @gen_host(%struct.TYPE_25__*, i16 zeroext, i32, i32, i32, i32) #2

declare dso_local i32* @pcap_ether_hostton(i8*) #2

declare dso_local %struct.block* @gen_prevlinkhdr_check(%struct.TYPE_25__*) #2

declare dso_local %struct.block* @gen_ehostop(%struct.TYPE_25__*, i32*, i32) #2

declare dso_local i32 @gen_and(%struct.block*, %struct.block*) #2

declare dso_local i32 @free(i32*) #2

declare dso_local %struct.block* @gen_fhostop(%struct.TYPE_25__*, i32*, i32) #2

declare dso_local %struct.block* @gen_thostop(%struct.TYPE_25__*, i32*, i32) #2

declare dso_local %struct.block* @gen_wlanhostop(%struct.TYPE_25__*, i32*, i32) #2

declare dso_local %struct.block* @gen_ipfchostop(%struct.TYPE_25__*, i32*, i32) #2

declare dso_local i32 @__pcap_nametodnaddr(i8*, i16*) #2

declare dso_local %struct.addrinfo* @pcap_nametoaddrinfo(i8*) #2

declare dso_local zeroext i16 @ntohl(i32) #2

declare dso_local i32 @gen_or(%struct.block*, %struct.block*) #2

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #2

declare dso_local i32 @pcap_nametoport(i8*, i32*, i32*) #2

declare dso_local %struct.block* @gen_port(%struct.TYPE_25__*, i32, i32, i32) #2

declare dso_local %struct.block* @gen_port6(%struct.TYPE_25__*, i32, i32, i32) #2

declare dso_local i32 @pcap_nametoportrange(i8*, i32*, i32*, i32*) #2

declare dso_local %struct.block* @gen_portrange(%struct.TYPE_25__*, i32, i32, i32, i32) #2

declare dso_local %struct.block* @gen_portrange6(%struct.TYPE_25__*, i32, i32, i32, i32) #2

declare dso_local %struct.block* @gen_gateway(%struct.TYPE_25__*, i32*, %struct.addrinfo*, i32, i32) #2

declare dso_local i32 @lookup_proto(%struct.TYPE_25__*, i8*, i32) #2

declare dso_local %struct.block* @gen_proto(%struct.TYPE_25__*, i32, i32, i32) #2

declare dso_local %struct.block* @gen_protochain(%struct.TYPE_25__*, i32, i32, i32) #2

declare dso_local i32 @syntax(%struct.TYPE_25__*) #2

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
