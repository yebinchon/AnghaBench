; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Port/extr_fm_port.c_FmPortConfigAutoResForDeepSleepSupport1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Port/extr_fm_port.c_FmPortConfigAutoResForDeepSleepSupport1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_9__*, i32, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64 }

@E_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @FmPortConfigAutoResForDeepSleepSupport1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FmPortConfigAutoResForDeepSleepSupport1(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  store %struct.TYPE_10__* %10, %struct.TYPE_10__** %4, align 8
  store i32 4, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @ROUND_UP(i32 %11, i32 4)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = add i64 %14, 4
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %6, align 4
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = mul i64 4, %20
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = add i64 %23, %21
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = add i64 %27, 4
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @ROUND_UP(i32 %30, i32 4)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = add i64 %33, 4
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %6, align 4
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 4, %39
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = add i64 %42, %40
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = add i64 %46, 4
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @ROUND_UP(i32 %49, i32 4)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = add i64 %52, 4
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %6, align 4
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = mul i64 4, %58
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = add i64 %61, %59
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = add i64 %65, 4
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @ROUND_UP(i32 %68, i32 4)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = add i64 %71, 4
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %6, align 4
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = mul i64 4, %77
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = add i64 %80, %78
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = add i64 %84, 4
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @ROUND_UP(i32 %87, i32 4)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = add i64 %90, 4
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %6, align 4
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = sext i32 %95 to i64
  %97 = mul i64 4, %96
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = add i64 %99, %97
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %6, align 4
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 4
  %105 = sext i32 %104 to i64
  %106 = mul i64 4, %105
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = add i64 %108, %106
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %6, align 4
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 6
  %113 = load i32, i32* %112, align 8
  %114 = sext i32 %113 to i64
  %115 = mul i64 4, %114
  %116 = load i32, i32* %6, align 4
  %117 = sext i32 %116 to i64
  %118 = add i64 %117, %115
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %6, align 4
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 10
  %122 = load i64, i64* %121, align 8
  %123 = load i32, i32* %6, align 4
  %124 = sext i32 %123 to i64
  %125 = add nsw i64 %124, %122
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %6, align 4
  %127 = load i32, i32* %6, align 4
  %128 = sext i32 %127 to i64
  %129 = add i64 %128, 4
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %6, align 4
  %131 = load i32, i32* %6, align 4
  %132 = call i32 @ROUND_UP(i32 %131, i32 4)
  store i32 %132, i32* %6, align 4
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 9
  %135 = load i64, i64* %134, align 8
  %136 = load i32, i32* %6, align 4
  %137 = sext i32 %136 to i64
  %138 = add nsw i64 %137, %135
  %139 = trunc i64 %138 to i32
  store i32 %139, i32* %6, align 4
  %140 = load i32, i32* %6, align 4
  %141 = call i32 @ROUND_UP(i32 %140, i32 4)
  store i32 %141, i32* %6, align 4
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 7
  %144 = load i32, i32* %143, align 4
  %145 = sext i32 %144 to i64
  %146 = mul i64 %145, 4
  %147 = load i32, i32* %6, align 4
  %148 = sext i32 %147 to i64
  %149 = add i64 %148, %146
  %150 = trunc i64 %149 to i32
  store i32 %150, i32* %6, align 4
  %151 = load i32, i32* %6, align 4
  %152 = call i32 @ROUND_UP(i32 %151, i32 4)
  store i32 %152, i32* %6, align 4
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 8
  %155 = load i32, i32* %154, align 8
  %156 = sext i32 %155 to i64
  %157 = mul i64 %156, 4
  %158 = load i32, i32* %6, align 4
  %159 = sext i32 %158 to i64
  %160 = add i64 %159, %157
  %161 = trunc i64 %160 to i32
  store i32 %161, i32* %6, align 4
  %162 = load i32, i32* %6, align 4
  %163 = call i32 @ROUND_UP(i32 %162, i32 4)
  store i32 %163, i32* %6, align 4
  %164 = load i32, i32* %6, align 4
  %165 = sext i32 %164 to i64
  %166 = add i64 %165, 4
  %167 = trunc i64 %166 to i32
  store i32 %167, i32* %6, align 4
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* %6, align 4
  %172 = call i32* @FM_MURAM_AllocMem(i32 %170, i32 %171, i32 16)
  store i32* %172, i32** %5, align 8
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 1
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = call i64 @GET_UINT32(i32 %181)
  %183 = add nsw i64 %175, %182
  %184 = call i32* @XX_PhysToVirt(i64 %183)
  store i32* %184, i32** %3, align 8
  %185 = load i32*, i32** %3, align 8
  %186 = load i32, i32* %185, align 4
  %187 = load i32*, i32** %5, align 8
  %188 = call i64 @XX_VirtToPhys(i32* %187)
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = sub nsw i64 %188, %191
  %193 = trunc i64 %192 to i32
  %194 = call i32 @WRITE_UINT32(i32 %186, i32 %193)
  %195 = load i32, i32* @E_OK, align 4
  ret i32 %195
}

declare dso_local i32 @ROUND_UP(i32, i32) #1

declare dso_local i32* @FM_MURAM_AllocMem(i32, i32, i32) #1

declare dso_local i32* @XX_PhysToVirt(i64) #1

declare dso_local i64 @GET_UINT32(i32) #1

declare dso_local i32 @WRITE_UINT32(i32, i32) #1

declare dso_local i64 @XX_VirtToPhys(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
