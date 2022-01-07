; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_busdma_machdep-v4.c__bus_dmamap_load_phys.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_busdma_machdep-v4.c__bus_dmamap_load_phys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i64, i64 }
%struct.TYPE_16__ = type { i64, i32, %struct.sync_list*, i32* }
%struct.sync_list = type { i32, i32, i32, i64 }

@maploads_total = common dso_local global i32 0, align 4
@maploads_physmem = common dso_local global i32 0, align 4
@BUS_DMA_COULD_BOUNCE = common dso_local global i32 0, align 4
@maploads_bounced = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bus_dmamap_load_phys(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1, i32 %2, i64 %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca %struct.sync_list*, align 8
  %20 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %9, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %10, align 8
  store i32 %2, i32* %11, align 4
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32 0, i32* %17, align 4
  %21 = load i32*, i32** %14, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %7
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 3
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %14, align 8
  br label %27

27:                                               ; preds = %23, %7
  %28 = load i32, i32* @maploads_total, align 4
  %29 = call i32 @counter_u64_add(i32 %28, i32 1)
  %30 = load i32, i32* @maploads_physmem, align 4
  %31 = call i32 @counter_u64_add(i32 %30, i32 1)
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @BUS_DMA_COULD_BOUNCE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %62

38:                                               ; preds = %27
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %41 = load i32, i32* %11, align 4
  %42 = load i64, i64* %12, align 8
  %43 = load i32, i32* %13, align 4
  %44 = call i32 @_bus_dmamap_count_phys(%struct.TYPE_17__* %39, %struct.TYPE_16__* %40, i32 %41, i64 %42, i32 %43)
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %38
  %50 = load i32, i32* @maploads_bounced, align 4
  %51 = call i32 @counter_u64_add(i32 %50, i32 1)
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @_bus_dmamap_reserve_pages(%struct.TYPE_17__* %52, %struct.TYPE_16__* %53, i32 %54)
  store i32 %55, i32* %20, align 4
  %56 = load i32, i32* %20, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = load i32, i32* %20, align 4
  store i32 %59, i32* %8, align 4
  br label %206

60:                                               ; preds = %49
  br label %61

61:                                               ; preds = %60, %38
  br label %62

62:                                               ; preds = %61, %27
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 2
  %65 = load %struct.sync_list*, %struct.sync_list** %64, align 8
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.sync_list, %struct.sync_list* %65, i64 %69
  %71 = getelementptr inbounds %struct.sync_list, %struct.sync_list* %70, i64 -1
  store %struct.sync_list* %71, %struct.sync_list** %19, align 8
  br label %72

72:                                               ; preds = %188, %62
  %73 = load i64, i64* %12, align 8
  %74 = icmp sgt i64 %73, 0
  br i1 %74, label %75, label %197

75:                                               ; preds = %72
  %76 = load i32, i32* %11, align 4
  store i32 %76, i32* %16, align 4
  %77 = load i64, i64* %12, align 8
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = call i64 @MIN(i64 %77, i64 %80)
  store i64 %81, i64* %18, align 8
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @BUS_DMA_COULD_BOUNCE, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %112

88:                                               ; preds = %75
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %112

93:                                               ; preds = %88
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %95 = load i32, i32* %16, align 4
  %96 = call i64 @run_filter(%struct.TYPE_17__* %94, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %112

98:                                               ; preds = %93
  %99 = load i64, i64* %18, align 8
  %100 = load i64, i64* @PAGE_SIZE, align 8
  %101 = load i32, i32* %16, align 4
  %102 = load i32, i32* @PAGE_MASK, align 4
  %103 = and i32 %101, %102
  %104 = sext i32 %103 to i64
  %105 = sub nsw i64 %100, %104
  %106 = call i64 @MIN(i64 %99, i64 %105)
  store i64 %106, i64* %18, align 8
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %109 = load i32, i32* %16, align 4
  %110 = load i64, i64* %18, align 8
  %111 = call i32 @add_bounce_page(%struct.TYPE_17__* %107, %struct.TYPE_16__* %108, i32 0, i32 %109, i64 %110)
  store i32 %111, i32* %16, align 4
  br label %177

112:                                              ; preds = %93, %88, %75
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %117, label %130

117:                                              ; preds = %112
  %118 = load %struct.sync_list*, %struct.sync_list** %19, align 8
  %119 = getelementptr inbounds %struct.sync_list, %struct.sync_list* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @VM_PAGE_TO_PHYS(i32 %120)
  %122 = load %struct.sync_list*, %struct.sync_list** %19, align 8
  %123 = getelementptr inbounds %struct.sync_list, %struct.sync_list* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = add nsw i32 %121, %124
  %126 = load %struct.sync_list*, %struct.sync_list** %19, align 8
  %127 = getelementptr inbounds %struct.sync_list, %struct.sync_list* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = add nsw i32 %125, %128
  store i32 %129, i32* %17, align 4
  br label %130

130:                                              ; preds = %117, %112
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %139, label %135

135:                                              ; preds = %130
  %136 = load i32, i32* %16, align 4
  %137 = load i32, i32* %17, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %168

139:                                              ; preds = %135, %130
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %141, align 8
  %144 = sext i32 %143 to i64
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = icmp sgt i64 %144, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %139
  br label %197

150:                                              ; preds = %139
  %151 = load %struct.sync_list*, %struct.sync_list** %19, align 8
  %152 = getelementptr inbounds %struct.sync_list, %struct.sync_list* %151, i32 1
  store %struct.sync_list* %152, %struct.sync_list** %19, align 8
  %153 = load %struct.sync_list*, %struct.sync_list** %19, align 8
  %154 = getelementptr inbounds %struct.sync_list, %struct.sync_list* %153, i32 0, i32 3
  store i64 0, i64* %154, align 8
  %155 = load i64, i64* %18, align 8
  %156 = trunc i64 %155 to i32
  %157 = load %struct.sync_list*, %struct.sync_list** %19, align 8
  %158 = getelementptr inbounds %struct.sync_list, %struct.sync_list* %157, i32 0, i32 1
  store i32 %156, i32* %158, align 4
  %159 = load i32, i32* %16, align 4
  %160 = call i32 @PHYS_TO_VM_PAGE(i32 %159)
  %161 = load %struct.sync_list*, %struct.sync_list** %19, align 8
  %162 = getelementptr inbounds %struct.sync_list, %struct.sync_list* %161, i32 0, i32 2
  store i32 %160, i32* %162, align 8
  %163 = load i32, i32* %16, align 4
  %164 = load i32, i32* @PAGE_MASK, align 4
  %165 = and i32 %163, %164
  %166 = load %struct.sync_list*, %struct.sync_list** %19, align 8
  %167 = getelementptr inbounds %struct.sync_list, %struct.sync_list* %166, i32 0, i32 0
  store i32 %165, i32* %167, align 8
  br label %176

168:                                              ; preds = %135
  %169 = load i64, i64* %18, align 8
  %170 = load %struct.sync_list*, %struct.sync_list** %19, align 8
  %171 = getelementptr inbounds %struct.sync_list, %struct.sync_list* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = sext i32 %172 to i64
  %174 = add nsw i64 %173, %169
  %175 = trunc i64 %174 to i32
  store i32 %175, i32* %171, align 4
  br label %176

176:                                              ; preds = %168, %150
  br label %177

177:                                              ; preds = %176, %98
  %178 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %180 = load i32, i32* %16, align 4
  %181 = load i64, i64* %18, align 8
  %182 = load i32*, i32** %14, align 8
  %183 = load i32*, i32** %15, align 8
  %184 = call i64 @_bus_dmamap_addseg(%struct.TYPE_17__* %178, %struct.TYPE_16__* %179, i32 %180, i64 %181, i32* %182, i32* %183)
  store i64 %184, i64* %18, align 8
  %185 = load i64, i64* %18, align 8
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %177
  br label %197

188:                                              ; preds = %177
  %189 = load i64, i64* %18, align 8
  %190 = load i32, i32* %11, align 4
  %191 = sext i32 %190 to i64
  %192 = add nsw i64 %191, %189
  %193 = trunc i64 %192 to i32
  store i32 %193, i32* %11, align 4
  %194 = load i64, i64* %18, align 8
  %195 = load i64, i64* %12, align 8
  %196 = sub nsw i64 %195, %194
  store i64 %196, i64* %12, align 8
  br label %72

197:                                              ; preds = %187, %149, %72
  %198 = load i64, i64* %12, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %205

200:                                              ; preds = %197
  %201 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %202 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %203 = call i32 @bus_dmamap_unload(%struct.TYPE_17__* %201, %struct.TYPE_16__* %202)
  %204 = load i32, i32* @EFBIG, align 4
  store i32 %204, i32* %8, align 4
  br label %206

205:                                              ; preds = %197
  store i32 0, i32* %8, align 4
  br label %206

206:                                              ; preds = %205, %200, %58
  %207 = load i32, i32* %8, align 4
  ret i32 %207
}

declare dso_local i32 @counter_u64_add(i32, i32) #1

declare dso_local i32 @_bus_dmamap_count_phys(%struct.TYPE_17__*, %struct.TYPE_16__*, i32, i64, i32) #1

declare dso_local i32 @_bus_dmamap_reserve_pages(%struct.TYPE_17__*, %struct.TYPE_16__*, i32) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i64 @run_filter(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @add_bounce_page(%struct.TYPE_17__*, %struct.TYPE_16__*, i32, i32, i64) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(i32) #1

declare dso_local i32 @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i64 @_bus_dmamap_addseg(%struct.TYPE_17__*, %struct.TYPE_16__*, i32, i64, i32*, i32*) #1

declare dso_local i32 @bus_dmamap_unload(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
