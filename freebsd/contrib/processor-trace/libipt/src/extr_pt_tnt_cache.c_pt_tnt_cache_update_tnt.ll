; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_tnt_cache.c_pt_tnt_cache_update_tnt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_tnt_cache.c_pt_tnt_cache_update_tnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_tnt_cache = type { i32, i32 }
%struct.pt_packet_tnt = type { i32, i32 }
%struct.pt_config = type { i32 }

@pte_invalid = common dso_local global i32 0, align 4
@pte_bad_context = common dso_local global i32 0, align 4
@pte_bad_packet = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_tnt_cache_update_tnt(%struct.pt_tnt_cache* %0, %struct.pt_packet_tnt* %1, %struct.pt_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt_tnt_cache*, align 8
  %6 = alloca %struct.pt_packet_tnt*, align 8
  %7 = alloca %struct.pt_config*, align 8
  %8 = alloca i32, align 4
  store %struct.pt_tnt_cache* %0, %struct.pt_tnt_cache** %5, align 8
  store %struct.pt_packet_tnt* %1, %struct.pt_packet_tnt** %6, align 8
  store %struct.pt_config* %2, %struct.pt_config** %7, align 8
  %9 = load %struct.pt_config*, %struct.pt_config** %7, align 8
  %10 = load %struct.pt_tnt_cache*, %struct.pt_tnt_cache** %5, align 8
  %11 = icmp ne %struct.pt_tnt_cache* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load %struct.pt_packet_tnt*, %struct.pt_packet_tnt** %6, align 8
  %14 = icmp ne %struct.pt_packet_tnt* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12, %3
  %16 = load i32, i32* @pte_invalid, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %48

18:                                               ; preds = %12
  %19 = load %struct.pt_tnt_cache*, %struct.pt_tnt_cache** %5, align 8
  %20 = getelementptr inbounds %struct.pt_tnt_cache, %struct.pt_tnt_cache* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @pte_bad_context, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %48

26:                                               ; preds = %18
  %27 = load %struct.pt_packet_tnt*, %struct.pt_packet_tnt** %6, align 8
  %28 = getelementptr inbounds %struct.pt_packet_tnt, %struct.pt_packet_tnt* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @pte_bad_packet, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %48

35:                                               ; preds = %26
  %36 = load %struct.pt_packet_tnt*, %struct.pt_packet_tnt** %6, align 8
  %37 = getelementptr inbounds %struct.pt_packet_tnt, %struct.pt_packet_tnt* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.pt_tnt_cache*, %struct.pt_tnt_cache** %5, align 8
  %40 = getelementptr inbounds %struct.pt_tnt_cache, %struct.pt_tnt_cache* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %8, align 4
  %42 = sub nsw i32 %41, 1
  %43 = zext i32 %42 to i64
  %44 = shl i64 1, %43
  %45 = trunc i64 %44 to i32
  %46 = load %struct.pt_tnt_cache*, %struct.pt_tnt_cache** %5, align 8
  %47 = getelementptr inbounds %struct.pt_tnt_cache, %struct.pt_tnt_cache* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %35, %32, %23, %15
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
