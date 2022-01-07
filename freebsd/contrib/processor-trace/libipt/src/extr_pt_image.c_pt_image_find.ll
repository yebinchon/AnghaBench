; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_image.c_pt_image_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_image.c_pt_image_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_image = type { %struct.pt_section_list* }
%struct.pt_section_list = type { i32, %struct.pt_mapped_section }
%struct.pt_mapped_section = type { i32 }
%struct.pt_asid = type { i32 }
%struct.pt_section = type { i32 }

@pte_internal = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_image_find(%struct.pt_image* %0, %struct.pt_mapped_section* %1, %struct.pt_asid* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pt_image*, align 8
  %7 = alloca %struct.pt_mapped_section*, align 8
  %8 = alloca %struct.pt_asid*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pt_mapped_section*, align 8
  %11 = alloca %struct.pt_section_list*, align 8
  %12 = alloca %struct.pt_section*, align 8
  %13 = alloca i32, align 4
  store %struct.pt_image* %0, %struct.pt_image** %6, align 8
  store %struct.pt_mapped_section* %1, %struct.pt_mapped_section** %7, align 8
  store %struct.pt_asid* %2, %struct.pt_asid** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.pt_image*, %struct.pt_image** %6, align 8
  %15 = icmp ne %struct.pt_image* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load %struct.pt_mapped_section*, %struct.pt_mapped_section** %7, align 8
  %18 = icmp ne %struct.pt_mapped_section* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16, %4
  %20 = load i32, i32* @pte_internal, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %59

22:                                               ; preds = %16
  %23 = load %struct.pt_image*, %struct.pt_image** %6, align 8
  %24 = load %struct.pt_asid*, %struct.pt_asid** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @pt_image_fetch_section(%struct.pt_image* %23, %struct.pt_asid* %24, i32 %25)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* %13, align 4
  store i32 %30, i32* %5, align 4
  br label %59

31:                                               ; preds = %22
  %32 = load %struct.pt_image*, %struct.pt_image** %6, align 8
  %33 = getelementptr inbounds %struct.pt_image, %struct.pt_image* %32, i32 0, i32 0
  %34 = load %struct.pt_section_list*, %struct.pt_section_list** %33, align 8
  store %struct.pt_section_list* %34, %struct.pt_section_list** %11, align 8
  %35 = load %struct.pt_section_list*, %struct.pt_section_list** %11, align 8
  %36 = icmp ne %struct.pt_section_list* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* @pte_internal, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %59

40:                                               ; preds = %31
  %41 = load %struct.pt_section_list*, %struct.pt_section_list** %11, align 8
  %42 = getelementptr inbounds %struct.pt_section_list, %struct.pt_section_list* %41, i32 0, i32 1
  store %struct.pt_mapped_section* %42, %struct.pt_mapped_section** %10, align 8
  %43 = load %struct.pt_mapped_section*, %struct.pt_mapped_section** %10, align 8
  %44 = call %struct.pt_section* @pt_msec_section(%struct.pt_mapped_section* %43)
  store %struct.pt_section* %44, %struct.pt_section** %12, align 8
  %45 = load %struct.pt_section*, %struct.pt_section** %12, align 8
  %46 = call i32 @pt_section_get(%struct.pt_section* %45)
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = load i32, i32* %13, align 4
  store i32 %50, i32* %5, align 4
  br label %59

51:                                               ; preds = %40
  %52 = load %struct.pt_mapped_section*, %struct.pt_mapped_section** %7, align 8
  %53 = load %struct.pt_mapped_section*, %struct.pt_mapped_section** %10, align 8
  %54 = bitcast %struct.pt_mapped_section* %52 to i8*
  %55 = bitcast %struct.pt_mapped_section* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %54, i8* align 4 %55, i64 4, i1 false)
  %56 = load %struct.pt_section_list*, %struct.pt_section_list** %11, align 8
  %57 = getelementptr inbounds %struct.pt_section_list, %struct.pt_section_list* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %51, %49, %37, %29, %19
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @pt_image_fetch_section(%struct.pt_image*, %struct.pt_asid*, i32) #1

declare dso_local %struct.pt_section* @pt_msec_section(%struct.pt_mapped_section*) #1

declare dso_local i32 @pt_section_get(%struct.pt_section*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
