; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_dns.c_be_getaddrinfo_server_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_dns.c_be_getaddrinfo_server_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdns_server_request = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32, i32, i8* }
%struct.in_addr = type { i8* }
%struct.in6_addr = type { i32* }

@.str = private unnamed_addr constant [31 x i8] c"Got question about %s, type=%d\00", align 1
@EVDNS_TYPE_A = common dso_local global i32 0, align 4
@EVDNS_CLASS_INET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"nobodaddy.example.com\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"nosuchplace.example.com\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"both.example.com\00", align 1
@EVDNS_TYPE_AAAA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"both-canonical.example.com\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"v4only.example.com\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"v4assert.example.com\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Got an AAAA request for v4assert\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"v6only.example.com\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"v6assert.example.com\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"Got a A request for v6assert\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"v6timeout.example.com\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"v4timeout.example.com\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"v6timeout-nonexist.example.com\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"all-timeout.example.com\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"Got weird request for %s\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"answering\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"saying nexist.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evdns_server_request*, i8*)* @be_getaddrinfo_server_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_getaddrinfo_server_cb(%struct.evdns_server_request* %0, i8* %1) #0 {
  %3 = alloca %struct.evdns_server_request*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.in_addr, align 8
  %12 = alloca %struct.in6_addr, align 8
  store %struct.evdns_server_request* %0, %struct.evdns_server_request** %3, align 8
  store i8* %1, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 4
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %281, %2
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.evdns_server_request*, %struct.evdns_server_request** %3, align 8
  %21 = getelementptr inbounds %struct.evdns_server_request, %struct.evdns_server_request* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %284

24:                                               ; preds = %18
  %25 = load %struct.evdns_server_request*, %struct.evdns_server_request** %3, align 8
  %26 = getelementptr inbounds %struct.evdns_server_request, %struct.evdns_server_request* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %27, i64 %29
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %8, align 4
  %34 = load %struct.evdns_server_request*, %struct.evdns_server_request** %3, align 8
  %35 = getelementptr inbounds %struct.evdns_server_request, %struct.evdns_server_request* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %36, i64 %38
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %9, align 4
  %43 = load %struct.evdns_server_request*, %struct.evdns_server_request** %3, align 8
  %44 = getelementptr inbounds %struct.evdns_server_request, %struct.evdns_server_request* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %45, i64 %47
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i8*, i8** %50, align 8
  store i8* %51, i8** %10, align 8
  %52 = call i32 @memset(%struct.in6_addr* %12, i32 0, i32 8)
  %53 = load i8*, i8** %10, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to i8*
  %57 = call i32 @TT_BLATHER(i8* %56)
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @EVDNS_TYPE_A, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %76

61:                                               ; preds = %24
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @EVDNS_CLASS_INET, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %76

65:                                               ; preds = %61
  %66 = load i8*, i8** %10, align 8
  %67 = call i32 @evutil_ascii_strcasecmp(i8* %66, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %65
  %70 = call i8* @htonl(i32 2130706433)
  %71 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %11, i32 0, i32 0
  store i8* %70, i8** %71, align 8
  %72 = load %struct.evdns_server_request*, %struct.evdns_server_request** %3, align 8
  %73 = load i8*, i8** %10, align 8
  %74 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %11, i32 0, i32 0
  %75 = call i32 @evdns_server_request_add_a_reply(%struct.evdns_server_request* %72, i8* %73, i32 1, i8** %74, i32 2000)
  store i32 1, i32* %7, align 4
  br label %280

76:                                               ; preds = %65, %61, %24
  %77 = load i8*, i8** %10, align 8
  %78 = call i32 @evutil_ascii_strcasecmp(i8* %77, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %76
  br label %279

81:                                               ; preds = %76
  %82 = load i8*, i8** %10, align 8
  %83 = call i32 @evutil_ascii_strcasecmp(i8* %82, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %122, label %85

85:                                               ; preds = %81
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* @EVDNS_TYPE_A, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %85
  %90 = call i8* @htonl(i32 1347428384)
  %91 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %11, i32 0, i32 0
  store i8* %90, i8** %91, align 8
  %92 = load %struct.evdns_server_request*, %struct.evdns_server_request** %3, align 8
  %93 = load i8*, i8** %10, align 8
  %94 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %11, i32 0, i32 0
  %95 = call i32 @evdns_server_request_add_a_reply(%struct.evdns_server_request* %92, i8* %93, i32 1, i8** %94, i32 2000)
  store i32 1, i32* %7, align 4
  br label %118

96:                                               ; preds = %85
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* @EVDNS_TYPE_AAAA, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %117

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %12, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  store i32 128, i32* %103, align 4
  %104 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %12, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 1
  store i32 255, i32* %106, align 4
  %107 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %12, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 14
  store i32 187, i32* %109, align 4
  %110 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %12, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 15
  store i32 187, i32* %112, align 4
  %113 = load %struct.evdns_server_request*, %struct.evdns_server_request** %3, align 8
  %114 = load i8*, i8** %10, align 8
  %115 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %12, i32 0, i32 0
  %116 = call i32 @evdns_server_request_add_aaaa_reply(%struct.evdns_server_request* %113, i8* %114, i32 1, i32** %115, i32 2000)
  store i32 1, i32* %7, align 4
  br label %117

117:                                              ; preds = %100, %96
  br label %118

118:                                              ; preds = %117, %89
  %119 = load %struct.evdns_server_request*, %struct.evdns_server_request** %3, align 8
  %120 = load i8*, i8** %10, align 8
  %121 = call i32 @evdns_server_request_add_cname_reply(%struct.evdns_server_request* %119, i8* %120, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 1000)
  br label %278

122:                                              ; preds = %81
  %123 = load i8*, i8** %10, align 8
  %124 = call i32 @evutil_ascii_strcasecmp(i8* %123, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %122
  %127 = load i8*, i8** %10, align 8
  %128 = call i32 @evutil_ascii_strcasecmp(i8* %127, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %149, label %130

130:                                              ; preds = %126, %122
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* @EVDNS_TYPE_A, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %141

134:                                              ; preds = %130
  %135 = call i8* @htonl(i32 305419896)
  %136 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %11, i32 0, i32 0
  store i8* %135, i8** %136, align 8
  %137 = load %struct.evdns_server_request*, %struct.evdns_server_request** %3, align 8
  %138 = load i8*, i8** %10, align 8
  %139 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %11, i32 0, i32 0
  %140 = call i32 @evdns_server_request_add_a_reply(%struct.evdns_server_request* %137, i8* %138, i32 1, i8** %139, i32 2000)
  store i32 1, i32* %7, align 4
  br label %148

141:                                              ; preds = %130
  %142 = load i8*, i8** %10, align 8
  %143 = call i32 @evutil_ascii_strcasecmp(i8* %142, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %147, label %145

145:                                              ; preds = %141
  %146 = call i32 @TT_FAIL(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  br label %147

147:                                              ; preds = %145, %141
  br label %148

148:                                              ; preds = %147, %134
  br label %277

149:                                              ; preds = %126
  %150 = load i8*, i8** %10, align 8
  %151 = call i32 @evutil_ascii_strcasecmp(i8* %150, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %149
  %154 = load i8*, i8** %10, align 8
  %155 = call i32 @evutil_ascii_strcasecmp(i8* %154, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %186, label %157

157:                                              ; preds = %153, %149
  %158 = load i32, i32* %8, align 4
  %159 = load i32, i32* @EVDNS_TYPE_AAAA, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %178

161:                                              ; preds = %157
  %162 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %12, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 0
  store i32 11, i32* %164, align 4
  %165 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %12, i32 0, i32 0
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 1
  store i32 11, i32* %167, align 4
  %168 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %12, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 14
  store i32 240, i32* %170, align 4
  %171 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %12, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 15
  store i32 13, i32* %173, align 4
  %174 = load %struct.evdns_server_request*, %struct.evdns_server_request** %3, align 8
  %175 = load i8*, i8** %10, align 8
  %176 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %12, i32 0, i32 0
  %177 = call i32 @evdns_server_request_add_aaaa_reply(%struct.evdns_server_request* %174, i8* %175, i32 1, i32** %176, i32 2000)
  store i32 1, i32* %7, align 4
  br label %185

178:                                              ; preds = %157
  %179 = load i8*, i8** %10, align 8
  %180 = call i32 @evutil_ascii_strcasecmp(i8* %179, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %184, label %182

182:                                              ; preds = %178
  %183 = call i32 @TT_FAIL(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0))
  br label %184

184:                                              ; preds = %182, %178
  br label %185

185:                                              ; preds = %184, %161
  br label %276

186:                                              ; preds = %153
  %187 = load i8*, i8** %10, align 8
  %188 = call i32 @evutil_ascii_strcasecmp(i8* %187, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %210, label %190

190:                                              ; preds = %186
  %191 = load i32, i32* %8, align 4
  %192 = load i32, i32* @EVDNS_TYPE_A, align 4
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %194, label %201

194:                                              ; preds = %190
  %195 = call i8* @htonl(i32 -1412567295)
  %196 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %11, i32 0, i32 0
  store i8* %195, i8** %196, align 8
  %197 = load %struct.evdns_server_request*, %struct.evdns_server_request** %3, align 8
  %198 = load i8*, i8** %10, align 8
  %199 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %11, i32 0, i32 0
  %200 = call i32 @evdns_server_request_add_a_reply(%struct.evdns_server_request* %197, i8* %198, i32 1, i8** %199, i32 2000)
  store i32 1, i32* %7, align 4
  br label %209

201:                                              ; preds = %190
  %202 = load i32, i32* %8, align 4
  %203 = load i32, i32* @EVDNS_TYPE_AAAA, align 4
  %204 = icmp eq i32 %202, %203
  br i1 %204, label %205, label %208

205:                                              ; preds = %201
  %206 = load %struct.evdns_server_request*, %struct.evdns_server_request** %3, align 8
  %207 = call i32 @evdns_server_request_drop(%struct.evdns_server_request* %206)
  br label %295

208:                                              ; preds = %201
  br label %209

209:                                              ; preds = %208, %194
  br label %275

210:                                              ; preds = %186
  %211 = load i8*, i8** %10, align 8
  %212 = call i32 @evutil_ascii_strcasecmp(i8* %211, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0))
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %244, label %214

214:                                              ; preds = %210
  %215 = load i32, i32* %8, align 4
  %216 = load i32, i32* @EVDNS_TYPE_AAAA, align 4
  %217 = icmp eq i32 %215, %216
  br i1 %217, label %218, label %235

218:                                              ; preds = %214
  %219 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %12, i32 0, i32 0
  %220 = load i32*, i32** %219, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 0
  store i32 10, i32* %221, align 4
  %222 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %12, i32 0, i32 0
  %223 = load i32*, i32** %222, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 1
  store i32 10, i32* %224, align 4
  %225 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %12, i32 0, i32 0
  %226 = load i32*, i32** %225, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 14
  store i32 255, i32* %227, align 4
  %228 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %12, i32 0, i32 0
  %229 = load i32*, i32** %228, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 15
  store i32 1, i32* %230, align 4
  %231 = load %struct.evdns_server_request*, %struct.evdns_server_request** %3, align 8
  %232 = load i8*, i8** %10, align 8
  %233 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %12, i32 0, i32 0
  %234 = call i32 @evdns_server_request_add_aaaa_reply(%struct.evdns_server_request* %231, i8* %232, i32 1, i32** %233, i32 2000)
  store i32 1, i32* %7, align 4
  br label %243

235:                                              ; preds = %214
  %236 = load i32, i32* %8, align 4
  %237 = load i32, i32* @EVDNS_TYPE_A, align 4
  %238 = icmp eq i32 %236, %237
  br i1 %238, label %239, label %242

239:                                              ; preds = %235
  %240 = load %struct.evdns_server_request*, %struct.evdns_server_request** %3, align 8
  %241 = call i32 @evdns_server_request_drop(%struct.evdns_server_request* %240)
  br label %295

242:                                              ; preds = %235
  br label %243

243:                                              ; preds = %242, %218
  br label %274

244:                                              ; preds = %210
  %245 = load i8*, i8** %10, align 8
  %246 = call i32 @evutil_ascii_strcasecmp(i8* %245, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0))
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %262, label %248

248:                                              ; preds = %244
  %249 = load i32, i32* %8, align 4
  %250 = load i32, i32* @EVDNS_TYPE_A, align 4
  %251 = icmp eq i32 %249, %250
  br i1 %251, label %252, label %253

252:                                              ; preds = %248
  br label %261

253:                                              ; preds = %248
  %254 = load i32, i32* %8, align 4
  %255 = load i32, i32* @EVDNS_TYPE_AAAA, align 4
  %256 = icmp eq i32 %254, %255
  br i1 %256, label %257, label %260

257:                                              ; preds = %253
  %258 = load %struct.evdns_server_request*, %struct.evdns_server_request** %3, align 8
  %259 = call i32 @evdns_server_request_drop(%struct.evdns_server_request* %258)
  br label %295

260:                                              ; preds = %253
  br label %261

261:                                              ; preds = %260, %252
  br label %273

262:                                              ; preds = %244
  %263 = load i8*, i8** %10, align 8
  %264 = call i32 @evutil_ascii_strcasecmp(i8* %263, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0))
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %269, label %266

266:                                              ; preds = %262
  %267 = load %struct.evdns_server_request*, %struct.evdns_server_request** %3, align 8
  %268 = call i32 @evdns_server_request_drop(%struct.evdns_server_request* %267)
  br label %295

269:                                              ; preds = %262
  %270 = load i8*, i8** %10, align 8
  %271 = call i32 @TT_GRIPE(i8* %270)
  br label %272

272:                                              ; preds = %269
  br label %273

273:                                              ; preds = %272, %261
  br label %274

274:                                              ; preds = %273, %243
  br label %275

275:                                              ; preds = %274, %209
  br label %276

276:                                              ; preds = %275, %185
  br label %277

277:                                              ; preds = %276, %148
  br label %278

278:                                              ; preds = %277, %118
  br label %279

279:                                              ; preds = %278, %80
  br label %280

280:                                              ; preds = %279, %69
  br label %281

281:                                              ; preds = %280
  %282 = load i32, i32* %5, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %5, align 4
  br label %18

284:                                              ; preds = %18
  %285 = load i32, i32* %7, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %291

287:                                              ; preds = %284
  %288 = call i32 @TT_BLATHER(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0))
  %289 = load %struct.evdns_server_request*, %struct.evdns_server_request** %3, align 8
  %290 = call i32 @evdns_server_request_respond(%struct.evdns_server_request* %289, i32 0)
  br label %295

291:                                              ; preds = %284
  %292 = call i32 @TT_BLATHER(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0))
  %293 = load %struct.evdns_server_request*, %struct.evdns_server_request** %3, align 8
  %294 = call i32 @evdns_server_request_respond(%struct.evdns_server_request* %293, i32 3)
  br label %295

295:                                              ; preds = %205, %239, %257, %266, %291, %287
  ret void
}

declare dso_local i32 @memset(%struct.in6_addr*, i32, i32) #1

declare dso_local i32 @TT_BLATHER(i8*) #1

declare dso_local i32 @evutil_ascii_strcasecmp(i8*, i8*) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @evdns_server_request_add_a_reply(%struct.evdns_server_request*, i8*, i32, i8**, i32) #1

declare dso_local i32 @evdns_server_request_add_aaaa_reply(%struct.evdns_server_request*, i8*, i32, i32**, i32) #1

declare dso_local i32 @evdns_server_request_add_cname_reply(%struct.evdns_server_request*, i8*, i8*, i32) #1

declare dso_local i32 @TT_FAIL(i8*) #1

declare dso_local i32 @evdns_server_request_drop(%struct.evdns_server_request*) #1

declare dso_local i32 @TT_GRIPE(i8*) #1

declare dso_local i32 @evdns_server_request_respond(%struct.evdns_server_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
