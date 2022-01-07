; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-pim.c_pimv1_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-pim.c_pimv1_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@pimv1_type_str = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"[type %u]\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c" Dense-mode\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c" Sparse-mode\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c" Sparse-Dense-mode\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c" mode-%d\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c" (Hold-time \00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c" for %s > %s\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c" group %s\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"/%s\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c" RP %s hold \00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c" %s pref %d metric %d\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"RP-tree\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"SPT\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c" [v%d]\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"[|pim]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pimv1_print(%struct.TYPE_7__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32*, i32** %5, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @ND_TCHECK(i32 %10)
  %12 = load i32*, i32** %5, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = load i32, i32* @pimv1_type_str, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @tok2str(i32 %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to %struct.TYPE_7__*
  %21 = call i32 @ND_PRINT(%struct.TYPE_7__* %20)
  %22 = load i32, i32* %7, align 4
  switch i32 %22, label %223 [
    i32 131, label %23
    i32 130, label %73
    i32 129, label %90
    i32 128, label %107
    i32 135, label %153
    i32 132, label %206
    i32 134, label %206
    i32 133, label %206
  ]

23:                                               ; preds = %3
  %24 = load i32*, i32** %5, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 8
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ND_TTEST(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %53

29:                                               ; preds = %23
  %30 = load i32*, i32** %5, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 8
  %32 = load i32, i32* %31, align 4
  %33 = ashr i32 %32, 4
  switch i32 %33, label %43 [
    i32 0, label %34
    i32 1, label %37
    i32 2, label %40
  ]

34:                                               ; preds = %29
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %36 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([12 x i8]* @.str.2 to %struct.TYPE_7__*))
  br label %52

37:                                               ; preds = %29
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %39 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([13 x i8]* @.str.3 to %struct.TYPE_7__*))
  br label %52

40:                                               ; preds = %29
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %42 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([19 x i8]* @.str.4 to %struct.TYPE_7__*))
  br label %52

43:                                               ; preds = %29
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 8
  %47 = load i32, i32* %46, align 4
  %48 = ashr i32 %47, 4
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to %struct.TYPE_7__*
  %51 = call i32 @ND_PRINT(%struct.TYPE_7__* %50)
  br label %52

52:                                               ; preds = %43, %40, %37, %34
  br label %53

53:                                               ; preds = %52, %23
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %53
  %59 = load i32*, i32** %5, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 10
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ND_TCHECK2(i32 %61, i32 2)
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %64 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([13 x i8]* @.str.6 to %struct.TYPE_7__*))
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %66 = load i32*, i32** %5, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 10
  %68 = call i32 @EXTRACT_16BITS(i32* %67)
  %69 = call i32 @unsigned_relts_print(%struct.TYPE_7__* %65, i32 %68)
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %71 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([2 x i8]* @.str.7 to %struct.TYPE_7__*))
  br label %72

72:                                               ; preds = %58, %53
  br label %223

73:                                               ; preds = %3
  %74 = load i32*, i32** %5, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 8
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @ND_TCHECK2(i32 %76, i32 20)
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %80 = load i32*, i32** %5, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 20
  %82 = call i32 @ipaddr_string(%struct.TYPE_7__* %79, i32* %81)
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %84 = load i32*, i32** %5, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 24
  %86 = call i32 @ipaddr_string(%struct.TYPE_7__* %83, i32* %85)
  %87 = sext i32 %86 to i64
  %88 = inttoptr i64 %87 to %struct.TYPE_7__*
  %89 = call i32 @ND_PRINT(%struct.TYPE_7__* %88)
  br label %223

90:                                               ; preds = %3
  %91 = load i32*, i32** %5, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 12
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @ND_TCHECK2(i32 %93, i32 4)
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %97 = load i32*, i32** %5, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 8
  %99 = call i32 @ipaddr_string(%struct.TYPE_7__* %96, i32* %98)
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %101 = load i32*, i32** %5, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 12
  %103 = call i32 @ipaddr_string(%struct.TYPE_7__* %100, i32* %102)
  %104 = sext i32 %103 to i64
  %105 = inttoptr i64 %104 to %struct.TYPE_7__*
  %106 = call i32 @ND_PRINT(%struct.TYPE_7__* %105)
  br label %223

107:                                              ; preds = %3
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %152

112:                                              ; preds = %107
  %113 = load i32*, i32** %5, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 22
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @ND_TCHECK2(i32 %115, i32 2)
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %119 = load i32*, i32** %5, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 8
  %121 = call i32 @ipaddr_string(%struct.TYPE_7__* %118, i32* %120)
  %122 = sext i32 %121 to i64
  %123 = inttoptr i64 %122 to %struct.TYPE_7__*
  %124 = call i32 @ND_PRINT(%struct.TYPE_7__* %123)
  %125 = load i32*, i32** %5, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 12
  %127 = call i32 @EXTRACT_32BITS(i32* %126)
  %128 = icmp ne i32 %127, -1
  br i1 %128, label %129, label %138

129:                                              ; preds = %112
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %132 = load i32*, i32** %5, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 12
  %134 = call i32 @ipaddr_string(%struct.TYPE_7__* %131, i32* %133)
  %135 = sext i32 %134 to i64
  %136 = inttoptr i64 %135 to %struct.TYPE_7__*
  %137 = call i32 @ND_PRINT(%struct.TYPE_7__* %136)
  br label %138

138:                                              ; preds = %129, %112
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %141 = load i32*, i32** %5, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 16
  %143 = call i32 @ipaddr_string(%struct.TYPE_7__* %140, i32* %142)
  %144 = sext i32 %143 to i64
  %145 = inttoptr i64 %144 to %struct.TYPE_7__*
  %146 = call i32 @ND_PRINT(%struct.TYPE_7__* %145)
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %148 = load i32*, i32** %5, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 22
  %150 = call i32 @EXTRACT_16BITS(i32* %149)
  %151 = call i32 @unsigned_relts_print(%struct.TYPE_7__* %147, i32 %150)
  br label %152

152:                                              ; preds = %138, %107
  br label %223

153:                                              ; preds = %3
  %154 = load i32*, i32** %5, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 16
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @ND_TCHECK2(i32 %156, i32 4)
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %160 = load i32*, i32** %5, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 16
  %162 = call i32 @ipaddr_string(%struct.TYPE_7__* %159, i32* %161)
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %164 = load i32*, i32** %5, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 8
  %166 = call i32 @ipaddr_string(%struct.TYPE_7__* %163, i32* %165)
  %167 = sext i32 %166 to i64
  %168 = inttoptr i64 %167 to %struct.TYPE_7__*
  %169 = call i32 @ND_PRINT(%struct.TYPE_7__* %168)
  %170 = load i32*, i32** %5, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 12
  %172 = call i32 @EXTRACT_32BITS(i32* %171)
  %173 = icmp ne i32 %172, -1
  br i1 %173, label %174, label %183

174:                                              ; preds = %153
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %177 = load i32*, i32** %5, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 12
  %179 = call i32 @ipaddr_string(%struct.TYPE_7__* %176, i32* %178)
  %180 = sext i32 %179 to i64
  %181 = inttoptr i64 %180 to %struct.TYPE_7__*
  %182 = call i32 @ND_PRINT(%struct.TYPE_7__* %181)
  br label %183

183:                                              ; preds = %174, %153
  %184 = load i32*, i32** %5, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 24
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @ND_TCHECK2(i32 %186, i32 4)
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %189 = load i32*, i32** %5, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 20
  %191 = load i32, i32* %190, align 4
  %192 = and i32 %191, 128
  %193 = icmp ne i32 %192, 0
  %194 = zext i1 %193 to i64
  %195 = select i1 %193, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0)
  %196 = load i32*, i32** %5, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 20
  %198 = call i32 @EXTRACT_32BITS(i32* %197)
  %199 = and i32 %198, 2147483647
  %200 = load i32*, i32** %5, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 24
  %202 = call i32 @EXTRACT_32BITS(i32* %201)
  %203 = sext i32 %202 to i64
  %204 = inttoptr i64 %203 to %struct.TYPE_7__*
  %205 = call i32 @ND_PRINT(%struct.TYPE_7__* %204)
  br label %223

206:                                              ; preds = %3, %3, %3
  %207 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %222

211:                                              ; preds = %206
  %212 = load i32, i32* %6, align 4
  %213 = icmp slt i32 %212, 8
  br i1 %213, label %214, label %215

214:                                              ; preds = %211
  br label %243

215:                                              ; preds = %211
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %217 = load i32*, i32** %5, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 8
  %219 = load i32, i32* %6, align 4
  %220 = sub nsw i32 %219, 8
  %221 = call i32 @pimv1_join_prune_print(%struct.TYPE_7__* %216, i32* %218, i32 %220)
  br label %222

222:                                              ; preds = %215, %206
  br label %223

223:                                              ; preds = %3, %222, %183, %152, %90, %73, %72
  %224 = load i32*, i32** %5, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 4
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @ND_TCHECK(i32 %226)
  %228 = load i32*, i32** %5, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 4
  %230 = load i32, i32* %229, align 4
  %231 = ashr i32 %230, 4
  %232 = icmp ne i32 %231, 1
  br i1 %232, label %233, label %242

233:                                              ; preds = %223
  %234 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %235 = load i32*, i32** %5, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 4
  %237 = load i32, i32* %236, align 4
  %238 = ashr i32 %237, 4
  %239 = sext i32 %238 to i64
  %240 = inttoptr i64 %239 to %struct.TYPE_7__*
  %241 = call i32 @ND_PRINT(%struct.TYPE_7__* %240)
  br label %242

242:                                              ; preds = %233, %223
  br label %246

243:                                              ; preds = %214
  %244 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %245 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([7 x i8]* @.str.16 to %struct.TYPE_7__*))
  br label %246

246:                                              ; preds = %243, %242
  ret void
}

declare dso_local i32 @ND_TCHECK(i32) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_7__*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @ND_TTEST(i32) #1

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @unsigned_relts_print(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @ipaddr_string(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @EXTRACT_32BITS(i32*) #1

declare dso_local i32 @pimv1_join_prune_print(%struct.TYPE_7__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
