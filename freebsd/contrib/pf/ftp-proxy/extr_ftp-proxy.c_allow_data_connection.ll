; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pf/ftp-proxy/extr_ftp-proxy.c_allow_data_connection.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pf/ftp-proxy/extr_ftp-proxy.c_allow_data_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.session = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.sockaddr = type { i32 }

@fixed_server = common dso_local global i64 0, align 8
@CMD_PASV = common dso_local global i64 0, align 8
@CMD_EPSV = common dso_local global i64 0, align 8
@MIN_PORT = common dso_local global i32 0, align 4
@LOG_CRIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"#%d bad port in '%s'\00", align 1
@linebuf = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"#%d passive: client to server port %d via port %d\00", align 1
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"#%d proxy: %s\00", align 1
@PF_NAT_PROXY_PORT_LOW = common dso_local global i32 0, align 4
@PF_NAT_PROXY_PORT_HIGH = common dso_local global i32 0, align 4
@PF_IN = common dso_local global i32 0, align 4
@PF_OUT = common dso_local global i32 0, align 4
@CMD_PORT = common dso_local global i64 0, align 8
@CMD_EPRT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [49 x i8] c"#%d active: server to client port %d via port %d\00", align 1
@rfc_mode = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i64 0, align 8
@CMD_NONE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"#%d pf operation failed: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @allow_data_connection(%struct.session* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.session*, align 8
  %4 = alloca %struct.sockaddr*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32, align 4
  store %struct.session* %0, %struct.session** %3, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.session*, %struct.session** %3, align 8
  %10 = getelementptr inbounds %struct.session, %struct.session* %9, i32 0, i32 7
  %11 = call %struct.sockaddr* @sstosa(i32* %10)
  store %struct.sockaddr* %11, %struct.sockaddr** %4, align 8
  %12 = load %struct.session*, %struct.session** %3, align 8
  %13 = getelementptr inbounds %struct.session, %struct.session* %12, i32 0, i32 4
  %14 = call %struct.sockaddr* @sstosa(i32* %13)
  store %struct.sockaddr* %14, %struct.sockaddr** %7, align 8
  %15 = load %struct.session*, %struct.session** %3, align 8
  %16 = getelementptr inbounds %struct.session, %struct.session* %15, i32 0, i32 6
  %17 = call %struct.sockaddr* @sstosa(i32* %16)
  store %struct.sockaddr* %17, %struct.sockaddr** %6, align 8
  %18 = load i64, i64* @fixed_server, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load %struct.session*, %struct.session** %3, align 8
  %22 = getelementptr inbounds %struct.session, %struct.session* %21, i32 0, i32 5
  %23 = call %struct.sockaddr* @sstosa(i32* %22)
  store %struct.sockaddr* %23, %struct.sockaddr** %5, align 8
  br label %28

24:                                               ; preds = %1
  %25 = load %struct.session*, %struct.session** %3, align 8
  %26 = getelementptr inbounds %struct.session, %struct.session* %25, i32 0, i32 4
  %27 = call %struct.sockaddr* @sstosa(i32* %26)
  store %struct.sockaddr* %27, %struct.sockaddr** %5, align 8
  br label %28

28:                                               ; preds = %24, %20
  %29 = load %struct.session*, %struct.session** %3, align 8
  %30 = getelementptr inbounds %struct.session, %struct.session* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @CMD_PASV, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load %struct.session*, %struct.session** %3, align 8
  %36 = getelementptr inbounds %struct.session, %struct.session* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @CMD_EPSV, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %152

40:                                               ; preds = %34, %28
  %41 = load %struct.session*, %struct.session** %3, align 8
  %42 = getelementptr inbounds %struct.session, %struct.session* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @parse_port(i64 %43)
  %45 = load %struct.session*, %struct.session** %3, align 8
  %46 = getelementptr inbounds %struct.session, %struct.session* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = load %struct.session*, %struct.session** %3, align 8
  %48 = getelementptr inbounds %struct.session, %struct.session* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @MIN_PORT, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %40
  %53 = load i32, i32* @LOG_CRIT, align 4
  %54 = load %struct.session*, %struct.session** %3, align 8
  %55 = getelementptr inbounds %struct.session, %struct.session* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @linebuf, align 4
  %58 = call i32 (i32, i8*, i32, i32, ...) @logmsg(i32 %53, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %57)
  store i32 0, i32* %2, align 4
  br label %300

59:                                               ; preds = %40
  %60 = call i32 (...) @pick_proxy_port()
  %61 = load %struct.session*, %struct.session** %3, align 8
  %62 = getelementptr inbounds %struct.session, %struct.session* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* @LOG_INFO, align 4
  %64 = load %struct.session*, %struct.session** %3, align 8
  %65 = getelementptr inbounds %struct.session, %struct.session* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.session*, %struct.session** %3, align 8
  %68 = getelementptr inbounds %struct.session, %struct.session* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.session*, %struct.session** %3, align 8
  %71 = getelementptr inbounds %struct.session, %struct.session* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = call i32 (i32, i8*, i32, i32, ...) @logmsg(i32 %63, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %69, i32 %72)
  %74 = load %struct.session*, %struct.session** %3, align 8
  %75 = getelementptr inbounds %struct.session, %struct.session* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @prepare_commit(i32 %76)
  %78 = icmp eq i32 %77, -1
  br i1 %78, label %79, label %80

79:                                               ; preds = %59
  br label %287

80:                                               ; preds = %59
  store i32 1, i32* %8, align 4
  %81 = load %struct.session*, %struct.session** %3, align 8
  %82 = getelementptr inbounds %struct.session, %struct.session* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %85 = load %struct.session*, %struct.session** %3, align 8
  %86 = getelementptr inbounds %struct.session, %struct.session* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @proxy_reply(i64 %83, %struct.sockaddr* %84, i32 %87)
  %89 = load i32, i32* @LOG_DEBUG, align 4
  %90 = load %struct.session*, %struct.session** %3, align 8
  %91 = getelementptr inbounds %struct.session, %struct.session* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @linebuf, align 4
  %94 = call i32 (i32, i8*, i32, i32, ...) @logmsg(i32 %89, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %92, i32 %93)
  %95 = load %struct.session*, %struct.session** %3, align 8
  %96 = getelementptr inbounds %struct.session, %struct.session* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %99 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %100 = load %struct.session*, %struct.session** %3, align 8
  %101 = getelementptr inbounds %struct.session, %struct.session* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %104 = load %struct.session*, %struct.session** %3, align 8
  %105 = getelementptr inbounds %struct.session, %struct.session* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @add_rdr(i32 %97, %struct.sockaddr* %98, %struct.sockaddr* %99, i32 %102, %struct.sockaddr* %103, i32 %106)
  %108 = icmp eq i32 %107, -1
  br i1 %108, label %109, label %110

109:                                              ; preds = %80
  br label %287

110:                                              ; preds = %80
  %111 = load %struct.session*, %struct.session** %3, align 8
  %112 = getelementptr inbounds %struct.session, %struct.session* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %115 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %116 = load %struct.session*, %struct.session** %3, align 8
  %117 = getelementptr inbounds %struct.session, %struct.session* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %120 = load i32, i32* @PF_NAT_PROXY_PORT_LOW, align 4
  %121 = load i32, i32* @PF_NAT_PROXY_PORT_HIGH, align 4
  %122 = call i32 @add_nat(i32 %113, %struct.sockaddr* %114, %struct.sockaddr* %115, i32 %118, %struct.sockaddr* %119, i32 %120, i32 %121)
  %123 = icmp eq i32 %122, -1
  br i1 %123, label %124, label %125

124:                                              ; preds = %110
  br label %287

125:                                              ; preds = %110
  %126 = load %struct.session*, %struct.session** %3, align 8
  %127 = getelementptr inbounds %struct.session, %struct.session* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @PF_IN, align 4
  %130 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %131 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %132 = load %struct.session*, %struct.session** %3, align 8
  %133 = getelementptr inbounds %struct.session, %struct.session* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @add_filter(i32 %128, i32 %129, %struct.sockaddr* %130, %struct.sockaddr* %131, i32 %134)
  %136 = icmp eq i32 %135, -1
  br i1 %136, label %137, label %138

137:                                              ; preds = %125
  br label %287

138:                                              ; preds = %125
  %139 = load %struct.session*, %struct.session** %3, align 8
  %140 = getelementptr inbounds %struct.session, %struct.session* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @PF_OUT, align 4
  %143 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %144 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %145 = load %struct.session*, %struct.session** %3, align 8
  %146 = getelementptr inbounds %struct.session, %struct.session* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @add_filter(i32 %141, i32 %142, %struct.sockaddr* %143, %struct.sockaddr* %144, i32 %147)
  %149 = icmp eq i32 %148, -1
  br i1 %149, label %150, label %151

150:                                              ; preds = %138
  br label %287

151:                                              ; preds = %138
  br label %152

152:                                              ; preds = %151, %34
  %153 = load %struct.session*, %struct.session** %3, align 8
  %154 = getelementptr inbounds %struct.session, %struct.session* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @CMD_PORT, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %164, label %158

158:                                              ; preds = %152
  %159 = load %struct.session*, %struct.session** %3, align 8
  %160 = getelementptr inbounds %struct.session, %struct.session* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @CMD_EPRT, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %264

164:                                              ; preds = %158, %152
  %165 = load i32, i32* @LOG_INFO, align 4
  %166 = load %struct.session*, %struct.session** %3, align 8
  %167 = getelementptr inbounds %struct.session, %struct.session* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.session*, %struct.session** %3, align 8
  %170 = getelementptr inbounds %struct.session, %struct.session* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.session*, %struct.session** %3, align 8
  %173 = getelementptr inbounds %struct.session, %struct.session* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 8
  %175 = call i32 (i32, i8*, i32, i32, ...) @logmsg(i32 %165, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %168, i32 %171, i32 %174)
  %176 = load %struct.session*, %struct.session** %3, align 8
  %177 = getelementptr inbounds %struct.session, %struct.session* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @prepare_commit(i32 %178)
  %180 = icmp eq i32 %179, -1
  br i1 %180, label %181, label %182

181:                                              ; preds = %164
  br label %287

182:                                              ; preds = %164
  store i32 1, i32* %8, align 4
  %183 = load %struct.session*, %struct.session** %3, align 8
  %184 = getelementptr inbounds %struct.session, %struct.session* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %187 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %188 = load %struct.session*, %struct.session** %3, align 8
  %189 = getelementptr inbounds %struct.session, %struct.session* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %192 = load %struct.session*, %struct.session** %3, align 8
  %193 = getelementptr inbounds %struct.session, %struct.session* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @add_rdr(i32 %185, %struct.sockaddr* %186, %struct.sockaddr* %187, i32 %190, %struct.sockaddr* %191, i32 %194)
  %196 = icmp eq i32 %195, -1
  br i1 %196, label %197, label %198

197:                                              ; preds = %182
  br label %287

198:                                              ; preds = %182
  %199 = load i64, i64* @rfc_mode, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %221

201:                                              ; preds = %198
  %202 = load %struct.session*, %struct.session** %3, align 8
  %203 = getelementptr inbounds %struct.session, %struct.session* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @CMD_PORT, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %207, label %221

207:                                              ; preds = %201
  %208 = load %struct.session*, %struct.session** %3, align 8
  %209 = getelementptr inbounds %struct.session, %struct.session* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %212 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %213 = load %struct.session*, %struct.session** %3, align 8
  %214 = getelementptr inbounds %struct.session, %struct.session* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %217 = call i32 @add_nat(i32 %210, %struct.sockaddr* %211, %struct.sockaddr* %212, i32 %215, %struct.sockaddr* %216, i32 20, i32 20)
  %218 = icmp eq i32 %217, -1
  br i1 %218, label %219, label %220

219:                                              ; preds = %207
  br label %287

220:                                              ; preds = %207
  br label %237

221:                                              ; preds = %201, %198
  %222 = load %struct.session*, %struct.session** %3, align 8
  %223 = getelementptr inbounds %struct.session, %struct.session* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %226 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %227 = load %struct.session*, %struct.session** %3, align 8
  %228 = getelementptr inbounds %struct.session, %struct.session* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %231 = load i32, i32* @PF_NAT_PROXY_PORT_LOW, align 4
  %232 = load i32, i32* @PF_NAT_PROXY_PORT_HIGH, align 4
  %233 = call i32 @add_nat(i32 %224, %struct.sockaddr* %225, %struct.sockaddr* %226, i32 %229, %struct.sockaddr* %230, i32 %231, i32 %232)
  %234 = icmp eq i32 %233, -1
  br i1 %234, label %235, label %236

235:                                              ; preds = %221
  br label %287

236:                                              ; preds = %221
  br label %237

237:                                              ; preds = %236, %220
  %238 = load %struct.session*, %struct.session** %3, align 8
  %239 = getelementptr inbounds %struct.session, %struct.session* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* @PF_IN, align 4
  %242 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %243 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %244 = load %struct.session*, %struct.session** %3, align 8
  %245 = getelementptr inbounds %struct.session, %struct.session* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 4
  %247 = call i32 @add_filter(i32 %240, i32 %241, %struct.sockaddr* %242, %struct.sockaddr* %243, i32 %246)
  %248 = icmp eq i32 %247, -1
  br i1 %248, label %249, label %250

249:                                              ; preds = %237
  br label %287

250:                                              ; preds = %237
  %251 = load %struct.session*, %struct.session** %3, align 8
  %252 = getelementptr inbounds %struct.session, %struct.session* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* @PF_OUT, align 4
  %255 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %256 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %257 = load %struct.session*, %struct.session** %3, align 8
  %258 = getelementptr inbounds %struct.session, %struct.session* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 4
  %260 = call i32 @add_filter(i32 %253, i32 %254, %struct.sockaddr* %255, %struct.sockaddr* %256, i32 %259)
  %261 = icmp eq i32 %260, -1
  br i1 %261, label %262, label %263

262:                                              ; preds = %250
  br label %287

263:                                              ; preds = %250
  br label %264

264:                                              ; preds = %263, %158
  %265 = load i32, i32* %8, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %281

267:                                              ; preds = %264
  %268 = call i32 (...) @do_commit()
  %269 = icmp eq i32 %268, -1
  br i1 %269, label %270, label %281

270:                                              ; preds = %267
  %271 = load i64, i64* @errno, align 8
  %272 = load i64, i64* @EBUSY, align 8
  %273 = icmp ne i64 %271, %272
  br i1 %273, label %274, label %275

274:                                              ; preds = %270
  br label %287

275:                                              ; preds = %270
  %276 = call i32 @usleep(i32 5000)
  %277 = call i32 (...) @do_commit()
  %278 = icmp eq i32 %277, -1
  br i1 %278, label %279, label %280

279:                                              ; preds = %275
  br label %287

280:                                              ; preds = %275
  br label %281

281:                                              ; preds = %280, %267, %264
  %282 = load i64, i64* @CMD_NONE, align 8
  %283 = load %struct.session*, %struct.session** %3, align 8
  %284 = getelementptr inbounds %struct.session, %struct.session* %283, i32 0, i32 0
  store i64 %282, i64* %284, align 8
  %285 = load %struct.session*, %struct.session** %3, align 8
  %286 = getelementptr inbounds %struct.session, %struct.session* %285, i32 0, i32 2
  store i32 0, i32* %286, align 4
  store i32 1, i32* %2, align 4
  br label %300

287:                                              ; preds = %279, %274, %262, %249, %235, %219, %197, %181, %150, %137, %124, %109, %79
  %288 = load i32, i32* @LOG_CRIT, align 4
  %289 = load %struct.session*, %struct.session** %3, align 8
  %290 = getelementptr inbounds %struct.session, %struct.session* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 8
  %292 = load i64, i64* @errno, align 8
  %293 = call i32 @strerror(i64 %292)
  %294 = call i32 (i32, i8*, i32, i32, ...) @logmsg(i32 %288, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %291, i32 %293)
  %295 = load i32, i32* %8, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %299

297:                                              ; preds = %287
  %298 = call i32 (...) @do_rollback()
  br label %299

299:                                              ; preds = %297, %287
  store i32 0, i32* %2, align 4
  br label %300

300:                                              ; preds = %299, %281, %52
  %301 = load i32, i32* %2, align 4
  ret i32 %301
}

declare dso_local %struct.sockaddr* @sstosa(i32*) #1

declare dso_local i32 @parse_port(i64) #1

declare dso_local i32 @logmsg(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @pick_proxy_port(...) #1

declare dso_local i32 @prepare_commit(i32) #1

declare dso_local i32 @proxy_reply(i64, %struct.sockaddr*, i32) #1

declare dso_local i32 @add_rdr(i32, %struct.sockaddr*, %struct.sockaddr*, i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @add_nat(i32, %struct.sockaddr*, %struct.sockaddr*, i32, %struct.sockaddr*, i32, i32) #1

declare dso_local i32 @add_filter(i32, i32, %struct.sockaddr*, %struct.sockaddr*, i32) #1

declare dso_local i32 @do_commit(...) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i32 @do_rollback(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
