; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_listen_dnsport.c_listening_ports_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_listen_dnsport.c_listening_ports_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.listen_port = type { i32 }
%struct.config_file = type { i32, i32, i32, i32, i64, i32, i8**, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.addrinfo = type { i8*, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@AI_PASSIVE = common dso_local global i32 0, align 4
@AI_NUMERICHOST = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i8* null, align 8
@AF_INET6 = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"::0\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"::1\00", align 1
@AF_INET = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"0.0.0.0\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.listen_port* @listening_ports_open(%struct.config_file* %0, i32* %1) #0 {
  %3 = alloca %struct.listen_port*, align 8
  %4 = alloca %struct.config_file*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.listen_port*, align 8
  %7 = alloca %struct.addrinfo, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [32 x i8], align 16
  store %struct.config_file* %0, %struct.config_file** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.listen_port* null, %struct.listen_port** %6, align 8
  %14 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %15 = load %struct.config_file*, %struct.config_file** %4, align 8
  %16 = getelementptr inbounds %struct.config_file, %struct.config_file* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @snprintf(i8* %14, i32 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.config_file*, %struct.config_file** %4, align 8
  %20 = getelementptr inbounds %struct.config_file, %struct.config_file* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  %22 = load %struct.config_file*, %struct.config_file** %4, align 8
  %23 = getelementptr inbounds %struct.config_file, %struct.config_file* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %10, align 4
  %25 = load %struct.config_file*, %struct.config_file** %4, align 8
  %26 = getelementptr inbounds %struct.config_file, %struct.config_file* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %11, align 4
  %28 = load %struct.config_file*, %struct.config_file** %4, align 8
  %29 = getelementptr inbounds %struct.config_file, %struct.config_file* %28, i32 0, i32 17
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %2
  %33 = load %struct.config_file*, %struct.config_file** %4, align 8
  %34 = getelementptr inbounds %struct.config_file, %struct.config_file* %33, i32 0, i32 16
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br label %37

37:                                               ; preds = %32, %2
  %38 = phi i1 [ false, %2 ], [ %36, %32 ]
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %12, align 4
  %40 = load %struct.config_file*, %struct.config_file** %4, align 8
  %41 = getelementptr inbounds %struct.config_file, %struct.config_file* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  store i32 0, i32* %11, align 4
  br label %45

45:                                               ; preds = %44, %37
  %46 = call i32 @memset(%struct.addrinfo* %7, i32 0, i32 16)
  %47 = load i32, i32* @AI_PASSIVE, align 4
  %48 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %7, i32 0, i32 1
  store i32 %47, i32* %48, align 8
  %49 = load %struct.config_file*, %struct.config_file** %4, align 8
  %50 = getelementptr inbounds %struct.config_file, %struct.config_file* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 8
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %45
  %54 = load i32, i32* @AI_NUMERICHOST, align 4
  %55 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %7, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %54
  store i32 %57, i32* %55, align 8
  br label %58

58:                                               ; preds = %53, %45
  %59 = load i8*, i8** @AF_UNSPEC, align 8
  %60 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %7, i32 0, i32 0
  store i8* %59, i8** %60, align 8
  store i32 0, i32* %10, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %58
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %63
  store %struct.listen_port* null, %struct.listen_port** %3, align 8
  br label %306

67:                                               ; preds = %63, %58
  %68 = load i32, i32* %12, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %67
  %71 = load %struct.config_file*, %struct.config_file** %4, align 8
  %72 = getelementptr inbounds %struct.config_file, %struct.config_file* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 8
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %176

75:                                               ; preds = %70, %67
  %76 = load i32, i32* %10, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %125

78:                                               ; preds = %75
  %79 = load i8*, i8** @AF_INET6, align 8
  %80 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %7, i32 0, i32 0
  store i8* %79, i8** %80, align 8
  %81 = load i32, i32* %12, align 4
  %82 = icmp ne i32 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %85 = load i32, i32* %12, align 4
  %86 = load %struct.config_file*, %struct.config_file** %4, align 8
  %87 = getelementptr inbounds %struct.config_file, %struct.config_file* %86, i32 0, i32 16
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %11, align 4
  %90 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %91 = load %struct.config_file*, %struct.config_file** %4, align 8
  %92 = getelementptr inbounds %struct.config_file, %struct.config_file* %91, i32 0, i32 15
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.config_file*, %struct.config_file** %4, align 8
  %95 = getelementptr inbounds %struct.config_file, %struct.config_file* %94, i32 0, i32 14
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.config_file*, %struct.config_file** %4, align 8
  %98 = getelementptr inbounds %struct.config_file, %struct.config_file* %97, i32 0, i32 13
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.config_file*, %struct.config_file** %4, align 8
  %101 = getelementptr inbounds %struct.config_file, %struct.config_file* %100, i32 0, i32 12
  %102 = load i32, i32* %101, align 4
  %103 = load i32*, i32** %5, align 8
  %104 = load %struct.config_file*, %struct.config_file** %4, align 8
  %105 = getelementptr inbounds %struct.config_file, %struct.config_file* %104, i32 0, i32 11
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.config_file*, %struct.config_file** %4, align 8
  %108 = getelementptr inbounds %struct.config_file, %struct.config_file* %107, i32 0, i32 10
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.config_file*, %struct.config_file** %4, align 8
  %111 = getelementptr inbounds %struct.config_file, %struct.config_file* %110, i32 0, i32 9
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.config_file*, %struct.config_file** %4, align 8
  %114 = getelementptr inbounds %struct.config_file, %struct.config_file* %113, i32 0, i32 8
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.config_file*, %struct.config_file** %4, align 8
  %117 = getelementptr inbounds %struct.config_file, %struct.config_file* %116, i32 0, i32 7
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @ports_create_if(i8* %84, i32 %85, i32 %88, i32 %89, %struct.addrinfo* %7, i8* %90, %struct.listen_port** %6, i32 %93, i32 %96, i32 %99, i32 %102, i32* %103, i32 %106, i32 %109, i32 %112, i32 %115, i32 %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %78
  %122 = load %struct.listen_port*, %struct.listen_port** %6, align 8
  %123 = call i32 @listening_ports_free(%struct.listen_port* %122)
  store %struct.listen_port* null, %struct.listen_port** %3, align 8
  br label %306

124:                                              ; preds = %78
  br label %125

125:                                              ; preds = %124, %75
  %126 = load i32, i32* %9, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %175

128:                                              ; preds = %125
  %129 = load i8*, i8** @AF_INET, align 8
  %130 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %7, i32 0, i32 0
  store i8* %129, i8** %130, align 8
  %131 = load i32, i32* %12, align 4
  %132 = icmp ne i32 %131, 0
  %133 = zext i1 %132 to i64
  %134 = select i1 %132, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0)
  %135 = load i32, i32* %12, align 4
  %136 = load %struct.config_file*, %struct.config_file** %4, align 8
  %137 = getelementptr inbounds %struct.config_file, %struct.config_file* %136, i32 0, i32 16
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %11, align 4
  %140 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %141 = load %struct.config_file*, %struct.config_file** %4, align 8
  %142 = getelementptr inbounds %struct.config_file, %struct.config_file* %141, i32 0, i32 15
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.config_file*, %struct.config_file** %4, align 8
  %145 = getelementptr inbounds %struct.config_file, %struct.config_file* %144, i32 0, i32 14
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.config_file*, %struct.config_file** %4, align 8
  %148 = getelementptr inbounds %struct.config_file, %struct.config_file* %147, i32 0, i32 13
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.config_file*, %struct.config_file** %4, align 8
  %151 = getelementptr inbounds %struct.config_file, %struct.config_file* %150, i32 0, i32 12
  %152 = load i32, i32* %151, align 4
  %153 = load i32*, i32** %5, align 8
  %154 = load %struct.config_file*, %struct.config_file** %4, align 8
  %155 = getelementptr inbounds %struct.config_file, %struct.config_file* %154, i32 0, i32 11
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.config_file*, %struct.config_file** %4, align 8
  %158 = getelementptr inbounds %struct.config_file, %struct.config_file* %157, i32 0, i32 10
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.config_file*, %struct.config_file** %4, align 8
  %161 = getelementptr inbounds %struct.config_file, %struct.config_file* %160, i32 0, i32 9
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.config_file*, %struct.config_file** %4, align 8
  %164 = getelementptr inbounds %struct.config_file, %struct.config_file* %163, i32 0, i32 8
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.config_file*, %struct.config_file** %4, align 8
  %167 = getelementptr inbounds %struct.config_file, %struct.config_file* %166, i32 0, i32 7
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @ports_create_if(i8* %134, i32 %135, i32 %138, i32 %139, %struct.addrinfo* %7, i8* %140, %struct.listen_port** %6, i32 %143, i32 %146, i32 %149, i32 %152, i32* %153, i32 %156, i32 %159, i32 %162, i32 %165, i32 %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %174, label %171

171:                                              ; preds = %128
  %172 = load %struct.listen_port*, %struct.listen_port** %6, align 8
  %173 = call i32 @listening_ports_free(%struct.listen_port* %172)
  store %struct.listen_port* null, %struct.listen_port** %3, align 8
  br label %306

174:                                              ; preds = %128
  br label %175

175:                                              ; preds = %174, %125
  br label %304

176:                                              ; preds = %70
  store i32 0, i32* %8, align 4
  br label %177

177:                                              ; preds = %300, %176
  %178 = load i32, i32* %8, align 4
  %179 = load %struct.config_file*, %struct.config_file** %4, align 8
  %180 = getelementptr inbounds %struct.config_file, %struct.config_file* %179, i32 0, i32 5
  %181 = load i32, i32* %180, align 8
  %182 = icmp slt i32 %178, %181
  br i1 %182, label %183, label %303

183:                                              ; preds = %177
  %184 = load %struct.config_file*, %struct.config_file** %4, align 8
  %185 = getelementptr inbounds %struct.config_file, %struct.config_file* %184, i32 0, i32 6
  %186 = load i8**, i8*** %185, align 8
  %187 = load i32, i32* %8, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8*, i8** %186, i64 %188
  %190 = load i8*, i8** %189, align 8
  %191 = call i64 @str_is_ip6(i8* %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %246

193:                                              ; preds = %183
  %194 = load i32, i32* %10, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %197, label %196

196:                                              ; preds = %193
  br label %300

197:                                              ; preds = %193
  %198 = load i8*, i8** @AF_INET6, align 8
  %199 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %7, i32 0, i32 0
  store i8* %198, i8** %199, align 8
  %200 = load %struct.config_file*, %struct.config_file** %4, align 8
  %201 = getelementptr inbounds %struct.config_file, %struct.config_file* %200, i32 0, i32 6
  %202 = load i8**, i8*** %201, align 8
  %203 = load i32, i32* %8, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i8*, i8** %202, i64 %204
  %206 = load i8*, i8** %205, align 8
  %207 = load %struct.config_file*, %struct.config_file** %4, align 8
  %208 = getelementptr inbounds %struct.config_file, %struct.config_file* %207, i32 0, i32 16
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* %11, align 4
  %211 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %212 = load %struct.config_file*, %struct.config_file** %4, align 8
  %213 = getelementptr inbounds %struct.config_file, %struct.config_file* %212, i32 0, i32 15
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.config_file*, %struct.config_file** %4, align 8
  %216 = getelementptr inbounds %struct.config_file, %struct.config_file* %215, i32 0, i32 14
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.config_file*, %struct.config_file** %4, align 8
  %219 = getelementptr inbounds %struct.config_file, %struct.config_file* %218, i32 0, i32 13
  %220 = load i32, i32* %219, align 8
  %221 = load %struct.config_file*, %struct.config_file** %4, align 8
  %222 = getelementptr inbounds %struct.config_file, %struct.config_file* %221, i32 0, i32 12
  %223 = load i32, i32* %222, align 4
  %224 = load i32*, i32** %5, align 8
  %225 = load %struct.config_file*, %struct.config_file** %4, align 8
  %226 = getelementptr inbounds %struct.config_file, %struct.config_file* %225, i32 0, i32 11
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.config_file*, %struct.config_file** %4, align 8
  %229 = getelementptr inbounds %struct.config_file, %struct.config_file* %228, i32 0, i32 10
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.config_file*, %struct.config_file** %4, align 8
  %232 = getelementptr inbounds %struct.config_file, %struct.config_file* %231, i32 0, i32 9
  %233 = load i32, i32* %232, align 8
  %234 = load %struct.config_file*, %struct.config_file** %4, align 8
  %235 = getelementptr inbounds %struct.config_file, %struct.config_file* %234, i32 0, i32 8
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.config_file*, %struct.config_file** %4, align 8
  %238 = getelementptr inbounds %struct.config_file, %struct.config_file* %237, i32 0, i32 7
  %239 = load i32, i32* %238, align 8
  %240 = call i32 @ports_create_if(i8* %206, i32 0, i32 %209, i32 %210, %struct.addrinfo* %7, i8* %211, %struct.listen_port** %6, i32 %214, i32 %217, i32 %220, i32 %223, i32* %224, i32 %227, i32 %230, i32 %233, i32 %236, i32 %239)
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %245, label %242

242:                                              ; preds = %197
  %243 = load %struct.listen_port*, %struct.listen_port** %6, align 8
  %244 = call i32 @listening_ports_free(%struct.listen_port* %243)
  store %struct.listen_port* null, %struct.listen_port** %3, align 8
  br label %306

245:                                              ; preds = %197
  br label %299

246:                                              ; preds = %183
  %247 = load i32, i32* %9, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %250, label %249

249:                                              ; preds = %246
  br label %300

250:                                              ; preds = %246
  %251 = load i8*, i8** @AF_INET, align 8
  %252 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %7, i32 0, i32 0
  store i8* %251, i8** %252, align 8
  %253 = load %struct.config_file*, %struct.config_file** %4, align 8
  %254 = getelementptr inbounds %struct.config_file, %struct.config_file* %253, i32 0, i32 6
  %255 = load i8**, i8*** %254, align 8
  %256 = load i32, i32* %8, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i8*, i8** %255, i64 %257
  %259 = load i8*, i8** %258, align 8
  %260 = load %struct.config_file*, %struct.config_file** %4, align 8
  %261 = getelementptr inbounds %struct.config_file, %struct.config_file* %260, i32 0, i32 16
  %262 = load i32, i32* %261, align 4
  %263 = load i32, i32* %11, align 4
  %264 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %265 = load %struct.config_file*, %struct.config_file** %4, align 8
  %266 = getelementptr inbounds %struct.config_file, %struct.config_file* %265, i32 0, i32 15
  %267 = load i32, i32* %266, align 8
  %268 = load %struct.config_file*, %struct.config_file** %4, align 8
  %269 = getelementptr inbounds %struct.config_file, %struct.config_file* %268, i32 0, i32 14
  %270 = load i32, i32* %269, align 4
  %271 = load %struct.config_file*, %struct.config_file** %4, align 8
  %272 = getelementptr inbounds %struct.config_file, %struct.config_file* %271, i32 0, i32 13
  %273 = load i32, i32* %272, align 8
  %274 = load %struct.config_file*, %struct.config_file** %4, align 8
  %275 = getelementptr inbounds %struct.config_file, %struct.config_file* %274, i32 0, i32 12
  %276 = load i32, i32* %275, align 4
  %277 = load i32*, i32** %5, align 8
  %278 = load %struct.config_file*, %struct.config_file** %4, align 8
  %279 = getelementptr inbounds %struct.config_file, %struct.config_file* %278, i32 0, i32 11
  %280 = load i32, i32* %279, align 8
  %281 = load %struct.config_file*, %struct.config_file** %4, align 8
  %282 = getelementptr inbounds %struct.config_file, %struct.config_file* %281, i32 0, i32 10
  %283 = load i32, i32* %282, align 4
  %284 = load %struct.config_file*, %struct.config_file** %4, align 8
  %285 = getelementptr inbounds %struct.config_file, %struct.config_file* %284, i32 0, i32 9
  %286 = load i32, i32* %285, align 8
  %287 = load %struct.config_file*, %struct.config_file** %4, align 8
  %288 = getelementptr inbounds %struct.config_file, %struct.config_file* %287, i32 0, i32 8
  %289 = load i32, i32* %288, align 4
  %290 = load %struct.config_file*, %struct.config_file** %4, align 8
  %291 = getelementptr inbounds %struct.config_file, %struct.config_file* %290, i32 0, i32 7
  %292 = load i32, i32* %291, align 8
  %293 = call i32 @ports_create_if(i8* %259, i32 0, i32 %262, i32 %263, %struct.addrinfo* %7, i8* %264, %struct.listen_port** %6, i32 %267, i32 %270, i32 %273, i32 %276, i32* %277, i32 %280, i32 %283, i32 %286, i32 %289, i32 %292)
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %298, label %295

295:                                              ; preds = %250
  %296 = load %struct.listen_port*, %struct.listen_port** %6, align 8
  %297 = call i32 @listening_ports_free(%struct.listen_port* %296)
  store %struct.listen_port* null, %struct.listen_port** %3, align 8
  br label %306

298:                                              ; preds = %250
  br label %299

299:                                              ; preds = %298, %245
  br label %300

300:                                              ; preds = %299, %249, %196
  %301 = load i32, i32* %8, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %8, align 4
  br label %177

303:                                              ; preds = %177
  br label %304

304:                                              ; preds = %303, %175
  %305 = load %struct.listen_port*, %struct.listen_port** %6, align 8
  store %struct.listen_port* %305, %struct.listen_port** %3, align 8
  br label %306

306:                                              ; preds = %304, %295, %242, %171, %121, %66
  %307 = load %struct.listen_port*, %struct.listen_port** %3, align 8
  ret %struct.listen_port* %307
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i32 @ports_create_if(i8*, i32, i32, i32, %struct.addrinfo*, i8*, %struct.listen_port**, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @listening_ports_free(%struct.listen_port*) #1

declare dso_local i64 @str_is_ip6(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
