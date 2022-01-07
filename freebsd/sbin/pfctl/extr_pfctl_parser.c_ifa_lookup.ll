; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_parser.c_ifa_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_parser.c_ifa_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node_host = type { i64, i32, i64, i8*, %struct.node_host*, %struct.node_host*, %struct.TYPE_9__, %struct.TYPE_10__, %struct.TYPE_10__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_10__, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"self\00", align 1
@IFNAMSIZ = common dso_local global i32 0, align 4
@iftab = common dso_local global %struct.node_host* null, align 8
@PFI_AFLAG_BROADCAST = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@IFF_BROADCAST = common dso_local global i32 0, align 4
@PFI_AFLAG_PEER = common dso_local global i32 0, align 4
@IFF_POINTOPOINT = common dso_local global i32 0, align 4
@PFI_AFLAG_NETWORK = common dso_local global i32 0, align 4
@PFI_AFLAG_NOALIAS = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"address: calloc\00", align 1
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@IFF_LINK1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.node_host* @ifa_lookup(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.node_host*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.node_host*, align 8
  %7 = alloca %struct.node_host*, align 8
  %8 = alloca %struct.node_host*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.node_host* null, %struct.node_host** %6, align 8
  store %struct.node_host* null, %struct.node_host** %7, align 8
  store %struct.node_host* null, %struct.node_host** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i8* null, i8** %11, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.node_host* @ifa_grouplookup(i8* %12, i32 %13)
  store %struct.node_host* %14, %struct.node_host** %7, align 8
  %15 = icmp ne %struct.node_host* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load %struct.node_host*, %struct.node_host** %7, align 8
  store %struct.node_host* %17, %struct.node_host** %3, align 8
  br label %308

18:                                               ; preds = %2
  %19 = load i8*, i8** %4, align 8
  %20 = load i32, i32* @IFNAMSIZ, align 4
  %21 = call i32 @strncmp(i8* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store i8* null, i8** %4, align 8
  br label %24

24:                                               ; preds = %23, %18
  %25 = load %struct.node_host*, %struct.node_host** @iftab, align 8
  %26 = icmp eq %struct.node_host* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = call i32 (...) @ifa_load()
  br label %29

29:                                               ; preds = %27, %24
  %30 = load %struct.node_host*, %struct.node_host** @iftab, align 8
  store %struct.node_host* %30, %struct.node_host** %6, align 8
  br label %31

31:                                               ; preds = %302, %29
  %32 = load %struct.node_host*, %struct.node_host** %6, align 8
  %33 = icmp ne %struct.node_host* %32, null
  br i1 %33, label %34, label %306

34:                                               ; preds = %31
  %35 = load i8*, i8** %4, align 8
  %36 = load %struct.node_host*, %struct.node_host** %6, align 8
  %37 = call i64 @ifa_skip_if(i8* %35, %struct.node_host* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %302

40:                                               ; preds = %34
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @PFI_AFLAG_BROADCAST, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load %struct.node_host*, %struct.node_host** %6, align 8
  %47 = getelementptr inbounds %struct.node_host, %struct.node_host* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @AF_INET, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %302

52:                                               ; preds = %45, %40
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @PFI_AFLAG_BROADCAST, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = load %struct.node_host*, %struct.node_host** %6, align 8
  %59 = getelementptr inbounds %struct.node_host, %struct.node_host* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @IFF_BROADCAST, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %57
  br label %302

65:                                               ; preds = %57, %52
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @PFI_AFLAG_PEER, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %65
  %71 = load %struct.node_host*, %struct.node_host** %6, align 8
  %72 = getelementptr inbounds %struct.node_host, %struct.node_host* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @IFF_POINTOPOINT, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %70
  br label %302

78:                                               ; preds = %70, %65
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @PFI_AFLAG_NETWORK, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load %struct.node_host*, %struct.node_host** %6, align 8
  %85 = getelementptr inbounds %struct.node_host, %struct.node_host* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = icmp sgt i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  br label %302

89:                                               ; preds = %83, %78
  %90 = load i8*, i8** %11, align 8
  %91 = icmp eq i8* %90, null
  br i1 %91, label %99, label %92

92:                                               ; preds = %89
  %93 = load i8*, i8** %11, align 8
  %94 = load %struct.node_host*, %struct.node_host** %6, align 8
  %95 = getelementptr inbounds %struct.node_host, %struct.node_host* %94, i32 0, i32 3
  %96 = load i8*, i8** %95, align 8
  %97 = call i64 @strcmp(i8* %93, i8* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %92, %89
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %100

100:                                              ; preds = %99, %92
  %101 = load %struct.node_host*, %struct.node_host** %6, align 8
  %102 = getelementptr inbounds %struct.node_host, %struct.node_host* %101, i32 0, i32 3
  %103 = load i8*, i8** %102, align 8
  store i8* %103, i8** %11, align 8
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* @PFI_AFLAG_NOALIAS, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %118

108:                                              ; preds = %100
  %109 = load %struct.node_host*, %struct.node_host** %6, align 8
  %110 = getelementptr inbounds %struct.node_host, %struct.node_host* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @AF_INET, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %108
  %115 = load i32, i32* %9, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  br label %302

118:                                              ; preds = %114, %108, %100
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* @PFI_AFLAG_NOALIAS, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %139

123:                                              ; preds = %118
  %124 = load %struct.node_host*, %struct.node_host** %6, align 8
  %125 = getelementptr inbounds %struct.node_host, %struct.node_host* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @AF_INET6, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %139

129:                                              ; preds = %123
  %130 = load %struct.node_host*, %struct.node_host** %6, align 8
  %131 = getelementptr inbounds %struct.node_host, %struct.node_host* %130, i32 0, i32 6
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  %136 = call i64 @IN6_IS_ADDR_LINKLOCAL(i32* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %129
  br label %302

139:                                              ; preds = %129, %123, %118
  %140 = load i32, i32* %5, align 4
  %141 = load i32, i32* @PFI_AFLAG_NOALIAS, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %154

144:                                              ; preds = %139
  %145 = load %struct.node_host*, %struct.node_host** %6, align 8
  %146 = getelementptr inbounds %struct.node_host, %struct.node_host* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @AF_INET6, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %154

150:                                              ; preds = %144
  %151 = load i32, i32* %10, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %150
  br label %302

154:                                              ; preds = %150, %144, %139
  %155 = load %struct.node_host*, %struct.node_host** %6, align 8
  %156 = getelementptr inbounds %struct.node_host, %struct.node_host* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @AF_INET, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %154
  store i32 1, i32* %9, align 4
  br label %162

161:                                              ; preds = %154
  store i32 1, i32* %10, align 4
  br label %162

162:                                              ; preds = %161, %160
  %163 = call %struct.node_host* @calloc(i32 1, i32 64)
  store %struct.node_host* %163, %struct.node_host** %8, align 8
  %164 = load %struct.node_host*, %struct.node_host** %8, align 8
  %165 = icmp eq %struct.node_host* %164, null
  br i1 %165, label %166, label %168

166:                                              ; preds = %162
  %167 = call i32 @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %168

168:                                              ; preds = %166, %162
  %169 = load %struct.node_host*, %struct.node_host** %6, align 8
  %170 = getelementptr inbounds %struct.node_host, %struct.node_host* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.node_host*, %struct.node_host** %8, align 8
  %173 = getelementptr inbounds %struct.node_host, %struct.node_host* %172, i32 0, i32 0
  store i64 %171, i64* %173, align 8
  %174 = load i32, i32* %5, align 4
  %175 = load i32, i32* @PFI_AFLAG_BROADCAST, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %187

178:                                              ; preds = %168
  %179 = load %struct.node_host*, %struct.node_host** %8, align 8
  %180 = getelementptr inbounds %struct.node_host, %struct.node_host* %179, i32 0, i32 6
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 1
  %184 = load %struct.node_host*, %struct.node_host** %6, align 8
  %185 = getelementptr inbounds %struct.node_host, %struct.node_host* %184, i32 0, i32 8
  %186 = call i32 @memcpy(%struct.TYPE_10__* %183, %struct.TYPE_10__* %185, i32 4)
  br label %214

187:                                              ; preds = %168
  %188 = load i32, i32* %5, align 4
  %189 = load i32, i32* @PFI_AFLAG_PEER, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %201

192:                                              ; preds = %187
  %193 = load %struct.node_host*, %struct.node_host** %8, align 8
  %194 = getelementptr inbounds %struct.node_host, %struct.node_host* %193, i32 0, i32 6
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 1
  %198 = load %struct.node_host*, %struct.node_host** %6, align 8
  %199 = getelementptr inbounds %struct.node_host, %struct.node_host* %198, i32 0, i32 7
  %200 = call i32 @memcpy(%struct.TYPE_10__* %197, %struct.TYPE_10__* %199, i32 4)
  br label %213

201:                                              ; preds = %187
  %202 = load %struct.node_host*, %struct.node_host** %8, align 8
  %203 = getelementptr inbounds %struct.node_host, %struct.node_host* %202, i32 0, i32 6
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 1
  %207 = load %struct.node_host*, %struct.node_host** %6, align 8
  %208 = getelementptr inbounds %struct.node_host, %struct.node_host* %207, i32 0, i32 6
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 1
  %212 = call i32 @memcpy(%struct.TYPE_10__* %206, %struct.TYPE_10__* %211, i32 4)
  br label %213

213:                                              ; preds = %201, %192
  br label %214

214:                                              ; preds = %213, %178
  %215 = load i32, i32* %5, align 4
  %216 = load i32, i32* @PFI_AFLAG_NETWORK, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %231

219:                                              ; preds = %214
  %220 = load %struct.node_host*, %struct.node_host** %8, align 8
  %221 = load %struct.node_host*, %struct.node_host** %6, align 8
  %222 = getelementptr inbounds %struct.node_host, %struct.node_host* %221, i32 0, i32 6
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 0
  %226 = load %struct.node_host*, %struct.node_host** %8, align 8
  %227 = getelementptr inbounds %struct.node_host, %struct.node_host* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = call i32 @unmask(%struct.TYPE_10__* %225, i64 %228)
  %230 = call i32 @set_ipmask(%struct.node_host* %220, i32 %229)
  br label %271

231:                                              ; preds = %214
  %232 = load %struct.node_host*, %struct.node_host** %8, align 8
  %233 = getelementptr inbounds %struct.node_host, %struct.node_host* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = load i64, i64* @AF_INET, align 8
  %236 = icmp eq i64 %234, %235
  br i1 %236, label %237, label %267

237:                                              ; preds = %231
  %238 = load %struct.node_host*, %struct.node_host** %6, align 8
  %239 = getelementptr inbounds %struct.node_host, %struct.node_host* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* @IFF_LOOPBACK, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %263

244:                                              ; preds = %237
  %245 = load %struct.node_host*, %struct.node_host** %6, align 8
  %246 = getelementptr inbounds %struct.node_host, %struct.node_host* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 8
  %248 = load i32, i32* @IFF_LINK1, align 4
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %263

251:                                              ; preds = %244
  %252 = load %struct.node_host*, %struct.node_host** %8, align 8
  %253 = getelementptr inbounds %struct.node_host, %struct.node_host* %252, i32 0, i32 6
  %254 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %255, i32 0, i32 0
  %257 = load %struct.node_host*, %struct.node_host** %6, align 8
  %258 = getelementptr inbounds %struct.node_host, %struct.node_host* %257, i32 0, i32 6
  %259 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %260, i32 0, i32 0
  %262 = call i32 @memcpy(%struct.TYPE_10__* %256, %struct.TYPE_10__* %261, i32 4)
  br label %266

263:                                              ; preds = %244, %237
  %264 = load %struct.node_host*, %struct.node_host** %8, align 8
  %265 = call i32 @set_ipmask(%struct.node_host* %264, i32 32)
  br label %266

266:                                              ; preds = %263, %251
  br label %270

267:                                              ; preds = %231
  %268 = load %struct.node_host*, %struct.node_host** %8, align 8
  %269 = call i32 @set_ipmask(%struct.node_host* %268, i32 128)
  br label %270

270:                                              ; preds = %267, %266
  br label %271

271:                                              ; preds = %270, %219
  %272 = load %struct.node_host*, %struct.node_host** %6, align 8
  %273 = getelementptr inbounds %struct.node_host, %struct.node_host* %272, i32 0, i32 2
  %274 = load i64, i64* %273, align 8
  %275 = load %struct.node_host*, %struct.node_host** %8, align 8
  %276 = getelementptr inbounds %struct.node_host, %struct.node_host* %275, i32 0, i32 2
  store i64 %274, i64* %276, align 8
  %277 = load %struct.node_host*, %struct.node_host** %6, align 8
  %278 = getelementptr inbounds %struct.node_host, %struct.node_host* %277, i32 0, i32 3
  %279 = load i8*, i8** %278, align 8
  %280 = call i8* @strdup(i8* %279)
  %281 = load %struct.node_host*, %struct.node_host** %8, align 8
  %282 = getelementptr inbounds %struct.node_host, %struct.node_host* %281, i32 0, i32 3
  store i8* %280, i8** %282, align 8
  %283 = load %struct.node_host*, %struct.node_host** %8, align 8
  %284 = getelementptr inbounds %struct.node_host, %struct.node_host* %283, i32 0, i32 5
  store %struct.node_host* null, %struct.node_host** %284, align 8
  %285 = load %struct.node_host*, %struct.node_host** %8, align 8
  %286 = load %struct.node_host*, %struct.node_host** %8, align 8
  %287 = getelementptr inbounds %struct.node_host, %struct.node_host* %286, i32 0, i32 4
  store %struct.node_host* %285, %struct.node_host** %287, align 8
  %288 = load %struct.node_host*, %struct.node_host** %7, align 8
  %289 = icmp eq %struct.node_host* %288, null
  br i1 %289, label %290, label %292

290:                                              ; preds = %271
  %291 = load %struct.node_host*, %struct.node_host** %8, align 8
  store %struct.node_host* %291, %struct.node_host** %7, align 8
  br label %301

292:                                              ; preds = %271
  %293 = load %struct.node_host*, %struct.node_host** %8, align 8
  %294 = load %struct.node_host*, %struct.node_host** %7, align 8
  %295 = getelementptr inbounds %struct.node_host, %struct.node_host* %294, i32 0, i32 4
  %296 = load %struct.node_host*, %struct.node_host** %295, align 8
  %297 = getelementptr inbounds %struct.node_host, %struct.node_host* %296, i32 0, i32 5
  store %struct.node_host* %293, %struct.node_host** %297, align 8
  %298 = load %struct.node_host*, %struct.node_host** %8, align 8
  %299 = load %struct.node_host*, %struct.node_host** %7, align 8
  %300 = getelementptr inbounds %struct.node_host, %struct.node_host* %299, i32 0, i32 4
  store %struct.node_host* %298, %struct.node_host** %300, align 8
  br label %301

301:                                              ; preds = %292, %290
  br label %302

302:                                              ; preds = %301, %153, %138, %117, %88, %77, %64, %51, %39
  %303 = load %struct.node_host*, %struct.node_host** %6, align 8
  %304 = getelementptr inbounds %struct.node_host, %struct.node_host* %303, i32 0, i32 5
  %305 = load %struct.node_host*, %struct.node_host** %304, align 8
  store %struct.node_host* %305, %struct.node_host** %6, align 8
  br label %31

306:                                              ; preds = %31
  %307 = load %struct.node_host*, %struct.node_host** %7, align 8
  store %struct.node_host* %307, %struct.node_host** %3, align 8
  br label %308

308:                                              ; preds = %306, %16
  %309 = load %struct.node_host*, %struct.node_host** %3, align 8
  ret %struct.node_host* %309
}

declare dso_local %struct.node_host* @ifa_grouplookup(i8*, i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @ifa_load(...) #1

declare dso_local i64 @ifa_skip_if(i8*, %struct.node_host*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @IN6_IS_ADDR_LINKLOCAL(i32*) #1

declare dso_local %struct.node_host* @calloc(i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @memcpy(%struct.TYPE_10__*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @set_ipmask(%struct.node_host*, i32) #1

declare dso_local i32 @unmask(%struct.TYPE_10__*, i64) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
