; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_fingerprint.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_fingerprint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.torus = type { i32, i32, i32, i32*** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.torus*, i32, i32, i32)* @fingerprint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fingerprint(%struct.torus* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.torus*, align 8
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
  store %struct.torus* %0, %struct.torus** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load %struct.torus*, %struct.torus** %5, align 8
  %17 = getelementptr inbounds %struct.torus, %struct.torus* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sgt i32 %18, 1
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %13, align 4
  %21 = load %struct.torus*, %struct.torus** %5, align 8
  %22 = getelementptr inbounds %struct.torus, %struct.torus* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp sgt i32 %23, 1
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %14, align 4
  %26 = load %struct.torus*, %struct.torus** %5, align 8
  %27 = getelementptr inbounds %struct.torus, %struct.torus* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = icmp sgt i32 %28, 1
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  %33 = load %struct.torus*, %struct.torus** %5, align 8
  %34 = getelementptr inbounds %struct.torus, %struct.torus* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @canonicalize(i32 %32, i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  %39 = load %struct.torus*, %struct.torus** %5, align 8
  %40 = getelementptr inbounds %struct.torus, %struct.torus* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @canonicalize(i32 %38, i32 %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  %45 = load %struct.torus*, %struct.torus** %5, align 8
  %46 = getelementptr inbounds %struct.torus, %struct.torus* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @canonicalize(i32 %44, i32 %47)
  store i32 %48, i32* %12, align 4
  %49 = load %struct.torus*, %struct.torus** %5, align 8
  %50 = getelementptr inbounds %struct.torus, %struct.torus* %49, i32 0, i32 3
  %51 = load i32***, i32**** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32**, i32*** %51, i64 %53
  %55 = load i32**, i32*** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32*, i32** %55, i64 %57
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @set_fp_bit(i32 %63, i32 0, i32 0, i32 0)
  store i32 %64, i32* %9, align 4
  %65 = load %struct.torus*, %struct.torus** %5, align 8
  %66 = getelementptr inbounds %struct.torus, %struct.torus* %65, i32 0, i32 3
  %67 = load i32***, i32**** %66, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32**, i32*** %67, i64 %69
  %71 = load i32**, i32*** %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32*, i32** %71, i64 %73
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %13, align 4
  %81 = call i32 @set_fp_bit(i32 %79, i32 %80, i32 0, i32 0)
  %82 = load i32, i32* %9, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %9, align 4
  %84 = load %struct.torus*, %struct.torus** %5, align 8
  %85 = getelementptr inbounds %struct.torus, %struct.torus* %84, i32 0, i32 3
  %86 = load i32***, i32**** %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32**, i32*** %86, i64 %88
  %90 = load i32**, i32*** %89, align 8
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32*, i32** %90, i64 %92
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %14, align 4
  %100 = call i32 @set_fp_bit(i32 %98, i32 0, i32 %99, i32 0)
  %101 = load i32, i32* %9, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %9, align 4
  %103 = load %struct.torus*, %struct.torus** %5, align 8
  %104 = getelementptr inbounds %struct.torus, %struct.torus* %103, i32 0, i32 3
  %105 = load i32***, i32**** %104, align 8
  %106 = load i32, i32* %10, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32**, i32*** %105, i64 %107
  %109 = load i32**, i32*** %108, align 8
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32*, i32** %109, i64 %111
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %13, align 4
  %119 = load i32, i32* %14, align 4
  %120 = call i32 @set_fp_bit(i32 %117, i32 %118, i32 %119, i32 0)
  %121 = load i32, i32* %9, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %9, align 4
  %123 = load %struct.torus*, %struct.torus** %5, align 8
  %124 = getelementptr inbounds %struct.torus, %struct.torus* %123, i32 0, i32 3
  %125 = load i32***, i32**** %124, align 8
  %126 = load i32, i32* %6, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32**, i32*** %125, i64 %127
  %129 = load i32**, i32*** %128, align 8
  %130 = load i32, i32* %7, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32*, i32** %129, i64 %131
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %12, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %15, align 4
  %139 = call i32 @set_fp_bit(i32 %137, i32 0, i32 0, i32 %138)
  %140 = load i32, i32* %9, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %9, align 4
  %142 = load %struct.torus*, %struct.torus** %5, align 8
  %143 = getelementptr inbounds %struct.torus, %struct.torus* %142, i32 0, i32 3
  %144 = load i32***, i32**** %143, align 8
  %145 = load i32, i32* %10, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32**, i32*** %144, i64 %146
  %148 = load i32**, i32*** %147, align 8
  %149 = load i32, i32* %7, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32*, i32** %148, i64 %150
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %12, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %13, align 4
  %158 = load i32, i32* %15, align 4
  %159 = call i32 @set_fp_bit(i32 %156, i32 %157, i32 0, i32 %158)
  %160 = load i32, i32* %9, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %9, align 4
  %162 = load %struct.torus*, %struct.torus** %5, align 8
  %163 = getelementptr inbounds %struct.torus, %struct.torus* %162, i32 0, i32 3
  %164 = load i32***, i32**** %163, align 8
  %165 = load i32, i32* %6, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32**, i32*** %164, i64 %166
  %168 = load i32**, i32*** %167, align 8
  %169 = load i32, i32* %11, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32*, i32** %168, i64 %170
  %172 = load i32*, i32** %171, align 8
  %173 = load i32, i32* %12, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %14, align 4
  %178 = load i32, i32* %15, align 4
  %179 = call i32 @set_fp_bit(i32 %176, i32 0, i32 %177, i32 %178)
  %180 = load i32, i32* %9, align 4
  %181 = or i32 %180, %179
  store i32 %181, i32* %9, align 4
  %182 = load %struct.torus*, %struct.torus** %5, align 8
  %183 = getelementptr inbounds %struct.torus, %struct.torus* %182, i32 0, i32 3
  %184 = load i32***, i32**** %183, align 8
  %185 = load i32, i32* %10, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32**, i32*** %184, i64 %186
  %188 = load i32**, i32*** %187, align 8
  %189 = load i32, i32* %11, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32*, i32** %188, i64 %190
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* %12, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* %13, align 4
  %198 = load i32, i32* %14, align 4
  %199 = load i32, i32* %15, align 4
  %200 = call i32 @set_fp_bit(i32 %196, i32 %197, i32 %198, i32 %199)
  %201 = load i32, i32* %9, align 4
  %202 = or i32 %201, %200
  store i32 %202, i32* %9, align 4
  %203 = load i32, i32* %13, align 4
  %204 = shl i32 %203, 8
  %205 = load i32, i32* %9, align 4
  %206 = or i32 %205, %204
  store i32 %206, i32* %9, align 4
  %207 = load i32, i32* %14, align 4
  %208 = shl i32 %207, 9
  %209 = load i32, i32* %9, align 4
  %210 = or i32 %209, %208
  store i32 %210, i32* %9, align 4
  %211 = load i32, i32* %15, align 4
  %212 = shl i32 %211, 10
  %213 = load i32, i32* %9, align 4
  %214 = or i32 %213, %212
  store i32 %214, i32* %9, align 4
  %215 = load i32, i32* %9, align 4
  ret i32 %215
}

declare dso_local i32 @canonicalize(i32, i32) #1

declare dso_local i32 @set_fp_bit(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
