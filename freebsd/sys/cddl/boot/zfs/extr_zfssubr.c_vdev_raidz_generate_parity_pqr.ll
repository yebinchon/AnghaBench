; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/boot/zfs/extr_zfssubr.c_vdev_raidz_generate_parity_pqr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/boot/zfs/extr_zfssubr.c_vdev_raidz_generate_parity_pqr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32* }

@VDEV_RAIDZ_P = common dso_local global i64 0, align 8
@VDEV_RAIDZ_Q = common dso_local global i64 0, align 8
@VDEV_RAIDZ_R = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @vdev_raidz_generate_parity_pqr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdev_raidz_generate_parity_pqr(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = load i64, i64* @VDEV_RAIDZ_P, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = udiv i64 %19, 4
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %7, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = load i64, i64* @VDEV_RAIDZ_P, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load i64, i64* @VDEV_RAIDZ_Q, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %28, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @ASSERT(i32 %37)
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load i64, i64* @VDEV_RAIDZ_P, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load i64, i64* @VDEV_RAIDZ_R, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %45, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @ASSERT(i32 %54)
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %11, align 4
  br label %59

59:                                               ; preds = %236, %1
  %60 = load i32, i32* %11, align 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %239

65:                                               ; preds = %59
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  store i32* %73, i32** %6, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = load i64, i64* @VDEV_RAIDZ_P, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  store i32* %80, i32** %3, align 8
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = load i64, i64* @VDEV_RAIDZ_Q, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  store i32* %87, i32** %4, align 8
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = load i64, i64* @VDEV_RAIDZ_R, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  store i32* %94, i32** %5, align 8
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 2
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = sext i32 %102 to i64
  %104 = udiv i64 %103, 4
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %11, align 4
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp eq i32 %106, %109
  br i1 %110, label %111, label %168

111:                                              ; preds = %65
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* %7, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %118, label %115

115:                                              ; preds = %111
  %116 = load i32, i32* %8, align 4
  %117 = icmp eq i32 %116, 0
  br label %118

118:                                              ; preds = %115, %111
  %119 = phi i1 [ true, %111 ], [ %117, %115 ]
  %120 = zext i1 %119 to i32
  %121 = call i32 @ASSERT(i32 %120)
  store i32 0, i32* %10, align 4
  br label %122

122:                                              ; preds = %136, %118
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* %8, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %147

126:                                              ; preds = %122
  %127 = load i32*, i32** %6, align 8
  %128 = load i32, i32* %127, align 4
  %129 = load i32*, i32** %3, align 8
  store i32 %128, i32* %129, align 4
  %130 = load i32*, i32** %6, align 8
  %131 = load i32, i32* %130, align 4
  %132 = load i32*, i32** %4, align 8
  store i32 %131, i32* %132, align 4
  %133 = load i32*, i32** %6, align 8
  %134 = load i32, i32* %133, align 4
  %135 = load i32*, i32** %5, align 8
  store i32 %134, i32* %135, align 4
  br label %136

136:                                              ; preds = %126
  %137 = load i32, i32* %10, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %10, align 4
  %139 = load i32*, i32** %6, align 8
  %140 = getelementptr inbounds i32, i32* %139, i32 1
  store i32* %140, i32** %6, align 8
  %141 = load i32*, i32** %3, align 8
  %142 = getelementptr inbounds i32, i32* %141, i32 1
  store i32* %142, i32** %3, align 8
  %143 = load i32*, i32** %4, align 8
  %144 = getelementptr inbounds i32, i32* %143, i32 1
  store i32* %144, i32** %4, align 8
  %145 = load i32*, i32** %5, align 8
  %146 = getelementptr inbounds i32, i32* %145, i32 1
  store i32* %146, i32** %5, align 8
  br label %122

147:                                              ; preds = %122
  br label %148

148:                                              ; preds = %156, %147
  %149 = load i32, i32* %10, align 4
  %150 = load i32, i32* %7, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %167

152:                                              ; preds = %148
  %153 = load i32*, i32** %3, align 8
  store i32 0, i32* %153, align 4
  %154 = load i32*, i32** %4, align 8
  store i32 0, i32* %154, align 4
  %155 = load i32*, i32** %5, align 8
  store i32 0, i32* %155, align 4
  br label %156

156:                                              ; preds = %152
  %157 = load i32, i32* %10, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %10, align 4
  %159 = load i32*, i32** %6, align 8
  %160 = getelementptr inbounds i32, i32* %159, i32 1
  store i32* %160, i32** %6, align 8
  %161 = load i32*, i32** %3, align 8
  %162 = getelementptr inbounds i32, i32* %161, i32 1
  store i32* %162, i32** %3, align 8
  %163 = load i32*, i32** %4, align 8
  %164 = getelementptr inbounds i32, i32* %163, i32 1
  store i32* %164, i32** %4, align 8
  %165 = load i32*, i32** %5, align 8
  %166 = getelementptr inbounds i32, i32* %165, i32 1
  store i32* %166, i32** %5, align 8
  br label %148

167:                                              ; preds = %148
  br label %235

168:                                              ; preds = %65
  %169 = load i32, i32* %8, align 4
  %170 = load i32, i32* %7, align 4
  %171 = icmp sle i32 %169, %170
  %172 = zext i1 %171 to i32
  %173 = call i32 @ASSERT(i32 %172)
  store i32 0, i32* %10, align 4
  br label %174

174:                                              ; preds = %202, %168
  %175 = load i32, i32* %10, align 4
  %176 = load i32, i32* %8, align 4
  %177 = icmp slt i32 %175, %176
  br i1 %177, label %178, label %213

178:                                              ; preds = %174
  %179 = load i32*, i32** %6, align 8
  %180 = load i32, i32* %179, align 4
  %181 = load i32*, i32** %3, align 8
  %182 = load i32, i32* %181, align 4
  %183 = xor i32 %182, %180
  store i32 %183, i32* %181, align 4
  %184 = load i32*, i32** %4, align 8
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* %9, align 4
  %187 = call i32 @VDEV_RAIDZ_64MUL_2(i32 %185, i32 %186)
  %188 = load i32*, i32** %6, align 8
  %189 = load i32, i32* %188, align 4
  %190 = load i32*, i32** %4, align 8
  %191 = load i32, i32* %190, align 4
  %192 = xor i32 %191, %189
  store i32 %192, i32* %190, align 4
  %193 = load i32*, i32** %5, align 8
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* %9, align 4
  %196 = call i32 @VDEV_RAIDZ_64MUL_4(i32 %194, i32 %195)
  %197 = load i32*, i32** %6, align 8
  %198 = load i32, i32* %197, align 4
  %199 = load i32*, i32** %5, align 8
  %200 = load i32, i32* %199, align 4
  %201 = xor i32 %200, %198
  store i32 %201, i32* %199, align 4
  br label %202

202:                                              ; preds = %178
  %203 = load i32, i32* %10, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %10, align 4
  %205 = load i32*, i32** %6, align 8
  %206 = getelementptr inbounds i32, i32* %205, i32 1
  store i32* %206, i32** %6, align 8
  %207 = load i32*, i32** %3, align 8
  %208 = getelementptr inbounds i32, i32* %207, i32 1
  store i32* %208, i32** %3, align 8
  %209 = load i32*, i32** %4, align 8
  %210 = getelementptr inbounds i32, i32* %209, i32 1
  store i32* %210, i32** %4, align 8
  %211 = load i32*, i32** %5, align 8
  %212 = getelementptr inbounds i32, i32* %211, i32 1
  store i32* %212, i32** %5, align 8
  br label %174

213:                                              ; preds = %174
  br label %214

214:                                              ; preds = %227, %213
  %215 = load i32, i32* %10, align 4
  %216 = load i32, i32* %7, align 4
  %217 = icmp slt i32 %215, %216
  br i1 %217, label %218, label %234

218:                                              ; preds = %214
  %219 = load i32*, i32** %4, align 8
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* %9, align 4
  %222 = call i32 @VDEV_RAIDZ_64MUL_2(i32 %220, i32 %221)
  %223 = load i32*, i32** %5, align 8
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* %9, align 4
  %226 = call i32 @VDEV_RAIDZ_64MUL_4(i32 %224, i32 %225)
  br label %227

227:                                              ; preds = %218
  %228 = load i32, i32* %10, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %10, align 4
  %230 = load i32*, i32** %4, align 8
  %231 = getelementptr inbounds i32, i32* %230, i32 1
  store i32* %231, i32** %4, align 8
  %232 = load i32*, i32** %5, align 8
  %233 = getelementptr inbounds i32, i32* %232, i32 1
  store i32* %233, i32** %5, align 8
  br label %214

234:                                              ; preds = %214
  br label %235

235:                                              ; preds = %234, %167
  br label %236

236:                                              ; preds = %235
  %237 = load i32, i32* %11, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %11, align 4
  br label %59

239:                                              ; preds = %59
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @VDEV_RAIDZ_64MUL_2(i32, i32) #1

declare dso_local i32 @VDEV_RAIDZ_64MUL_4(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
