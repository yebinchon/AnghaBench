; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_fad-glifc.c_pcap_findalldevs_interfaces.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_fad-glifc.c_pcap_findalldevs_interfaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lifreq = type { i8*, i32, i32, i32, i32 }
%struct.lifnum = type { i32, i64, i8* }
%struct.lifconf = type { i32, i8*, i64, i8* }
%struct.sockaddr = type { i64 }

@AF_INET = common dso_local global i64 0, align 8
@SOCK_DGRAM = common dso_local global i32 0, align 4
@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"socket: AF_INET\00", align 1
@AF_INET6 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"socket: AF_INET6\00", align 1
@AF_UNSPEC = common dso_local global i8* null, align 8
@SIOCGLIFNUM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"SIOCGLIFNUM\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@SIOCGLIFCONF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"SIOCGLIFCONF\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"dummy\00", align 1
@SIOCGLIFFLAGS = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [20 x i8] c"SIOCGLIFFLAGS: %.*s\00", align 1
@SIOCGLIFNETMASK = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [22 x i8] c"SIOCGLIFNETMASK: %.*s\00", align 1
@IFF_BROADCAST = common dso_local global i32 0, align 4
@SIOCGLIFBRDADDR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [22 x i8] c"SIOCGLIFBRDADDR: %.*s\00", align 1
@IFF_POINTOPOINT = common dso_local global i32 0, align 4
@SIOCGLIFDSTADDR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [22 x i8] c"SIOCGLIFDSTADDR: %.*s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcap_findalldevs_interfaces(i32* %0, i8* %1, i32 (i8*)* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32 (i8*)*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.lifreq*, align 8
  %14 = alloca %struct.lifreq*, align 8
  %15 = alloca %struct.lifnum, align 8
  %16 = alloca %struct.lifconf, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.lifreq, align 8
  %20 = alloca %struct.lifreq, align 8
  %21 = alloca %struct.lifreq, align 8
  %22 = alloca %struct.lifreq, align 8
  %23 = alloca %struct.sockaddr*, align 8
  %24 = alloca %struct.sockaddr*, align 8
  %25 = alloca %struct.sockaddr*, align 8
  %26 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 (i8*)* %2, i32 (i8*)** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* null, i8** %17, align 8
  store i32 0, i32* %26, align 4
  %27 = load i64, i64* @AF_INET, align 8
  %28 = load i32, i32* @SOCK_DGRAM, align 4
  %29 = call i32 @socket(i64 %27, i32 %28, i32 0)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %4
  %33 = load i8*, i8** %7, align 8
  %34 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %35 = load i64, i64* @errno, align 8
  %36 = call i32 (i8*, i32, i64, i8*, ...) @pcap_fmt_errmsg_for_errno(i8* %33, i32 %34, i64 %35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %321

37:                                               ; preds = %4
  %38 = load i64, i64* @AF_INET6, align 8
  %39 = load i32, i32* @SOCK_DGRAM, align 4
  %40 = call i32 @socket(i64 %38, i32 %39, i32 0)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %37
  %44 = load i8*, i8** %7, align 8
  %45 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %46 = load i64, i64* @errno, align 8
  %47 = call i32 (i8*, i32, i64, i8*, ...) @pcap_fmt_errmsg_for_errno(i8* %44, i32 %45, i64 %46, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @close(i32 %48)
  store i32 -1, i32* %5, align 4
  br label %321

50:                                               ; preds = %37
  %51 = load i8*, i8** @AF_UNSPEC, align 8
  %52 = getelementptr inbounds %struct.lifnum, %struct.lifnum* %15, i32 0, i32 2
  store i8* %51, i8** %52, align 8
  %53 = getelementptr inbounds %struct.lifnum, %struct.lifnum* %15, i32 0, i32 1
  store i64 0, i64* %53, align 8
  %54 = getelementptr inbounds %struct.lifnum, %struct.lifnum* %15, i32 0, i32 0
  store i32 0, i32* %54, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @SIOCGLIFNUM, align 4
  %57 = bitcast %struct.lifnum* %15 to i8*
  %58 = call i64 @ioctl(i32 %55, i32 %56, i8* %57)
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %50
  %61 = load i8*, i8** %7, align 8
  %62 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %63 = load i64, i64* @errno, align 8
  %64 = call i32 (i8*, i32, i64, i8*, ...) @pcap_fmt_errmsg_for_errno(i8* %61, i32 %62, i64 %63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @close(i32 %65)
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @close(i32 %67)
  store i32 -1, i32* %5, align 4
  br label %321

69:                                               ; preds = %50
  %70 = getelementptr inbounds %struct.lifnum, %struct.lifnum* %15, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = mul i64 %72, 24
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %18, align 4
  %75 = load i32, i32* %18, align 4
  %76 = call i8* @malloc(i32 %75)
  store i8* %76, i8** %17, align 8
  %77 = load i8*, i8** %17, align 8
  %78 = icmp eq i8* %77, null
  br i1 %78, label %79, label %88

79:                                               ; preds = %69
  %80 = load i8*, i8** %7, align 8
  %81 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %82 = load i64, i64* @errno, align 8
  %83 = call i32 (i8*, i32, i64, i8*, ...) @pcap_fmt_errmsg_for_errno(i8* %80, i32 %81, i64 %82, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @close(i32 %84)
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @close(i32 %86)
  store i32 -1, i32* %5, align 4
  br label %321

88:                                               ; preds = %69
  %89 = load i32, i32* %18, align 4
  %90 = getelementptr inbounds %struct.lifconf, %struct.lifconf* %16, i32 0, i32 0
  store i32 %89, i32* %90, align 8
  %91 = load i8*, i8** %17, align 8
  %92 = getelementptr inbounds %struct.lifconf, %struct.lifconf* %16, i32 0, i32 1
  store i8* %91, i8** %92, align 8
  %93 = load i8*, i8** @AF_UNSPEC, align 8
  %94 = getelementptr inbounds %struct.lifconf, %struct.lifconf* %16, i32 0, i32 3
  store i8* %93, i8** %94, align 8
  %95 = getelementptr inbounds %struct.lifconf, %struct.lifconf* %16, i32 0, i32 2
  store i64 0, i64* %95, align 8
  %96 = load i8*, i8** %17, align 8
  %97 = load i32, i32* %18, align 4
  %98 = call i32 @memset(i8* %96, i32 0, i32 %97)
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* @SIOCGLIFCONF, align 4
  %101 = bitcast %struct.lifconf* %16 to i8*
  %102 = call i64 @ioctl(i32 %99, i32 %100, i8* %101)
  %103 = icmp slt i64 %102, 0
  br i1 %103, label %104, label %115

104:                                              ; preds = %88
  %105 = load i8*, i8** %7, align 8
  %106 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %107 = load i64, i64* @errno, align 8
  %108 = call i32 (i8*, i32, i64, i8*, ...) @pcap_fmt_errmsg_for_errno(i8* %105, i32 %106, i64 %107, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %109 = load i32, i32* %11, align 4
  %110 = call i32 @close(i32 %109)
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @close(i32 %111)
  %113 = load i8*, i8** %17, align 8
  %114 = call i32 @free(i8* %113)
  store i32 -1, i32* %5, align 4
  br label %321

115:                                              ; preds = %88
  %116 = load i8*, i8** %17, align 8
  %117 = bitcast i8* %116 to %struct.lifreq*
  store %struct.lifreq* %117, %struct.lifreq** %13, align 8
  %118 = load i8*, i8** %17, align 8
  %119 = getelementptr inbounds %struct.lifconf, %struct.lifconf* %16, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %118, i64 %121
  %123 = bitcast i8* %122 to %struct.lifreq*
  store %struct.lifreq* %123, %struct.lifreq** %14, align 8
  br label %124

124:                                              ; preds = %310, %115
  %125 = load %struct.lifreq*, %struct.lifreq** %13, align 8
  %126 = load %struct.lifreq*, %struct.lifreq** %14, align 8
  %127 = icmp ult %struct.lifreq* %125, %126
  br i1 %127, label %128, label %313

128:                                              ; preds = %124
  %129 = load %struct.lifreq*, %struct.lifreq** %13, align 8
  %130 = getelementptr inbounds %struct.lifreq, %struct.lifreq* %129, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = call i64 @strncmp(i8* %131, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 5)
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %128
  br label %310

135:                                              ; preds = %128
  %136 = load i32 (i8*)*, i32 (i8*)** %8, align 8
  %137 = load %struct.lifreq*, %struct.lifreq** %13, align 8
  %138 = getelementptr inbounds %struct.lifreq, %struct.lifreq* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = call i32 %136(i8* %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %135
  br label %310

143:                                              ; preds = %135
  %144 = load %struct.lifreq*, %struct.lifreq** %13, align 8
  %145 = getelementptr inbounds %struct.lifreq, %struct.lifreq* %144, i32 0, i32 2
  %146 = bitcast i32* %145 to %struct.sockaddr*
  %147 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 4
  %149 = load i64, i64* @AF_INET6, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %143
  %152 = load i32, i32* %11, align 4
  store i32 %152, i32* %12, align 4
  br label %155

153:                                              ; preds = %143
  %154 = load i32, i32* %10, align 4
  store i32 %154, i32* %12, align 4
  br label %155

155:                                              ; preds = %153, %151
  %156 = getelementptr inbounds %struct.lifreq, %struct.lifreq* %19, i32 0, i32 0
  %157 = load i8*, i8** %156, align 8
  %158 = load %struct.lifreq*, %struct.lifreq** %13, align 8
  %159 = getelementptr inbounds %struct.lifreq, %struct.lifreq* %158, i32 0, i32 0
  %160 = load i8*, i8** %159, align 8
  %161 = call i32 @strncpy(i8* %157, i8* %160, i32 8)
  %162 = load i32, i32* %12, align 4
  %163 = load i32, i32* @SIOCGLIFFLAGS, align 4
  %164 = bitcast %struct.lifreq* %19 to i8*
  %165 = call i64 @ioctl(i32 %162, i32 %163, i8* %164)
  %166 = icmp slt i64 %165, 0
  br i1 %166, label %167, label %179

167:                                              ; preds = %155
  %168 = load i64, i64* @errno, align 8
  %169 = load i64, i64* @ENXIO, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %167
  br label %310

172:                                              ; preds = %167
  %173 = load i8*, i8** %7, align 8
  %174 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %175 = load i64, i64* @errno, align 8
  %176 = getelementptr inbounds %struct.lifreq, %struct.lifreq* %19, i32 0, i32 0
  %177 = load i8*, i8** %176, align 8
  %178 = call i32 (i8*, i32, i64, i8*, ...) @pcap_fmt_errmsg_for_errno(i8* %173, i32 %174, i64 %175, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 8, i8* %177)
  store i32 -1, i32* %26, align 4
  br label %313

179:                                              ; preds = %155
  %180 = getelementptr inbounds %struct.lifreq, %struct.lifreq* %20, i32 0, i32 0
  %181 = load i8*, i8** %180, align 8
  %182 = load %struct.lifreq*, %struct.lifreq** %13, align 8
  %183 = getelementptr inbounds %struct.lifreq, %struct.lifreq* %182, i32 0, i32 0
  %184 = load i8*, i8** %183, align 8
  %185 = call i32 @strncpy(i8* %181, i8* %184, i32 8)
  %186 = getelementptr inbounds %struct.lifreq, %struct.lifreq* %20, i32 0, i32 2
  %187 = load %struct.lifreq*, %struct.lifreq** %13, align 8
  %188 = getelementptr inbounds %struct.lifreq, %struct.lifreq* %187, i32 0, i32 2
  %189 = call i32 @memcpy(i32* %186, i32* %188, i32 4)
  %190 = load i32, i32* %12, align 4
  %191 = load i32, i32* @SIOCGLIFNETMASK, align 4
  %192 = bitcast %struct.lifreq* %20 to i8*
  %193 = call i64 @ioctl(i32 %190, i32 %191, i8* %192)
  %194 = icmp slt i64 %193, 0
  br i1 %194, label %195, label %208

195:                                              ; preds = %179
  %196 = load i64, i64* @errno, align 8
  %197 = load i64, i64* @EADDRNOTAVAIL, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %200

199:                                              ; preds = %195
  store %struct.sockaddr* null, %struct.sockaddr** %23, align 8
  br label %207

200:                                              ; preds = %195
  %201 = load i8*, i8** %7, align 8
  %202 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %203 = load i64, i64* @errno, align 8
  %204 = getelementptr inbounds %struct.lifreq, %struct.lifreq* %20, i32 0, i32 0
  %205 = load i8*, i8** %204, align 8
  %206 = call i32 (i8*, i32, i64, i8*, ...) @pcap_fmt_errmsg_for_errno(i8* %201, i32 %202, i64 %203, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 8, i8* %205)
  store i32 -1, i32* %26, align 4
  br label %313

207:                                              ; preds = %199
  br label %211

208:                                              ; preds = %179
  %209 = getelementptr inbounds %struct.lifreq, %struct.lifreq* %20, i32 0, i32 2
  %210 = bitcast i32* %209 to %struct.sockaddr*
  store %struct.sockaddr* %210, %struct.sockaddr** %23, align 8
  br label %211

211:                                              ; preds = %208, %207
  %212 = getelementptr inbounds %struct.lifreq, %struct.lifreq* %19, i32 0, i32 1
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* @IFF_BROADCAST, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %250

217:                                              ; preds = %211
  %218 = getelementptr inbounds %struct.lifreq, %struct.lifreq* %21, i32 0, i32 0
  %219 = load i8*, i8** %218, align 8
  %220 = load %struct.lifreq*, %struct.lifreq** %13, align 8
  %221 = getelementptr inbounds %struct.lifreq, %struct.lifreq* %220, i32 0, i32 0
  %222 = load i8*, i8** %221, align 8
  %223 = call i32 @strncpy(i8* %219, i8* %222, i32 8)
  %224 = getelementptr inbounds %struct.lifreq, %struct.lifreq* %21, i32 0, i32 2
  %225 = load %struct.lifreq*, %struct.lifreq** %13, align 8
  %226 = getelementptr inbounds %struct.lifreq, %struct.lifreq* %225, i32 0, i32 2
  %227 = call i32 @memcpy(i32* %224, i32* %226, i32 4)
  %228 = load i32, i32* %12, align 4
  %229 = load i32, i32* @SIOCGLIFBRDADDR, align 4
  %230 = bitcast %struct.lifreq* %21 to i8*
  %231 = call i64 @ioctl(i32 %228, i32 %229, i8* %230)
  %232 = icmp slt i64 %231, 0
  br i1 %232, label %233, label %246

233:                                              ; preds = %217
  %234 = load i64, i64* @errno, align 8
  %235 = load i64, i64* @EADDRNOTAVAIL, align 8
  %236 = icmp eq i64 %234, %235
  br i1 %236, label %237, label %238

237:                                              ; preds = %233
  store %struct.sockaddr* null, %struct.sockaddr** %24, align 8
  br label %245

238:                                              ; preds = %233
  %239 = load i8*, i8** %7, align 8
  %240 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %241 = load i64, i64* @errno, align 8
  %242 = getelementptr inbounds %struct.lifreq, %struct.lifreq* %21, i32 0, i32 0
  %243 = load i8*, i8** %242, align 8
  %244 = call i32 (i8*, i32, i64, i8*, ...) @pcap_fmt_errmsg_for_errno(i8* %239, i32 %240, i64 %241, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 8, i8* %243)
  store i32 -1, i32* %26, align 4
  br label %313

245:                                              ; preds = %237
  br label %249

246:                                              ; preds = %217
  %247 = getelementptr inbounds %struct.lifreq, %struct.lifreq* %21, i32 0, i32 4
  %248 = bitcast i32* %247 to %struct.sockaddr*
  store %struct.sockaddr* %248, %struct.sockaddr** %24, align 8
  br label %249

249:                                              ; preds = %246, %245
  br label %251

250:                                              ; preds = %211
  store %struct.sockaddr* null, %struct.sockaddr** %24, align 8
  br label %251

251:                                              ; preds = %250, %249
  %252 = getelementptr inbounds %struct.lifreq, %struct.lifreq* %19, i32 0, i32 1
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* @IFF_POINTOPOINT, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %290

257:                                              ; preds = %251
  %258 = getelementptr inbounds %struct.lifreq, %struct.lifreq* %22, i32 0, i32 0
  %259 = load i8*, i8** %258, align 8
  %260 = load %struct.lifreq*, %struct.lifreq** %13, align 8
  %261 = getelementptr inbounds %struct.lifreq, %struct.lifreq* %260, i32 0, i32 0
  %262 = load i8*, i8** %261, align 8
  %263 = call i32 @strncpy(i8* %259, i8* %262, i32 8)
  %264 = getelementptr inbounds %struct.lifreq, %struct.lifreq* %22, i32 0, i32 2
  %265 = load %struct.lifreq*, %struct.lifreq** %13, align 8
  %266 = getelementptr inbounds %struct.lifreq, %struct.lifreq* %265, i32 0, i32 2
  %267 = call i32 @memcpy(i32* %264, i32* %266, i32 4)
  %268 = load i32, i32* %12, align 4
  %269 = load i32, i32* @SIOCGLIFDSTADDR, align 4
  %270 = bitcast %struct.lifreq* %22 to i8*
  %271 = call i64 @ioctl(i32 %268, i32 %269, i8* %270)
  %272 = icmp slt i64 %271, 0
  br i1 %272, label %273, label %286

273:                                              ; preds = %257
  %274 = load i64, i64* @errno, align 8
  %275 = load i64, i64* @EADDRNOTAVAIL, align 8
  %276 = icmp eq i64 %274, %275
  br i1 %276, label %277, label %278

277:                                              ; preds = %273
  store %struct.sockaddr* null, %struct.sockaddr** %25, align 8
  br label %285

278:                                              ; preds = %273
  %279 = load i8*, i8** %7, align 8
  %280 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %281 = load i64, i64* @errno, align 8
  %282 = getelementptr inbounds %struct.lifreq, %struct.lifreq* %22, i32 0, i32 0
  %283 = load i8*, i8** %282, align 8
  %284 = call i32 (i8*, i32, i64, i8*, ...) @pcap_fmt_errmsg_for_errno(i8* %279, i32 %280, i64 %281, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i32 8, i8* %283)
  store i32 -1, i32* %26, align 4
  br label %313

285:                                              ; preds = %277
  br label %289

286:                                              ; preds = %257
  %287 = getelementptr inbounds %struct.lifreq, %struct.lifreq* %22, i32 0, i32 3
  %288 = bitcast i32* %287 to %struct.sockaddr*
  store %struct.sockaddr* %288, %struct.sockaddr** %25, align 8
  br label %289

289:                                              ; preds = %286, %285
  br label %291

290:                                              ; preds = %251
  store %struct.sockaddr* null, %struct.sockaddr** %25, align 8
  br label %291

291:                                              ; preds = %290, %289
  %292 = load i32*, i32** %6, align 8
  %293 = load %struct.lifreq*, %struct.lifreq** %13, align 8
  %294 = getelementptr inbounds %struct.lifreq, %struct.lifreq* %293, i32 0, i32 0
  %295 = load i8*, i8** %294, align 8
  %296 = getelementptr inbounds %struct.lifreq, %struct.lifreq* %19, i32 0, i32 1
  %297 = load i32, i32* %296, align 8
  %298 = load i32, i32* %9, align 4
  %299 = load %struct.lifreq*, %struct.lifreq** %13, align 8
  %300 = getelementptr inbounds %struct.lifreq, %struct.lifreq* %299, i32 0, i32 2
  %301 = bitcast i32* %300 to %struct.sockaddr*
  %302 = load %struct.sockaddr*, %struct.sockaddr** %23, align 8
  %303 = load %struct.sockaddr*, %struct.sockaddr** %24, align 8
  %304 = load %struct.sockaddr*, %struct.sockaddr** %25, align 8
  %305 = load i8*, i8** %7, align 8
  %306 = call i64 @add_addr_to_if(i32* %292, i8* %295, i32 %297, i32 %298, %struct.sockaddr* %301, i32 4, %struct.sockaddr* %302, i32 4, %struct.sockaddr* %303, i32 4, %struct.sockaddr* %304, i32 4, i8* %305)
  %307 = icmp slt i64 %306, 0
  br i1 %307, label %308, label %309

308:                                              ; preds = %291
  store i32 -1, i32* %26, align 4
  br label %313

309:                                              ; preds = %291
  br label %310

310:                                              ; preds = %309, %171, %142, %134
  %311 = load %struct.lifreq*, %struct.lifreq** %13, align 8
  %312 = getelementptr inbounds %struct.lifreq, %struct.lifreq* %311, i32 1
  store %struct.lifreq* %312, %struct.lifreq** %13, align 8
  br label %124

313:                                              ; preds = %308, %278, %238, %200, %172, %124
  %314 = load i8*, i8** %17, align 8
  %315 = call i32 @free(i8* %314)
  %316 = load i32, i32* %11, align 4
  %317 = call i32 @close(i32 %316)
  %318 = load i32, i32* %10, align 4
  %319 = call i32 @close(i32 %318)
  %320 = load i32, i32* %26, align 4
  store i32 %320, i32* %5, align 4
  br label %321

321:                                              ; preds = %313, %104, %79, %60, %43, %32
  %322 = load i32, i32* %5, align 4
  ret i32 %322
}

declare dso_local i32 @socket(i64, i32, i32) #1

declare dso_local i32 @pcap_fmt_errmsg_for_errno(i8*, i32, i64, i8*, ...) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @ioctl(i32, i32, i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @add_addr_to_if(i32*, i8*, i32, i32, %struct.sockaddr*, i32, %struct.sockaddr*, i32, %struct.sockaddr*, i32, %struct.sockaddr*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
