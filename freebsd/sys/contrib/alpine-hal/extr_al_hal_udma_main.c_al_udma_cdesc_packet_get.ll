; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_udma_main.c_al_udma_cdesc_packet_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_udma_main.c_al_udma_cdesc_packet_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_udma_q = type { i32, i64, i64, i32, i32, %struct.TYPE_4__*, %union.al_udma_cdesc* }
%struct.TYPE_4__ = type { i32 }
%union.al_udma_cdesc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@AL_UDMA_Q_FLAGS_NO_COMP_UPDATE = common dso_local global i32 0, align 4
@AL_FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [67 x i8] c"udma [%s %d]: packet completed. first desc %p (ixd 0x%x) descs %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @al_udma_cdesc_packet_get(%struct.al_udma_q* %0, %union.al_udma_cdesc** %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.al_udma_q*, align 8
  %5 = alloca %union.al_udma_cdesc**, align 8
  %6 = alloca i64, align 8
  %7 = alloca %union.al_udma_cdesc*, align 8
  %8 = alloca i64, align 8
  store %struct.al_udma_q* %0, %struct.al_udma_q** %4, align 8
  store %union.al_udma_cdesc** %1, %union.al_udma_cdesc*** %5, align 8
  %9 = load %struct.al_udma_q*, %struct.al_udma_q** %4, align 8
  %10 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @AL_UDMA_Q_FLAGS_NO_COMP_UPDATE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @al_assert(i32 %16)
  %18 = load %struct.al_udma_q*, %struct.al_udma_q** %4, align 8
  %19 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %18, i32 0, i32 6
  %20 = load %union.al_udma_cdesc*, %union.al_udma_cdesc** %19, align 8
  store %union.al_udma_cdesc* %20, %union.al_udma_cdesc** %7, align 8
  %21 = load %union.al_udma_cdesc*, %union.al_udma_cdesc** %7, align 8
  %22 = bitcast %union.al_udma_cdesc* %21 to %struct.TYPE_3__*
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load volatile i32, i32* %23, align 4
  %25 = call i64 @swap32_from_le(i32 %24)
  store i64 %25, i64* %8, align 8
  %26 = load %struct.al_udma_q*, %struct.al_udma_q** %4, align 8
  %27 = load i64, i64* %8, align 8
  %28 = call i64 @al_udma_new_cdesc(%struct.al_udma_q* %26, i64 %27)
  %29 = load i64, i64* @AL_FALSE, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %111

35:                                               ; preds = %2
  %36 = load %struct.al_udma_q*, %struct.al_udma_q** %4, align 8
  %37 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %6, align 8
  br label %40

40:                                               ; preds = %70, %35
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @cdesc_is_last(i64 %41)
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  br i1 %44, label %45, label %80

45:                                               ; preds = %40
  %46 = load %struct.al_udma_q*, %struct.al_udma_q** %4, align 8
  %47 = load %union.al_udma_cdesc*, %union.al_udma_cdesc** %7, align 8
  %48 = call i8* @al_cdesc_next_update(%struct.al_udma_q* %46, %union.al_udma_cdesc* %47)
  %49 = bitcast i8* %48 to %union.al_udma_cdesc*
  store %union.al_udma_cdesc* %49, %union.al_udma_cdesc** %7, align 8
  %50 = load %union.al_udma_cdesc*, %union.al_udma_cdesc** %7, align 8
  %51 = bitcast %union.al_udma_cdesc* %50 to %struct.TYPE_3__*
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load volatile i32, i32* %52, align 4
  %54 = call i64 @swap32_from_le(i32 %53)
  store i64 %54, i64* %8, align 8
  %55 = load %struct.al_udma_q*, %struct.al_udma_q** %4, align 8
  %56 = load i64, i64* %8, align 8
  %57 = call i64 @al_udma_new_cdesc(%struct.al_udma_q* %55, i64 %56)
  %58 = load i64, i64* @AL_FALSE, align 8
  %59 = icmp eq i64 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i64 @unlikely(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %45
  %64 = load i64, i64* %6, align 8
  %65 = load %struct.al_udma_q*, %struct.al_udma_q** %4, align 8
  %66 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %65, i32 0, i32 1
  store i64 %64, i64* %66, align 8
  %67 = load %union.al_udma_cdesc*, %union.al_udma_cdesc** %7, align 8
  %68 = load %struct.al_udma_q*, %struct.al_udma_q** %4, align 8
  %69 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %68, i32 0, i32 6
  store %union.al_udma_cdesc* %67, %union.al_udma_cdesc** %69, align 8
  store i64 0, i64* %3, align 8
  br label %111

70:                                               ; preds = %45
  %71 = load i64, i64* %6, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* %6, align 8
  %73 = load i64, i64* %6, align 8
  %74 = load %struct.al_udma_q*, %struct.al_udma_q** %4, align 8
  %75 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp sle i64 %73, %76
  %78 = zext i1 %77 to i32
  %79 = call i32 @al_assert(i32 %78)
  br label %40

80:                                               ; preds = %40
  %81 = load %struct.al_udma_q*, %struct.al_udma_q** %4, align 8
  %82 = load %struct.al_udma_q*, %struct.al_udma_q** %4, align 8
  %83 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = call %union.al_udma_cdesc* @al_udma_cdesc_idx_to_ptr(%struct.al_udma_q* %81, i32 %84)
  %86 = load %union.al_udma_cdesc**, %union.al_udma_cdesc*** %5, align 8
  store %union.al_udma_cdesc* %85, %union.al_udma_cdesc** %86, align 8
  %87 = load %struct.al_udma_q*, %struct.al_udma_q** %4, align 8
  %88 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %87, i32 0, i32 1
  store i64 0, i64* %88, align 8
  %89 = load %struct.al_udma_q*, %struct.al_udma_q** %4, align 8
  %90 = load %union.al_udma_cdesc*, %union.al_udma_cdesc** %7, align 8
  %91 = call i8* @al_cdesc_next_update(%struct.al_udma_q* %89, %union.al_udma_cdesc* %90)
  %92 = bitcast i8* %91 to %union.al_udma_cdesc*
  %93 = load %struct.al_udma_q*, %struct.al_udma_q** %4, align 8
  %94 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %93, i32 0, i32 6
  store %union.al_udma_cdesc* %92, %union.al_udma_cdesc** %94, align 8
  %95 = load %struct.al_udma_q*, %struct.al_udma_q** %4, align 8
  %96 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %95, i32 0, i32 5
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.al_udma_q*, %struct.al_udma_q** %4, align 8
  %101 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = load %union.al_udma_cdesc**, %union.al_udma_cdesc*** %5, align 8
  %104 = load %union.al_udma_cdesc*, %union.al_udma_cdesc** %103, align 8
  %105 = load %struct.al_udma_q*, %struct.al_udma_q** %4, align 8
  %106 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = load i64, i64* %6, align 8
  %109 = call i32 @al_dbg(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %99, i32 %102, %union.al_udma_cdesc* %104, i32 %107, i64 %108)
  %110 = load i64, i64* %6, align 8
  store i64 %110, i64* %3, align 8
  br label %111

111:                                              ; preds = %80, %63, %34
  %112 = load i64, i64* %3, align 8
  ret i64 %112
}

declare dso_local i32 @al_assert(i32) #1

declare dso_local i64 @swap32_from_le(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @al_udma_new_cdesc(%struct.al_udma_q*, i64) #1

declare dso_local i32 @cdesc_is_last(i64) #1

declare dso_local i8* @al_cdesc_next_update(%struct.al_udma_q*, %union.al_udma_cdesc*) #1

declare dso_local %union.al_udma_cdesc* @al_udma_cdesc_idx_to_ptr(%struct.al_udma_q*, i32) #1

declare dso_local i32 @al_dbg(i8*, i32, i32, %union.al_udma_cdesc*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
