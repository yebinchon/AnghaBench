; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_nextafterl.c_nextafterl.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_nextafterl.c_nextafterl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.IEEEl2bits = type { x86_fp80 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@LDBL_NBIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local x86_fp80 @nextafterl(x86_fp80 %0, x86_fp80 %1) #0 {
  %3 = alloca x86_fp80, align 16
  %4 = alloca x86_fp80, align 16
  %5 = alloca x86_fp80, align 16
  %6 = alloca x86_fp80, align 16
  %7 = alloca %union.IEEEl2bits, align 16
  %8 = alloca %union.IEEEl2bits, align 16
  store x86_fp80 %0, x86_fp80* %4, align 16
  store x86_fp80 %1, x86_fp80* %5, align 16
  %9 = load x86_fp80, x86_fp80* %4, align 16
  %10 = bitcast %union.IEEEl2bits* %7 to x86_fp80*
  store x86_fp80 %9, x86_fp80* %10, align 16
  %11 = load x86_fp80, x86_fp80* %5, align 16
  %12 = bitcast %union.IEEEl2bits* %8 to x86_fp80*
  store x86_fp80 %11, x86_fp80* %12, align 16
  %13 = bitcast %union.IEEEl2bits* %7 to %struct.TYPE_2__*
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 16
  %16 = icmp eq i32 %15, 32767
  br i1 %16, label %17, label %29

17:                                               ; preds = %2
  %18 = bitcast %union.IEEEl2bits* %7 to %struct.TYPE_2__*
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @LDBL_NBIT, align 4
  %22 = xor i32 %21, -1
  %23 = and i32 %20, %22
  %24 = bitcast %union.IEEEl2bits* %7 to %struct.TYPE_2__*
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %23, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %46, label %29

29:                                               ; preds = %17, %2
  %30 = bitcast %union.IEEEl2bits* %8 to %struct.TYPE_2__*
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 16
  %33 = icmp eq i32 %32, 32767
  br i1 %33, label %34, label %50

34:                                               ; preds = %29
  %35 = bitcast %union.IEEEl2bits* %8 to %struct.TYPE_2__*
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @LDBL_NBIT, align 4
  %39 = xor i32 %38, -1
  %40 = and i32 %37, %39
  %41 = bitcast %union.IEEEl2bits* %8 to %struct.TYPE_2__*
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %40, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %34, %17
  %47 = load x86_fp80, x86_fp80* %4, align 16
  %48 = load x86_fp80, x86_fp80* %5, align 16
  %49 = fadd x86_fp80 %47, %48
  store x86_fp80 %49, x86_fp80* %3, align 16
  br label %202

50:                                               ; preds = %34, %29
  %51 = load x86_fp80, x86_fp80* %4, align 16
  %52 = load x86_fp80, x86_fp80* %5, align 16
  %53 = fcmp oeq x86_fp80 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load x86_fp80, x86_fp80* %5, align 16
  store x86_fp80 %55, x86_fp80* %3, align 16
  br label %202

56:                                               ; preds = %50
  %57 = load x86_fp80, x86_fp80* %4, align 16
  %58 = fcmp oeq x86_fp80 %57, 0xK00000000000000000000
  br i1 %58, label %59, label %83

59:                                               ; preds = %56
  %60 = bitcast %union.IEEEl2bits* %7 to %struct.TYPE_2__*
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  store i32 0, i32* %61, align 4
  %62 = bitcast %union.IEEEl2bits* %7 to %struct.TYPE_2__*
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  store i32 1, i32* %63, align 8
  %64 = bitcast %union.IEEEl2bits* %8 to %struct.TYPE_2__*
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = bitcast %union.IEEEl2bits* %7 to %struct.TYPE_2__*
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 4
  %69 = bitcast %union.IEEEl2bits* %7 to x86_fp80*
  %70 = load x86_fp80, x86_fp80* %69, align 16
  %71 = bitcast %union.IEEEl2bits* %7 to x86_fp80*
  %72 = load x86_fp80, x86_fp80* %71, align 16
  %73 = fmul x86_fp80 %70, %72
  store volatile x86_fp80 %73, x86_fp80* %6, align 16
  %74 = load volatile x86_fp80, x86_fp80* %6, align 16
  %75 = bitcast %union.IEEEl2bits* %7 to x86_fp80*
  %76 = load x86_fp80, x86_fp80* %75, align 16
  %77 = fcmp oeq x86_fp80 %74, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %59
  %79 = load volatile x86_fp80, x86_fp80* %6, align 16
  store x86_fp80 %79, x86_fp80* %3, align 16
  br label %202

80:                                               ; preds = %59
  %81 = bitcast %union.IEEEl2bits* %7 to x86_fp80*
  %82 = load x86_fp80, x86_fp80* %81, align 16
  store x86_fp80 %82, x86_fp80* %3, align 16
  br label %202

83:                                               ; preds = %56
  %84 = load x86_fp80, x86_fp80* %4, align 16
  %85 = fcmp ogt x86_fp80 %84, 0xK00000000000000000000
  %86 = zext i1 %85 to i32
  %87 = load x86_fp80, x86_fp80* %4, align 16
  %88 = load x86_fp80, x86_fp80* %5, align 16
  %89 = fcmp olt x86_fp80 %87, %88
  %90 = zext i1 %89 to i32
  %91 = xor i32 %86, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %129

93:                                               ; preds = %83
  %94 = bitcast %union.IEEEl2bits* %7 to %struct.TYPE_2__*
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %124

98:                                               ; preds = %93
  %99 = bitcast %union.IEEEl2bits* %7 to %struct.TYPE_2__*
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @LDBL_NBIT, align 4
  %103 = xor i32 %102, -1
  %104 = and i32 %101, %103
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %98
  %107 = bitcast %union.IEEEl2bits* %7 to %struct.TYPE_2__*
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 16
  %110 = sub nsw i32 %109, 1
  store i32 %110, i32* %108, align 16
  br label %111

111:                                              ; preds = %106, %98
  %112 = bitcast %union.IEEEl2bits* %7 to %struct.TYPE_2__*
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = sub nsw i32 %114, 1
  %116 = bitcast %union.IEEEl2bits* %7 to %struct.TYPE_2__*
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @LDBL_NBIT, align 4
  %120 = and i32 %118, %119
  %121 = or i32 %115, %120
  %122 = bitcast %union.IEEEl2bits* %7 to %struct.TYPE_2__*
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 4
  br label %124

124:                                              ; preds = %111, %93
  %125 = bitcast %union.IEEEl2bits* %7 to %struct.TYPE_2__*
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = sub nsw i32 %127, 1
  store i32 %128, i32* %126, align 8
  br label %165

129:                                              ; preds = %83
  %130 = bitcast %union.IEEEl2bits* %7 to %struct.TYPE_2__*
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %131, align 8
  %134 = bitcast %union.IEEEl2bits* %7 to %struct.TYPE_2__*
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %164

138:                                              ; preds = %129
  %139 = bitcast %union.IEEEl2bits* %7 to %struct.TYPE_2__*
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %141, 1
  %143 = bitcast %union.IEEEl2bits* %7 to %struct.TYPE_2__*
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @LDBL_NBIT, align 4
  %147 = and i32 %145, %146
  %148 = or i32 %142, %147
  %149 = bitcast %union.IEEEl2bits* %7 to %struct.TYPE_2__*
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 1
  store i32 %148, i32* %150, align 4
  %151 = bitcast %union.IEEEl2bits* %7 to %struct.TYPE_2__*
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @LDBL_NBIT, align 4
  %155 = xor i32 %154, -1
  %156 = and i32 %153, %155
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %138
  %159 = bitcast %union.IEEEl2bits* %7 to %struct.TYPE_2__*
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 16
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %160, align 16
  br label %163

163:                                              ; preds = %158, %138
  br label %164

164:                                              ; preds = %163, %129
  br label %165

165:                                              ; preds = %164, %124
  %166 = bitcast %union.IEEEl2bits* %7 to %struct.TYPE_2__*
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 16
  %169 = icmp eq i32 %168, 32767
  br i1 %169, label %170, label %174

170:                                              ; preds = %165
  %171 = load x86_fp80, x86_fp80* %4, align 16
  %172 = load x86_fp80, x86_fp80* %4, align 16
  %173 = fadd x86_fp80 %171, %172
  store x86_fp80 %173, x86_fp80* %3, align 16
  br label %202

174:                                              ; preds = %165
  %175 = bitcast %union.IEEEl2bits* %7 to %struct.TYPE_2__*
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 16
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %199

179:                                              ; preds = %174
  %180 = bitcast %union.IEEEl2bits* %7 to { i64, i64 }*
  %181 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 16
  %183 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %180, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = call i32 @mask_nbit_l(i64 %182, i64 %184)
  %186 = bitcast %union.IEEEl2bits* %7 to x86_fp80*
  %187 = load x86_fp80, x86_fp80* %186, align 16
  %188 = bitcast %union.IEEEl2bits* %7 to x86_fp80*
  %189 = load x86_fp80, x86_fp80* %188, align 16
  %190 = fmul x86_fp80 %187, %189
  store volatile x86_fp80 %190, x86_fp80* %6, align 16
  %191 = load volatile x86_fp80, x86_fp80* %6, align 16
  %192 = bitcast %union.IEEEl2bits* %7 to x86_fp80*
  %193 = load x86_fp80, x86_fp80* %192, align 16
  %194 = fcmp une x86_fp80 %191, %193
  br i1 %194, label %195, label %198

195:                                              ; preds = %179
  %196 = bitcast %union.IEEEl2bits* %7 to x86_fp80*
  %197 = load x86_fp80, x86_fp80* %196, align 16
  store x86_fp80 %197, x86_fp80* %3, align 16
  br label %202

198:                                              ; preds = %179
  br label %199

199:                                              ; preds = %198, %174
  %200 = bitcast %union.IEEEl2bits* %7 to x86_fp80*
  %201 = load x86_fp80, x86_fp80* %200, align 16
  store x86_fp80 %201, x86_fp80* %3, align 16
  br label %202

202:                                              ; preds = %199, %195, %170, %80, %78, %54, %46
  %203 = load x86_fp80, x86_fp80* %3, align 16
  ret x86_fp80 %203
}

declare dso_local i32 @mask_nbit_l(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
