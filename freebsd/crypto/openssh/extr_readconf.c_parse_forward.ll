; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_readconf.c_parse_forward.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_readconf.c_parse_forward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Forward = type { i8*, i8*, i64, i8*, i8*, i8*, i64, i32 }
%struct.fwdarg = type { i8*, i8*, i64, i8*, i8*, i8*, i64, i32 }

@PORT_STREAMLOCAL = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"socks\00", align 1
@NI_MAXHOST = common dso_local global i64 0, align 8
@PATH_MAX_SUN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_forward(%struct.Forward* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.Forward*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [4 x %struct.fwdarg], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.Forward* %0, %struct.Forward** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.Forward*, %struct.Forward** %6, align 8
  %15 = bitcast %struct.Forward* %14 to %struct.fwdarg*
  %16 = call i32 @memset(%struct.fwdarg* %15, i32 0, i32 64)
  %17 = getelementptr inbounds [4 x %struct.fwdarg], [4 x %struct.fwdarg]* %10, i64 0, i64 0
  %18 = call i32 @memset(%struct.fwdarg* %17, i32 0, i32 256)
  %19 = load i8*, i8** %7, align 8
  %20 = call i8* @xstrdup(i8* %19)
  store i8* %20, i8** %11, align 8
  store i8* %20, i8** %12, align 8
  br label %21

21:                                               ; preds = %27, %4
  %22 = load i8*, i8** %12, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = call i64 @isspace(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i8*, i8** %12, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %12, align 8
  br label %21

30:                                               ; preds = %21
  store i32 0, i32* %13, align 4
  br label %31

31:                                               ; preds = %42, %30
  %32 = load i32, i32* %13, align 4
  %33 = icmp slt i32 %32, 4
  br i1 %33, label %34, label %45

34:                                               ; preds = %31
  %35 = load i32, i32* %13, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [4 x %struct.fwdarg], [4 x %struct.fwdarg]* %10, i64 0, i64 %36
  %38 = call i64 @parse_fwd_field(i8** %12, %struct.fwdarg* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %45

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %13, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %13, align 4
  br label %31

45:                                               ; preds = %40, %31
  %46 = load i8*, i8** %12, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load i8*, i8** %12, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i32 0, i32* %13, align 4
  br label %54

54:                                               ; preds = %53, %48, %45
  %55 = load i32, i32* %13, align 4
  switch i32 %55, label %271 [
    i32 1, label %56
    i32 2, label %86
    i32 3, label %161
    i32 4, label %244
  ]

56:                                               ; preds = %54
  %57 = getelementptr inbounds [4 x %struct.fwdarg], [4 x %struct.fwdarg]* %10, i64 0, i64 0
  %58 = getelementptr inbounds %struct.fwdarg, %struct.fwdarg* %57, i32 0, i32 7
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %56
  %62 = getelementptr inbounds [4 x %struct.fwdarg], [4 x %struct.fwdarg]* %10, i64 0, i64 0
  %63 = getelementptr inbounds %struct.fwdarg, %struct.fwdarg* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = call i8* @xstrdup(i8* %64)
  %66 = load %struct.Forward*, %struct.Forward** %6, align 8
  %67 = getelementptr inbounds %struct.Forward, %struct.Forward* %66, i32 0, i32 0
  store i8* %65, i8** %67, align 8
  %68 = load i8*, i8** @PORT_STREAMLOCAL, align 8
  %69 = ptrtoint i8* %68 to i64
  %70 = load %struct.Forward*, %struct.Forward** %6, align 8
  %71 = getelementptr inbounds %struct.Forward, %struct.Forward* %70, i32 0, i32 2
  store i64 %69, i64* %71, align 8
  br label %82

72:                                               ; preds = %56
  %73 = load %struct.Forward*, %struct.Forward** %6, align 8
  %74 = getelementptr inbounds %struct.Forward, %struct.Forward* %73, i32 0, i32 3
  store i8* null, i8** %74, align 8
  %75 = getelementptr inbounds [4 x %struct.fwdarg], [4 x %struct.fwdarg]* %10, i64 0, i64 0
  %76 = getelementptr inbounds %struct.fwdarg, %struct.fwdarg* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = call i8* @a2port(i8* %77)
  %79 = ptrtoint i8* %78 to i64
  %80 = load %struct.Forward*, %struct.Forward** %6, align 8
  %81 = getelementptr inbounds %struct.Forward, %struct.Forward* %80, i32 0, i32 2
  store i64 %79, i64* %81, align 8
  br label %82

82:                                               ; preds = %72, %61
  %83 = call i8* @xstrdup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %84 = load %struct.Forward*, %struct.Forward** %6, align 8
  %85 = getelementptr inbounds %struct.Forward, %struct.Forward* %84, i32 0, i32 4
  store i8* %83, i8** %85, align 8
  br label %272

86:                                               ; preds = %54
  %87 = getelementptr inbounds [4 x %struct.fwdarg], [4 x %struct.fwdarg]* %10, i64 0, i64 0
  %88 = getelementptr inbounds %struct.fwdarg, %struct.fwdarg* %87, i32 0, i32 7
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %117

91:                                               ; preds = %86
  %92 = getelementptr inbounds [4 x %struct.fwdarg], [4 x %struct.fwdarg]* %10, i64 0, i64 1
  %93 = getelementptr inbounds %struct.fwdarg, %struct.fwdarg* %92, i32 0, i32 7
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %117

96:                                               ; preds = %91
  %97 = getelementptr inbounds [4 x %struct.fwdarg], [4 x %struct.fwdarg]* %10, i64 0, i64 0
  %98 = getelementptr inbounds %struct.fwdarg, %struct.fwdarg* %97, i32 0, i32 1
  %99 = load i8*, i8** %98, align 8
  %100 = call i8* @xstrdup(i8* %99)
  %101 = load %struct.Forward*, %struct.Forward** %6, align 8
  %102 = getelementptr inbounds %struct.Forward, %struct.Forward* %101, i32 0, i32 0
  store i8* %100, i8** %102, align 8
  %103 = load i8*, i8** @PORT_STREAMLOCAL, align 8
  %104 = ptrtoint i8* %103 to i64
  %105 = load %struct.Forward*, %struct.Forward** %6, align 8
  %106 = getelementptr inbounds %struct.Forward, %struct.Forward* %105, i32 0, i32 2
  store i64 %104, i64* %106, align 8
  %107 = getelementptr inbounds [4 x %struct.fwdarg], [4 x %struct.fwdarg]* %10, i64 0, i64 1
  %108 = getelementptr inbounds %struct.fwdarg, %struct.fwdarg* %107, i32 0, i32 1
  %109 = load i8*, i8** %108, align 8
  %110 = call i8* @xstrdup(i8* %109)
  %111 = load %struct.Forward*, %struct.Forward** %6, align 8
  %112 = getelementptr inbounds %struct.Forward, %struct.Forward* %111, i32 0, i32 5
  store i8* %110, i8** %112, align 8
  %113 = load i8*, i8** @PORT_STREAMLOCAL, align 8
  %114 = ptrtoint i8* %113 to i64
  %115 = load %struct.Forward*, %struct.Forward** %6, align 8
  %116 = getelementptr inbounds %struct.Forward, %struct.Forward* %115, i32 0, i32 6
  store i64 %114, i64* %116, align 8
  br label %160

117:                                              ; preds = %91, %86
  %118 = getelementptr inbounds [4 x %struct.fwdarg], [4 x %struct.fwdarg]* %10, i64 0, i64 1
  %119 = getelementptr inbounds %struct.fwdarg, %struct.fwdarg* %118, i32 0, i32 7
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %142

122:                                              ; preds = %117
  %123 = load %struct.Forward*, %struct.Forward** %6, align 8
  %124 = getelementptr inbounds %struct.Forward, %struct.Forward* %123, i32 0, i32 3
  store i8* null, i8** %124, align 8
  %125 = getelementptr inbounds [4 x %struct.fwdarg], [4 x %struct.fwdarg]* %10, i64 0, i64 0
  %126 = getelementptr inbounds %struct.fwdarg, %struct.fwdarg* %125, i32 0, i32 1
  %127 = load i8*, i8** %126, align 8
  %128 = call i8* @a2port(i8* %127)
  %129 = ptrtoint i8* %128 to i64
  %130 = load %struct.Forward*, %struct.Forward** %6, align 8
  %131 = getelementptr inbounds %struct.Forward, %struct.Forward* %130, i32 0, i32 2
  store i64 %129, i64* %131, align 8
  %132 = getelementptr inbounds [4 x %struct.fwdarg], [4 x %struct.fwdarg]* %10, i64 0, i64 1
  %133 = getelementptr inbounds %struct.fwdarg, %struct.fwdarg* %132, i32 0, i32 1
  %134 = load i8*, i8** %133, align 8
  %135 = call i8* @xstrdup(i8* %134)
  %136 = load %struct.Forward*, %struct.Forward** %6, align 8
  %137 = getelementptr inbounds %struct.Forward, %struct.Forward* %136, i32 0, i32 5
  store i8* %135, i8** %137, align 8
  %138 = load i8*, i8** @PORT_STREAMLOCAL, align 8
  %139 = ptrtoint i8* %138 to i64
  %140 = load %struct.Forward*, %struct.Forward** %6, align 8
  %141 = getelementptr inbounds %struct.Forward, %struct.Forward* %140, i32 0, i32 6
  store i64 %139, i64* %141, align 8
  br label %159

142:                                              ; preds = %117
  %143 = getelementptr inbounds [4 x %struct.fwdarg], [4 x %struct.fwdarg]* %10, i64 0, i64 0
  %144 = getelementptr inbounds %struct.fwdarg, %struct.fwdarg* %143, i32 0, i32 1
  %145 = load i8*, i8** %144, align 8
  %146 = call i8* @xstrdup(i8* %145)
  %147 = load %struct.Forward*, %struct.Forward** %6, align 8
  %148 = getelementptr inbounds %struct.Forward, %struct.Forward* %147, i32 0, i32 3
  store i8* %146, i8** %148, align 8
  %149 = getelementptr inbounds [4 x %struct.fwdarg], [4 x %struct.fwdarg]* %10, i64 0, i64 1
  %150 = getelementptr inbounds %struct.fwdarg, %struct.fwdarg* %149, i32 0, i32 1
  %151 = load i8*, i8** %150, align 8
  %152 = call i8* @a2port(i8* %151)
  %153 = ptrtoint i8* %152 to i64
  %154 = load %struct.Forward*, %struct.Forward** %6, align 8
  %155 = getelementptr inbounds %struct.Forward, %struct.Forward* %154, i32 0, i32 2
  store i64 %153, i64* %155, align 8
  %156 = call i8* @xstrdup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %157 = load %struct.Forward*, %struct.Forward** %6, align 8
  %158 = getelementptr inbounds %struct.Forward, %struct.Forward* %157, i32 0, i32 4
  store i8* %156, i8** %158, align 8
  br label %159

159:                                              ; preds = %142, %122
  br label %160

160:                                              ; preds = %159, %96
  br label %272

161:                                              ; preds = %54
  %162 = getelementptr inbounds [4 x %struct.fwdarg], [4 x %struct.fwdarg]* %10, i64 0, i64 0
  %163 = getelementptr inbounds %struct.fwdarg, %struct.fwdarg* %162, i32 0, i32 7
  %164 = load i32, i32* %163, align 8
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %190

166:                                              ; preds = %161
  %167 = getelementptr inbounds [4 x %struct.fwdarg], [4 x %struct.fwdarg]* %10, i64 0, i64 0
  %168 = getelementptr inbounds %struct.fwdarg, %struct.fwdarg* %167, i32 0, i32 1
  %169 = load i8*, i8** %168, align 8
  %170 = call i8* @xstrdup(i8* %169)
  %171 = load %struct.Forward*, %struct.Forward** %6, align 8
  %172 = getelementptr inbounds %struct.Forward, %struct.Forward* %171, i32 0, i32 0
  store i8* %170, i8** %172, align 8
  %173 = load i8*, i8** @PORT_STREAMLOCAL, align 8
  %174 = ptrtoint i8* %173 to i64
  %175 = load %struct.Forward*, %struct.Forward** %6, align 8
  %176 = getelementptr inbounds %struct.Forward, %struct.Forward* %175, i32 0, i32 2
  store i64 %174, i64* %176, align 8
  %177 = getelementptr inbounds [4 x %struct.fwdarg], [4 x %struct.fwdarg]* %10, i64 0, i64 1
  %178 = getelementptr inbounds %struct.fwdarg, %struct.fwdarg* %177, i32 0, i32 1
  %179 = load i8*, i8** %178, align 8
  %180 = call i8* @xstrdup(i8* %179)
  %181 = load %struct.Forward*, %struct.Forward** %6, align 8
  %182 = getelementptr inbounds %struct.Forward, %struct.Forward* %181, i32 0, i32 4
  store i8* %180, i8** %182, align 8
  %183 = getelementptr inbounds [4 x %struct.fwdarg], [4 x %struct.fwdarg]* %10, i64 0, i64 2
  %184 = getelementptr inbounds %struct.fwdarg, %struct.fwdarg* %183, i32 0, i32 1
  %185 = load i8*, i8** %184, align 8
  %186 = call i8* @a2port(i8* %185)
  %187 = ptrtoint i8* %186 to i64
  %188 = load %struct.Forward*, %struct.Forward** %6, align 8
  %189 = getelementptr inbounds %struct.Forward, %struct.Forward* %188, i32 0, i32 6
  store i64 %187, i64* %189, align 8
  br label %243

190:                                              ; preds = %161
  %191 = getelementptr inbounds [4 x %struct.fwdarg], [4 x %struct.fwdarg]* %10, i64 0, i64 2
  %192 = getelementptr inbounds %struct.fwdarg, %struct.fwdarg* %191, i32 0, i32 7
  %193 = load i32, i32* %192, align 8
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %219

195:                                              ; preds = %190
  %196 = getelementptr inbounds [4 x %struct.fwdarg], [4 x %struct.fwdarg]* %10, i64 0, i64 0
  %197 = getelementptr inbounds %struct.fwdarg, %struct.fwdarg* %196, i32 0, i32 1
  %198 = load i8*, i8** %197, align 8
  %199 = call i8* @xstrdup(i8* %198)
  %200 = load %struct.Forward*, %struct.Forward** %6, align 8
  %201 = getelementptr inbounds %struct.Forward, %struct.Forward* %200, i32 0, i32 3
  store i8* %199, i8** %201, align 8
  %202 = getelementptr inbounds [4 x %struct.fwdarg], [4 x %struct.fwdarg]* %10, i64 0, i64 1
  %203 = getelementptr inbounds %struct.fwdarg, %struct.fwdarg* %202, i32 0, i32 1
  %204 = load i8*, i8** %203, align 8
  %205 = call i8* @a2port(i8* %204)
  %206 = ptrtoint i8* %205 to i64
  %207 = load %struct.Forward*, %struct.Forward** %6, align 8
  %208 = getelementptr inbounds %struct.Forward, %struct.Forward* %207, i32 0, i32 2
  store i64 %206, i64* %208, align 8
  %209 = getelementptr inbounds [4 x %struct.fwdarg], [4 x %struct.fwdarg]* %10, i64 0, i64 2
  %210 = getelementptr inbounds %struct.fwdarg, %struct.fwdarg* %209, i32 0, i32 1
  %211 = load i8*, i8** %210, align 8
  %212 = call i8* @xstrdup(i8* %211)
  %213 = load %struct.Forward*, %struct.Forward** %6, align 8
  %214 = getelementptr inbounds %struct.Forward, %struct.Forward* %213, i32 0, i32 5
  store i8* %212, i8** %214, align 8
  %215 = load i8*, i8** @PORT_STREAMLOCAL, align 8
  %216 = ptrtoint i8* %215 to i64
  %217 = load %struct.Forward*, %struct.Forward** %6, align 8
  %218 = getelementptr inbounds %struct.Forward, %struct.Forward* %217, i32 0, i32 6
  store i64 %216, i64* %218, align 8
  br label %242

219:                                              ; preds = %190
  %220 = load %struct.Forward*, %struct.Forward** %6, align 8
  %221 = getelementptr inbounds %struct.Forward, %struct.Forward* %220, i32 0, i32 3
  store i8* null, i8** %221, align 8
  %222 = getelementptr inbounds [4 x %struct.fwdarg], [4 x %struct.fwdarg]* %10, i64 0, i64 0
  %223 = getelementptr inbounds %struct.fwdarg, %struct.fwdarg* %222, i32 0, i32 1
  %224 = load i8*, i8** %223, align 8
  %225 = call i8* @a2port(i8* %224)
  %226 = ptrtoint i8* %225 to i64
  %227 = load %struct.Forward*, %struct.Forward** %6, align 8
  %228 = getelementptr inbounds %struct.Forward, %struct.Forward* %227, i32 0, i32 2
  store i64 %226, i64* %228, align 8
  %229 = getelementptr inbounds [4 x %struct.fwdarg], [4 x %struct.fwdarg]* %10, i64 0, i64 1
  %230 = getelementptr inbounds %struct.fwdarg, %struct.fwdarg* %229, i32 0, i32 1
  %231 = load i8*, i8** %230, align 8
  %232 = call i8* @xstrdup(i8* %231)
  %233 = load %struct.Forward*, %struct.Forward** %6, align 8
  %234 = getelementptr inbounds %struct.Forward, %struct.Forward* %233, i32 0, i32 4
  store i8* %232, i8** %234, align 8
  %235 = getelementptr inbounds [4 x %struct.fwdarg], [4 x %struct.fwdarg]* %10, i64 0, i64 2
  %236 = getelementptr inbounds %struct.fwdarg, %struct.fwdarg* %235, i32 0, i32 1
  %237 = load i8*, i8** %236, align 8
  %238 = call i8* @a2port(i8* %237)
  %239 = ptrtoint i8* %238 to i64
  %240 = load %struct.Forward*, %struct.Forward** %6, align 8
  %241 = getelementptr inbounds %struct.Forward, %struct.Forward* %240, i32 0, i32 6
  store i64 %239, i64* %241, align 8
  br label %242

242:                                              ; preds = %219, %195
  br label %243

243:                                              ; preds = %242, %166
  br label %272

244:                                              ; preds = %54
  %245 = getelementptr inbounds [4 x %struct.fwdarg], [4 x %struct.fwdarg]* %10, i64 0, i64 0
  %246 = getelementptr inbounds %struct.fwdarg, %struct.fwdarg* %245, i32 0, i32 1
  %247 = load i8*, i8** %246, align 8
  %248 = call i8* @xstrdup(i8* %247)
  %249 = load %struct.Forward*, %struct.Forward** %6, align 8
  %250 = getelementptr inbounds %struct.Forward, %struct.Forward* %249, i32 0, i32 3
  store i8* %248, i8** %250, align 8
  %251 = getelementptr inbounds [4 x %struct.fwdarg], [4 x %struct.fwdarg]* %10, i64 0, i64 1
  %252 = getelementptr inbounds %struct.fwdarg, %struct.fwdarg* %251, i32 0, i32 1
  %253 = load i8*, i8** %252, align 8
  %254 = call i8* @a2port(i8* %253)
  %255 = ptrtoint i8* %254 to i64
  %256 = load %struct.Forward*, %struct.Forward** %6, align 8
  %257 = getelementptr inbounds %struct.Forward, %struct.Forward* %256, i32 0, i32 2
  store i64 %255, i64* %257, align 8
  %258 = getelementptr inbounds [4 x %struct.fwdarg], [4 x %struct.fwdarg]* %10, i64 0, i64 2
  %259 = getelementptr inbounds %struct.fwdarg, %struct.fwdarg* %258, i32 0, i32 1
  %260 = load i8*, i8** %259, align 8
  %261 = call i8* @xstrdup(i8* %260)
  %262 = load %struct.Forward*, %struct.Forward** %6, align 8
  %263 = getelementptr inbounds %struct.Forward, %struct.Forward* %262, i32 0, i32 4
  store i8* %261, i8** %263, align 8
  %264 = getelementptr inbounds [4 x %struct.fwdarg], [4 x %struct.fwdarg]* %10, i64 0, i64 3
  %265 = getelementptr inbounds %struct.fwdarg, %struct.fwdarg* %264, i32 0, i32 1
  %266 = load i8*, i8** %265, align 8
  %267 = call i8* @a2port(i8* %266)
  %268 = ptrtoint i8* %267 to i64
  %269 = load %struct.Forward*, %struct.Forward** %6, align 8
  %270 = getelementptr inbounds %struct.Forward, %struct.Forward* %269, i32 0, i32 6
  store i64 %268, i64* %270, align 8
  br label %272

271:                                              ; preds = %54
  store i32 0, i32* %13, align 4
  br label %272

272:                                              ; preds = %271, %244, %243, %160, %82
  %273 = load i8*, i8** %11, align 8
  %274 = call i32 @free(i8* %273)
  %275 = load i32, i32* %8, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %285

277:                                              ; preds = %272
  %278 = load i32, i32* %13, align 4
  %279 = icmp eq i32 %278, 1
  br i1 %279, label %284, label %280

280:                                              ; preds = %277
  %281 = load i32, i32* %13, align 4
  %282 = icmp eq i32 %281, 2
  br i1 %282, label %284, label %283

283:                                              ; preds = %280
  br label %388

284:                                              ; preds = %280, %277
  br label %315

285:                                              ; preds = %272
  %286 = load i32, i32* %13, align 4
  %287 = icmp eq i32 %286, 3
  br i1 %287, label %303, label %288

288:                                              ; preds = %285
  %289 = load i32, i32* %13, align 4
  %290 = icmp eq i32 %289, 4
  br i1 %290, label %303, label %291

291:                                              ; preds = %288
  %292 = load %struct.Forward*, %struct.Forward** %6, align 8
  %293 = getelementptr inbounds %struct.Forward, %struct.Forward* %292, i32 0, i32 5
  %294 = load i8*, i8** %293, align 8
  %295 = icmp eq i8* %294, null
  br i1 %295, label %296, label %302

296:                                              ; preds = %291
  %297 = load %struct.Forward*, %struct.Forward** %6, align 8
  %298 = getelementptr inbounds %struct.Forward, %struct.Forward* %297, i32 0, i32 0
  %299 = load i8*, i8** %298, align 8
  %300 = icmp eq i8* %299, null
  br i1 %300, label %301, label %302

301:                                              ; preds = %296
  br label %388

302:                                              ; preds = %296, %291
  br label %303

303:                                              ; preds = %302, %288, %285
  %304 = load %struct.Forward*, %struct.Forward** %6, align 8
  %305 = getelementptr inbounds %struct.Forward, %struct.Forward* %304, i32 0, i32 6
  %306 = load i64, i64* %305, align 8
  %307 = icmp sle i64 %306, 0
  br i1 %307, label %308, label %314

308:                                              ; preds = %303
  %309 = load %struct.Forward*, %struct.Forward** %6, align 8
  %310 = getelementptr inbounds %struct.Forward, %struct.Forward* %309, i32 0, i32 5
  %311 = load i8*, i8** %310, align 8
  %312 = icmp eq i8* %311, null
  br i1 %312, label %313, label %314

313:                                              ; preds = %308
  br label %388

314:                                              ; preds = %308, %303
  br label %315

315:                                              ; preds = %314, %284
  %316 = load %struct.Forward*, %struct.Forward** %6, align 8
  %317 = getelementptr inbounds %struct.Forward, %struct.Forward* %316, i32 0, i32 2
  %318 = load i64, i64* %317, align 8
  %319 = icmp slt i64 %318, 0
  br i1 %319, label %320, label %325

320:                                              ; preds = %315
  %321 = load %struct.Forward*, %struct.Forward** %6, align 8
  %322 = getelementptr inbounds %struct.Forward, %struct.Forward* %321, i32 0, i32 0
  %323 = load i8*, i8** %322, align 8
  %324 = icmp eq i8* %323, null
  br i1 %324, label %333, label %325

325:                                              ; preds = %320, %315
  %326 = load i32, i32* %9, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %334, label %328

328:                                              ; preds = %325
  %329 = load %struct.Forward*, %struct.Forward** %6, align 8
  %330 = getelementptr inbounds %struct.Forward, %struct.Forward* %329, i32 0, i32 2
  %331 = load i64, i64* %330, align 8
  %332 = icmp eq i64 %331, 0
  br i1 %332, label %333, label %334

333:                                              ; preds = %328, %320
  br label %388

334:                                              ; preds = %328, %325
  %335 = load %struct.Forward*, %struct.Forward** %6, align 8
  %336 = getelementptr inbounds %struct.Forward, %struct.Forward* %335, i32 0, i32 4
  %337 = load i8*, i8** %336, align 8
  %338 = icmp ne i8* %337, null
  br i1 %338, label %339, label %347

339:                                              ; preds = %334
  %340 = load %struct.Forward*, %struct.Forward** %6, align 8
  %341 = getelementptr inbounds %struct.Forward, %struct.Forward* %340, i32 0, i32 4
  %342 = load i8*, i8** %341, align 8
  %343 = call i64 @strlen(i8* %342)
  %344 = load i64, i64* @NI_MAXHOST, align 8
  %345 = icmp sge i64 %343, %344
  br i1 %345, label %346, label %347

346:                                              ; preds = %339
  br label %388

347:                                              ; preds = %339, %334
  %348 = load %struct.Forward*, %struct.Forward** %6, align 8
  %349 = getelementptr inbounds %struct.Forward, %struct.Forward* %348, i32 0, i32 5
  %350 = load i8*, i8** %349, align 8
  %351 = icmp ne i8* %350, null
  br i1 %351, label %352, label %360

352:                                              ; preds = %347
  %353 = load %struct.Forward*, %struct.Forward** %6, align 8
  %354 = getelementptr inbounds %struct.Forward, %struct.Forward* %353, i32 0, i32 5
  %355 = load i8*, i8** %354, align 8
  %356 = call i64 @strlen(i8* %355)
  %357 = load i64, i64* @PATH_MAX_SUN, align 8
  %358 = icmp sge i64 %356, %357
  br i1 %358, label %359, label %360

359:                                              ; preds = %352
  br label %388

360:                                              ; preds = %352, %347
  %361 = load %struct.Forward*, %struct.Forward** %6, align 8
  %362 = getelementptr inbounds %struct.Forward, %struct.Forward* %361, i32 0, i32 3
  %363 = load i8*, i8** %362, align 8
  %364 = icmp ne i8* %363, null
  br i1 %364, label %365, label %373

365:                                              ; preds = %360
  %366 = load %struct.Forward*, %struct.Forward** %6, align 8
  %367 = getelementptr inbounds %struct.Forward, %struct.Forward* %366, i32 0, i32 3
  %368 = load i8*, i8** %367, align 8
  %369 = call i64 @strlen(i8* %368)
  %370 = load i64, i64* @NI_MAXHOST, align 8
  %371 = icmp sge i64 %369, %370
  br i1 %371, label %372, label %373

372:                                              ; preds = %365
  br label %388

373:                                              ; preds = %365, %360
  %374 = load %struct.Forward*, %struct.Forward** %6, align 8
  %375 = getelementptr inbounds %struct.Forward, %struct.Forward* %374, i32 0, i32 0
  %376 = load i8*, i8** %375, align 8
  %377 = icmp ne i8* %376, null
  br i1 %377, label %378, label %386

378:                                              ; preds = %373
  %379 = load %struct.Forward*, %struct.Forward** %6, align 8
  %380 = getelementptr inbounds %struct.Forward, %struct.Forward* %379, i32 0, i32 0
  %381 = load i8*, i8** %380, align 8
  %382 = call i64 @strlen(i8* %381)
  %383 = load i64, i64* @PATH_MAX_SUN, align 8
  %384 = icmp sge i64 %382, %383
  br i1 %384, label %385, label %386

385:                                              ; preds = %378
  br label %388

386:                                              ; preds = %378, %373
  %387 = load i32, i32* %13, align 4
  store i32 %387, i32* %5, align 4
  br label %413

388:                                              ; preds = %385, %372, %359, %346, %333, %313, %301, %283
  %389 = load %struct.Forward*, %struct.Forward** %6, align 8
  %390 = getelementptr inbounds %struct.Forward, %struct.Forward* %389, i32 0, i32 4
  %391 = load i8*, i8** %390, align 8
  %392 = call i32 @free(i8* %391)
  %393 = load %struct.Forward*, %struct.Forward** %6, align 8
  %394 = getelementptr inbounds %struct.Forward, %struct.Forward* %393, i32 0, i32 4
  store i8* null, i8** %394, align 8
  %395 = load %struct.Forward*, %struct.Forward** %6, align 8
  %396 = getelementptr inbounds %struct.Forward, %struct.Forward* %395, i32 0, i32 5
  %397 = load i8*, i8** %396, align 8
  %398 = call i32 @free(i8* %397)
  %399 = load %struct.Forward*, %struct.Forward** %6, align 8
  %400 = getelementptr inbounds %struct.Forward, %struct.Forward* %399, i32 0, i32 5
  store i8* null, i8** %400, align 8
  %401 = load %struct.Forward*, %struct.Forward** %6, align 8
  %402 = getelementptr inbounds %struct.Forward, %struct.Forward* %401, i32 0, i32 3
  %403 = load i8*, i8** %402, align 8
  %404 = call i32 @free(i8* %403)
  %405 = load %struct.Forward*, %struct.Forward** %6, align 8
  %406 = getelementptr inbounds %struct.Forward, %struct.Forward* %405, i32 0, i32 3
  store i8* null, i8** %406, align 8
  %407 = load %struct.Forward*, %struct.Forward** %6, align 8
  %408 = getelementptr inbounds %struct.Forward, %struct.Forward* %407, i32 0, i32 0
  %409 = load i8*, i8** %408, align 8
  %410 = call i32 @free(i8* %409)
  %411 = load %struct.Forward*, %struct.Forward** %6, align 8
  %412 = getelementptr inbounds %struct.Forward, %struct.Forward* %411, i32 0, i32 0
  store i8* null, i8** %412, align 8
  store i32 0, i32* %5, align 4
  br label %413

413:                                              ; preds = %388, %386
  %414 = load i32, i32* %5, align 4
  ret i32 %414
}

declare dso_local i32 @memset(%struct.fwdarg*, i32, i32) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i64 @isspace(i32) #1

declare dso_local i64 @parse_fwd_field(i8**, %struct.fwdarg*) #1

declare dso_local i8* @a2port(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
