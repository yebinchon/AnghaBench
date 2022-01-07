; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_init.c_res_setoptions.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_init.c_res_setoptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.__res_state_ext* }
%struct.__res_state_ext = type { i8*, i8*, i64 }

@.str = private unnamed_addr constant [7 x i8] c"ndots:\00", align 1
@RES_MAXNDOTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"timeout:\00", align 1
@RES_MAXRETRANS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"attempts:\00", align 1
@RES_MAXRETRY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"no_tld_query\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"no-tld-query\00", align 1
@RES_NOTLDQUERY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"inet6\00", align 1
@RES_USE_INET6 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"insecure1\00", align 1
@RES_INSECURE1 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"insecure2\00", align 1
@RES_INSECURE2 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"rotate\00", align 1
@RES_ROTATE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [6 x i8] c"usevc\00", align 1
@RES_USEVC = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [15 x i8] c"no-check-names\00", align 1
@RES_NOCHECKNAME = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [15 x i8] c"reload-period:\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"dname\00", align 1
@RES_USE_DNAME = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [8 x i8] c"nibble:\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"nibble2:\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"v6revmode:\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"single\00", align 1
@RES_NO_NIBBLE2 = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@RES_DEBUG = common dso_local global i32 0, align 4
@RES_USE_EDNS0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i8*, i8*)* @res_setoptions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @res_setoptions(%struct.TYPE_7__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.__res_state_ext*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %5, align 8
  store i8* %10, i8** %7, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.__res_state_ext*, %struct.__res_state_ext** %14, align 8
  store %struct.__res_state_ext* %15, %struct.__res_state_ext** %9, align 8
  br label %16

16:                                               ; preds = %326, %3
  %17 = load i8*, i8** %7, align 8
  %18 = load i8, i8* %17, align 1
  %19 = icmp ne i8 %18, 0
  br i1 %19, label %20, label %327

20:                                               ; preds = %16
  br label %21

21:                                               ; preds = %33, %20
  %22 = load i8*, i8** %7, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 32
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load i8*, i8** %7, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 9
  br label %31

31:                                               ; preds = %26, %21
  %32 = phi i1 [ true, %21 ], [ %30, %26 ]
  br i1 %32, label %33, label %36

33:                                               ; preds = %31
  %34 = load i8*, i8** %7, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %7, align 8
  br label %21

36:                                               ; preds = %31
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @strncmp(i8* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %58, label %40

40:                                               ; preds = %36
  %41 = load i8*, i8** %7, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 7
  %43 = getelementptr inbounds i8, i8* %42, i64 -1
  %44 = call i8* @atoi(i8* %43)
  %45 = ptrtoint i8* %44 to i32
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @RES_MAXNDOTS, align 4
  %48 = icmp sle i32 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %40
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  br label %57

53:                                               ; preds = %40
  %54 = load i32, i32* @RES_MAXNDOTS, align 4
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %53, %49
  br label %304

58:                                               ; preds = %36
  %59 = load i8*, i8** %7, align 8
  %60 = call i32 @strncmp(i8* %59, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %80, label %62

62:                                               ; preds = %58
  %63 = load i8*, i8** %7, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 9
  %65 = getelementptr inbounds i8, i8* %64, i64 -1
  %66 = call i8* @atoi(i8* %65)
  %67 = ptrtoint i8* %66 to i32
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @RES_MAXRETRANS, align 4
  %70 = icmp sle i32 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %62
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  br label %79

75:                                               ; preds = %62
  %76 = load i32, i32* @RES_MAXRETRANS, align 4
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  br label %79

79:                                               ; preds = %75, %71
  br label %303

80:                                               ; preds = %58
  %81 = load i8*, i8** %7, align 8
  %82 = call i32 @strncmp(i8* %81, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 9)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %102, label %84

84:                                               ; preds = %80
  %85 = load i8*, i8** %7, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 10
  %87 = getelementptr inbounds i8, i8* %86, i64 -1
  %88 = call i8* @atoi(i8* %87)
  %89 = ptrtoint i8* %88 to i32
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* @RES_MAXRETRY, align 4
  %92 = icmp sle i32 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %84
  %94 = load i32, i32* %8, align 4
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 3
  store i32 %94, i32* %96, align 4
  br label %101

97:                                               ; preds = %84
  %98 = load i32, i32* @RES_MAXRETRY, align 4
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 3
  store i32 %98, i32* %100, align 4
  br label %101

101:                                              ; preds = %97, %93
  br label %302

102:                                              ; preds = %80
  %103 = load i8*, i8** %7, align 8
  %104 = call i32 @strncmp(i8* %103, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 5)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %102
  br label %301

107:                                              ; preds = %102
  %108 = load i8*, i8** %7, align 8
  %109 = call i32 @strncmp(i8* %108, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 12)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %107
  %112 = load i8*, i8** %7, align 8
  %113 = call i32 @strncmp(i8* %112, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 12)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %121, label %115

115:                                              ; preds = %111, %107
  %116 = load i32, i32* @RES_NOTLDQUERY, align 4
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = or i32 %119, %116
  store i32 %120, i32* %118, align 8
  br label %300

121:                                              ; preds = %111
  %122 = load i8*, i8** %7, align 8
  %123 = call i32 @strncmp(i8* %122, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 5)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %131, label %125

125:                                              ; preds = %121
  %126 = load i32, i32* @RES_USE_INET6, align 4
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = or i32 %129, %126
  store i32 %130, i32* %128, align 8
  br label %299

131:                                              ; preds = %121
  %132 = load i8*, i8** %7, align 8
  %133 = call i32 @strncmp(i8* %132, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 9)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %141, label %135

135:                                              ; preds = %131
  %136 = load i32, i32* @RES_INSECURE1, align 4
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = or i32 %139, %136
  store i32 %140, i32* %138, align 8
  br label %298

141:                                              ; preds = %131
  %142 = load i8*, i8** %7, align 8
  %143 = call i32 @strncmp(i8* %142, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 9)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %151, label %145

145:                                              ; preds = %141
  %146 = load i32, i32* @RES_INSECURE2, align 4
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = or i32 %149, %146
  store i32 %150, i32* %148, align 8
  br label %297

151:                                              ; preds = %141
  %152 = load i8*, i8** %7, align 8
  %153 = call i32 @strncmp(i8* %152, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 6)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %161, label %155

155:                                              ; preds = %151
  %156 = load i32, i32* @RES_ROTATE, align 4
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = or i32 %159, %156
  store i32 %160, i32* %158, align 8
  br label %296

161:                                              ; preds = %151
  %162 = load i8*, i8** %7, align 8
  %163 = call i32 @strncmp(i8* %162, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 5)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %171, label %165

165:                                              ; preds = %161
  %166 = load i32, i32* @RES_USEVC, align 4
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = or i32 %169, %166
  store i32 %170, i32* %168, align 8
  br label %295

171:                                              ; preds = %161
  %172 = load i8*, i8** %7, align 8
  %173 = call i32 @strncmp(i8* %172, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i32 14)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %181, label %175

175:                                              ; preds = %171
  %176 = load i32, i32* @RES_NOCHECKNAME, align 4
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = or i32 %179, %176
  store i32 %180, i32* %178, align 8
  br label %294

181:                                              ; preds = %171
  %182 = load i8*, i8** %7, align 8
  %183 = call i32 @strncmp(i8* %182, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 14)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %197, label %185

185:                                              ; preds = %181
  %186 = load %struct.__res_state_ext*, %struct.__res_state_ext** %9, align 8
  %187 = icmp ne %struct.__res_state_ext* %186, null
  br i1 %187, label %188, label %196

188:                                              ; preds = %185
  %189 = load i8*, i8** %7, align 8
  %190 = getelementptr inbounds i8, i8* %189, i64 15
  %191 = getelementptr inbounds i8, i8* %190, i64 -1
  %192 = call i8* @atoi(i8* %191)
  %193 = ptrtoint i8* %192 to i64
  %194 = load %struct.__res_state_ext*, %struct.__res_state_ext** %9, align 8
  %195 = getelementptr inbounds %struct.__res_state_ext, %struct.__res_state_ext* %194, i32 0, i32 2
  store i64 %193, i64* %195, align 8
  br label %196

196:                                              ; preds = %188, %185
  br label %293

197:                                              ; preds = %181
  %198 = load i8*, i8** %7, align 8
  %199 = call i32 @strncmp(i8* %198, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i32 5)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %207, label %201

201:                                              ; preds = %197
  %202 = load i32, i32* @RES_USE_DNAME, align 4
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = or i32 %205, %202
  store i32 %206, i32* %204, align 8
  br label %292

207:                                              ; preds = %197
  %208 = load i8*, i8** %7, align 8
  %209 = call i32 @strncmp(i8* %208, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32 7)
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %233, label %211

211:                                              ; preds = %207
  %212 = load %struct.__res_state_ext*, %struct.__res_state_ext** %9, align 8
  %213 = icmp eq %struct.__res_state_ext* %212, null
  br i1 %213, label %214, label %215

214:                                              ; preds = %211
  br label %305

215:                                              ; preds = %211
  %216 = load i8*, i8** %7, align 8
  %217 = getelementptr inbounds i8, i8* %216, i64 7
  store i8* %217, i8** %7, align 8
  %218 = load i8*, i8** %7, align 8
  %219 = call i32 @strcspn(i8* %218, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0))
  %220 = call i32 @MIN(i32 %219, i32 7)
  store i32 %220, i32* %8, align 4
  %221 = load %struct.__res_state_ext*, %struct.__res_state_ext** %9, align 8
  %222 = getelementptr inbounds %struct.__res_state_ext, %struct.__res_state_ext* %221, i32 0, i32 0
  %223 = load i8*, i8** %222, align 8
  %224 = load i8*, i8** %7, align 8
  %225 = load i32, i32* %8, align 4
  %226 = call i32 @strncpy(i8* %223, i8* %224, i32 %225)
  %227 = load %struct.__res_state_ext*, %struct.__res_state_ext** %9, align 8
  %228 = getelementptr inbounds %struct.__res_state_ext, %struct.__res_state_ext* %227, i32 0, i32 0
  %229 = load i8*, i8** %228, align 8
  %230 = load i32, i32* %8, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i8, i8* %229, i64 %231
  store i8 0, i8* %232, align 1
  br label %291

233:                                              ; preds = %207
  %234 = load i8*, i8** %7, align 8
  %235 = call i32 @strncmp(i8* %234, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i32 8)
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %259, label %237

237:                                              ; preds = %233
  %238 = load %struct.__res_state_ext*, %struct.__res_state_ext** %9, align 8
  %239 = icmp eq %struct.__res_state_ext* %238, null
  br i1 %239, label %240, label %241

240:                                              ; preds = %237
  br label %305

241:                                              ; preds = %237
  %242 = load i8*, i8** %7, align 8
  %243 = getelementptr inbounds i8, i8* %242, i64 8
  store i8* %243, i8** %7, align 8
  %244 = load i8*, i8** %7, align 8
  %245 = call i32 @strcspn(i8* %244, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0))
  %246 = call i32 @MIN(i32 %245, i32 7)
  store i32 %246, i32* %8, align 4
  %247 = load %struct.__res_state_ext*, %struct.__res_state_ext** %9, align 8
  %248 = getelementptr inbounds %struct.__res_state_ext, %struct.__res_state_ext* %247, i32 0, i32 1
  %249 = load i8*, i8** %248, align 8
  %250 = load i8*, i8** %7, align 8
  %251 = load i32, i32* %8, align 4
  %252 = call i32 @strncpy(i8* %249, i8* %250, i32 %251)
  %253 = load %struct.__res_state_ext*, %struct.__res_state_ext** %9, align 8
  %254 = getelementptr inbounds %struct.__res_state_ext, %struct.__res_state_ext* %253, i32 0, i32 1
  %255 = load i8*, i8** %254, align 8
  %256 = load i32, i32* %8, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i8, i8* %255, i64 %257
  store i8 0, i8* %258, align 1
  br label %290

259:                                              ; preds = %233
  %260 = load i8*, i8** %7, align 8
  %261 = call i32 @strncmp(i8* %260, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i32 10)
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %288, label %263

263:                                              ; preds = %259
  %264 = load i8*, i8** %7, align 8
  %265 = getelementptr inbounds i8, i8* %264, i64 10
  store i8* %265, i8** %7, align 8
  %266 = load i8*, i8** %7, align 8
  %267 = call i32 @strncmp(i8* %266, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i32 6)
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %275, label %269

269:                                              ; preds = %263
  %270 = load i32, i32* @RES_NO_NIBBLE2, align 4
  %271 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %272 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = or i32 %273, %270
  store i32 %274, i32* %272, align 8
  br label %287

275:                                              ; preds = %263
  %276 = load i8*, i8** %7, align 8
  %277 = call i32 @strncmp(i8* %276, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i32 4)
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %286, label %279

279:                                              ; preds = %275
  %280 = load i32, i32* @RES_NO_NIBBLE2, align 4
  %281 = xor i32 %280, -1
  %282 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %283 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = and i32 %284, %281
  store i32 %285, i32* %283, align 8
  br label %286

286:                                              ; preds = %279, %275
  br label %287

287:                                              ; preds = %286, %269
  br label %289

288:                                              ; preds = %259
  br label %289

289:                                              ; preds = %288, %287
  br label %290

290:                                              ; preds = %289, %241
  br label %291

291:                                              ; preds = %290, %215
  br label %292

292:                                              ; preds = %291, %201
  br label %293

293:                                              ; preds = %292, %196
  br label %294

294:                                              ; preds = %293, %175
  br label %295

295:                                              ; preds = %294, %165
  br label %296

296:                                              ; preds = %295, %155
  br label %297

297:                                              ; preds = %296, %145
  br label %298

298:                                              ; preds = %297, %135
  br label %299

299:                                              ; preds = %298, %125
  br label %300

300:                                              ; preds = %299, %115
  br label %301

301:                                              ; preds = %300, %106
  br label %302

302:                                              ; preds = %301, %101
  br label %303

303:                                              ; preds = %302, %79
  br label %304

304:                                              ; preds = %303, %57
  br label %305

305:                                              ; preds = %304, %240, %214
  br label %306

306:                                              ; preds = %323, %305
  %307 = load i8*, i8** %7, align 8
  %308 = load i8, i8* %307, align 1
  %309 = sext i8 %308 to i32
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %321

311:                                              ; preds = %306
  %312 = load i8*, i8** %7, align 8
  %313 = load i8, i8* %312, align 1
  %314 = sext i8 %313 to i32
  %315 = icmp ne i32 %314, 32
  br i1 %315, label %316, label %321

316:                                              ; preds = %311
  %317 = load i8*, i8** %7, align 8
  %318 = load i8, i8* %317, align 1
  %319 = sext i8 %318 to i32
  %320 = icmp ne i32 %319, 9
  br label %321

321:                                              ; preds = %316, %311, %306
  %322 = phi i1 [ false, %311 ], [ false, %306 ], [ %320, %316 ]
  br i1 %322, label %323, label %326

323:                                              ; preds = %321
  %324 = load i8*, i8** %7, align 8
  %325 = getelementptr inbounds i8, i8* %324, i32 1
  store i8* %325, i8** %7, align 8
  br label %306

326:                                              ; preds = %321
  br label %16

327:                                              ; preds = %16
  ret void
}

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @strcspn(i8*, i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
