; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-token.c_token_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-token.c_token_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i64 }
%struct.token_header = type { i32*, i32 }
%struct.ether_header = type { i32 }
%struct.lladdr_info = type { i32*, i8* }

@TOKEN_HDRLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tstr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@broadcast_indicator = common dso_local global i32* null, align 8
@direction = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c" [%d:%d]\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"rt = %x\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c":%x\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c" (%s) \00", align 1
@largest_frame = common dso_local global i32* null, align 8
@etheraddr_string = common dso_local global i8* null, align 8
@TOKEN_FC_LLC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @token_print(%struct.TYPE_6__* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.token_header*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ether_header, align 4
  %13 = alloca %struct.lladdr_info, align 8
  %14 = alloca %struct.lladdr_info, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %15, align 8
  %18 = load i64, i64* @TOKEN_HDRLEN, align 8
  store i64 %18, i64* %16, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = bitcast i32* %19 to %struct.token_header*
  store %struct.token_header* %20, %struct.token_header** %10, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* @TOKEN_HDRLEN, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %26 = load i32, i32* @tstr, align 4
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to %struct.TYPE_6__*
  %29 = call i32 @ND_PRINT(%struct.TYPE_6__* %28)
  %30 = load i64, i64* %16, align 8
  store i64 %30, i64* %5, align 8
  br label %255

31:                                               ; preds = %4
  %32 = load %struct.token_header*, %struct.token_header** %10, align 8
  %33 = call i32* @ESRC(%struct.ether_header* %12)
  %34 = bitcast i32* %33 to i8*
  %35 = call i32* @EDST(%struct.ether_header* %12)
  %36 = bitcast i32* %35 to i8*
  %37 = call i32 @extract_token_addrs(%struct.token_header* %32, i8* %34, i8* %36)
  %38 = load %struct.token_header*, %struct.token_header** %10, align 8
  %39 = call i64 @IS_SOURCE_ROUTED(%struct.token_header* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %167

41:                                               ; preds = %31
  %42 = call i32* @ESRC(%struct.ether_header* %12)
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, 127
  store i32 %44, i32* %42, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %41
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %51 = load %struct.token_header*, %struct.token_header** %10, align 8
  %52 = load i64, i64* %8, align 8
  %53 = call i32* @ESRC(%struct.ether_header* %12)
  %54 = call i32* @EDST(%struct.ether_header* %12)
  %55 = call i32 @token_hdr_print(%struct.TYPE_6__* %50, %struct.token_header* %51, i64 %52, i32* %53, i32* %54)
  br label %56

56:                                               ; preds = %49, %41
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* @TOKEN_HDRLEN, align 8
  %59 = add nsw i64 %58, 2
  %60 = icmp slt i64 %57, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %63 = load i32, i32* @tstr, align 4
  %64 = sext i32 %63 to i64
  %65 = inttoptr i64 %64 to %struct.TYPE_6__*
  %66 = call i32 @ND_PRINT(%struct.TYPE_6__* %65)
  %67 = load i64, i64* %16, align 8
  store i64 %67, i64* %5, align 8
  br label %255

68:                                               ; preds = %56
  %69 = load %struct.token_header*, %struct.token_header** %10, align 8
  %70 = call i64 @RIF_LENGTH(%struct.token_header* %69)
  store i64 %70, i64* %15, align 8
  %71 = load i64, i64* %15, align 8
  %72 = load i64, i64* %16, align 8
  %73 = add nsw i64 %72, %71
  store i64 %73, i64* %16, align 8
  %74 = load i64, i64* %9, align 8
  %75 = load i64, i64* %16, align 8
  %76 = icmp slt i64 %74, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %68
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %79 = load i32, i32* @tstr, align 4
  %80 = sext i32 %79 to i64
  %81 = inttoptr i64 %80 to %struct.TYPE_6__*
  %82 = call i32 @ND_PRINT(%struct.TYPE_6__* %81)
  %83 = load i64, i64* %16, align 8
  store i64 %83, i64* %5, align 8
  br label %255

84:                                               ; preds = %68
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %128

89:                                               ; preds = %84
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %91 = load i32*, i32** @broadcast_indicator, align 8
  %92 = load %struct.token_header*, %struct.token_header** %10, align 8
  %93 = call i64 @BROADCAST(%struct.token_header* %92)
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = inttoptr i64 %96 to %struct.TYPE_6__*
  %98 = call i32 @ND_PRINT(%struct.TYPE_6__* %97)
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %100 = load i32*, i32** @direction, align 8
  %101 = load %struct.token_header*, %struct.token_header** %10, align 8
  %102 = call i64 @DIRECTION(%struct.token_header* %101)
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = sext i32 %104 to i64
  %106 = inttoptr i64 %105 to %struct.TYPE_6__*
  %107 = call i32 @ND_PRINT(%struct.TYPE_6__* %106)
  store i32 0, i32* %17, align 4
  br label %108

108:                                              ; preds = %124, %89
  %109 = load i32, i32* %17, align 4
  %110 = load %struct.token_header*, %struct.token_header** %10, align 8
  %111 = call i32 @SEGMENT_COUNT(%struct.token_header* %110)
  %112 = icmp slt i32 %109, %111
  br i1 %112, label %113, label %127

113:                                              ; preds = %108
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %115 = load %struct.token_header*, %struct.token_header** %10, align 8
  %116 = load i32, i32* %17, align 4
  %117 = call i32 @RING_NUMBER(%struct.token_header* %115, i32 %116)
  %118 = load %struct.token_header*, %struct.token_header** %10, align 8
  %119 = load i32, i32* %17, align 4
  %120 = call i32 @BRIDGE_NUMBER(%struct.token_header* %118, i32 %119)
  %121 = sext i32 %120 to i64
  %122 = inttoptr i64 %121 to %struct.TYPE_6__*
  %123 = call i32 @ND_PRINT(%struct.TYPE_6__* %122)
  br label %124

124:                                              ; preds = %113
  %125 = load i32, i32* %17, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %17, align 4
  br label %108

127:                                              ; preds = %108
  br label %157

128:                                              ; preds = %84
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %130 = load %struct.token_header*, %struct.token_header** %10, align 8
  %131 = getelementptr inbounds %struct.token_header, %struct.token_header* %130, i32 0, i32 1
  %132 = call i32 @EXTRACT_16BITS(i32* %131)
  %133 = sext i32 %132 to i64
  %134 = inttoptr i64 %133 to %struct.TYPE_6__*
  %135 = call i32 @ND_PRINT(%struct.TYPE_6__* %134)
  store i32 0, i32* %17, align 4
  br label %136

136:                                              ; preds = %153, %128
  %137 = load i32, i32* %17, align 4
  %138 = load %struct.token_header*, %struct.token_header** %10, align 8
  %139 = call i32 @SEGMENT_COUNT(%struct.token_header* %138)
  %140 = icmp slt i32 %137, %139
  br i1 %140, label %141, label %156

141:                                              ; preds = %136
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %143 = load %struct.token_header*, %struct.token_header** %10, align 8
  %144 = getelementptr inbounds %struct.token_header, %struct.token_header* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %17, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = call i32 @EXTRACT_16BITS(i32* %148)
  %150 = sext i32 %149 to i64
  %151 = inttoptr i64 %150 to %struct.TYPE_6__*
  %152 = call i32 @ND_PRINT(%struct.TYPE_6__* %151)
  br label %153

153:                                              ; preds = %141
  %154 = load i32, i32* %17, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %17, align 4
  br label %136

156:                                              ; preds = %136
  br label %157

157:                                              ; preds = %156, %127
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %159 = load i32*, i32** @largest_frame, align 8
  %160 = load %struct.token_header*, %struct.token_header** %10, align 8
  %161 = call i64 @LARGEST_FRAME(%struct.token_header* %160)
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = sext i32 %163 to i64
  %165 = inttoptr i64 %164 to %struct.TYPE_6__*
  %166 = call i32 @ND_PRINT(%struct.TYPE_6__* %165)
  br label %180

167:                                              ; preds = %31
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %179

172:                                              ; preds = %167
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %174 = load %struct.token_header*, %struct.token_header** %10, align 8
  %175 = load i64, i64* %8, align 8
  %176 = call i32* @ESRC(%struct.ether_header* %12)
  %177 = call i32* @EDST(%struct.ether_header* %12)
  %178 = call i32 @token_hdr_print(%struct.TYPE_6__* %173, %struct.token_header* %174, i64 %175, i32* %176, i32* %177)
  br label %179

179:                                              ; preds = %172, %167
  br label %180

180:                                              ; preds = %179, %157
  %181 = call i32* @ESRC(%struct.ether_header* %12)
  %182 = getelementptr inbounds %struct.lladdr_info, %struct.lladdr_info* %13, i32 0, i32 0
  store i32* %181, i32** %182, align 8
  %183 = load i8*, i8** @etheraddr_string, align 8
  %184 = getelementptr inbounds %struct.lladdr_info, %struct.lladdr_info* %13, i32 0, i32 1
  store i8* %183, i8** %184, align 8
  %185 = call i32* @EDST(%struct.ether_header* %12)
  %186 = getelementptr inbounds %struct.lladdr_info, %struct.lladdr_info* %14, i32 0, i32 0
  store i32* %185, i32** %186, align 8
  %187 = load i8*, i8** @etheraddr_string, align 8
  %188 = getelementptr inbounds %struct.lladdr_info, %struct.lladdr_info* %14, i32 0, i32 1
  store i8* %187, i8** %188, align 8
  %189 = load i64, i64* %16, align 8
  %190 = load i64, i64* %8, align 8
  %191 = sub nsw i64 %190, %189
  store i64 %191, i64* %8, align 8
  %192 = load i64, i64* %16, align 8
  %193 = load i32*, i32** %7, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 %192
  store i32* %194, i32** %7, align 8
  %195 = load i64, i64* %16, align 8
  %196 = load i64, i64* %9, align 8
  %197 = sub nsw i64 %196, %195
  store i64 %197, i64* %9, align 8
  %198 = load %struct.token_header*, %struct.token_header** %10, align 8
  %199 = call i64 @FRAME_TYPE(%struct.token_header* %198)
  %200 = load i64, i64* @TOKEN_FC_LLC, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %227

202:                                              ; preds = %180
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %204 = load i32*, i32** %7, align 8
  %205 = load i64, i64* %8, align 8
  %206 = load i64, i64* %9, align 8
  %207 = call i32 @llc_print(%struct.TYPE_6__* %203, i32* %204, i64 %205, i64 %206, %struct.lladdr_info* %13, %struct.lladdr_info* %14)
  store i32 %207, i32* %11, align 4
  %208 = load i32, i32* %11, align 4
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %210, label %222

210:                                              ; preds = %202
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %219, label %215

215:                                              ; preds = %210
  %216 = load i32*, i32** %7, align 8
  %217 = load i64, i64* %9, align 8
  %218 = call i32 @ND_DEFAULTPRINT(i32* %216, i64 %217)
  br label %219

219:                                              ; preds = %215, %210
  %220 = load i32, i32* %11, align 4
  %221 = sub nsw i32 0, %220
  store i32 %221, i32* %11, align 4
  br label %222

222:                                              ; preds = %219, %202
  %223 = load i32, i32* %11, align 4
  %224 = sext i32 %223 to i64
  %225 = load i64, i64* %16, align 8
  %226 = add nsw i64 %225, %224
  store i64 %226, i64* %16, align 8
  br label %253

227:                                              ; preds = %180
  %228 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %243, label %232

232:                                              ; preds = %227
  %233 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %234 = load %struct.token_header*, %struct.token_header** %10, align 8
  %235 = load i64, i64* %8, align 8
  %236 = load i64, i64* @TOKEN_HDRLEN, align 8
  %237 = add nsw i64 %235, %236
  %238 = load i64, i64* %15, align 8
  %239 = add nsw i64 %237, %238
  %240 = call i32* @ESRC(%struct.ether_header* %12)
  %241 = call i32* @EDST(%struct.ether_header* %12)
  %242 = call i32 @token_hdr_print(%struct.TYPE_6__* %233, %struct.token_header* %234, i64 %239, i32* %240, i32* %241)
  br label %243

243:                                              ; preds = %232, %227
  %244 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %252, label %248

248:                                              ; preds = %243
  %249 = load i32*, i32** %7, align 8
  %250 = load i64, i64* %9, align 8
  %251 = call i32 @ND_DEFAULTPRINT(i32* %249, i64 %250)
  br label %252

252:                                              ; preds = %248, %243
  br label %253

253:                                              ; preds = %252, %222
  %254 = load i64, i64* %16, align 8
  store i64 %254, i64* %5, align 8
  br label %255

255:                                              ; preds = %253, %77, %61, %24
  %256 = load i64, i64* %5, align 8
  ret i64 %256
}

declare dso_local i32 @ND_PRINT(%struct.TYPE_6__*) #1

declare dso_local i32 @extract_token_addrs(%struct.token_header*, i8*, i8*) #1

declare dso_local i32* @ESRC(%struct.ether_header*) #1

declare dso_local i32* @EDST(%struct.ether_header*) #1

declare dso_local i64 @IS_SOURCE_ROUTED(%struct.token_header*) #1

declare dso_local i32 @token_hdr_print(%struct.TYPE_6__*, %struct.token_header*, i64, i32*, i32*) #1

declare dso_local i64 @RIF_LENGTH(%struct.token_header*) #1

declare dso_local i64 @BROADCAST(%struct.token_header*) #1

declare dso_local i64 @DIRECTION(%struct.token_header*) #1

declare dso_local i32 @SEGMENT_COUNT(%struct.token_header*) #1

declare dso_local i32 @RING_NUMBER(%struct.token_header*, i32) #1

declare dso_local i32 @BRIDGE_NUMBER(%struct.token_header*, i32) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i64 @LARGEST_FRAME(%struct.token_header*) #1

declare dso_local i64 @FRAME_TYPE(%struct.token_header*) #1

declare dso_local i32 @llc_print(%struct.TYPE_6__*, i32*, i64, i64, %struct.lladdr_info*, %struct.lladdr_info*) #1

declare dso_local i32 @ND_DEFAULTPRINT(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
