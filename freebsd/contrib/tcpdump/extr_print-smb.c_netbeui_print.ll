; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-smb.c_netbeui_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-smb.c_netbeui_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i8*, i32* }
%struct.TYPE_7__ = type { i32*, i32 }

@startbuf = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"NBF Packet: \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"[P5]#\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"\0A>>> NBF Packet\0AType=0x%X \00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Length=[d] Signature=[w] Command=[B]\0A#\00", align 1
@nbf_strings = common dso_local global %struct.TYPE_8__* null, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"Unknown NBF Command#\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Unknown NBF Command\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%s:\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"\FFSMB\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"found SMB packet at %d\0A\00", align 1
@tstr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @netbeui_print(%struct.TYPE_7__* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load i32*, i32** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  store i32* %18, i32** %9, align 8
  store i32 0, i32* %13, align 4
  %19 = load i32*, i32** %9, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ugt i32* %19, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %9, align 8
  br label %28

28:                                               ; preds = %24, %4
  %29 = load i32*, i32** %7, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 4
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ND_TCHECK(i32 %31)
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @EXTRACT_LE_16BITS(i32* %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32*, i32** %7, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 4
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %11, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32* %41, i32** %12, align 8
  %42 = load i32*, i32** %12, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = icmp uge i32* %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %28
  %46 = load i32*, i32** %9, align 8
  store i32* %46, i32** %12, align 8
  store i32 1, i32* %13, align 4
  br label %47

47:                                               ; preds = %45, %28
  %48 = load i32*, i32** %7, align 8
  store i32* %48, i32** @startbuf, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %51, 2
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %55 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([13 x i8]* @.str to %struct.TYPE_7__*))
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %57 = load i32*, i32** %7, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = call i32* @smb_fdata(%struct.TYPE_7__* %56, i32* %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %58, i32 0)
  store i32* %59, i32** %7, align 8
  br label %70

60:                                               ; preds = %47
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = inttoptr i64 %63 to %struct.TYPE_7__*
  %65 = call i32 @ND_PRINT(%struct.TYPE_7__* %64)
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %67 = load i32*, i32** %7, align 8
  %68 = load i32*, i32** %9, align 8
  %69 = call i32* @smb_fdata(%struct.TYPE_7__* %66, i32* %67, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32* %68, i32 0)
  store i32* %69, i32** %7, align 8
  br label %70

70:                                               ; preds = %60, %53
  %71 = load i32*, i32** %7, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  br label %249

74:                                               ; preds = %70
  %75 = load i32, i32* %11, align 4
  %76 = icmp sgt i32 %75, 31
  br i1 %76, label %85, label %77

77:                                               ; preds = %74
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** @nbf_strings, align 8
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = icmp eq i32* %83, null
  br i1 %84, label %85, label %101

85:                                               ; preds = %77, %74
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = icmp slt i32 %88, 2
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %92 = load i32*, i32** %7, align 8
  %93 = load i32*, i32** %12, align 8
  %94 = call i32* @smb_fdata(%struct.TYPE_7__* %91, i32* %92, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32* %93, i32 0)
  store i32* %94, i32** %7, align 8
  br label %100

95:                                               ; preds = %85
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %97 = load i32*, i32** %7, align 8
  %98 = load i32*, i32** %12, align 8
  %99 = call i32* @smb_fdata(%struct.TYPE_7__* %96, i32* %97, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32* %98, i32 0)
  store i32* %99, i32** %7, align 8
  br label %100

100:                                              ; preds = %95, %90
  br label %168

101:                                              ; preds = %77
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = icmp slt i32 %104, 2
  br i1 %105, label %106, label %135

106:                                              ; preds = %101
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** @nbf_strings, align 8
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = bitcast i32* %113 to %struct.TYPE_7__*
  %115 = call i32 @ND_PRINT(%struct.TYPE_7__* %114)
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** @nbf_strings, align 8
  %117 = load i32, i32* %11, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %134

123:                                              ; preds = %106
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %125 = load i32*, i32** %7, align 8
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** @nbf_strings, align 8
  %127 = load i32, i32* %11, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = load i32*, i32** %12, align 8
  %133 = call i32* @smb_fdata(%struct.TYPE_7__* %124, i32* %125, i8* %131, i32* %132, i32 0)
  store i32* %133, i32** %7, align 8
  br label %134

134:                                              ; preds = %123, %106
  br label %167

135:                                              ; preds = %101
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** @nbf_strings, align 8
  %138 = load i32, i32* %11, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 2
  %142 = load i32*, i32** %141, align 8
  %143 = bitcast i32* %142 to %struct.TYPE_7__*
  %144 = call i32 @ND_PRINT(%struct.TYPE_7__* %143)
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** @nbf_strings, align 8
  %146 = load i32, i32* %11, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 1
  %150 = load i8*, i8** %149, align 8
  %151 = icmp ne i8* %150, null
  br i1 %151, label %152, label %163

152:                                              ; preds = %135
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %154 = load i32*, i32** %7, align 8
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** @nbf_strings, align 8
  %156 = load i32, i32* %11, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 1
  %160 = load i8*, i8** %159, align 8
  %161 = load i32*, i32** %12, align 8
  %162 = call i32* @smb_fdata(%struct.TYPE_7__* %153, i32* %154, i8* %160, i32* %161, i32 0)
  store i32* %162, i32** %7, align 8
  br label %166

163:                                              ; preds = %135
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %165 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([2 x i8]* @.str.8 to %struct.TYPE_7__*))
  br label %166

166:                                              ; preds = %163, %152
  br label %167

167:                                              ; preds = %166, %134
  br label %168

168:                                              ; preds = %167, %100
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = icmp slt i32 %171, 2
  br i1 %172, label %173, label %174

173:                                              ; preds = %168
  br label %258

174:                                              ; preds = %168
  %175 = load i32*, i32** %7, align 8
  %176 = icmp eq i32* %175, null
  br i1 %176, label %177, label %178

177:                                              ; preds = %174
  br label %249

178:                                              ; preds = %174
  %179 = load i32, i32* %13, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %178
  br label %249

182:                                              ; preds = %178
  %183 = load i32, i32* %11, align 4
  %184 = icmp ne i32 %183, 8
  br i1 %184, label %185, label %195

185:                                              ; preds = %182
  %186 = load i32, i32* %11, align 4
  %187 = icmp ne i32 %186, 9
  br i1 %187, label %188, label %195

188:                                              ; preds = %185
  %189 = load i32, i32* %11, align 4
  %190 = icmp ne i32 %189, 21
  br i1 %190, label %191, label %195

191:                                              ; preds = %188
  %192 = load i32, i32* %11, align 4
  %193 = icmp ne i32 %192, 22
  br i1 %193, label %194, label %195

194:                                              ; preds = %191
  br label %249

195:                                              ; preds = %191, %188, %185, %182
  %196 = load i32*, i32** %12, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 3
  %198 = load i32*, i32** %9, align 8
  %199 = icmp uge i32* %197, %198
  br i1 %199, label %200, label %201

200:                                              ; preds = %195
  br label %249

201:                                              ; preds = %195
  %202 = load i32*, i32** %12, align 8
  %203 = call i64 @memcmp(i32* %202, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 4)
  %204 = icmp eq i64 %203, 0
  br i1 %204, label %205, label %210

205:                                              ; preds = %201
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %207 = load i32*, i32** %12, align 8
  %208 = load i32*, i32** %9, align 8
  %209 = call i32 @print_smb(%struct.TYPE_7__* %206, i32* %207, i32* %208)
  br label %248

210:                                              ; preds = %201
  store i32 0, i32* %14, align 4
  br label %211

211:                                              ; preds = %244, %210
  %212 = load i32, i32* %14, align 4
  %213 = icmp slt i32 %212, 128
  br i1 %213, label %214, label %247

214:                                              ; preds = %211
  %215 = load i32*, i32** %12, align 8
  %216 = load i32, i32* %14, align 4
  %217 = add nsw i32 %216, 3
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %215, i64 %218
  %220 = load i32*, i32** %9, align 8
  %221 = icmp uge i32* %219, %220
  br i1 %221, label %222, label %223

222:                                              ; preds = %214
  br label %247

223:                                              ; preds = %214
  %224 = load i32*, i32** %12, align 8
  %225 = load i32, i32* %14, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %224, i64 %226
  %228 = call i64 @memcmp(i32* %227, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 4)
  %229 = icmp eq i64 %228, 0
  br i1 %229, label %230, label %243

230:                                              ; preds = %223
  %231 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %232 = load i32, i32* %14, align 4
  %233 = sext i32 %232 to i64
  %234 = inttoptr i64 %233 to %struct.TYPE_7__*
  %235 = call i32 @ND_PRINT(%struct.TYPE_7__* %234)
  %236 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %237 = load i32*, i32** %12, align 8
  %238 = load i32, i32* %14, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  %241 = load i32*, i32** %9, align 8
  %242 = call i32 @print_smb(%struct.TYPE_7__* %236, i32* %240, i32* %241)
  br label %247

243:                                              ; preds = %223
  br label %244

244:                                              ; preds = %243
  %245 = load i32, i32* %14, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %14, align 4
  br label %211

247:                                              ; preds = %230, %222, %211
  br label %248

248:                                              ; preds = %247, %205
  br label %249

249:                                              ; preds = %248, %200, %194, %181, %177, %73
  %250 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %251 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([2 x i8]* @.str.8 to %struct.TYPE_7__*))
  br label %258

252:                                              ; No predecessors!
  %253 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %254 = load i32, i32* @tstr, align 4
  %255 = sext i32 %254 to i64
  %256 = inttoptr i64 %255 to %struct.TYPE_7__*
  %257 = call i32 @ND_PRINT(%struct.TYPE_7__* %256)
  br label %258

258:                                              ; preds = %252, %249, %173
  ret void
}

declare dso_local i32 @ND_TCHECK(i32) #1

declare dso_local i32 @EXTRACT_LE_16BITS(i32*) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_7__*) #1

declare dso_local i32* @smb_fdata(%struct.TYPE_7__*, i32*, i8*, i32*, i32) #1

declare dso_local i64 @memcmp(i32*, i8*, i32) #1

declare dso_local i32 @print_smb(%struct.TYPE_7__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
