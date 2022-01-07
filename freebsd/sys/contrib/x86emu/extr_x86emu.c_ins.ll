; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_ins.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_ins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86emu = type { %struct.TYPE_2__, i32 (%struct.x86emu*, i32)*, i32 (%struct.x86emu*, i32)*, i32 (%struct.x86emu*, i32)* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i64, i64 }

@F_DF = common dso_local global i32 0, align 4
@SYSMODE_PREFIX_REPE = common dso_local global i32 0, align 4
@SYSMODE_PREFIX_REPNE = common dso_local global i32 0, align 4
@SYSMODE_PREFIX_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.x86emu*, i32)* @ins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ins(%struct.x86emu* %0, i32 %1) #0 {
  %3 = alloca %struct.x86emu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.x86emu* %0, %struct.x86emu** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* @F_DF, align 4
  %9 = call i64 @ACCESS_FLAG(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %5, align 4
  br label %14

14:                                               ; preds = %11, %2
  %15 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %16 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @SYSMODE_PREFIX_REPE, align 4
  %20 = load i32, i32* @SYSMODE_PREFIX_REPNE, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %18, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %166

24:                                               ; preds = %14
  %25 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %26 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @SYSMODE_PREFIX_DATA, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %24
  %33 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %34 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  br label %42

37:                                               ; preds = %24
  %38 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %39 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 5
  %41 = load i64, i64* %40, align 8
  br label %42

42:                                               ; preds = %37, %32
  %43 = phi i64 [ %36, %32 ], [ %41, %37 ]
  store i64 %43, i64* %6, align 8
  %44 = load i32, i32* %4, align 4
  switch i32 %44, label %141 [
    i32 1, label %45
    i32 2, label %77
    i32 4, label %109
  ]

45:                                               ; preds = %42
  br label %46

46:                                               ; preds = %50, %45
  %47 = load i64, i64* %6, align 8
  %48 = add nsw i64 %47, -1
  store i64 %48, i64* %6, align 8
  %49 = icmp ne i64 %47, 0
  br i1 %49, label %50, label %76

50:                                               ; preds = %46
  %51 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %52 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %53 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %57 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %61 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %60, i32 0, i32 3
  %62 = load i32 (%struct.x86emu*, i32)*, i32 (%struct.x86emu*, i32)** %61, align 8
  %63 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %64 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %65 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 %62(%struct.x86emu* %63, i32 %67)
  %69 = call i32 @store_byte(%struct.x86emu* %51, i32 %55, i32 %59, i32 %68)
  %70 = load i32, i32* %5, align 4
  %71 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %72 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, %70
  store i32 %75, i32* %73, align 4
  br label %46

76:                                               ; preds = %46
  br label %141

77:                                               ; preds = %42
  br label %78

78:                                               ; preds = %82, %77
  %79 = load i64, i64* %6, align 8
  %80 = add nsw i64 %79, -1
  store i64 %80, i64* %6, align 8
  %81 = icmp ne i64 %79, 0
  br i1 %81, label %82, label %108

82:                                               ; preds = %78
  %83 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %84 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %85 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %89 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %93 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %92, i32 0, i32 2
  %94 = load i32 (%struct.x86emu*, i32)*, i32 (%struct.x86emu*, i32)** %93, align 8
  %95 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %96 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %97 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i32 %94(%struct.x86emu* %95, i32 %99)
  %101 = call i32 @store_word(%struct.x86emu* %83, i32 %87, i32 %91, i32 %100)
  %102 = load i32, i32* %5, align 4
  %103 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %104 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, %102
  store i32 %107, i32* %105, align 4
  br label %78

108:                                              ; preds = %78
  br label %141

109:                                              ; preds = %42
  br label %110

110:                                              ; preds = %109
  %111 = load i64, i64* %6, align 8
  %112 = add nsw i64 %111, -1
  store i64 %112, i64* %6, align 8
  %113 = icmp ne i64 %111, 0
  br i1 %113, label %114, label %140

114:                                              ; preds = %110
  %115 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %116 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %117 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %121 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %125 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %124, i32 0, i32 1
  %126 = load i32 (%struct.x86emu*, i32)*, i32 (%struct.x86emu*, i32)** %125, align 8
  %127 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %128 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %129 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = call i32 %126(%struct.x86emu* %127, i32 %131)
  %133 = call i32 @store_long(%struct.x86emu* %115, i32 %119, i32 %123, i32 %132)
  %134 = load i32, i32* %5, align 4
  %135 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %136 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, %134
  store i32 %139, i32* %137, align 4
  br label %140

140:                                              ; preds = %114, %110
  br label %141

141:                                              ; preds = %140, %42, %108, %76
  %142 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %143 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 5
  store i64 0, i64* %144, align 8
  %145 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %146 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @SYSMODE_PREFIX_DATA, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %141
  %153 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %154 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 4
  store i64 0, i64* %155, align 8
  br label %156

156:                                              ; preds = %152, %141
  %157 = load i32, i32* @SYSMODE_PREFIX_REPE, align 4
  %158 = load i32, i32* @SYSMODE_PREFIX_REPNE, align 4
  %159 = or i32 %157, %158
  %160 = xor i32 %159, -1
  %161 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %162 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = and i32 %164, %160
  store i32 %165, i32* %163, align 8
  br label %235

166:                                              ; preds = %14
  %167 = load i32, i32* %4, align 4
  switch i32 %167, label %228 [
    i32 1, label %168
    i32 2, label %188
    i32 4, label %208
  ]

168:                                              ; preds = %166
  %169 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %170 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %171 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %175 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %179 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %178, i32 0, i32 3
  %180 = load i32 (%struct.x86emu*, i32)*, i32 (%struct.x86emu*, i32)** %179, align 8
  %181 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %182 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %183 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = call i32 %180(%struct.x86emu* %181, i32 %185)
  %187 = call i32 @store_byte(%struct.x86emu* %169, i32 %173, i32 %177, i32 %186)
  br label %228

188:                                              ; preds = %166
  %189 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %190 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %191 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %195 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %199 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %198, i32 0, i32 2
  %200 = load i32 (%struct.x86emu*, i32)*, i32 (%struct.x86emu*, i32)** %199, align 8
  %201 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %202 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %203 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = call i32 %200(%struct.x86emu* %201, i32 %205)
  %207 = call i32 @store_word(%struct.x86emu* %189, i32 %193, i32 %197, i32 %206)
  br label %228

208:                                              ; preds = %166
  %209 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %210 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %211 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %215 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %219 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %218, i32 0, i32 1
  %220 = load i32 (%struct.x86emu*, i32)*, i32 (%struct.x86emu*, i32)** %219, align 8
  %221 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %222 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %223 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 8
  %226 = call i32 %220(%struct.x86emu* %221, i32 %225)
  %227 = call i32 @store_long(%struct.x86emu* %209, i32 %213, i32 %217, i32 %226)
  br label %228

228:                                              ; preds = %166, %208, %188, %168
  %229 = load i32, i32* %5, align 4
  %230 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %231 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = add nsw i32 %233, %229
  store i32 %234, i32* %232, align 4
  br label %235

235:                                              ; preds = %228, %156
  ret void
}

declare dso_local i64 @ACCESS_FLAG(i32) #1

declare dso_local i32 @store_byte(%struct.x86emu*, i32, i32, i32) #1

declare dso_local i32 @store_word(%struct.x86emu*, i32, i32, i32) #1

declare dso_local i32 @store_long(%struct.x86emu*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
