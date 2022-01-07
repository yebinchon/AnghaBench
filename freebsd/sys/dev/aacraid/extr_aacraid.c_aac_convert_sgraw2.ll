; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid.c_aac_convert_sgraw2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid.c_aac_convert_sgraw2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_softc = type { i32 }
%struct.aac_raw_io2 = type { i32, i32, i32, %struct.aac_sge_ieee1212* }
%struct.aac_sge_ieee1212 = type { i32, i64, i64, i32 }

@M_AACRAIDBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@RIO2_SGL_CONFORMANT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aac_softc*, %struct.aac_raw_io2*, i32, i32, i32)* @aac_convert_sgraw2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_convert_sgraw2(%struct.aac_softc* %0, %struct.aac_raw_io2* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.aac_softc*, align 8
  %8 = alloca %struct.aac_raw_io2*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.aac_sge_ieee1212*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.aac_softc* %0, %struct.aac_softc** %7, align 8
  store %struct.aac_raw_io2* %1, %struct.aac_raw_io2** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 32
  %20 = trunc i64 %19 to i32
  %21 = load i32, i32* @M_AACRAIDBUF, align 4
  %22 = load i32, i32* @M_NOWAIT, align 4
  %23 = load i32, i32* @M_ZERO, align 4
  %24 = or i32 %22, %23
  %25 = call %struct.aac_sge_ieee1212* @malloc(i32 %20, i32 %21, i32 %24)
  store %struct.aac_sge_ieee1212* %25, %struct.aac_sge_ieee1212** %12, align 8
  %26 = load %struct.aac_sge_ieee1212*, %struct.aac_sge_ieee1212** %12, align 8
  %27 = icmp eq %struct.aac_sge_ieee1212* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %5
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %6, align 4
  br label %180

30:                                               ; preds = %5
  store i32 1, i32* %13, align 4
  store i32 1, i32* %15, align 4
  br label %31

31:                                               ; preds = %125, %30
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* %10, align 4
  %34 = sub nsw i32 %33, 1
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %36, label %128

36:                                               ; preds = %31
  store i32 0, i32* %14, align 4
  br label %37

37:                                               ; preds = %121, %36
  %38 = load i32, i32* %14, align 4
  %39 = load %struct.aac_raw_io2*, %struct.aac_raw_io2** %8, align 8
  %40 = getelementptr inbounds %struct.aac_raw_io2, %struct.aac_raw_io2* %39, i32 0, i32 3
  %41 = load %struct.aac_sge_ieee1212*, %struct.aac_sge_ieee1212** %40, align 8
  %42 = load i32, i32* %13, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.aac_sge_ieee1212, %struct.aac_sge_ieee1212* %41, i64 %43
  %45 = getelementptr inbounds %struct.aac_sge_ieee1212, %struct.aac_sge_ieee1212* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @PAGE_SIZE, align 4
  %49 = mul nsw i32 %47, %48
  %50 = sdiv i32 %46, %49
  %51 = icmp slt i32 %38, %50
  br i1 %51, label %52, label %124

52:                                               ; preds = %37
  %53 = load %struct.aac_raw_io2*, %struct.aac_raw_io2** %8, align 8
  %54 = getelementptr inbounds %struct.aac_raw_io2, %struct.aac_raw_io2* %53, i32 0, i32 3
  %55 = load %struct.aac_sge_ieee1212*, %struct.aac_sge_ieee1212** %54, align 8
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.aac_sge_ieee1212, %struct.aac_sge_ieee1212* %55, i64 %57
  %59 = getelementptr inbounds %struct.aac_sge_ieee1212, %struct.aac_sge_ieee1212* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* %9, align 4
  %63 = mul nsw i32 %61, %62
  %64 = load i32, i32* @PAGE_SIZE, align 4
  %65 = mul nsw i32 %63, %64
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %60, %66
  store i64 %67, i64* %16, align 8
  %68 = load i64, i64* %16, align 8
  %69 = load %struct.aac_sge_ieee1212*, %struct.aac_sge_ieee1212** %12, align 8
  %70 = load i32, i32* %15, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.aac_sge_ieee1212, %struct.aac_sge_ieee1212* %69, i64 %71
  %73 = getelementptr inbounds %struct.aac_sge_ieee1212, %struct.aac_sge_ieee1212* %72, i32 0, i32 1
  store i64 %68, i64* %73, align 8
  %74 = load %struct.aac_raw_io2*, %struct.aac_raw_io2** %8, align 8
  %75 = getelementptr inbounds %struct.aac_raw_io2, %struct.aac_raw_io2* %74, i32 0, i32 3
  %76 = load %struct.aac_sge_ieee1212*, %struct.aac_sge_ieee1212** %75, align 8
  %77 = load i32, i32* %13, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.aac_sge_ieee1212, %struct.aac_sge_ieee1212* %76, i64 %78
  %80 = getelementptr inbounds %struct.aac_sge_ieee1212, %struct.aac_sge_ieee1212* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.aac_sge_ieee1212*, %struct.aac_sge_ieee1212** %12, align 8
  %83 = load i32, i32* %15, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.aac_sge_ieee1212, %struct.aac_sge_ieee1212* %82, i64 %84
  %86 = getelementptr inbounds %struct.aac_sge_ieee1212, %struct.aac_sge_ieee1212* %85, i32 0, i32 3
  store i32 %81, i32* %86, align 8
  %87 = load i64, i64* %16, align 8
  %88 = load %struct.aac_raw_io2*, %struct.aac_raw_io2** %8, align 8
  %89 = getelementptr inbounds %struct.aac_raw_io2, %struct.aac_raw_io2* %88, i32 0, i32 3
  %90 = load %struct.aac_sge_ieee1212*, %struct.aac_sge_ieee1212** %89, align 8
  %91 = load i32, i32* %13, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.aac_sge_ieee1212, %struct.aac_sge_ieee1212* %90, i64 %92
  %94 = getelementptr inbounds %struct.aac_sge_ieee1212, %struct.aac_sge_ieee1212* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp slt i64 %87, %95
  br i1 %96, label %97, label %105

97:                                               ; preds = %52
  %98 = load %struct.aac_sge_ieee1212*, %struct.aac_sge_ieee1212** %12, align 8
  %99 = load i32, i32* %15, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.aac_sge_ieee1212, %struct.aac_sge_ieee1212* %98, i64 %100
  %102 = getelementptr inbounds %struct.aac_sge_ieee1212, %struct.aac_sge_ieee1212* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 8
  br label %105

105:                                              ; preds = %97, %52
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* @PAGE_SIZE, align 4
  %108 = mul nsw i32 %106, %107
  %109 = load %struct.aac_sge_ieee1212*, %struct.aac_sge_ieee1212** %12, align 8
  %110 = load i32, i32* %15, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.aac_sge_ieee1212, %struct.aac_sge_ieee1212* %109, i64 %111
  %113 = getelementptr inbounds %struct.aac_sge_ieee1212, %struct.aac_sge_ieee1212* %112, i32 0, i32 0
  store i32 %108, i32* %113, align 8
  %114 = load %struct.aac_sge_ieee1212*, %struct.aac_sge_ieee1212** %12, align 8
  %115 = load i32, i32* %15, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.aac_sge_ieee1212, %struct.aac_sge_ieee1212* %114, i64 %116
  %118 = getelementptr inbounds %struct.aac_sge_ieee1212, %struct.aac_sge_ieee1212* %117, i32 0, i32 2
  store i64 0, i64* %118, align 8
  %119 = load i32, i32* %15, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %15, align 4
  br label %121

121:                                              ; preds = %105
  %122 = load i32, i32* %14, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %14, align 4
  br label %37

124:                                              ; preds = %37
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %13, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %13, align 4
  br label %31

128:                                              ; preds = %31
  %129 = load %struct.aac_sge_ieee1212*, %struct.aac_sge_ieee1212** %12, align 8
  %130 = load i32, i32* %15, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.aac_sge_ieee1212, %struct.aac_sge_ieee1212* %129, i64 %131
  %133 = load %struct.aac_raw_io2*, %struct.aac_raw_io2** %8, align 8
  %134 = getelementptr inbounds %struct.aac_raw_io2, %struct.aac_raw_io2* %133, i32 0, i32 3
  %135 = load %struct.aac_sge_ieee1212*, %struct.aac_sge_ieee1212** %134, align 8
  %136 = load i32, i32* %10, align 4
  %137 = sub nsw i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.aac_sge_ieee1212, %struct.aac_sge_ieee1212* %135, i64 %138
  %140 = bitcast %struct.aac_sge_ieee1212* %132 to i8*
  %141 = bitcast %struct.aac_sge_ieee1212* %139 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %140, i8* align 8 %141, i64 32, i1 false)
  store i32 1, i32* %13, align 4
  br label %142

142:                                              ; preds = %159, %128
  %143 = load i32, i32* %13, align 4
  %144 = load i32, i32* %11, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %162

146:                                              ; preds = %142
  %147 = load %struct.aac_raw_io2*, %struct.aac_raw_io2** %8, align 8
  %148 = getelementptr inbounds %struct.aac_raw_io2, %struct.aac_raw_io2* %147, i32 0, i32 3
  %149 = load %struct.aac_sge_ieee1212*, %struct.aac_sge_ieee1212** %148, align 8
  %150 = load i32, i32* %13, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.aac_sge_ieee1212, %struct.aac_sge_ieee1212* %149, i64 %151
  %153 = load %struct.aac_sge_ieee1212*, %struct.aac_sge_ieee1212** %12, align 8
  %154 = load i32, i32* %13, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.aac_sge_ieee1212, %struct.aac_sge_ieee1212* %153, i64 %155
  %157 = bitcast %struct.aac_sge_ieee1212* %152 to i8*
  %158 = bitcast %struct.aac_sge_ieee1212* %156 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %157, i8* align 8 %158, i64 32, i1 false)
  br label %159

159:                                              ; preds = %146
  %160 = load i32, i32* %13, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %13, align 4
  br label %142

162:                                              ; preds = %142
  %163 = load %struct.aac_sge_ieee1212*, %struct.aac_sge_ieee1212** %12, align 8
  %164 = load i32, i32* @M_AACRAIDBUF, align 4
  %165 = call i32 @free(%struct.aac_sge_ieee1212* %163, i32 %164)
  %166 = load i32, i32* %11, align 4
  %167 = load %struct.aac_raw_io2*, %struct.aac_raw_io2** %8, align 8
  %168 = getelementptr inbounds %struct.aac_raw_io2, %struct.aac_raw_io2* %167, i32 0, i32 0
  store i32 %166, i32* %168, align 8
  %169 = load i32, i32* @RIO2_SGL_CONFORMANT, align 4
  %170 = load %struct.aac_raw_io2*, %struct.aac_raw_io2** %8, align 8
  %171 = getelementptr inbounds %struct.aac_raw_io2, %struct.aac_raw_io2* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = or i32 %172, %169
  store i32 %173, i32* %171, align 8
  %174 = load i32, i32* %9, align 4
  %175 = load i32, i32* @PAGE_SIZE, align 4
  %176 = mul nsw i32 %174, %175
  %177 = load %struct.aac_raw_io2*, %struct.aac_raw_io2** %8, align 8
  %178 = getelementptr inbounds %struct.aac_raw_io2, %struct.aac_raw_io2* %177, i32 0, i32 1
  store i32 %176, i32* %178, align 4
  %179 = load i32, i32* %11, align 4
  store i32 %179, i32* %6, align 4
  br label %180

180:                                              ; preds = %162, %28
  %181 = load i32, i32* %6, align 4
  ret i32 %181
}

declare dso_local %struct.aac_sge_ieee1212* @malloc(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @free(%struct.aac_sge_ieee1212*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
