; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image_section_cache.c_pt_section_request_bcache.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image_section_cache.c_pt_section_request_bcache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_section = type { i32, i32, %struct.pt_image_section_cache* }
%struct.pt_image_section_cache = type { i32 }

@pte_internal = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_section_request_bcache(%struct.pt_section* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_section*, align 8
  %4 = alloca %struct.pt_image_section_cache*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pt_section* %0, %struct.pt_section** %3, align 8
  %7 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %8 = icmp ne %struct.pt_section* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @pte_internal, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %75

12:                                               ; preds = %1
  %13 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %14 = call i32 @pt_section_lock_attach(%struct.pt_section* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %2, align 4
  br label %75

19:                                               ; preds = %12
  %20 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %21 = call i32 @pt_section_lock(%struct.pt_section* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %71

25:                                               ; preds = %19
  %26 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %27 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %68

31:                                               ; preds = %25
  %32 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %33 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %34, 3
  %36 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %37 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %39 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %42 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %40, %43
  store i32 %44, i32* %5, align 4
  %45 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %46 = call i32 @pt_section_unlock(%struct.pt_section* %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %31
  br label %71

50:                                               ; preds = %31
  %51 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %52 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %51, i32 0, i32 2
  %53 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %52, align 8
  store %struct.pt_image_section_cache* %53, %struct.pt_image_section_cache** %4, align 8
  %54 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %4, align 8
  %55 = icmp ne %struct.pt_image_section_cache* %54, null
  br i1 %55, label %56, label %65

56:                                               ; preds = %50
  %57 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %4, align 8
  %58 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @pt_iscache_notify_resize(%struct.pt_image_section_cache* %57, %struct.pt_section* %58, i32 %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %71

64:                                               ; preds = %56
  br label %65

65:                                               ; preds = %64, %50
  %66 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %67 = call i32 @pt_section_unlock_attach(%struct.pt_section* %66)
  store i32 %67, i32* %2, align 4
  br label %75

68:                                               ; preds = %30
  %69 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %70 = call i32 @pt_section_unlock(%struct.pt_section* %69)
  br label %71

71:                                               ; preds = %68, %63, %49, %24
  %72 = load %struct.pt_section*, %struct.pt_section** %3, align 8
  %73 = call i32 @pt_section_unlock_attach(%struct.pt_section* %72)
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %71, %65, %17, %9
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @pt_section_lock_attach(%struct.pt_section*) #1

declare dso_local i32 @pt_section_lock(%struct.pt_section*) #1

declare dso_local i32 @pt_section_unlock(%struct.pt_section*) #1

declare dso_local i32 @pt_iscache_notify_resize(%struct.pt_image_section_cache*, %struct.pt_section*, i32) #1

declare dso_local i32 @pt_section_unlock_attach(%struct.pt_section*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
