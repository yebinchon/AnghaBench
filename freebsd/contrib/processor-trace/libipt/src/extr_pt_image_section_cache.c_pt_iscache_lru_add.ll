; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_image_section_cache.c_pt_iscache_lru_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_image_section_cache.c_pt_iscache_lru_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_image_section_cache = type { %struct.pt_iscache_lru_entry* }
%struct.pt_iscache_lru_entry = type { %struct.pt_iscache_lru_entry*, %struct.pt_section* }
%struct.pt_section = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_image_section_cache*, %struct.pt_section*)* @pt_iscache_lru_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_iscache_lru_add(%struct.pt_image_section_cache* %0, %struct.pt_section* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_image_section_cache*, align 8
  %5 = alloca %struct.pt_section*, align 8
  %6 = alloca %struct.pt_iscache_lru_entry*, align 8
  %7 = alloca %struct.pt_iscache_lru_entry**, align 8
  store %struct.pt_image_section_cache* %0, %struct.pt_image_section_cache** %4, align 8
  store %struct.pt_section* %1, %struct.pt_section** %5, align 8
  %8 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %4, align 8
  %9 = icmp ne %struct.pt_image_section_cache* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @pte_internal, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %50

13:                                               ; preds = %2
  %14 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %4, align 8
  %15 = getelementptr inbounds %struct.pt_image_section_cache, %struct.pt_image_section_cache* %14, i32 0, i32 0
  store %struct.pt_iscache_lru_entry** %15, %struct.pt_iscache_lru_entry*** %7, align 8
  %16 = load %struct.pt_iscache_lru_entry**, %struct.pt_iscache_lru_entry*** %7, align 8
  %17 = load %struct.pt_iscache_lru_entry*, %struct.pt_iscache_lru_entry** %16, align 8
  store %struct.pt_iscache_lru_entry* %17, %struct.pt_iscache_lru_entry** %6, align 8
  br label %18

18:                                               ; preds = %41, %13
  %19 = load %struct.pt_iscache_lru_entry*, %struct.pt_iscache_lru_entry** %6, align 8
  %20 = icmp ne %struct.pt_iscache_lru_entry* %19, null
  br i1 %20, label %21, label %46

21:                                               ; preds = %18
  %22 = load %struct.pt_iscache_lru_entry*, %struct.pt_iscache_lru_entry** %6, align 8
  %23 = getelementptr inbounds %struct.pt_iscache_lru_entry, %struct.pt_iscache_lru_entry* %22, i32 0, i32 1
  %24 = load %struct.pt_section*, %struct.pt_section** %23, align 8
  %25 = load %struct.pt_section*, %struct.pt_section** %5, align 8
  %26 = icmp ne %struct.pt_section* %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %41

28:                                               ; preds = %21
  %29 = load %struct.pt_iscache_lru_entry*, %struct.pt_iscache_lru_entry** %6, align 8
  %30 = getelementptr inbounds %struct.pt_iscache_lru_entry, %struct.pt_iscache_lru_entry* %29, i32 0, i32 0
  %31 = load %struct.pt_iscache_lru_entry*, %struct.pt_iscache_lru_entry** %30, align 8
  %32 = load %struct.pt_iscache_lru_entry**, %struct.pt_iscache_lru_entry*** %7, align 8
  store %struct.pt_iscache_lru_entry* %31, %struct.pt_iscache_lru_entry** %32, align 8
  %33 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %4, align 8
  %34 = getelementptr inbounds %struct.pt_image_section_cache, %struct.pt_image_section_cache* %33, i32 0, i32 0
  %35 = load %struct.pt_iscache_lru_entry*, %struct.pt_iscache_lru_entry** %34, align 8
  %36 = load %struct.pt_iscache_lru_entry*, %struct.pt_iscache_lru_entry** %6, align 8
  %37 = getelementptr inbounds %struct.pt_iscache_lru_entry, %struct.pt_iscache_lru_entry* %36, i32 0, i32 0
  store %struct.pt_iscache_lru_entry* %35, %struct.pt_iscache_lru_entry** %37, align 8
  %38 = load %struct.pt_iscache_lru_entry*, %struct.pt_iscache_lru_entry** %6, align 8
  %39 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %4, align 8
  %40 = getelementptr inbounds %struct.pt_image_section_cache, %struct.pt_image_section_cache* %39, i32 0, i32 0
  store %struct.pt_iscache_lru_entry* %38, %struct.pt_iscache_lru_entry** %40, align 8
  store i32 0, i32* %3, align 4
  br label %50

41:                                               ; preds = %27
  %42 = load %struct.pt_iscache_lru_entry*, %struct.pt_iscache_lru_entry** %6, align 8
  %43 = getelementptr inbounds %struct.pt_iscache_lru_entry, %struct.pt_iscache_lru_entry* %42, i32 0, i32 0
  store %struct.pt_iscache_lru_entry** %43, %struct.pt_iscache_lru_entry*** %7, align 8
  %44 = load %struct.pt_iscache_lru_entry**, %struct.pt_iscache_lru_entry*** %7, align 8
  %45 = load %struct.pt_iscache_lru_entry*, %struct.pt_iscache_lru_entry** %44, align 8
  store %struct.pt_iscache_lru_entry* %45, %struct.pt_iscache_lru_entry** %6, align 8
  br label %18

46:                                               ; preds = %18
  %47 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %4, align 8
  %48 = load %struct.pt_section*, %struct.pt_section** %5, align 8
  %49 = call i32 @pt_isache_lru_new(%struct.pt_image_section_cache* %47, %struct.pt_section* %48)
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %46, %28, %10
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @pt_isache_lru_new(%struct.pt_image_section_cache*, %struct.pt_section*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
