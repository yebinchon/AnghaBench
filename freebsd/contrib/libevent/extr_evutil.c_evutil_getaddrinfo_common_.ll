; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evutil.c_evutil_getaddrinfo_common_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evutil.c_evutil_getaddrinfo_common_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evutil_addrinfo = type { i64, i32, i32 }
%struct.sockaddr_in6 = type { i8*, i8*, %struct.TYPE_2__, i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32 }
%struct.sockaddr_in = type { i8*, i8*, %struct.TYPE_2__, i8*, i8*, %struct.TYPE_2__ }
%struct.sockaddr = type { i32 }

@EVUTIL_EAI_NONAME = common dso_local global i32 0, align 4
@PF_UNSPEC = common dso_local global i64 0, align 8
@PF_INET = common dso_local global i64 0, align 8
@PF_INET6 = common dso_local global i64 0, align 8
@EVUTIL_EAI_FAMILY = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i8* null, align 8
@EVUTIL_AI_PASSIVE = common dso_local global i32 0, align 4
@EVUTIL_EAI_MEMORY = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i8* null, align 8
@EVUTIL_AI_NUMERICHOST = common dso_local global i32 0, align 4
@EVUTIL_EAI_NEED_RESOLVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evutil_getaddrinfo_common_(i8* %0, i8* %1, %struct.evutil_addrinfo* %2, %struct.evutil_addrinfo** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.evutil_addrinfo*, align 8
  %10 = alloca %struct.evutil_addrinfo**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.evutil_addrinfo*, align 8
  %15 = alloca %struct.evutil_addrinfo*, align 8
  %16 = alloca %struct.sockaddr_in6, align 8
  %17 = alloca %struct.sockaddr_in, align 8
  %18 = alloca %struct.sockaddr_in6, align 8
  %19 = alloca %struct.sockaddr_in, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.evutil_addrinfo* %2, %struct.evutil_addrinfo** %9, align 8
  store %struct.evutil_addrinfo** %3, %struct.evutil_addrinfo*** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %5
  %23 = load i8*, i8** %8, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32, i32* @EVUTIL_EAI_NONAME, align 4
  store i32 %26, i32* %6, align 4
  br label %234

27:                                               ; preds = %22, %5
  %28 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %9, align 8
  %29 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @PF_UNSPEC, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %27
  %34 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %9, align 8
  %35 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @PF_INET, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %33
  %40 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %9, align 8
  %41 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @PF_INET6, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @EVUTIL_EAI_FAMILY, align 4
  store i32 %46, i32* %6, align 4
  br label %234

47:                                               ; preds = %39, %33, %27
  %48 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %9, align 8
  %49 = call i32 @evutil_getaddrinfo_infer_protocols(%struct.evutil_addrinfo* %48)
  %50 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %9, align 8
  %51 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @evutil_unparse_protoname(i32 %52)
  store i8* %53, i8** %13, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %66

56:                                               ; preds = %47
  %57 = load i8*, i8** %8, align 8
  %58 = load i8*, i8** %13, align 8
  %59 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %9, align 8
  %60 = call i32 @evutil_parse_servname(i8* %57, i8* %58, %struct.evutil_addrinfo* %59)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = load i32, i32* @EVUTIL_EAI_NONAME, align 4
  store i32 %64, i32* %6, align 4
  br label %234

65:                                               ; preds = %56
  br label %66

66:                                               ; preds = %65, %47
  %67 = load i8*, i8** %7, align 8
  %68 = icmp eq i8* %67, null
  br i1 %68, label %69, label %148

69:                                               ; preds = %66
  store %struct.evutil_addrinfo* null, %struct.evutil_addrinfo** %14, align 8
  store %struct.evutil_addrinfo* null, %struct.evutil_addrinfo** %15, align 8
  %70 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %9, align 8
  %71 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @PF_INET, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %103

75:                                               ; preds = %69
  %76 = call i32 @memset(%struct.sockaddr_in6* %16, i32 0, i32 64)
  %77 = load i8*, i8** @AF_INET6, align 8
  %78 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %16, i32 0, i32 4
  store i8* %77, i8** %78, align 8
  %79 = load i32, i32* %12, align 4
  %80 = call i8* @htons(i32 %79)
  %81 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %16, i32 0, i32 3
  store i8* %80, i8** %81, align 8
  %82 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %9, align 8
  %83 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @EVUTIL_AI_PASSIVE, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %75
  br label %94

89:                                               ; preds = %75
  %90 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %16, i32 0, i32 5
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 15
  store i32 1, i32* %93, align 4
  br label %94

94:                                               ; preds = %89, %88
  %95 = bitcast %struct.sockaddr_in6* %16 to %struct.sockaddr*
  %96 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %9, align 8
  %97 = call %struct.evutil_addrinfo* @evutil_new_addrinfo_(%struct.sockaddr* %95, i32 64, %struct.evutil_addrinfo* %96)
  store %struct.evutil_addrinfo* %97, %struct.evutil_addrinfo** %15, align 8
  %98 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %15, align 8
  %99 = icmp ne %struct.evutil_addrinfo* %98, null
  br i1 %99, label %102, label %100

100:                                              ; preds = %94
  %101 = load i32, i32* @EVUTIL_EAI_MEMORY, align 4
  store i32 %101, i32* %6, align 4
  br label %234

102:                                              ; preds = %94
  br label %103

103:                                              ; preds = %102, %69
  %104 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %9, align 8
  %105 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @PF_INET6, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %143

109:                                              ; preds = %103
  %110 = bitcast %struct.sockaddr_in* %17 to %struct.sockaddr_in6*
  %111 = call i32 @memset(%struct.sockaddr_in6* %110, i32 0, i32 64)
  %112 = load i8*, i8** @AF_INET, align 8
  %113 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 1
  store i8* %112, i8** %113, align 8
  %114 = load i32, i32* %12, align 4
  %115 = call i8* @htons(i32 %114)
  %116 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 0
  store i8* %115, i8** %116, align 8
  %117 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %9, align 8
  %118 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @EVUTIL_AI_PASSIVE, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %109
  br label %128

124:                                              ; preds = %109
  %125 = call i32 @htonl(i32 2130706433)
  %126 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 8
  br label %128

128:                                              ; preds = %124, %123
  %129 = bitcast %struct.sockaddr_in* %17 to %struct.sockaddr*
  %130 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %9, align 8
  %131 = call %struct.evutil_addrinfo* @evutil_new_addrinfo_(%struct.sockaddr* %129, i32 64, %struct.evutil_addrinfo* %130)
  store %struct.evutil_addrinfo* %131, %struct.evutil_addrinfo** %14, align 8
  %132 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %14, align 8
  %133 = icmp ne %struct.evutil_addrinfo* %132, null
  br i1 %133, label %142, label %134

134:                                              ; preds = %128
  %135 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %15, align 8
  %136 = icmp ne %struct.evutil_addrinfo* %135, null
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %15, align 8
  %139 = call i32 @evutil_freeaddrinfo(%struct.evutil_addrinfo* %138)
  br label %140

140:                                              ; preds = %137, %134
  %141 = load i32, i32* @EVUTIL_EAI_MEMORY, align 4
  store i32 %141, i32* %6, align 4
  br label %234

142:                                              ; preds = %128
  br label %143

143:                                              ; preds = %142, %103
  %144 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %14, align 8
  %145 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %15, align 8
  %146 = call %struct.evutil_addrinfo* @evutil_addrinfo_append_(%struct.evutil_addrinfo* %144, %struct.evutil_addrinfo* %145)
  %147 = load %struct.evutil_addrinfo**, %struct.evutil_addrinfo*** %10, align 8
  store %struct.evutil_addrinfo* %146, %struct.evutil_addrinfo** %147, align 8
  store i32 0, i32* %6, align 4
  br label %234

148:                                              ; preds = %66
  %149 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %9, align 8
  %150 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @PF_INET6, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %160, label %154

154:                                              ; preds = %148
  %155 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %9, align 8
  %156 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @PF_UNSPEC, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %184

160:                                              ; preds = %154, %148
  %161 = call i32 @memset(%struct.sockaddr_in6* %18, i32 0, i32 64)
  %162 = load i8*, i8** @AF_INET6, align 8
  %163 = load i8*, i8** %7, align 8
  %164 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %18, i32 0, i32 5
  %165 = call i32 @evutil_inet_pton(i8* %162, i8* %163, %struct.TYPE_2__* %164)
  %166 = icmp eq i32 1, %165
  br i1 %166, label %167, label %183

167:                                              ; preds = %160
  %168 = load i8*, i8** @AF_INET6, align 8
  %169 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %18, i32 0, i32 4
  store i8* %168, i8** %169, align 8
  %170 = load i32, i32* %12, align 4
  %171 = call i8* @htons(i32 %170)
  %172 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %18, i32 0, i32 3
  store i8* %171, i8** %172, align 8
  %173 = bitcast %struct.sockaddr_in6* %18 to %struct.sockaddr*
  %174 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %9, align 8
  %175 = call %struct.evutil_addrinfo* @evutil_new_addrinfo_(%struct.sockaddr* %173, i32 64, %struct.evutil_addrinfo* %174)
  %176 = load %struct.evutil_addrinfo**, %struct.evutil_addrinfo*** %10, align 8
  store %struct.evutil_addrinfo* %175, %struct.evutil_addrinfo** %176, align 8
  %177 = load %struct.evutil_addrinfo**, %struct.evutil_addrinfo*** %10, align 8
  %178 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %177, align 8
  %179 = icmp ne %struct.evutil_addrinfo* %178, null
  br i1 %179, label %182, label %180

180:                                              ; preds = %167
  %181 = load i32, i32* @EVUTIL_EAI_MEMORY, align 4
  store i32 %181, i32* %6, align 4
  br label %234

182:                                              ; preds = %167
  store i32 0, i32* %6, align 4
  br label %234

183:                                              ; preds = %160
  br label %184

184:                                              ; preds = %183, %154
  %185 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %9, align 8
  %186 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @PF_INET, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %196, label %190

190:                                              ; preds = %184
  %191 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %9, align 8
  %192 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @PF_UNSPEC, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %221

196:                                              ; preds = %190, %184
  %197 = bitcast %struct.sockaddr_in* %19 to %struct.sockaddr_in6*
  %198 = call i32 @memset(%struct.sockaddr_in6* %197, i32 0, i32 64)
  %199 = load i8*, i8** @AF_INET, align 8
  %200 = load i8*, i8** %7, align 8
  %201 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %19, i32 0, i32 2
  %202 = call i32 @evutil_inet_pton(i8* %199, i8* %200, %struct.TYPE_2__* %201)
  %203 = icmp eq i32 1, %202
  br i1 %203, label %204, label %220

204:                                              ; preds = %196
  %205 = load i8*, i8** @AF_INET, align 8
  %206 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %19, i32 0, i32 1
  store i8* %205, i8** %206, align 8
  %207 = load i32, i32* %12, align 4
  %208 = call i8* @htons(i32 %207)
  %209 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %19, i32 0, i32 0
  store i8* %208, i8** %209, align 8
  %210 = bitcast %struct.sockaddr_in* %19 to %struct.sockaddr*
  %211 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %9, align 8
  %212 = call %struct.evutil_addrinfo* @evutil_new_addrinfo_(%struct.sockaddr* %210, i32 64, %struct.evutil_addrinfo* %211)
  %213 = load %struct.evutil_addrinfo**, %struct.evutil_addrinfo*** %10, align 8
  store %struct.evutil_addrinfo* %212, %struct.evutil_addrinfo** %213, align 8
  %214 = load %struct.evutil_addrinfo**, %struct.evutil_addrinfo*** %10, align 8
  %215 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %214, align 8
  %216 = icmp ne %struct.evutil_addrinfo* %215, null
  br i1 %216, label %219, label %217

217:                                              ; preds = %204
  %218 = load i32, i32* @EVUTIL_EAI_MEMORY, align 4
  store i32 %218, i32* %6, align 4
  br label %234

219:                                              ; preds = %204
  store i32 0, i32* %6, align 4
  br label %234

220:                                              ; preds = %196
  br label %221

221:                                              ; preds = %220, %190
  %222 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %9, align 8
  %223 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @EVUTIL_AI_NUMERICHOST, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %230

228:                                              ; preds = %221
  %229 = load i32, i32* @EVUTIL_EAI_NONAME, align 4
  store i32 %229, i32* %6, align 4
  br label %234

230:                                              ; preds = %221
  %231 = load i32, i32* %12, align 4
  %232 = load i32*, i32** %11, align 8
  store i32 %231, i32* %232, align 4
  %233 = load i32, i32* @EVUTIL_EAI_NEED_RESOLVE, align 4
  store i32 %233, i32* %6, align 4
  br label %234

234:                                              ; preds = %230, %228, %219, %217, %182, %180, %143, %140, %100, %63, %45, %25
  %235 = load i32, i32* %6, align 4
  ret i32 %235
}

declare dso_local i32 @evutil_getaddrinfo_infer_protocols(%struct.evutil_addrinfo*) #1

declare dso_local i8* @evutil_unparse_protoname(i32) #1

declare dso_local i32 @evutil_parse_servname(i8*, i8*, %struct.evutil_addrinfo*) #1

declare dso_local i32 @memset(%struct.sockaddr_in6*, i32, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local %struct.evutil_addrinfo* @evutil_new_addrinfo_(%struct.sockaddr*, i32, %struct.evutil_addrinfo*) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @evutil_freeaddrinfo(%struct.evutil_addrinfo*) #1

declare dso_local %struct.evutil_addrinfo* @evutil_addrinfo_append_(%struct.evutil_addrinfo*, %struct.evutil_addrinfo*) #1

declare dso_local i32 @evutil_inet_pton(i8*, i8*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
