; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_x86emuOp_scas_word.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_x86emuOp_scas_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86emu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32, i32, i32, i32 }

@SYSMODE_PREFIX_DATA = common dso_local global i32 0, align 4
@F_DF = common dso_local global i32 0, align 4
@SYSMODE_PREFIX_REPE = common dso_local global i32 0, align 4
@F_ZF = common dso_local global i32 0, align 4
@SYSMODE_PREFIX_REPNE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.x86emu*)* @x86emuOp_scas_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x86emuOp_scas_word(%struct.x86emu* %0) #0 {
  %2 = alloca %struct.x86emu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.x86emu* %0, %struct.x86emu** %2, align 8
  %5 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %6 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @SYSMODE_PREFIX_DATA, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 4, i32* %3, align 4
  br label %14

13:                                               ; preds = %1
  store i32 2, i32* %3, align 4
  br label %14

14:                                               ; preds = %13, %12
  %15 = load i32, i32* @F_DF, align 4
  %16 = call i64 @ACCESS_FLAG(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32, i32* %3, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %18, %14
  %22 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %23 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @SYSMODE_PREFIX_REPE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %106

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %97, %29
  %31 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %32 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %98

36:                                               ; preds = %30
  %37 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %38 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @SYSMODE_PREFIX_DATA, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %62

44:                                               ; preds = %36
  %45 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %46 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %47 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %51 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @fetch_long(%struct.x86emu* %45, i32 %49, i32 %53)
  store i64 %54, i64* %4, align 8
  %55 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %56 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %57 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = load i64, i64* %4, align 8
  %61 = call i32 @cmp_long(%struct.x86emu* %55, i32 %59, i64 %60)
  br label %81

62:                                               ; preds = %36
  %63 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %64 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %65 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %69 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @fetch_word(%struct.x86emu* %63, i32 %67, i32 %71)
  store i64 %72, i64* %4, align 8
  %73 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %74 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %75 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load i64, i64* %4, align 8
  %79 = trunc i64 %78 to i32
  %80 = call i32 @cmp_word(%struct.x86emu* %73, i32 %77, i32 %79)
  br label %81

81:                                               ; preds = %62, %44
  %82 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %83 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = sub nsw i64 %85, 1
  store i64 %86, i64* %84, align 8
  %87 = load i32, i32* %3, align 4
  %88 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %89 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %91, %87
  store i32 %92, i32* %90, align 8
  %93 = load i32, i32* @F_ZF, align 4
  %94 = call i64 @ACCESS_FLAG(i32 %93)
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %81
  br label %98

97:                                               ; preds = %81
  br label %30

98:                                               ; preds = %96, %30
  %99 = load i32, i32* @SYSMODE_PREFIX_REPE, align 4
  %100 = xor i32 %99, -1
  %101 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %102 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = and i32 %104, %100
  store i32 %105, i32* %103, align 8
  br label %244

106:                                              ; preds = %21
  %107 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %108 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @SYSMODE_PREFIX_REPNE, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %191

114:                                              ; preds = %106
  br label %115

115:                                              ; preds = %182, %114
  %116 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %117 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %183

121:                                              ; preds = %115
  %122 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %123 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @SYSMODE_PREFIX_DATA, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %147

129:                                              ; preds = %121
  %130 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %131 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %132 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %136 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = call i64 @fetch_long(%struct.x86emu* %130, i32 %134, i32 %138)
  store i64 %139, i64* %4, align 8
  %140 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %141 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %142 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 5
  %144 = load i32, i32* %143, align 4
  %145 = load i64, i64* %4, align 8
  %146 = call i32 @cmp_long(%struct.x86emu* %140, i32 %144, i64 %145)
  br label %166

147:                                              ; preds = %121
  %148 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %149 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %150 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %154 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = call i64 @fetch_word(%struct.x86emu* %148, i32 %152, i32 %156)
  store i64 %157, i64* %4, align 8
  %158 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %159 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %160 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = load i64, i64* %4, align 8
  %164 = trunc i64 %163 to i32
  %165 = call i32 @cmp_word(%struct.x86emu* %158, i32 %162, i32 %164)
  br label %166

166:                                              ; preds = %147, %129
  %167 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %168 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = sub nsw i64 %170, 1
  store i64 %171, i64* %169, align 8
  %172 = load i32, i32* %3, align 4
  %173 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %174 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = add nsw i32 %176, %172
  store i32 %177, i32* %175, align 8
  %178 = load i32, i32* @F_ZF, align 4
  %179 = call i64 @ACCESS_FLAG(i32 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %166
  br label %183

182:                                              ; preds = %166
  br label %115

183:                                              ; preds = %181, %115
  %184 = load i32, i32* @SYSMODE_PREFIX_REPNE, align 4
  %185 = xor i32 %184, -1
  %186 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %187 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = and i32 %189, %185
  store i32 %190, i32* %188, align 8
  br label %243

191:                                              ; preds = %106
  %192 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %193 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* @SYSMODE_PREFIX_DATA, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %217

199:                                              ; preds = %191
  %200 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %201 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %202 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 4
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %206 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = call i64 @fetch_long(%struct.x86emu* %200, i32 %204, i32 %208)
  store i64 %209, i64* %4, align 8
  %210 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %211 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %212 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i32 0, i32 5
  %214 = load i32, i32* %213, align 4
  %215 = load i64, i64* %4, align 8
  %216 = call i32 @cmp_long(%struct.x86emu* %210, i32 %214, i64 %215)
  br label %236

217:                                              ; preds = %191
  %218 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %219 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %220 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %220, i32 0, i32 4
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %224 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = call i64 @fetch_word(%struct.x86emu* %218, i32 %222, i32 %226)
  store i64 %227, i64* %4, align 8
  %228 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %229 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %230 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 4
  %233 = load i64, i64* %4, align 8
  %234 = trunc i64 %233 to i32
  %235 = call i32 @cmp_word(%struct.x86emu* %228, i32 %232, i32 %234)
  br label %236

236:                                              ; preds = %217, %199
  %237 = load i32, i32* %3, align 4
  %238 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %239 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 8
  %242 = add nsw i32 %241, %237
  store i32 %242, i32* %240, align 8
  br label %243

243:                                              ; preds = %236, %183
  br label %244

244:                                              ; preds = %243, %98
  ret void
}

declare dso_local i64 @ACCESS_FLAG(i32) #1

declare dso_local i64 @fetch_long(%struct.x86emu*, i32, i32) #1

declare dso_local i32 @cmp_long(%struct.x86emu*, i32, i64) #1

declare dso_local i64 @fetch_word(%struct.x86emu*, i32, i32) #1

declare dso_local i32 @cmp_word(%struct.x86emu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
