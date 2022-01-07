; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_image_section_cache.c_pt_iscache_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_image_section_cache.c_pt_iscache_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_image_section_cache = type { i32, i32, i32 }

@pte_internal = common dso_local global i32 0, align 4
@UINT64_MAX = common dso_local global i32 0, align 4
@pte_nomem = common dso_local global i32 0, align 4
@mtx_plain = common dso_local global i32 0, align 4
@pte_bad_lock = common dso_local global i32 0, align 4
@thrd_success = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_iscache_init(%struct.pt_image_section_cache* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_image_section_cache*, align 8
  %5 = alloca i8*, align 8
  store %struct.pt_image_section_cache* %0, %struct.pt_image_section_cache** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %4, align 8
  %7 = icmp ne %struct.pt_image_section_cache* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* @pte_internal, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %3, align 4
  br label %33

11:                                               ; preds = %2
  %12 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %4, align 8
  %13 = call i32 @memset(%struct.pt_image_section_cache* %12, i32 0, i32 12)
  %14 = load i32, i32* @UINT64_MAX, align 4
  %15 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %4, align 8
  %16 = getelementptr inbounds %struct.pt_image_section_cache, %struct.pt_image_section_cache* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %32

19:                                               ; preds = %11
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @dupstr(i8* %20)
  %22 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %4, align 8
  %23 = getelementptr inbounds %struct.pt_image_section_cache, %struct.pt_image_section_cache* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %4, align 8
  %25 = getelementptr inbounds %struct.pt_image_section_cache, %struct.pt_image_section_cache* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %19
  %29 = load i32, i32* @pte_nomem, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %33

31:                                               ; preds = %19
  br label %32

32:                                               ; preds = %31, %11
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %28, %8
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @memset(%struct.pt_image_section_cache*, i32, i32) #1

declare dso_local i32 @dupstr(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
