; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-rpcap.c_pcap_open_rpcap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-rpcap.c_pcap_open_rpcap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, %struct.TYPE_6__, %struct.pcap_rpcap* }
%struct.TYPE_6__ = type { i8*, i32 }
%struct.pcap_rpcap = type { i32, i32, i32, i32 }
%struct.pcap_rmtauth = type { i32 }
%struct.activehosts = type { i32, i32 }
%struct.rpcap_header = type { i32 }
%struct.rpcap_openreply = type { i32, i32 }
%struct.addrinfo = type { i32, i32 }

@PCAP_BUF_SIZE = common dso_local global i32 0, align 4
@RPCAP_NETBUF_SIZE = common dso_local global i32 0, align 4
@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@MAXIMUM_SNAPLEN = common dso_local global i32 0, align 4
@PCAP_SRC_IFREMOTE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"This function is able to open only remote interfaces\00", align 1
@PF_UNSPEC = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@RPCAP_DEFAULT_NETPORT = common dso_local global i8* null, align 8
@SOCKOPEN_CLIENT = common dso_local global i32 0, align 4
@INVALID_SOCKET = common dso_local global i32 0, align 4
@SOCKBUF_CHECKONLY = common dso_local global i32 0, align 4
@RPCAP_MSG_OPEN_REQ = common dso_local global i32 0, align 4
@SOCKBUF_BUFFERIZE = common dso_local global i32 0, align 4
@pcap_read_rpcap = common dso_local global i32 0, align 4
@pcap_save_current_filter_rpcap = common dso_local global i32 0, align 4
@pcap_setfilter_rpcap = common dso_local global i32 0, align 4
@pcap_getnonblock_rpcap = common dso_local global i32 0, align 4
@pcap_setnonblock_rpcap = common dso_local global i32 0, align 4
@pcap_stats_rpcap = common dso_local global i32 0, align 4
@pcap_cleanup_rpcap = common dso_local global i32 0, align 4
@pcap_stats_ex_rpcap = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @pcap_open_rpcap(i8* %0, i32 %1, i32 %2, i32 %3, %struct.pcap_rmtauth* %4, i8* %5) #0 {
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.pcap_rmtauth*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.pcap_rpcap*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.activehosts*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.rpcap_header, align 4
  %31 = alloca %struct.rpcap_openreply, align 4
  %32 = alloca i32, align 4
  %33 = alloca %struct.addrinfo, align 4
  %34 = alloca %struct.addrinfo*, align 8
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.pcap_rmtauth* %4, %struct.pcap_rmtauth** %12, align 8
  store i8* %5, i8** %13, align 8
  %35 = load i32, i32* @PCAP_BUF_SIZE, align 4
  %36 = zext i32 %35 to i64
  %37 = call i8* @llvm.stacksave()
  store i8* %37, i8** %17, align 8
  %38 = alloca i8, i64 %36, align 16
  store i64 %36, i64* %18, align 8
  %39 = load i32, i32* @PCAP_BUF_SIZE, align 4
  %40 = zext i32 %39 to i64
  %41 = alloca i8, i64 %40, align 16
  store i64 %40, i64* %19, align 8
  %42 = load i32, i32* @PCAP_BUF_SIZE, align 4
  %43 = zext i32 %42 to i64
  %44 = alloca i8, i64 %43, align 16
  store i64 %43, i64* %20, align 8
  %45 = load i32, i32* @RPCAP_NETBUF_SIZE, align 4
  %46 = zext i32 %45 to i64
  %47 = alloca i8, i64 %46, align 16
  store i64 %46, i64* %27, align 8
  store i32 0, i32* %28, align 4
  %48 = load i8*, i8** %13, align 8
  %49 = call %struct.TYPE_7__* @pcap_create_common(i8* %48, i32 16)
  store %struct.TYPE_7__* %49, %struct.TYPE_7__** %14, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %51 = icmp eq %struct.TYPE_7__* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %6
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %7, align 8
  store i32 1, i32* %32, align 4
  br label %308

53:                                               ; preds = %6
  %54 = load i8*, i8** %8, align 8
  %55 = call i8* @strdup(i8* %54)
  store i8* %55, i8** %15, align 8
  %56 = load i8*, i8** %15, align 8
  %57 = icmp eq i8* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load i8*, i8** %13, align 8
  %60 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %61 = load i32, i32* @errno, align 4
  %62 = call i32 @pcap_fmt_errmsg_for_errno(i8* %59, i32 %60, i32 %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %7, align 8
  store i32 1, i32* %32, align 4
  br label %308

63:                                               ; preds = %53
  %64 = load i32, i32* %9, align 4
  %65 = icmp sle i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @MAXIMUM_SNAPLEN, align 4
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66, %63
  %71 = load i32, i32* @MAXIMUM_SNAPLEN, align 4
  store i32 %71, i32* %9, align 4
  br label %72

72:                                               ; preds = %70, %66
  %73 = load i8*, i8** %15, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 12
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  store i8* %73, i8** %76, align 8
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load i32, i32* %11, align 4
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 12
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  store i32 %80, i32* %83, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 13
  %86 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %85, align 8
  store %struct.pcap_rpcap* %86, %struct.pcap_rpcap** %16, align 8
  %87 = load i32, i32* %10, align 4
  %88 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %16, align 8
  %89 = getelementptr inbounds %struct.pcap_rpcap, %struct.pcap_rpcap* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 12
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = load i8*, i8** %13, align 8
  %95 = call i32 @pcap_parsesrcstr(i8* %93, i32* %29, i8* %38, i8* %41, i8* %44, i8* %94)
  %96 = icmp eq i32 %95, -1
  br i1 %96, label %97, label %100

97:                                               ; preds = %72
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %99 = call i32 @pcap_close(%struct.TYPE_7__* %98)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %7, align 8
  store i32 1, i32* %32, align 4
  br label %308

100:                                              ; preds = %72
  %101 = load i32, i32* %29, align 4
  %102 = load i32, i32* @PCAP_SRC_IFREMOTE, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %100
  %105 = load i8*, i8** %13, align 8
  %106 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %107 = call i32 @pcap_snprintf(i8* %105, i32 %106, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %109 = call i32 @pcap_close(%struct.TYPE_7__* %108)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %7, align 8
  store i32 1, i32* %32, align 4
  br label %308

110:                                              ; preds = %100
  %111 = load i8*, i8** %13, align 8
  %112 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %113 = call i32 @sock_init(i8* %111, i32 %112)
  %114 = icmp eq i32 %113, -1
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %117 = call i32 @pcap_close(%struct.TYPE_7__* %116)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %7, align 8
  store i32 1, i32* %32, align 4
  br label %308

118:                                              ; preds = %110
  %119 = load i8*, i8** %13, align 8
  %120 = call %struct.activehosts* @rpcap_remoteact_getsock(i8* %38, i32* %22, i8* %119)
  store %struct.activehosts* %120, %struct.activehosts** %21, align 8
  %121 = load %struct.activehosts*, %struct.activehosts** %21, align 8
  %122 = icmp ne %struct.activehosts* %121, null
  br i1 %122, label %123, label %130

123:                                              ; preds = %118
  %124 = load %struct.activehosts*, %struct.activehosts** %21, align 8
  %125 = getelementptr inbounds %struct.activehosts, %struct.activehosts* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %23, align 4
  %127 = load %struct.activehosts*, %struct.activehosts** %21, align 8
  %128 = getelementptr inbounds %struct.activehosts, %struct.activehosts* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %24, align 4
  store i32 1, i32* %25, align 4
  br label %192

130:                                              ; preds = %118
  %131 = load i32, i32* %22, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %135 = call i32 @pcap_close(%struct.TYPE_7__* %134)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %7, align 8
  store i32 1, i32* %32, align 4
  br label %308

136:                                              ; preds = %130
  %137 = call i32 @memset(%struct.addrinfo* %33, i32 0, i32 8)
  %138 = load i32, i32* @PF_UNSPEC, align 4
  %139 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %33, i32 0, i32 1
  store i32 %138, i32* %139, align 4
  %140 = load i32, i32* @SOCK_STREAM, align 4
  %141 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %33, i32 0, i32 0
  store i32 %140, i32* %141, align 4
  %142 = getelementptr inbounds i8, i8* %41, i64 0
  %143 = load i8, i8* %142, align 16
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %156

146:                                              ; preds = %136
  %147 = load i8*, i8** @RPCAP_DEFAULT_NETPORT, align 8
  %148 = load i8*, i8** %13, align 8
  %149 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %150 = call i32 @sock_initaddress(i8* %38, i8* %147, %struct.addrinfo* %33, %struct.addrinfo** %34, i8* %148, i32 %149)
  %151 = icmp eq i32 %150, -1
  br i1 %151, label %152, label %155

152:                                              ; preds = %146
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %154 = call i32 @pcap_close(%struct.TYPE_7__* %153)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %7, align 8
  store i32 1, i32* %32, align 4
  br label %308

155:                                              ; preds = %146
  br label %165

156:                                              ; preds = %136
  %157 = load i8*, i8** %13, align 8
  %158 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %159 = call i32 @sock_initaddress(i8* %38, i8* %41, %struct.addrinfo* %33, %struct.addrinfo** %34, i8* %157, i32 %158)
  %160 = icmp eq i32 %159, -1
  br i1 %160, label %161, label %164

161:                                              ; preds = %156
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %163 = call i32 @pcap_close(%struct.TYPE_7__* %162)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %7, align 8
  store i32 1, i32* %32, align 4
  br label %308

164:                                              ; preds = %156
  br label %165

165:                                              ; preds = %164, %155
  %166 = load %struct.addrinfo*, %struct.addrinfo** %34, align 8
  %167 = load i32, i32* @SOCKOPEN_CLIENT, align 4
  %168 = load i8*, i8** %13, align 8
  %169 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %170 = call i32 @sock_open(%struct.addrinfo* %166, i32 %167, i32 0, i8* %168, i32 %169)
  store i32 %170, i32* %23, align 4
  %171 = load i32, i32* @INVALID_SOCKET, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %178

173:                                              ; preds = %165
  %174 = load %struct.addrinfo*, %struct.addrinfo** %34, align 8
  %175 = call i32 @freeaddrinfo(%struct.addrinfo* %174)
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %177 = call i32 @pcap_close(%struct.TYPE_7__* %176)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %7, align 8
  store i32 1, i32* %32, align 4
  br label %308

178:                                              ; preds = %165
  %179 = load %struct.addrinfo*, %struct.addrinfo** %34, align 8
  %180 = call i32 @freeaddrinfo(%struct.addrinfo* %179)
  %181 = load i32, i32* %23, align 4
  %182 = load %struct.pcap_rmtauth*, %struct.pcap_rmtauth** %12, align 8
  %183 = load i8*, i8** %13, align 8
  %184 = call i32 @rpcap_doauth(i32 %181, i32* %24, %struct.pcap_rmtauth* %182, i8* %183)
  %185 = icmp eq i32 %184, -1
  br i1 %185, label %186, label %191

186:                                              ; preds = %178
  %187 = load i32, i32* %23, align 4
  %188 = call i32 @sock_close(i32 %187, i32* null, i32 0)
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %190 = call i32 @pcap_close(%struct.TYPE_7__* %189)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %7, align 8
  store i32 1, i32* %32, align 4
  br label %308

191:                                              ; preds = %178
  store i32 0, i32* %25, align 4
  br label %192

192:                                              ; preds = %191, %123
  %193 = load i32, i32* @RPCAP_NETBUF_SIZE, align 4
  %194 = load i32, i32* @SOCKBUF_CHECKONLY, align 4
  %195 = load i8*, i8** %13, align 8
  %196 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %197 = call i64 @sock_bufferize(i8* null, i32 4, i8* null, i32* %28, i32 %193, i32 %194, i8* %195, i32 %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %192
  br label %299

200:                                              ; preds = %192
  %201 = bitcast i8* %47 to %struct.rpcap_header*
  %202 = load i32, i32* %24, align 4
  %203 = load i32, i32* @RPCAP_MSG_OPEN_REQ, align 4
  %204 = call i64 @strlen(i8* %44)
  %205 = trunc i64 %204 to i32
  %206 = call i32 @rpcap_createhdr(%struct.rpcap_header* %201, i32 %202, i32 %203, i32 0, i32 %205)
  %207 = call i64 @strlen(i8* %44)
  %208 = trunc i64 %207 to i32
  %209 = load i32, i32* @RPCAP_NETBUF_SIZE, align 4
  %210 = load i32, i32* @SOCKBUF_BUFFERIZE, align 4
  %211 = load i8*, i8** %13, align 8
  %212 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %213 = call i64 @sock_bufferize(i8* %44, i32 %208, i8* %47, i32* %28, i32 %209, i32 %210, i8* %211, i32 %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %200
  br label %299

216:                                              ; preds = %200
  %217 = load i32, i32* %23, align 4
  %218 = load i32, i32* %28, align 4
  %219 = load i8*, i8** %13, align 8
  %220 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %221 = call i64 @sock_send(i32 %217, i8* %47, i32 %218, i8* %219, i32 %220)
  %222 = icmp slt i64 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %216
  br label %299

224:                                              ; preds = %216
  %225 = load i32, i32* %23, align 4
  %226 = load i32, i32* %24, align 4
  %227 = load i32, i32* @RPCAP_MSG_OPEN_REQ, align 4
  %228 = load i8*, i8** %13, align 8
  %229 = call i32 @rpcap_process_msg_header(i32 %225, i32 %226, i32 %227, %struct.rpcap_header* %30, i8* %228)
  %230 = icmp eq i32 %229, -1
  br i1 %230, label %231, label %232

231:                                              ; preds = %224
  br label %299

232:                                              ; preds = %224
  %233 = getelementptr inbounds %struct.rpcap_header, %struct.rpcap_header* %30, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  store i32 %234, i32* %26, align 4
  %235 = load i32, i32* %23, align 4
  %236 = bitcast %struct.rpcap_openreply* %31 to i8*
  %237 = load i8*, i8** %13, align 8
  %238 = call i32 @rpcap_recv(i32 %235, i8* %236, i32 8, i32* %26, i8* %237)
  %239 = icmp eq i32 %238, -1
  br i1 %239, label %240, label %241

240:                                              ; preds = %232
  br label %293

241:                                              ; preds = %232
  %242 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %16, align 8
  %243 = getelementptr inbounds %struct.pcap_rpcap, %struct.pcap_rpcap* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* %26, align 4
  %246 = load i8*, i8** %13, align 8
  %247 = call i32 @rpcap_discard(i32 %244, i32 %245, i8* %246)
  %248 = icmp eq i32 %247, -1
  br i1 %248, label %249, label %250

249:                                              ; preds = %241
  br label %299

250:                                              ; preds = %241
  %251 = getelementptr inbounds %struct.rpcap_openreply, %struct.rpcap_openreply* %31, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = call i8* @ntohl(i32 %252)
  %254 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i32 0, i32 11
  store i8* %253, i8** %255, align 8
  %256 = getelementptr inbounds %struct.rpcap_openreply, %struct.rpcap_openreply* %31, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = call i8* @ntohl(i32 %257)
  %259 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %260 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %259, i32 0, i32 10
  store i8* %258, i8** %260, align 8
  %261 = load i32, i32* %23, align 4
  %262 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %16, align 8
  %263 = getelementptr inbounds %struct.pcap_rpcap, %struct.pcap_rpcap* %262, i32 0, i32 2
  store i32 %261, i32* %263, align 4
  %264 = load i32, i32* %24, align 4
  %265 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %16, align 8
  %266 = getelementptr inbounds %struct.pcap_rpcap, %struct.pcap_rpcap* %265, i32 0, i32 3
  store i32 %264, i32* %266, align 4
  %267 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %16, align 8
  %268 = getelementptr inbounds %struct.pcap_rpcap, %struct.pcap_rpcap* %267, i32 0, i32 1
  store i32 1, i32* %268, align 4
  %269 = load i32, i32* @pcap_read_rpcap, align 4
  %270 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %271 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %270, i32 0, i32 9
  store i32 %269, i32* %271, align 4
  %272 = load i32, i32* @pcap_save_current_filter_rpcap, align 4
  %273 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %274 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %273, i32 0, i32 8
  store i32 %272, i32* %274, align 8
  %275 = load i32, i32* @pcap_setfilter_rpcap, align 4
  %276 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %277 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %276, i32 0, i32 7
  store i32 %275, i32* %277, align 4
  %278 = load i32, i32* @pcap_getnonblock_rpcap, align 4
  %279 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %280 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %279, i32 0, i32 6
  store i32 %278, i32* %280, align 8
  %281 = load i32, i32* @pcap_setnonblock_rpcap, align 4
  %282 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %283 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %282, i32 0, i32 5
  store i32 %281, i32* %283, align 4
  %284 = load i32, i32* @pcap_stats_rpcap, align 4
  %285 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %286 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %285, i32 0, i32 4
  store i32 %284, i32* %286, align 8
  %287 = load i32, i32* @pcap_cleanup_rpcap, align 4
  %288 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %289 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %288, i32 0, i32 2
  store i32 %287, i32* %289, align 8
  %290 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %291 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %290, i32 0, i32 1
  store i32 1, i32* %291, align 4
  %292 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  store %struct.TYPE_7__* %292, %struct.TYPE_7__** %7, align 8
  store i32 1, i32* %32, align 4
  br label %308

293:                                              ; preds = %240
  %294 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %16, align 8
  %295 = getelementptr inbounds %struct.pcap_rpcap, %struct.pcap_rpcap* %294, i32 0, i32 2
  %296 = load i32, i32* %295, align 4
  %297 = load i32, i32* %26, align 4
  %298 = call i32 @rpcap_discard(i32 %296, i32 %297, i8* null)
  br label %299

299:                                              ; preds = %293, %249, %231, %223, %215, %199
  %300 = load i32, i32* %25, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %305, label %302

302:                                              ; preds = %299
  %303 = load i32, i32* %23, align 4
  %304 = call i32 @sock_close(i32 %303, i32* null, i32 0)
  br label %305

305:                                              ; preds = %302, %299
  %306 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %307 = call i32 @pcap_close(%struct.TYPE_7__* %306)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %7, align 8
  store i32 1, i32* %32, align 4
  br label %308

308:                                              ; preds = %305, %250, %186, %173, %161, %152, %133, %115, %104, %97, %58, %52
  %309 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %309)
  %310 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  ret %struct.TYPE_7__* %310
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_7__* @pcap_create_common(i8*, i32) #2

declare dso_local i8* @strdup(i8*) #2

declare dso_local i32 @pcap_fmt_errmsg_for_errno(i8*, i32, i32, i8*) #2

declare dso_local i32 @pcap_parsesrcstr(i8*, i32*, i8*, i8*, i8*, i8*) #2

declare dso_local i32 @pcap_close(%struct.TYPE_7__*) #2

declare dso_local i32 @pcap_snprintf(i8*, i32, i8*) #2

declare dso_local i32 @sock_init(i8*, i32) #2

declare dso_local %struct.activehosts* @rpcap_remoteact_getsock(i8*, i32*, i8*) #2

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #2

declare dso_local i32 @sock_initaddress(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**, i8*, i32) #2

declare dso_local i32 @sock_open(%struct.addrinfo*, i32, i32, i8*, i32) #2

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #2

declare dso_local i32 @rpcap_doauth(i32, i32*, %struct.pcap_rmtauth*, i8*) #2

declare dso_local i32 @sock_close(i32, i32*, i32) #2

declare dso_local i64 @sock_bufferize(i8*, i32, i8*, i32*, i32, i32, i8*, i32) #2

declare dso_local i32 @rpcap_createhdr(%struct.rpcap_header*, i32, i32, i32, i32) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i64 @sock_send(i32, i8*, i32, i8*, i32) #2

declare dso_local i32 @rpcap_process_msg_header(i32, i32, i32, %struct.rpcap_header*, i8*) #2

declare dso_local i32 @rpcap_recv(i32, i8*, i32, i32*, i8*) #2

declare dso_local i32 @rpcap_discard(i32, i32, i8*) #2

declare dso_local i8* @ntohl(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
