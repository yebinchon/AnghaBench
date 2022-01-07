; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libradius/extr_radlib.c_rad_init_send_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libradius/extr_radlib.c_rad_init_send_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rad_handle = type { i64, i32, i32*, i64, i64, i32, i32, i32, %struct.TYPE_4__*, i64, i32 }
%struct.TYPE_4__ = type { i64, i64, i64, i64 }
%struct.timeval = type { i32 }
%struct.sockaddr_in = type { i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sockaddr = type { i32 }

@RADIUS_SERVER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"denied function call\00", align 1
@PF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Cannot create socket: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"bind: %s\00", align 1
@POS_CODE = common dso_local global i64 0, align 8
@RAD_ACCESS_REQUEST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"User or Chap Password in accounting request\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"No User or Chap Password attributes given\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"Both User and Chap Password attributes given\00", align 1
@POS_LENGTH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rad_init_send_request(%struct.rad_handle* %0, i32* %1, %struct.timeval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rad_handle*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.timeval*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.sockaddr_in, align 4
  store %struct.rad_handle* %0, %struct.rad_handle** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.timeval* %2, %struct.timeval** %7, align 8
  %11 = load %struct.rad_handle*, %struct.rad_handle** %5, align 8
  %12 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @RADIUS_SERVER, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %struct.rad_handle*, %struct.rad_handle** %5, align 8
  %18 = call i32 (%struct.rad_handle*, i8*, ...) @generr(%struct.rad_handle* %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %258

19:                                               ; preds = %3
  %20 = load %struct.rad_handle*, %struct.rad_handle** %5, align 8
  %21 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %67

24:                                               ; preds = %19
  %25 = load i32, i32* @PF_INET, align 4
  %26 = load i32, i32* @SOCK_DGRAM, align 4
  %27 = load i32, i32* @IPPROTO_UDP, align 4
  %28 = call i32 @socket(i32 %25, i32 %26, i32 %27)
  %29 = load %struct.rad_handle*, %struct.rad_handle** %5, align 8
  %30 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = icmp eq i32 %28, -1
  br i1 %31, label %32, label %37

32:                                               ; preds = %24
  %33 = load %struct.rad_handle*, %struct.rad_handle** %5, align 8
  %34 = load i32, i32* @errno, align 4
  %35 = call i32 @strerror(i32 %34)
  %36 = call i32 (%struct.rad_handle*, i8*, ...) @generr(%struct.rad_handle* %33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  store i32 -1, i32* %4, align 4
  br label %258

37:                                               ; preds = %24
  %38 = call i32 @memset(%struct.sockaddr_in* %10, i32 0, i32 16)
  %39 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 0
  store i32 16, i32* %39, align 4
  %40 = load i32, i32* @AF_INET, align 4
  %41 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 3
  store i32 %40, i32* %41, align 4
  %42 = load %struct.rad_handle*, %struct.rad_handle** %5, align 8
  %43 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %42, i32 0, i32 10
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = call i32 @htons(i32 0)
  %48 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 1
  store i32 %47, i32* %48, align 4
  %49 = load %struct.rad_handle*, %struct.rad_handle** %5, align 8
  %50 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = bitcast %struct.sockaddr_in* %10 to %struct.sockaddr*
  %53 = call i32 @bind(i32 %51, %struct.sockaddr* %52, i32 16)
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %66

55:                                               ; preds = %37
  %56 = load %struct.rad_handle*, %struct.rad_handle** %5, align 8
  %57 = load i32, i32* @errno, align 4
  %58 = call i32 @strerror(i32 %57)
  %59 = call i32 (%struct.rad_handle*, i8*, ...) @generr(%struct.rad_handle* %56, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  %60 = load %struct.rad_handle*, %struct.rad_handle** %5, align 8
  %61 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @close(i32 %62)
  %64 = load %struct.rad_handle*, %struct.rad_handle** %5, align 8
  %65 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %64, i32 0, i32 1
  store i32 -1, i32* %65, align 8
  store i32 -1, i32* %4, align 4
  br label %258

66:                                               ; preds = %37
  br label %67

67:                                               ; preds = %66, %19
  %68 = load %struct.rad_handle*, %struct.rad_handle** %5, align 8
  %69 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = load i64, i64* @POS_CODE, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @RAD_ACCESS_REQUEST, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %90

76:                                               ; preds = %67
  %77 = load %struct.rad_handle*, %struct.rad_handle** %5, align 8
  %78 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %76
  %82 = load %struct.rad_handle*, %struct.rad_handle** %5, align 8
  %83 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %82, i32 0, i32 9
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %81, %76
  %87 = load %struct.rad_handle*, %struct.rad_handle** %5, align 8
  %88 = call i32 (%struct.rad_handle*, i8*, ...) @generr(%struct.rad_handle* %87, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %258

89:                                               ; preds = %81
  br label %123

90:                                               ; preds = %67
  %91 = load %struct.rad_handle*, %struct.rad_handle** %5, align 8
  %92 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %122

95:                                               ; preds = %90
  %96 = load %struct.rad_handle*, %struct.rad_handle** %5, align 8
  %97 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %95
  %101 = load %struct.rad_handle*, %struct.rad_handle** %5, align 8
  %102 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %101, i32 0, i32 9
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %100
  %106 = load %struct.rad_handle*, %struct.rad_handle** %5, align 8
  %107 = call i32 (%struct.rad_handle*, i8*, ...) @generr(%struct.rad_handle* %106, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %258

108:                                              ; preds = %100, %95
  %109 = load %struct.rad_handle*, %struct.rad_handle** %5, align 8
  %110 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %108
  %114 = load %struct.rad_handle*, %struct.rad_handle** %5, align 8
  %115 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %114, i32 0, i32 9
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %113
  %119 = load %struct.rad_handle*, %struct.rad_handle** %5, align 8
  %120 = call i32 (%struct.rad_handle*, i8*, ...) @generr(%struct.rad_handle* %119, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %258

121:                                              ; preds = %113, %108
  br label %122

122:                                              ; preds = %121, %90
  br label %123

123:                                              ; preds = %122, %89
  %124 = load %struct.rad_handle*, %struct.rad_handle** %5, align 8
  %125 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 8
  %127 = ashr i32 %126, 8
  %128 = load %struct.rad_handle*, %struct.rad_handle** %5, align 8
  %129 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %128, i32 0, i32 2
  %130 = load i32*, i32** %129, align 8
  %131 = load i64, i64* @POS_LENGTH, align 8
  %132 = getelementptr inbounds i32, i32* %130, i64 %131
  store i32 %127, i32* %132, align 4
  %133 = load %struct.rad_handle*, %struct.rad_handle** %5, align 8
  %134 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.rad_handle*, %struct.rad_handle** %5, align 8
  %137 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %136, i32 0, i32 2
  %138 = load i32*, i32** %137, align 8
  %139 = load i64, i64* @POS_LENGTH, align 8
  %140 = add i64 %139, 1
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  store i32 %135, i32* %141, align 4
  %142 = load %struct.rad_handle*, %struct.rad_handle** %5, align 8
  %143 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %142, i32 0, i32 6
  store i32 0, i32* %143, align 4
  %144 = call i64 @time(i32* null)
  store i64 %144, i64* %9, align 8
  store i32 0, i32* %8, align 4
  br label %145

145:                                              ; preds = %159, %123
  %146 = load i32, i32* %8, align 4
  %147 = load %struct.rad_handle*, %struct.rad_handle** %5, align 8
  %148 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %147, i32 0, i32 7
  %149 = load i32, i32* %148, align 8
  %150 = icmp slt i32 %146, %149
  br i1 %150, label %151, label %162

151:                                              ; preds = %145
  %152 = load %struct.rad_handle*, %struct.rad_handle** %5, align 8
  %153 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %152, i32 0, i32 8
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %153, align 8
  %155 = load i32, i32* %8, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 3
  store i64 0, i64* %158, align 8
  br label %159

159:                                              ; preds = %151
  %160 = load i32, i32* %8, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %8, align 4
  br label %145

162:                                              ; preds = %145
  store i32 0, i32* %8, align 4
  br label %163

163:                                              ; preds = %214, %162
  %164 = load i32, i32* %8, align 4
  %165 = load %struct.rad_handle*, %struct.rad_handle** %5, align 8
  %166 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %165, i32 0, i32 7
  %167 = load i32, i32* %166, align 8
  %168 = icmp slt i32 %164, %167
  br i1 %168, label %169, label %217

169:                                              ; preds = %163
  %170 = load %struct.rad_handle*, %struct.rad_handle** %5, align 8
  %171 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %170, i32 0, i32 8
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %171, align 8
  %173 = load i32, i32* %8, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %169
  br label %217

180:                                              ; preds = %169
  %181 = load %struct.rad_handle*, %struct.rad_handle** %5, align 8
  %182 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %181, i32 0, i32 8
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %182, align 8
  %184 = load i32, i32* %8, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 2
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %209

190:                                              ; preds = %180
  %191 = load %struct.rad_handle*, %struct.rad_handle** %5, align 8
  %192 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %191, i32 0, i32 8
  %193 = load %struct.TYPE_4__*, %struct.TYPE_4__** %192, align 8
  %194 = load i32, i32* %8, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* %9, align 8
  %200 = icmp sle i64 %198, %199
  br i1 %200, label %201, label %209

201:                                              ; preds = %190
  %202 = load %struct.rad_handle*, %struct.rad_handle** %5, align 8
  %203 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %202, i32 0, i32 8
  %204 = load %struct.TYPE_4__*, %struct.TYPE_4__** %203, align 8
  %205 = load i32, i32* %8, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 0
  store i64 0, i64* %208, align 8
  br label %217

209:                                              ; preds = %190, %180
  %210 = load %struct.rad_handle*, %struct.rad_handle** %5, align 8
  %211 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %210, i32 0, i32 6
  %212 = load i32, i32* %211, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %211, align 4
  br label %214

214:                                              ; preds = %209
  %215 = load i32, i32* %8, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %8, align 4
  br label %163

217:                                              ; preds = %201, %179, %163
  %218 = load %struct.rad_handle*, %struct.rad_handle** %5, align 8
  %219 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %218, i32 0, i32 6
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.rad_handle*, %struct.rad_handle** %5, align 8
  %222 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %221, i32 0, i32 7
  %223 = load i32, i32* %222, align 8
  %224 = icmp eq i32 %220, %223
  br i1 %224, label %225, label %253

225:                                              ; preds = %217
  store i32 0, i32* %8, align 4
  br label %226

226:                                              ; preds = %247, %225
  %227 = load i32, i32* %8, align 4
  %228 = load %struct.rad_handle*, %struct.rad_handle** %5, align 8
  %229 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %228, i32 0, i32 7
  %230 = load i32, i32* %229, align 8
  %231 = icmp slt i32 %227, %230
  br i1 %231, label %232, label %250

232:                                              ; preds = %226
  %233 = load %struct.rad_handle*, %struct.rad_handle** %5, align 8
  %234 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %233, i32 0, i32 8
  %235 = load %struct.TYPE_4__*, %struct.TYPE_4__** %234, align 8
  %236 = load i32, i32* %8, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i32 0, i32 0
  store i64 0, i64* %239, align 8
  %240 = load %struct.rad_handle*, %struct.rad_handle** %5, align 8
  %241 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %240, i32 0, i32 8
  %242 = load %struct.TYPE_4__*, %struct.TYPE_4__** %241, align 8
  %243 = load i32, i32* %8, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 1
  store i64 0, i64* %246, align 8
  br label %247

247:                                              ; preds = %232
  %248 = load i32, i32* %8, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %8, align 4
  br label %226

250:                                              ; preds = %226
  %251 = load %struct.rad_handle*, %struct.rad_handle** %5, align 8
  %252 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %251, i32 0, i32 6
  store i32 0, i32* %252, align 4
  br label %253

253:                                              ; preds = %250, %217
  %254 = load %struct.rad_handle*, %struct.rad_handle** %5, align 8
  %255 = load i32*, i32** %6, align 8
  %256 = load %struct.timeval*, %struct.timeval** %7, align 8
  %257 = call i32 @rad_continue_send_request(%struct.rad_handle* %254, i32 0, i32* %255, %struct.timeval* %256)
  store i32 %257, i32* %4, align 4
  br label %258

258:                                              ; preds = %253, %118, %105, %86, %55, %32, %16
  %259 = load i32, i32* %4, align 4
  ret i32 %259
}

declare dso_local i32 @generr(%struct.rad_handle*, i8*, ...) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @memset(%struct.sockaddr_in*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @rad_continue_send_request(%struct.rad_handle*, i32, i32*, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
