; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_udma_debug.c_al_udma_q_struct_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_udma_debug.c_al_udma_q_struct_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_udma = type { %struct.al_udma_q* }
%struct.al_udma_q = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@DMA_MAX_Q = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"Q[%d] struct:\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c" size_mask = 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c" q_regs = %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c" desc_base_ptr = %p\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c" next_desc_idx = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c" desc_ring_id = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c" cdesc_base_ptr = %p\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c" cdesc_size = %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c" next_cdesc_idx = %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c" end_cdesc_ptr = %p\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c" comp_head_idx = %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c" comp_head_ptr = %p\0A\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c" pkt_crnt_descs = %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c" comp_ring_id = %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c" desc_phy_base = 0x%016jx\0A\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c" cdesc_phy_base = 0x%016jx\0A\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c" flags = 0x%08x\0A\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c" size = %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c" status = %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c" udma = %p\0A\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c" qid = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @al_udma_q_struct_print(%struct.al_udma* %0, i64 %1) #0 {
  %3 = alloca %struct.al_udma*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.al_udma_q*, align 8
  store %struct.al_udma* %0, %struct.al_udma** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.al_udma*, %struct.al_udma** %3, align 8
  %7 = icmp ne %struct.al_udma* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %102

9:                                                ; preds = %2
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @DMA_MAX_Q, align 8
  %12 = icmp uge i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  br label %102

14:                                               ; preds = %9
  %15 = load %struct.al_udma*, %struct.al_udma** %3, align 8
  %16 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %15, i32 0, i32 0
  %17 = load %struct.al_udma_q*, %struct.al_udma_q** %16, align 8
  %18 = load i64, i64* %4, align 8
  %19 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %17, i64 %18
  store %struct.al_udma_q* %19, %struct.al_udma_q** %5, align 8
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @al_dbg(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 %20)
  %22 = load %struct.al_udma_q*, %struct.al_udma_q** %5, align 8
  %23 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %22, i32 0, i32 19
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @al_dbg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %24)
  %26 = load %struct.al_udma_q*, %struct.al_udma_q** %5, align 8
  %27 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @al_dbg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i64 %28)
  %30 = load %struct.al_udma_q*, %struct.al_udma_q** %5, align 8
  %31 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @al_dbg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i64 %32)
  %34 = load %struct.al_udma_q*, %struct.al_udma_q** %5, align 8
  %35 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %34, i32 0, i32 18
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @al_dbg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i64 %36)
  %38 = load %struct.al_udma_q*, %struct.al_udma_q** %5, align 8
  %39 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %38, i32 0, i32 17
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @al_dbg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i64 %40)
  %42 = load %struct.al_udma_q*, %struct.al_udma_q** %5, align 8
  %43 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @al_dbg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i64 %44)
  %46 = load %struct.al_udma_q*, %struct.al_udma_q** %5, align 8
  %47 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %46, i32 0, i32 16
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @al_dbg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i64 %48)
  %50 = load %struct.al_udma_q*, %struct.al_udma_q** %5, align 8
  %51 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %50, i32 0, i32 15
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @al_dbg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i64 %52)
  %54 = load %struct.al_udma_q*, %struct.al_udma_q** %5, align 8
  %55 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @al_dbg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i64 %56)
  %58 = load %struct.al_udma_q*, %struct.al_udma_q** %5, align 8
  %59 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %58, i32 0, i32 14
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @al_dbg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i64 %60)
  %62 = load %struct.al_udma_q*, %struct.al_udma_q** %5, align 8
  %63 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @al_dbg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i64 %64)
  %66 = load %struct.al_udma_q*, %struct.al_udma_q** %5, align 8
  %67 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %66, i32 0, i32 13
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @al_dbg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), i64 %68)
  %70 = load %struct.al_udma_q*, %struct.al_udma_q** %5, align 8
  %71 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %70, i32 0, i32 12
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @al_dbg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i64 %72)
  %74 = load %struct.al_udma_q*, %struct.al_udma_q** %5, align 8
  %75 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %74, i32 0, i32 11
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @al_dbg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0), i64 %76)
  %78 = load %struct.al_udma_q*, %struct.al_udma_q** %5, align 8
  %79 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %78, i32 0, i32 10
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @al_dbg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0), i64 %80)
  %82 = load %struct.al_udma_q*, %struct.al_udma_q** %5, align 8
  %83 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %82, i32 0, i32 9
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @al_dbg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0), i64 %84)
  %86 = load %struct.al_udma_q*, %struct.al_udma_q** %5, align 8
  %87 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %86, i32 0, i32 8
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @al_dbg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i64 %88)
  %90 = load %struct.al_udma_q*, %struct.al_udma_q** %5, align 8
  %91 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %90, i32 0, i32 7
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @al_dbg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i64 %92)
  %94 = load %struct.al_udma_q*, %struct.al_udma_q** %5, align 8
  %95 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %94, i32 0, i32 5
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @al_dbg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0), i64 %96)
  %98 = load %struct.al_udma_q*, %struct.al_udma_q** %5, align 8
  %99 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %98, i32 0, i32 6
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @al_dbg(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0), i64 %100)
  br label %102

102:                                              ; preds = %14, %13, %8
  ret void
}

declare dso_local i32 @al_dbg(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
