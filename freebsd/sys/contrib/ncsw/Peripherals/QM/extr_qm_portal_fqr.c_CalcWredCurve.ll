; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qm_portal_fqr.c_CalcWredCurve.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qm_portal_fqr.c_CalcWredCurve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@MINOR = common dso_local global i32 0, align 4
@E_INVALID_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"maxTh must be larger than minTh\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"probabilityDenominator mustn't be 1-64\00", align 1
@.str.2 = private unnamed_addr constant [75 x i8] c"Due to probabilityDenominator selected, maxTh-minTh must be larger than %d\00", align 1
@E_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*)* @CalcWredCurve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CalcWredCurve(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 1000, i32* %16, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %17, align 4
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %51, %2
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 256
  br i1 %24, label %25, label %54

25:                                               ; preds = %22
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %47, %25
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %27, 32
  br i1 %28, label %29, label %50

29:                                               ; preds = %26
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = shl i32 1, %34
  %36 = mul nsw i32 %33, %35
  %37 = sub nsw i32 %32, %36
  %38 = call i32 @ABS(i32 %37)
  store i32 %38, i32* %18, align 4
  %39 = load i32, i32* %18, align 4
  %40 = load i32, i32* %17, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %29
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %18, align 4
  store i32 %45, i32* %17, align 4
  br label %46

46:                                               ; preds = %42, %29
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %9, align 4
  br label %26

50:                                               ; preds = %26
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %22

54:                                               ; preds = %22
  %55 = load i32, i32* %10, align 4
  %56 = icmp slt i32 %55, 256
  %57 = zext i1 %56 to i32
  %58 = call i32 @ASSERT_COND(i32 %57)
  %59 = load i32, i32* %11, align 4
  %60 = icmp slt i32 %59, 32
  %61 = zext i1 %60 to i32
  %62 = call i32 @ASSERT_COND(i32 %61)
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %11, align 4
  %65 = shl i32 1, %64
  %66 = mul nsw i32 %63, %65
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp sle i32 %71, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %54
  %77 = load i32, i32* @MINOR, align 4
  %78 = load i32, i32* @E_INVALID_VALUE, align 4
  %79 = call i32 @RETURN_ERROR(i32 %77, i32 %78, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %80

80:                                               ; preds = %76, %54
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = icmp sgt i32 %83, 64
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = load i32, i32* @MINOR, align 4
  %87 = load i32, i32* @E_INVALID_VALUE, align 4
  %88 = call i32 @RETURN_ERROR(i32 %86, i32 %87, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %89

89:                                               ; preds = %85, %80
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = sdiv i32 256000, %92
  store i32 %93, i32* %5, align 4
  %94 = load i32, i32* %5, align 4
  %95 = srem i32 %94, 4
  %96 = load i32, i32* %16, align 4
  %97 = mul nsw i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %122

99:                                               ; preds = %89
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* %16, align 4
  %103 = mul nsw i32 4, %102
  %104 = srem i32 %101, %103
  %105 = add nsw i32 %100, %104
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* %16, align 4
  %108 = mul nsw i32 4, %107
  %109 = add nsw i32 %106, %108
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* %5, align 4
  %112 = sub nsw i32 %110, %111
  %113 = load i32, i32* %5, align 4
  %114 = load i32, i32* %6, align 4
  %115 = sub nsw i32 %113, %114
  %116 = icmp sgt i32 %112, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %99
  %118 = load i32, i32* %6, align 4
  store i32 %118, i32* %5, align 4
  br label %121

119:                                              ; preds = %99
  %120 = load i32, i32* %7, align 4
  store i32 %120, i32* %5, align 4
  br label %121

121:                                              ; preds = %119, %117
  br label %122

122:                                              ; preds = %121, %89
  %123 = load i32, i32* %5, align 4
  %124 = load i32, i32* %16, align 4
  %125 = sdiv i32 %123, %124
  store i32 %125, i32* %5, align 4
  %126 = load i32, i32* %5, align 4
  %127 = icmp sle i32 %126, 256
  %128 = zext i1 %127 to i32
  %129 = call i32 @ASSERT_COND(i32 %128)
  %130 = load i32, i32* %5, align 4
  %131 = sdiv i32 %130, 4
  %132 = sub nsw i32 %131, 1
  store i32 %132, i32* %15, align 4
  %133 = load i32, i32* %5, align 4
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = sub nsw i32 %136, %139
  %141 = icmp sge i32 %133, %140
  br i1 %141, label %142, label %149

142:                                              ; preds = %122
  %143 = load i32, i32* @MINOR, align 4
  %144 = load i32, i32* @E_INVALID_VALUE, align 4
  %145 = load i32, i32* %5, align 4
  %146 = sext i32 %145 to i64
  %147 = inttoptr i64 %146 to i8*
  %148 = call i32 @RETURN_ERROR(i32 %143, i32 %144, i8* %147)
  br label %149

149:                                              ; preds = %142, %122
  store i32 1000000, i32* %16, align 4
  %150 = load i32, i32* %5, align 4
  %151 = load i32, i32* %16, align 4
  %152 = mul nsw i32 %150, %151
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = sub nsw i32 %155, %158
  %160 = sdiv i32 %152, %159
  store i32 %160, i32* %12, align 4
  %161 = load i32, i32* %12, align 4
  store i32 %161, i32* %17, align 4
  %162 = load i32, i32* %16, align 4
  %163 = mul nsw i32 64, %162
  store i32 %163, i32* %8, align 4
  br label %164

164:                                              ; preds = %193, %149
  %165 = load i32, i32* %8, align 4
  %166 = load i32, i32* %16, align 4
  %167 = mul nsw i32 128, %166
  %168 = icmp slt i32 %165, %167
  br i1 %168, label %169, label %197

169:                                              ; preds = %164
  store i32 7, i32* %9, align 4
  br label %170

170:                                              ; preds = %189, %169
  %171 = load i32, i32* %9, align 4
  %172 = icmp slt i32 %171, 64
  br i1 %172, label %173, label %192

173:                                              ; preds = %170
  %174 = load i32, i32* %12, align 4
  %175 = load i32, i32* %8, align 4
  %176 = load i32, i32* %9, align 4
  %177 = shl i32 1, %176
  %178 = sdiv i32 %175, %177
  %179 = sub nsw i32 %174, %178
  %180 = call i32 @ABS(i32 %179)
  store i32 %180, i32* %18, align 4
  %181 = load i32, i32* %18, align 4
  %182 = load i32, i32* %17, align 4
  %183 = icmp slt i32 %181, %182
  br i1 %183, label %184, label %188

184:                                              ; preds = %173
  %185 = load i32, i32* %8, align 4
  store i32 %185, i32* %13, align 4
  %186 = load i32, i32* %9, align 4
  store i32 %186, i32* %14, align 4
  %187 = load i32, i32* %18, align 4
  store i32 %187, i32* %17, align 4
  br label %188

188:                                              ; preds = %184, %173
  br label %189

189:                                              ; preds = %188
  %190 = load i32, i32* %9, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %9, align 4
  br label %170

192:                                              ; preds = %170
  br label %193

193:                                              ; preds = %192
  %194 = load i32, i32* %16, align 4
  %195 = load i32, i32* %8, align 4
  %196 = add nsw i32 %195, %194
  store i32 %196, i32* %8, align 4
  br label %164

197:                                              ; preds = %164
  %198 = load i32, i32* %13, align 4
  %199 = load i32, i32* %16, align 4
  %200 = sdiv i32 %198, %199
  store i32 %200, i32* %13, align 4
  %201 = load i32, i32* %13, align 4
  %202 = icmp slt i32 %201, 128
  br i1 %202, label %203, label %206

203:                                              ; preds = %197
  %204 = load i32, i32* %13, align 4
  %205 = icmp sge i32 %204, 64
  br label %206

206:                                              ; preds = %203, %197
  %207 = phi i1 [ false, %197 ], [ %205, %203 ]
  %208 = zext i1 %207 to i32
  %209 = call i32 @ASSERT_COND(i32 %208)
  %210 = load i32, i32* %14, align 4
  %211 = icmp slt i32 %210, 64
  br i1 %211, label %212, label %215

212:                                              ; preds = %206
  %213 = load i32, i32* %14, align 4
  %214 = icmp sge i32 %213, 7
  br label %215

215:                                              ; preds = %212, %206
  %216 = phi i1 [ false, %206 ], [ %214, %212 ]
  %217 = zext i1 %216 to i32
  %218 = call i32 @ASSERT_COND(i32 %217)
  %219 = load i32, i32* %10, align 4
  %220 = shl i32 %219, 24
  %221 = load i32, i32* %11, align 4
  %222 = shl i32 %221, 19
  %223 = or i32 %220, %222
  %224 = load i32, i32* %13, align 4
  %225 = shl i32 %224, 12
  %226 = or i32 %223, %225
  %227 = load i32, i32* %14, align 4
  %228 = shl i32 %227, 6
  %229 = or i32 %226, %228
  %230 = load i32, i32* %15, align 4
  %231 = or i32 %229, %230
  %232 = load i32*, i32** %4, align 8
  store i32 %231, i32* %232, align 4
  %233 = load i32, i32* @E_OK, align 4
  ret i32 %233
}

declare dso_local i32 @ABS(i32) #1

declare dso_local i32 @ASSERT_COND(i32) #1

declare dso_local i32 @RETURN_ERROR(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
