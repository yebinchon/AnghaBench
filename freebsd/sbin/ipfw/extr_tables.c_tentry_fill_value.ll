; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_tables.c_tentry_fill_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_tables.c_tentry_fill_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.addrinfo = type { i64, i32, i32 }
%struct.in_addr = type { i32 }
%struct.sockaddr_in6 = type { i32, i32 }

@IPFW_VTYPE_LEGACY = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@EX_OSERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Unable to parse value %s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"tag\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"pipe\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"divert\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"skipto\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"netgraph\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"fib\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"nat\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"limit\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"ipv4\00", align 1
@f_ipdscp = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [10 x i8] c"DSCP code\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"DSCP value\00", align 1
@AF_INET6 = common dso_local global i32 0, align 4
@AI_NUMERICHOST = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"ipv6\00", align 1
@EX_USAGE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [25 x i8] c"Unable to parse %s as %s\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"Not enough fields inside value\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_8__*, i8*, i32, i32)* @tentry_fill_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tentry_fill_value(i32* %0, %struct.TYPE_8__* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.addrinfo, align 8
  %12 = alloca %struct.addrinfo*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_7__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca %struct.in_addr, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  store %struct.TYPE_7__* %27, %struct.TYPE_7__** %16, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @IPFW_VTYPE_LEGACY, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %66

31:                                               ; preds = %5
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 @strtoul(i8* %32, i8** %23, i32 0)
  store i32 %33, i32* %15, align 4
  %34 = load i8*, i8** %23, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load i32, i32* %15, align 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %41 = call i32 @set_legacy_value(i32 %39, %struct.TYPE_7__* %40)
  br label %298

42:                                               ; preds = %31
  %43 = load i32, i32* @AF_INET, align 4
  %44 = load i8*, i8** %8, align 8
  %45 = call i32 @inet_pton(i32 %43, i8* %44, i32* %15)
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load i32, i32* %15, align 4
  %49 = call i32 @ntohl(i32 %48)
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %51 = call i32 @set_legacy_value(i32 %49, %struct.TYPE_7__* %50)
  br label %298

52:                                               ; preds = %42
  %53 = load i8*, i8** %8, align 8
  %54 = call i64 @lookup_host(i8* %53, %struct.in_addr* %24)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %24, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ntohl(i32 %58)
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %61 = call i32 @set_legacy_value(i32 %59, %struct.TYPE_7__* %60)
  br label %298

62:                                               ; preds = %52
  %63 = load i32, i32* @EX_OSERR, align 4
  %64 = load i8*, i8** %8, align 8
  %65 = call i32 (i32, i8*, ...) @errx(i32 %63, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %64)
  br label %66

66:                                               ; preds = %62, %5
  %67 = load i8*, i8** %8, align 8
  store i8* %67, i8** %22, align 8
  store i8* null, i8** %21, align 8
  store i32 1, i32* %17, align 4
  br label %68

68:                                               ; preds = %295, %66
  %69 = load i32, i32* %17, align 4
  %70 = icmp slt i32 %69, -2147483648
  br i1 %70, label %71, label %298

71:                                               ; preds = %68
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %17, align 4
  %74 = and i32 %72, %73
  store i32 %74, i32* %14, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %295

77:                                               ; preds = %71
  %78 = load i32, i32* %14, align 4
  %79 = xor i32 %78, -1
  %80 = load i32, i32* %10, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %10, align 4
  %82 = load i8*, i8** %22, align 8
  %83 = call i8* @strchr(i8* %82, i8 signext 44)
  store i8* %83, i8** %19, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %87

85:                                               ; preds = %77
  %86 = load i8*, i8** %19, align 8
  store i8 0, i8* %86, align 1
  br label %87

87:                                               ; preds = %85, %77
  %88 = load i32, i32* %14, align 4
  switch i32 %88, label %270 [
    i32 128, label %89
    i32 130, label %100
    i32 138, label %111
    i32 129, label %122
    i32 133, label %133
    i32 136, label %144
    i32 134, label %155
    i32 135, label %166
    i32 132, label %177
    i32 137, label %202
    i32 131, label %236
  ]

89:                                               ; preds = %87
  %90 = load i8*, i8** %22, align 8
  %91 = call i8* @strtol(i8* %90, i8** %20, i32 10)
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 11
  store i8* %91, i8** %93, align 8
  %94 = load i8*, i8** %20, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %89
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %21, align 8
  br label %99

99:                                               ; preds = %98, %89
  br label %270

100:                                              ; preds = %87
  %101 = load i8*, i8** %22, align 8
  %102 = call i8* @strtol(i8* %101, i8** %20, i32 10)
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 10
  store i8* %102, i8** %104, align 8
  %105 = load i8*, i8** %20, align 8
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %100
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %21, align 8
  br label %110

110:                                              ; preds = %109, %100
  br label %270

111:                                              ; preds = %87
  %112 = load i8*, i8** %22, align 8
  %113 = call i8* @strtol(i8* %112, i8** %20, i32 10)
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 9
  store i8* %113, i8** %115, align 8
  %116 = load i8*, i8** %20, align 8
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %111
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %21, align 8
  br label %121

121:                                              ; preds = %120, %111
  br label %270

122:                                              ; preds = %87
  %123 = load i8*, i8** %22, align 8
  %124 = call i8* @strtol(i8* %123, i8** %20, i32 10)
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 8
  store i8* %124, i8** %126, align 8
  %127 = load i8*, i8** %20, align 8
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %122
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %21, align 8
  br label %132

132:                                              ; preds = %131, %122
  br label %270

133:                                              ; preds = %87
  %134 = load i8*, i8** %22, align 8
  %135 = call i8* @strtol(i8* %134, i8** %20, i32 10)
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 7
  store i8* %135, i8** %137, align 8
  %138 = load i8*, i8** %20, align 8
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %133
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8** %21, align 8
  br label %143

143:                                              ; preds = %142, %133
  br label %270

144:                                              ; preds = %87
  %145 = load i8*, i8** %22, align 8
  %146 = call i8* @strtol(i8* %145, i8** %20, i32 10)
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 6
  store i8* %146, i8** %148, align 8
  %149 = load i8*, i8** %20, align 8
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %144
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8** %21, align 8
  br label %154

154:                                              ; preds = %153, %144
  br label %270

155:                                              ; preds = %87
  %156 = load i8*, i8** %22, align 8
  %157 = call i8* @strtol(i8* %156, i8** %20, i32 10)
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 5
  store i8* %157, i8** %159, align 8
  %160 = load i8*, i8** %20, align 8
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %155
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8** %21, align 8
  br label %165

165:                                              ; preds = %164, %155
  br label %270

166:                                              ; preds = %87
  %167 = load i8*, i8** %22, align 8
  %168 = call i8* @strtol(i8* %167, i8** %20, i32 10)
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 4
  store i8* %168, i8** %170, align 8
  %171 = load i8*, i8** %20, align 8
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %166
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8** %21, align 8
  br label %176

176:                                              ; preds = %175, %166
  br label %270

177:                                              ; preds = %87
  %178 = load i8*, i8** %22, align 8
  %179 = call i8* @strchr(i8* %178, i8 signext 46)
  %180 = icmp ne i8* %179, null
  br i1 %180, label %181, label %191

181:                                              ; preds = %177
  %182 = load i32, i32* @AF_INET, align 4
  %183 = load i8*, i8** %22, align 8
  %184 = call i32 @inet_pton(i32 %182, i8* %183, i32* %13)
  %185 = icmp eq i32 %184, 1
  br i1 %185, label %186, label %191

186:                                              ; preds = %181
  %187 = load i32, i32* %13, align 4
  %188 = call i32 @ntohl(i32 %187)
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 0
  store i32 %188, i32* %190, align 8
  br label %270

191:                                              ; preds = %181, %177
  %192 = load i8*, i8** %22, align 8
  %193 = call i64 @lookup_host(i8* %192, %struct.in_addr* %24)
  %194 = icmp eq i64 %193, 0
  br i1 %194, label %195, label %201

195:                                              ; preds = %191
  %196 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %24, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @ntohl(i32 %197)
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 0
  store i32 %198, i32* %200, align 8
  br label %270

201:                                              ; preds = %191
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8** %21, align 8
  br label %270

202:                                              ; preds = %87
  %203 = load i8*, i8** %22, align 8
  %204 = load i8, i8* %203, align 1
  %205 = call i32 @isalpha(i8 signext %204)
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %218

207:                                              ; preds = %202
  %208 = load i32, i32* @f_ipdscp, align 4
  %209 = load i8*, i8** %22, align 8
  %210 = call i32 @match_token(i32 %208, i8* %209)
  store i32 %210, i32* %18, align 4
  %211 = icmp ne i32 %210, -1
  br i1 %211, label %212, label %216

212:                                              ; preds = %207
  %213 = load i32, i32* %18, align 4
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 1
  store i32 %213, i32* %215, align 4
  br label %270

216:                                              ; preds = %207
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8** %21, align 8
  br label %217

217:                                              ; preds = %216
  br label %235

218:                                              ; preds = %202
  %219 = load i8*, i8** %22, align 8
  %220 = call i8* @strtol(i8* %219, i8** %20, i32 10)
  %221 = ptrtoint i8* %220 to i32
  %222 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 1
  store i32 %221, i32* %223, align 4
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = icmp sgt i32 %226, 63
  br i1 %227, label %233, label %228

228:                                              ; preds = %218
  %229 = load i8*, i8** %20, align 8
  %230 = load i8, i8* %229, align 1
  %231 = sext i8 %230 to i32
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %234

233:                                              ; preds = %228, %218
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i8** %21, align 8
  br label %234

234:                                              ; preds = %233, %228
  br label %235

235:                                              ; preds = %234, %217
  br label %270

236:                                              ; preds = %87
  %237 = load i8*, i8** %22, align 8
  %238 = call i8* @strchr(i8* %237, i8 signext 58)
  %239 = icmp ne i8* %238, null
  br i1 %239, label %240, label %269

240:                                              ; preds = %236
  %241 = call i32 @memset(%struct.addrinfo* %11, i32 0, i32 16)
  %242 = load i32, i32* @AF_INET6, align 4
  %243 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 2
  store i32 %242, i32* %243, align 4
  %244 = load i32, i32* @AI_NUMERICHOST, align 4
  %245 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 1
  store i32 %244, i32* %245, align 8
  %246 = load i8*, i8** %22, align 8
  %247 = call i32 @getaddrinfo(i8* %246, i32* null, %struct.addrinfo* %11, %struct.addrinfo** %12)
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %268

249:                                              ; preds = %240
  %250 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %251 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = inttoptr i64 %252 to %struct.sockaddr_in6*
  %254 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %257 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %256, i32 0, i32 3
  store i32 %255, i32* %257, align 4
  %258 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %259 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = inttoptr i64 %260 to %struct.sockaddr_in6*
  %262 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %265 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %264, i32 0, i32 2
  store i32 %263, i32* %265, align 8
  %266 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %267 = call i32 @freeaddrinfo(%struct.addrinfo* %266)
  br label %270

268:                                              ; preds = %240
  br label %269

269:                                              ; preds = %268, %236
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8** %21, align 8
  br label %270

270:                                              ; preds = %87, %269, %249, %235, %212, %201, %195, %186, %176, %165, %154, %143, %132, %121, %110, %99
  %271 = load i8*, i8** %21, align 8
  %272 = icmp ne i8* %271, null
  br i1 %272, label %273, label %278

273:                                              ; preds = %270
  %274 = load i32, i32* @EX_USAGE, align 4
  %275 = load i8*, i8** %22, align 8
  %276 = load i8*, i8** %21, align 8
  %277 = call i32 (i32, i8*, ...) @errx(i32 %274, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0), i8* %275, i8* %276)
  br label %278

278:                                              ; preds = %273, %270
  %279 = load i8*, i8** %19, align 8
  %280 = icmp ne i8* %279, null
  br i1 %280, label %281, label %284

281:                                              ; preds = %278
  %282 = load i8*, i8** %19, align 8
  %283 = getelementptr inbounds i8, i8* %282, i32 1
  store i8* %283, i8** %19, align 8
  store i8 44, i8* %282, align 1
  br label %284

284:                                              ; preds = %281, %278
  %285 = load i8*, i8** %19, align 8
  store i8* %285, i8** %22, align 8
  %286 = icmp ne i8* %285, null
  br i1 %286, label %287, label %288

287:                                              ; preds = %284
  br label %295

288:                                              ; preds = %284
  %289 = load i32, i32* %10, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %294

291:                                              ; preds = %288
  %292 = load i32, i32* @EX_USAGE, align 4
  %293 = call i32 (i32, i8*, ...) @errx(i32 %292, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0))
  br label %294

294:                                              ; preds = %291, %288
  br label %295

295:                                              ; preds = %294, %287, %76
  %296 = load i32, i32* %17, align 4
  %297 = mul nsw i32 %296, 2
  store i32 %297, i32* %17, align 4
  br label %68

298:                                              ; preds = %38, %47, %56, %68
  ret void
}

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @set_legacy_value(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @inet_pton(i32, i8*, i32*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i64 @lookup_host(i8*, %struct.in_addr*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @strtol(i8*, i8**, i32) #1

declare dso_local i32 @isalpha(i8 signext) #1

declare dso_local i32 @match_token(i32, i8*) #1

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i32 @getaddrinfo(i8*, i32*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
