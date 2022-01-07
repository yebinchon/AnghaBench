; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_image_section_cache.c_pt_iscache_expand.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_image_section_cache.c_pt_iscache_expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_image_section_cache = type { i32, %struct.pt_iscache_entry* }
%struct.pt_iscache_entry = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@pte_nomem = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_image_section_cache*)* @pt_iscache_expand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_iscache_expand(%struct.pt_image_section_cache* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_image_section_cache*, align 8
  %4 = alloca %struct.pt_iscache_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pt_image_section_cache* %0, %struct.pt_image_section_cache** %3, align 8
  %7 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %3, align 8
  %8 = icmp ne %struct.pt_image_section_cache* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @pte_internal, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %45

12:                                               ; preds = %1
  %13 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %3, align 8
  %14 = getelementptr inbounds %struct.pt_image_section_cache, %struct.pt_image_section_cache* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = add nsw i32 %16, 8
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %12
  %22 = load i32, i32* @pte_nomem, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %45

24:                                               ; preds = %12
  %25 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %3, align 8
  %26 = getelementptr inbounds %struct.pt_image_section_cache, %struct.pt_image_section_cache* %25, i32 0, i32 1
  %27 = load %struct.pt_iscache_entry*, %struct.pt_iscache_entry** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = mul i64 %29, 4
  %31 = trunc i64 %30 to i32
  %32 = call %struct.pt_iscache_entry* @realloc(%struct.pt_iscache_entry* %27, i32 %31)
  store %struct.pt_iscache_entry* %32, %struct.pt_iscache_entry** %4, align 8
  %33 = load %struct.pt_iscache_entry*, %struct.pt_iscache_entry** %4, align 8
  %34 = icmp ne %struct.pt_iscache_entry* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %24
  %36 = load i32, i32* @pte_nomem, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %45

38:                                               ; preds = %24
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %3, align 8
  %41 = getelementptr inbounds %struct.pt_image_section_cache, %struct.pt_image_section_cache* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.pt_iscache_entry*, %struct.pt_iscache_entry** %4, align 8
  %43 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %3, align 8
  %44 = getelementptr inbounds %struct.pt_image_section_cache, %struct.pt_image_section_cache* %43, i32 0, i32 1
  store %struct.pt_iscache_entry* %42, %struct.pt_iscache_entry** %44, align 8
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %38, %35, %21, %9
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.pt_iscache_entry* @realloc(%struct.pt_iscache_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
