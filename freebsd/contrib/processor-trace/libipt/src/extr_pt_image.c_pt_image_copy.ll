; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_image.c_pt_image_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_image.c_pt_image_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_image = type { %struct.pt_section_list* }
%struct.pt_section_list = type { i32, %struct.TYPE_2__, %struct.pt_section_list* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@pte_invalid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_image_copy(%struct.pt_image* %0, %struct.pt_image* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_image*, align 8
  %5 = alloca %struct.pt_image*, align 8
  %6 = alloca %struct.pt_section_list*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pt_image* %0, %struct.pt_image** %4, align 8
  store %struct.pt_image* %1, %struct.pt_image** %5, align 8
  %9 = load %struct.pt_image*, %struct.pt_image** %4, align 8
  %10 = icmp ne %struct.pt_image* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.pt_image*, %struct.pt_image** %5, align 8
  %13 = icmp ne %struct.pt_image* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %11, %2
  %15 = load i32, i32* @pte_invalid, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %58

17:                                               ; preds = %11
  %18 = load %struct.pt_image*, %struct.pt_image** %4, align 8
  %19 = load %struct.pt_image*, %struct.pt_image** %5, align 8
  %20 = icmp eq %struct.pt_image* %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %58

22:                                               ; preds = %17
  store i32 0, i32* %7, align 4
  %23 = load %struct.pt_image*, %struct.pt_image** %5, align 8
  %24 = getelementptr inbounds %struct.pt_image, %struct.pt_image* %23, i32 0, i32 0
  %25 = load %struct.pt_section_list*, %struct.pt_section_list** %24, align 8
  store %struct.pt_section_list* %25, %struct.pt_section_list** %6, align 8
  br label %26

26:                                               ; preds = %52, %22
  %27 = load %struct.pt_section_list*, %struct.pt_section_list** %6, align 8
  %28 = icmp ne %struct.pt_section_list* %27, null
  br i1 %28, label %29, label %56

29:                                               ; preds = %26
  %30 = load %struct.pt_image*, %struct.pt_image** %4, align 8
  %31 = load %struct.pt_section_list*, %struct.pt_section_list** %6, align 8
  %32 = getelementptr inbounds %struct.pt_section_list, %struct.pt_section_list* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.pt_section_list*, %struct.pt_section_list** %6, align 8
  %36 = getelementptr inbounds %struct.pt_section_list, %struct.pt_section_list* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load %struct.pt_section_list*, %struct.pt_section_list** %6, align 8
  %39 = getelementptr inbounds %struct.pt_section_list, %struct.pt_section_list* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.pt_section_list*, %struct.pt_section_list** %6, align 8
  %43 = getelementptr inbounds %struct.pt_section_list, %struct.pt_section_list* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @pt_image_add(%struct.pt_image* %30, i32 %34, i32* %37, i32 %41, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %29
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %48, %29
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.pt_section_list*, %struct.pt_section_list** %6, align 8
  %54 = getelementptr inbounds %struct.pt_section_list, %struct.pt_section_list* %53, i32 0, i32 2
  %55 = load %struct.pt_section_list*, %struct.pt_section_list** %54, align 8
  store %struct.pt_section_list* %55, %struct.pt_section_list** %6, align 8
  br label %26

56:                                               ; preds = %26
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %56, %21, %14
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @pt_image_add(%struct.pt_image*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
