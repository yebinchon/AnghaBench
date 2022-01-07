; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ether.c_ether_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ether.c_ether_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64 }
%struct.ether_header = type { i32 }
%struct.lladdr_info = type { i8*, i32 }

@ETHER_HDRLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"[|ether]\00", align 1
@etheraddr_string = common dso_local global i8* null, align 8
@ETHERMTU = common dso_local global i64 0, align 8
@ETHERTYPE_8021Q = common dso_local global i64 0, align 8
@ETHERTYPE_8021Q9100 = common dso_local global i64 0, align 8
@ETHERTYPE_8021Q9200 = common dso_local global i64 0, align 8
@ETHERTYPE_8021QinQ = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"[|vlan]\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%s, \00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"ethertype %s, \00", align 1
@ethertype_values = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"0x%04x\00", align 1
@ETHERTYPE_JUMBO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ether_print(%struct.TYPE_11__* %0, i32* %1, i64 %2, i64 %3, void (%struct.TYPE_11__*, i32*)* %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca void (%struct.TYPE_11__*, i32*)*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.ether_header*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.lladdr_info, align 8
  %20 = alloca %struct.lladdr_info, align 8
  %21 = alloca i8*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store void (%struct.TYPE_11__*, i32*)* %4, void (%struct.TYPE_11__*, i32*)** %12, align 8
  store i32* %5, i32** %13, align 8
  %22 = load i64, i64* %11, align 8
  %23 = load i64, i64* @ETHER_HDRLEN, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %6
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %27 = call i32 @ND_PRINT(%struct.TYPE_11__* bitcast ([9 x i8]* @.str to %struct.TYPE_11__*))
  %28 = load i64, i64* %11, align 8
  store i64 %28, i64* %7, align 8
  br label %259

29:                                               ; preds = %6
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* @ETHER_HDRLEN, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %35 = call i32 @ND_PRINT(%struct.TYPE_11__* bitcast ([9 x i8]* @.str to %struct.TYPE_11__*))
  %36 = load i64, i64* %10, align 8
  store i64 %36, i64* %7, align 8
  br label %259

37:                                               ; preds = %29
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %37
  %43 = load void (%struct.TYPE_11__*, i32*)*, void (%struct.TYPE_11__*, i32*)** %12, align 8
  %44 = icmp ne void (%struct.TYPE_11__*, i32*)* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load void (%struct.TYPE_11__*, i32*)*, void (%struct.TYPE_11__*, i32*)** %12, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %48 = load i32*, i32** %13, align 8
  call void %46(%struct.TYPE_11__* %47, i32* %48)
  br label %49

49:                                               ; preds = %45, %42
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = load i64, i64* %10, align 8
  %53 = call i32 @ether_hdr_print(%struct.TYPE_11__* %50, i32* %51, i64 %52)
  br label %54

54:                                               ; preds = %49, %37
  %55 = load i64, i64* %10, align 8
  store i64 %55, i64* %15, align 8
  %56 = load i64, i64* @ETHER_HDRLEN, align 8
  %57 = load i64, i64* %10, align 8
  %58 = sub nsw i64 %57, %56
  store i64 %58, i64* %10, align 8
  %59 = load i64, i64* @ETHER_HDRLEN, align 8
  %60 = load i64, i64* %11, align 8
  %61 = sub nsw i64 %60, %59
  store i64 %61, i64* %11, align 8
  %62 = load i32*, i32** %9, align 8
  %63 = bitcast i32* %62 to %struct.ether_header*
  store %struct.ether_header* %63, %struct.ether_header** %14, align 8
  %64 = load i64, i64* @ETHER_HDRLEN, align 8
  %65 = load i32*, i32** %9, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 %64
  store i32* %66, i32** %9, align 8
  %67 = load i64, i64* @ETHER_HDRLEN, align 8
  store i64 %67, i64* %17, align 8
  %68 = load %struct.ether_header*, %struct.ether_header** %14, align 8
  %69 = call i32 @ESRC(%struct.ether_header* %68)
  %70 = getelementptr inbounds %struct.lladdr_info, %struct.lladdr_info* %19, i32 0, i32 1
  store i32 %69, i32* %70, align 8
  %71 = load i8*, i8** @etheraddr_string, align 8
  %72 = getelementptr inbounds %struct.lladdr_info, %struct.lladdr_info* %19, i32 0, i32 0
  store i8* %71, i8** %72, align 8
  %73 = load %struct.ether_header*, %struct.ether_header** %14, align 8
  %74 = call i32 @EDST(%struct.ether_header* %73)
  %75 = getelementptr inbounds %struct.lladdr_info, %struct.lladdr_info* %20, i32 0, i32 1
  store i32 %74, i32* %75, align 8
  %76 = load i8*, i8** @etheraddr_string, align 8
  %77 = getelementptr inbounds %struct.lladdr_info, %struct.lladdr_info* %20, i32 0, i32 0
  store i8* %76, i8** %77, align 8
  %78 = load %struct.ether_header*, %struct.ether_header** %14, align 8
  %79 = getelementptr inbounds %struct.ether_header, %struct.ether_header* %78, i32 0, i32 0
  %80 = call i8* @EXTRACT_16BITS(i32* %79)
  %81 = ptrtoint i8* %80 to i64
  store i64 %81, i64* %16, align 8
  br label %82

82:                                               ; preds = %180, %54
  %83 = load i64, i64* %16, align 8
  %84 = load i64, i64* @ETHERMTU, align 8
  %85 = icmp sle i64 %83, %84
  br i1 %85, label %86, label %111

86:                                               ; preds = %82
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %88 = load i32*, i32** %9, align 8
  %89 = load i64, i64* %10, align 8
  %90 = load i64, i64* %11, align 8
  %91 = call i32 @llc_print(%struct.TYPE_11__* %87, i32* %88, i64 %89, i64 %90, %struct.lladdr_info* %19, %struct.lladdr_info* %20)
  store i32 %91, i32* %18, align 4
  %92 = load i32, i32* %18, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %106

94:                                               ; preds = %86
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %94
  %100 = load i32*, i32** %9, align 8
  %101 = load i64, i64* %11, align 8
  %102 = call i32 @ND_DEFAULTPRINT(i32* %100, i64 %101)
  br label %103

103:                                              ; preds = %99, %94
  %104 = load i32, i32* %18, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %18, align 4
  br label %106

106:                                              ; preds = %103, %86
  %107 = load i32, i32* %18, align 4
  %108 = sext i32 %107 to i64
  %109 = load i64, i64* %17, align 8
  %110 = add nsw i64 %109, %108
  store i64 %110, i64* %17, align 8
  br label %257

111:                                              ; preds = %82
  %112 = load i64, i64* %16, align 8
  %113 = load i64, i64* @ETHERTYPE_8021Q, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %127, label %115

115:                                              ; preds = %111
  %116 = load i64, i64* %16, align 8
  %117 = load i64, i64* @ETHERTYPE_8021Q9100, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %127, label %119

119:                                              ; preds = %115
  %120 = load i64, i64* %16, align 8
  %121 = load i64, i64* @ETHERTYPE_8021Q9200, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %127, label %123

123:                                              ; preds = %119
  %124 = load i64, i64* %16, align 8
  %125 = load i64, i64* @ETHERTYPE_8021QinQ, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %189

127:                                              ; preds = %123, %119, %115, %111
  %128 = load i64, i64* %11, align 8
  %129 = icmp slt i64 %128, 4
  br i1 %129, label %130, label %136

130:                                              ; preds = %127
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %132 = call i32 @ND_PRINT(%struct.TYPE_11__* bitcast ([8 x i8]* @.str.1 to %struct.TYPE_11__*))
  %133 = load i64, i64* %17, align 8
  %134 = load i64, i64* %11, align 8
  %135 = add nsw i64 %133, %134
  store i64 %135, i64* %7, align 8
  br label %259

136:                                              ; preds = %127
  %137 = load i64, i64* %10, align 8
  %138 = icmp slt i64 %137, 4
  br i1 %138, label %139, label %145

139:                                              ; preds = %136
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %141 = call i32 @ND_PRINT(%struct.TYPE_11__* bitcast ([8 x i8]* @.str.1 to %struct.TYPE_11__*))
  %142 = load i64, i64* %17, align 8
  %143 = load i64, i64* %10, align 8
  %144 = add nsw i64 %142, %143
  store i64 %144, i64* %7, align 8
  br label %259

145:                                              ; preds = %136
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %159

150:                                              ; preds = %145
  %151 = load i32*, i32** %9, align 8
  %152 = call i8* @EXTRACT_16BITS(i32* %151)
  store i8* %152, i8** %21, align 8
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %154 = load i8*, i8** %21, align 8
  %155 = call i32 @ieee8021q_tci_string(i8* %154)
  %156 = sext i32 %155 to i64
  %157 = inttoptr i64 %156 to %struct.TYPE_11__*
  %158 = call i32 @ND_PRINT(%struct.TYPE_11__* %157)
  br label %159

159:                                              ; preds = %150, %145
  %160 = load i32*, i32** %9, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 2
  %162 = call i8* @EXTRACT_16BITS(i32* %161)
  %163 = ptrtoint i8* %162 to i64
  store i64 %163, i64* %16, align 8
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %180

168:                                              ; preds = %159
  %169 = load i64, i64* %16, align 8
  %170 = load i64, i64* @ETHERMTU, align 8
  %171 = icmp sgt i64 %169, %170
  br i1 %171, label %172, label %180

172:                                              ; preds = %168
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %174 = load i32, i32* @ethertype_values, align 4
  %175 = load i64, i64* %16, align 8
  %176 = call i32 @tok2str(i32 %174, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i64 %175)
  %177 = sext i32 %176 to i64
  %178 = inttoptr i64 %177 to %struct.TYPE_11__*
  %179 = call i32 @ND_PRINT(%struct.TYPE_11__* %178)
  br label %180

180:                                              ; preds = %172, %168, %159
  %181 = load i32*, i32** %9, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 4
  store i32* %182, i32** %9, align 8
  %183 = load i64, i64* %10, align 8
  %184 = sub nsw i64 %183, 4
  store i64 %184, i64* %10, align 8
  %185 = load i64, i64* %11, align 8
  %186 = sub nsw i64 %185, 4
  store i64 %186, i64* %11, align 8
  %187 = load i64, i64* %17, align 8
  %188 = add nsw i64 %187, 4
  store i64 %188, i64* %17, align 8
  br label %82

189:                                              ; preds = %123
  %190 = load i64, i64* %16, align 8
  %191 = load i64, i64* @ETHERTYPE_JUMBO, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %218

193:                                              ; preds = %189
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %195 = load i32*, i32** %9, align 8
  %196 = load i64, i64* %10, align 8
  %197 = load i64, i64* %11, align 8
  %198 = call i32 @llc_print(%struct.TYPE_11__* %194, i32* %195, i64 %196, i64 %197, %struct.lladdr_info* %19, %struct.lladdr_info* %20)
  store i32 %198, i32* %18, align 4
  %199 = load i32, i32* %18, align 4
  %200 = icmp slt i32 %199, 0
  br i1 %200, label %201, label %213

201:                                              ; preds = %193
  %202 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %210, label %206

206:                                              ; preds = %201
  %207 = load i32*, i32** %9, align 8
  %208 = load i64, i64* %11, align 8
  %209 = call i32 @ND_DEFAULTPRINT(i32* %207, i64 %208)
  br label %210

210:                                              ; preds = %206, %201
  %211 = load i32, i32* %18, align 4
  %212 = sub nsw i32 0, %211
  store i32 %212, i32* %18, align 4
  br label %213

213:                                              ; preds = %210, %193
  %214 = load i32, i32* %18, align 4
  %215 = sext i32 %214 to i64
  %216 = load i64, i64* %17, align 8
  %217 = add nsw i64 %216, %215
  store i64 %217, i64* %17, align 8
  br label %255

218:                                              ; preds = %189
  %219 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %220 = load i64, i64* %16, align 8
  %221 = load i32*, i32** %9, align 8
  %222 = load i64, i64* %10, align 8
  %223 = load i64, i64* %11, align 8
  %224 = call i64 @ethertype_print(%struct.TYPE_11__* %219, i64 %220, i32* %221, i64 %222, i64 %223, %struct.lladdr_info* %19, %struct.lladdr_info* %20)
  %225 = icmp eq i64 %224, 0
  br i1 %225, label %226, label %254

226:                                              ; preds = %218
  %227 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %244, label %231

231:                                              ; preds = %226
  %232 = load void (%struct.TYPE_11__*, i32*)*, void (%struct.TYPE_11__*, i32*)** %12, align 8
  %233 = icmp ne void (%struct.TYPE_11__*, i32*)* %232, null
  br i1 %233, label %234, label %238

234:                                              ; preds = %231
  %235 = load void (%struct.TYPE_11__*, i32*)*, void (%struct.TYPE_11__*, i32*)** %12, align 8
  %236 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %237 = load i32*, i32** %13, align 8
  call void %235(%struct.TYPE_11__* %236, i32* %237)
  br label %238

238:                                              ; preds = %234, %231
  %239 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %240 = load %struct.ether_header*, %struct.ether_header** %14, align 8
  %241 = bitcast %struct.ether_header* %240 to i32*
  %242 = load i64, i64* %15, align 8
  %243 = call i32 @ether_hdr_print(%struct.TYPE_11__* %239, i32* %241, i64 %242)
  br label %244

244:                                              ; preds = %238, %226
  %245 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %246 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %253, label %249

249:                                              ; preds = %244
  %250 = load i32*, i32** %9, align 8
  %251 = load i64, i64* %11, align 8
  %252 = call i32 @ND_DEFAULTPRINT(i32* %250, i64 %251)
  br label %253

253:                                              ; preds = %249, %244
  br label %254

254:                                              ; preds = %253, %218
  br label %255

255:                                              ; preds = %254, %213
  br label %256

256:                                              ; preds = %255
  br label %257

257:                                              ; preds = %256, %106
  %258 = load i64, i64* %17, align 8
  store i64 %258, i64* %7, align 8
  br label %259

259:                                              ; preds = %257, %139, %130, %33, %25
  %260 = load i64, i64* %7, align 8
  ret i64 %260
}

declare dso_local i32 @ND_PRINT(%struct.TYPE_11__*) #1

declare dso_local i32 @ether_hdr_print(%struct.TYPE_11__*, i32*, i64) #1

declare dso_local i32 @ESRC(%struct.ether_header*) #1

declare dso_local i32 @EDST(%struct.ether_header*) #1

declare dso_local i8* @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @llc_print(%struct.TYPE_11__*, i32*, i64, i64, %struct.lladdr_info*, %struct.lladdr_info*) #1

declare dso_local i32 @ND_DEFAULTPRINT(i32*, i64) #1

declare dso_local i32 @ieee8021q_tci_string(i8*) #1

declare dso_local i32 @tok2str(i32, i8*, i64) #1

declare dso_local i64 @ethertype_print(%struct.TYPE_11__*, i64, i32*, i64, i64, %struct.lladdr_info*, %struct.lladdr_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
