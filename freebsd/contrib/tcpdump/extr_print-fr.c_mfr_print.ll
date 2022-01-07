; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-fr.c_mfr_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-fr.c_mfr_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.timeval = type { i32 }

@MFR_BEC_MASK = common dso_local global i32 0, align 4
@MFR_CTRL_FRAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"FRF.16 Control, Flags [%s], %s, length %u\00", align 1
@frf_flag_values = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@mfr_ctrl_msg_values = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Unknown Message (0x%02x)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"\0A\09IE %s (%u), length %u: \00", align 1
@mfr_ctrl_ie_values = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"0x%08x\00", align 1
@MFR_ID_STRING_MAXLEN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"\0A\09  \00", align 1
@MFR_FRAG_FRAME = common dso_local global i32 0, align 4
@MFR_B_BIT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"FRF.16 Frag, seq %u, Flags [%s], \00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"FRF.16 Frag, seq %u, Flags [%s]\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"\0A\09\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"[|mfr]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mfr_print(%struct.TYPE_8__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ND_TCHECK2(i32 %16, i32 4)
  %18 = load i32*, i32** %6, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @MFR_BEC_MASK, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* @MFR_CTRL_FRAME, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %187

25:                                               ; preds = %3
  %26 = load i32*, i32** %6, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %187

30:                                               ; preds = %25
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %32 = load i32, i32* @frf_flag_values, align 4
  %33 = load i32*, i32** %6, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @MFR_BEC_MASK, align 4
  %37 = and i32 %35, %36
  %38 = call i32 @bittok2str(i32 %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @mfr_ctrl_msg_values, align 4
  %40 = load i32*, i32** %6, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @tok2str(i32 %39, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to %struct.TYPE_8__*
  %47 = call i32 @ND_PRINT(%struct.TYPE_8__* %46)
  %48 = load i32*, i32** %6, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 3
  store i32* %49, i32** %14, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sub nsw i32 %50, 3
  store i32 %51, i32* %8, align 4
  store i32 3, i32* %10, align 4
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %30
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %4, align 4
  br label %257

58:                                               ; preds = %30
  br label %59

59:                                               ; preds = %177, %58
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = icmp ugt i64 %61, 4
  br i1 %62, label %63, label %185

63:                                               ; preds = %59
  %64 = load i32*, i32** %14, align 8
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @ND_TCHECK2(i32 %65, i32 4)
  %67 = load i32*, i32** %14, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %12, align 4
  %70 = load i32*, i32** %14, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %13, align 4
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %74 = load i32, i32* @mfr_ctrl_ie_values, align 4
  %75 = load i32, i32* %12, align 4
  %76 = call i32 @tok2str(i32 %74, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %13, align 4
  %79 = sext i32 %78 to i64
  %80 = inttoptr i64 %79 to %struct.TYPE_8__*
  %81 = call i32 @ND_PRINT(%struct.TYPE_8__* %80)
  %82 = load i32, i32* %12, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %63
  %85 = load i32, i32* %13, align 4
  %86 = sext i32 %85 to i64
  %87 = icmp ule i64 %86, 4
  br i1 %87, label %88, label %90

88:                                               ; preds = %84, %63
  %89 = load i32, i32* %10, align 4
  store i32 %89, i32* %4, align 4
  br label %257

90:                                               ; preds = %84
  %91 = load i32*, i32** %14, align 8
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %13, align 4
  %94 = call i32 @ND_TCHECK2(i32 %92, i32 %93)
  %95 = load i32*, i32** %14, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 4
  store i32* %96, i32** %14, align 8
  %97 = load i32, i32* %13, align 4
  %98 = sext i32 %97 to i64
  %99 = sub i64 %98, 4
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %13, align 4
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = sub i64 %102, 4
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %12, align 4
  switch i32 %105, label %156 [
    i32 130, label %106
    i32 133, label %113
    i32 131, label %113
    i32 129, label %145
    i32 128, label %155
    i32 132, label %155
  ]

106:                                              ; preds = %90
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %108 = load i32*, i32** %14, align 8
  %109 = call i32 @EXTRACT_32BITS(i32* %108)
  %110 = sext i32 %109 to i64
  %111 = inttoptr i64 %110 to %struct.TYPE_8__*
  %112 = call i32 @ND_PRINT(%struct.TYPE_8__* %111)
  br label %167

113:                                              ; preds = %90, %90
  store i32 0, i32* %9, align 4
  br label %114

114:                                              ; preds = %141, %113
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* %13, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %114
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* @MFR_ID_STRING_MAXLEN, align 4
  %121 = icmp slt i32 %119, %120
  br label %122

122:                                              ; preds = %118, %114
  %123 = phi i1 [ false, %114 ], [ %121, %118 ]
  br i1 %123, label %124, label %144

124:                                              ; preds = %122
  %125 = load i32*, i32** %14, align 8
  %126 = load i32, i32* %9, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %139

131:                                              ; preds = %124
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %133 = load i32*, i32** %14, align 8
  %134 = load i32, i32* %9, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @safeputchar(%struct.TYPE_8__* %132, i32 %137)
  br label %140

139:                                              ; preds = %124
  br label %144

140:                                              ; preds = %131
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %9, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %9, align 4
  br label %114

144:                                              ; preds = %139, %122
  br label %167

145:                                              ; preds = %90
  %146 = load i32, i32* %13, align 4
  %147 = sext i32 %146 to i64
  %148 = icmp eq i64 %147, 4
  br i1 %148, label %149, label %154

149:                                              ; preds = %145
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %151 = load i32*, i32** %14, align 8
  %152 = bitcast i32* %151 to %struct.timeval*
  %153 = call i32 @ts_print(%struct.TYPE_8__* %150, %struct.timeval* %152)
  br label %167

154:                                              ; preds = %145
  br label %155

155:                                              ; preds = %90, %90, %154
  br label %156

156:                                              ; preds = %90, %155
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = icmp sle i32 %159, 1
  br i1 %160, label %161, label %166

161:                                              ; preds = %156
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %163 = load i32*, i32** %14, align 8
  %164 = load i32, i32* %13, align 4
  %165 = call i32 @print_unknown_data(%struct.TYPE_8__* %162, i32* %163, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %164)
  br label %166

166:                                              ; preds = %161, %156
  br label %167

167:                                              ; preds = %166, %149, %144, %106
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = icmp sgt i32 %170, 1
  br i1 %171, label %172, label %177

172:                                              ; preds = %167
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %174 = load i32*, i32** %14, align 8
  %175 = load i32, i32* %13, align 4
  %176 = call i32 @print_unknown_data(%struct.TYPE_8__* %173, i32* %174, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %175)
  br label %177

177:                                              ; preds = %172, %167
  %178 = load i32, i32* %13, align 4
  %179 = load i32, i32* %8, align 4
  %180 = sub nsw i32 %179, %178
  store i32 %180, i32* %8, align 4
  %181 = load i32, i32* %13, align 4
  %182 = load i32*, i32** %14, align 8
  %183 = sext i32 %181 to i64
  %184 = getelementptr inbounds i32, i32* %182, i64 %183
  store i32* %184, i32** %14, align 8
  br label %59

185:                                              ; preds = %59
  %186 = load i32, i32* %10, align 4
  store i32 %186, i32* %4, align 4
  br label %257

187:                                              ; preds = %25, %3
  %188 = load i32*, i32** %6, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 0
  %190 = load i32, i32* %189, align 4
  %191 = and i32 %190, 30
  %192 = shl i32 %191, 7
  %193 = load i32*, i32** %6, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 1
  %195 = load i32, i32* %194, align 4
  %196 = or i32 %192, %195
  store i32 %196, i32* %11, align 4
  %197 = load i32*, i32** %6, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 0
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @MFR_BEC_MASK, align 4
  %201 = and i32 %199, %200
  %202 = load i32, i32* @MFR_FRAG_FRAME, align 4
  %203 = icmp eq i32 %201, %202
  br i1 %203, label %212, label %204

204:                                              ; preds = %187
  %205 = load i32*, i32** %6, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 0
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @MFR_BEC_MASK, align 4
  %209 = and i32 %207, %208
  %210 = load i32, i32* @MFR_B_BIT, align 4
  %211 = icmp eq i32 %209, %210
  br i1 %211, label %212, label %235

212:                                              ; preds = %204, %187
  %213 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %214 = load i32, i32* %11, align 4
  %215 = load i32, i32* @frf_flag_values, align 4
  %216 = load i32*, i32** %6, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 0
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* @MFR_BEC_MASK, align 4
  %220 = and i32 %218, %219
  %221 = call i32 @bittok2str(i32 %215, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %220)
  %222 = sext i32 %221 to i64
  %223 = inttoptr i64 %222 to %struct.TYPE_8__*
  %224 = call i32 @ND_PRINT(%struct.TYPE_8__* %223)
  store i32 2, i32* %10, align 4
  %225 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %226 = load i32*, i32** %6, align 8
  %227 = load i32, i32* %10, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  %230 = load i32, i32* %7, align 4
  %231 = load i32, i32* %10, align 4
  %232 = sub nsw i32 %230, %231
  %233 = call i32 @fr_print(%struct.TYPE_8__* %225, i32* %229, i32 %232)
  %234 = load i32, i32* %10, align 4
  store i32 %234, i32* %4, align 4
  br label %257

235:                                              ; preds = %204
  %236 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %237 = load i32, i32* %11, align 4
  %238 = load i32, i32* @frf_flag_values, align 4
  %239 = load i32*, i32** %6, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 0
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* @MFR_BEC_MASK, align 4
  %243 = and i32 %241, %242
  %244 = call i32 @bittok2str(i32 %238, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %243)
  %245 = sext i32 %244 to i64
  %246 = inttoptr i64 %245 to %struct.TYPE_8__*
  %247 = call i32 @ND_PRINT(%struct.TYPE_8__* %246)
  %248 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %249 = load i32*, i32** %6, align 8
  %250 = load i32, i32* %7, align 4
  %251 = call i32 @print_unknown_data(%struct.TYPE_8__* %248, i32* %249, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32 %250)
  %252 = load i32, i32* %10, align 4
  store i32 %252, i32* %4, align 4
  br label %257

253:                                              ; No predecessors!
  %254 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %255 = call i32 @ND_PRINT(%struct.TYPE_8__* bitcast ([7 x i8]* @.str.10 to %struct.TYPE_8__*))
  %256 = load i32, i32* %7, align 4
  store i32 %256, i32* %4, align 4
  br label %257

257:                                              ; preds = %253, %235, %212, %185, %88, %56
  %258 = load i32, i32* %4, align 4
  ret i32 %258
}

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_8__*) #1

declare dso_local i32 @bittok2str(i32, i8*, i32) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @EXTRACT_32BITS(i32*) #1

declare dso_local i32 @safeputchar(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @ts_print(%struct.TYPE_8__*, %struct.timeval*) #1

declare dso_local i32 @print_unknown_data(%struct.TYPE_8__*, i32*, i8*, i32) #1

declare dso_local i32 @fr_print(%struct.TYPE_8__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
