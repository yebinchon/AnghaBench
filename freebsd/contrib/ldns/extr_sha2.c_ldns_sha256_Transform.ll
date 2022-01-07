; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_sha2.c_ldns_sha256_Transform.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_sha2.c_ldns_sha256_Transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64*, i64 }

@K256 = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i64*)* @ldns_sha256_Transform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ldns_sha256_Transform(%struct.TYPE_3__* %0, i64* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i64* %1, i64** %4, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i64*
  store i64* %22, i64** %17, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %5, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 1
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %6, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 2
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %7, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 3
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %8, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 4
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %9, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 5
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %10, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 6
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %11, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 7
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %12, align 8
  store i32 0, i32* %18, align 4
  br label %63

63:                                               ; preds = %116, %2
  %64 = load i64*, i64** %4, align 8
  %65 = getelementptr inbounds i64, i64* %64, i32 1
  store i64* %65, i64** %4, align 8
  %66 = load i64, i64* %64, align 8
  %67 = trunc i64 %66 to i32
  %68 = load i64*, i64** %17, align 8
  %69 = load i32, i32* %18, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @REVERSE32(i32 %67, i64 %72)
  %74 = load i64, i64* %12, align 8
  %75 = load i64, i64* %9, align 8
  %76 = call i64 @Sigma1_256(i64 %75)
  %77 = add nsw i64 %74, %76
  %78 = load i64, i64* %9, align 8
  %79 = load i64, i64* %10, align 8
  %80 = load i64, i64* %11, align 8
  %81 = call i64 @Ch(i64 %78, i64 %79, i64 %80)
  %82 = add nsw i64 %77, %81
  %83 = load i64*, i64** @K256, align 8
  %84 = load i32, i32* %18, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %83, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %82, %87
  %89 = load i64*, i64** %17, align 8
  %90 = load i32, i32* %18, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %89, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %88, %93
  store i64 %94, i64* %15, align 8
  %95 = load i64, i64* %5, align 8
  %96 = call i64 @Sigma0_256(i64 %95)
  %97 = load i64, i64* %5, align 8
  %98 = load i64, i64* %6, align 8
  %99 = load i64, i64* %7, align 8
  %100 = call i64 @Maj(i64 %97, i64 %98, i64 %99)
  %101 = add nsw i64 %96, %100
  store i64 %101, i64* %16, align 8
  %102 = load i64, i64* %11, align 8
  store i64 %102, i64* %12, align 8
  %103 = load i64, i64* %10, align 8
  store i64 %103, i64* %11, align 8
  %104 = load i64, i64* %9, align 8
  store i64 %104, i64* %10, align 8
  %105 = load i64, i64* %8, align 8
  %106 = load i64, i64* %15, align 8
  %107 = add nsw i64 %105, %106
  store i64 %107, i64* %9, align 8
  %108 = load i64, i64* %7, align 8
  store i64 %108, i64* %8, align 8
  %109 = load i64, i64* %6, align 8
  store i64 %109, i64* %7, align 8
  %110 = load i64, i64* %5, align 8
  store i64 %110, i64* %6, align 8
  %111 = load i64, i64* %15, align 8
  %112 = load i64, i64* %16, align 8
  %113 = add nsw i64 %111, %112
  store i64 %113, i64* %5, align 8
  %114 = load i32, i32* %18, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %18, align 4
  br label %116

116:                                              ; preds = %63
  %117 = load i32, i32* %18, align 4
  %118 = icmp slt i32 %117, 16
  br i1 %118, label %63, label %119

119:                                              ; preds = %116
  br label %120

120:                                              ; preds = %194, %119
  %121 = load i64*, i64** %17, align 8
  %122 = load i32, i32* %18, align 4
  %123 = add nsw i32 %122, 1
  %124 = and i32 %123, 15
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i64, i64* %121, i64 %125
  %127 = load i64, i64* %126, align 8
  store i64 %127, i64* %13, align 8
  %128 = load i64, i64* %13, align 8
  %129 = call i64 @sigma0_256(i64 %128)
  store i64 %129, i64* %13, align 8
  %130 = load i64*, i64** %17, align 8
  %131 = load i32, i32* %18, align 4
  %132 = add nsw i32 %131, 14
  %133 = and i32 %132, 15
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i64, i64* %130, i64 %134
  %136 = load i64, i64* %135, align 8
  store i64 %136, i64* %14, align 8
  %137 = load i64, i64* %14, align 8
  %138 = call i64 @sigma1_256(i64 %137)
  store i64 %138, i64* %14, align 8
  %139 = load i64, i64* %12, align 8
  %140 = load i64, i64* %9, align 8
  %141 = call i64 @Sigma1_256(i64 %140)
  %142 = add nsw i64 %139, %141
  %143 = load i64, i64* %9, align 8
  %144 = load i64, i64* %10, align 8
  %145 = load i64, i64* %11, align 8
  %146 = call i64 @Ch(i64 %143, i64 %144, i64 %145)
  %147 = add nsw i64 %142, %146
  %148 = load i64*, i64** @K256, align 8
  %149 = load i32, i32* %18, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i64, i64* %148, i64 %150
  %152 = load i64, i64* %151, align 8
  %153 = add nsw i64 %147, %152
  %154 = load i64, i64* %14, align 8
  %155 = load i64*, i64** %17, align 8
  %156 = load i32, i32* %18, align 4
  %157 = add nsw i32 %156, 9
  %158 = and i32 %157, 15
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i64, i64* %155, i64 %159
  %161 = load i64, i64* %160, align 8
  %162 = add nsw i64 %154, %161
  %163 = load i64, i64* %13, align 8
  %164 = add nsw i64 %162, %163
  %165 = load i64*, i64** %17, align 8
  %166 = load i32, i32* %18, align 4
  %167 = and i32 %166, 15
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i64, i64* %165, i64 %168
  %170 = load i64, i64* %169, align 8
  %171 = add nsw i64 %170, %164
  store i64 %171, i64* %169, align 8
  %172 = add nsw i64 %153, %171
  store i64 %172, i64* %15, align 8
  %173 = load i64, i64* %5, align 8
  %174 = call i64 @Sigma0_256(i64 %173)
  %175 = load i64, i64* %5, align 8
  %176 = load i64, i64* %6, align 8
  %177 = load i64, i64* %7, align 8
  %178 = call i64 @Maj(i64 %175, i64 %176, i64 %177)
  %179 = add nsw i64 %174, %178
  store i64 %179, i64* %16, align 8
  %180 = load i64, i64* %11, align 8
  store i64 %180, i64* %12, align 8
  %181 = load i64, i64* %10, align 8
  store i64 %181, i64* %11, align 8
  %182 = load i64, i64* %9, align 8
  store i64 %182, i64* %10, align 8
  %183 = load i64, i64* %8, align 8
  %184 = load i64, i64* %15, align 8
  %185 = add nsw i64 %183, %184
  store i64 %185, i64* %9, align 8
  %186 = load i64, i64* %7, align 8
  store i64 %186, i64* %8, align 8
  %187 = load i64, i64* %6, align 8
  store i64 %187, i64* %7, align 8
  %188 = load i64, i64* %5, align 8
  store i64 %188, i64* %6, align 8
  %189 = load i64, i64* %15, align 8
  %190 = load i64, i64* %16, align 8
  %191 = add nsw i64 %189, %190
  store i64 %191, i64* %5, align 8
  %192 = load i32, i32* %18, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %18, align 4
  br label %194

194:                                              ; preds = %120
  %195 = load i32, i32* %18, align 4
  %196 = icmp slt i32 %195, 64
  br i1 %196, label %120, label %197

197:                                              ; preds = %194
  %198 = load i64, i64* %5, align 8
  %199 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 0
  %201 = load i64*, i64** %200, align 8
  %202 = getelementptr inbounds i64, i64* %201, i64 0
  %203 = load i64, i64* %202, align 8
  %204 = add nsw i64 %203, %198
  store i64 %204, i64* %202, align 8
  %205 = load i64, i64* %6, align 8
  %206 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i32 0, i32 0
  %208 = load i64*, i64** %207, align 8
  %209 = getelementptr inbounds i64, i64* %208, i64 1
  %210 = load i64, i64* %209, align 8
  %211 = add nsw i64 %210, %205
  store i64 %211, i64* %209, align 8
  %212 = load i64, i64* %7, align 8
  %213 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 0
  %215 = load i64*, i64** %214, align 8
  %216 = getelementptr inbounds i64, i64* %215, i64 2
  %217 = load i64, i64* %216, align 8
  %218 = add nsw i64 %217, %212
  store i64 %218, i64* %216, align 8
  %219 = load i64, i64* %8, align 8
  %220 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i32 0, i32 0
  %222 = load i64*, i64** %221, align 8
  %223 = getelementptr inbounds i64, i64* %222, i64 3
  %224 = load i64, i64* %223, align 8
  %225 = add nsw i64 %224, %219
  store i64 %225, i64* %223, align 8
  %226 = load i64, i64* %9, align 8
  %227 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %228 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %227, i32 0, i32 0
  %229 = load i64*, i64** %228, align 8
  %230 = getelementptr inbounds i64, i64* %229, i64 4
  %231 = load i64, i64* %230, align 8
  %232 = add nsw i64 %231, %226
  store i64 %232, i64* %230, align 8
  %233 = load i64, i64* %10, align 8
  %234 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %235 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %234, i32 0, i32 0
  %236 = load i64*, i64** %235, align 8
  %237 = getelementptr inbounds i64, i64* %236, i64 5
  %238 = load i64, i64* %237, align 8
  %239 = add nsw i64 %238, %233
  store i64 %239, i64* %237, align 8
  %240 = load i64, i64* %11, align 8
  %241 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %242 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %241, i32 0, i32 0
  %243 = load i64*, i64** %242, align 8
  %244 = getelementptr inbounds i64, i64* %243, i64 6
  %245 = load i64, i64* %244, align 8
  %246 = add nsw i64 %245, %240
  store i64 %246, i64* %244, align 8
  %247 = load i64, i64* %12, align 8
  %248 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %249 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %248, i32 0, i32 0
  %250 = load i64*, i64** %249, align 8
  %251 = getelementptr inbounds i64, i64* %250, i64 7
  %252 = load i64, i64* %251, align 8
  %253 = add nsw i64 %252, %247
  store i64 %253, i64* %251, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %5, align 8
  ret void
}

declare dso_local i32 @REVERSE32(i32, i64) #1

declare dso_local i64 @Sigma1_256(i64) #1

declare dso_local i64 @Ch(i64, i64, i64) #1

declare dso_local i64 @Sigma0_256(i64) #1

declare dso_local i64 @Maj(i64, i64, i64) #1

declare dso_local i64 @sigma0_256(i64) #1

declare dso_local i64 @sigma1_256(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
