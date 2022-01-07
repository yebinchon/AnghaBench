; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_image.c_pt_mk_section_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_image.c_pt_mk_section_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_section_list = type { i32, i32 }
%struct.pt_section = type { i32 }
%struct.pt_asid = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pt_section_list* (%struct.pt_section*, %struct.pt_asid*, i32, i32, i32, i32)* @pt_mk_section_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pt_section_list* @pt_mk_section_list(%struct.pt_section* %0, %struct.pt_asid* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.pt_section_list*, align 8
  %8 = alloca %struct.pt_section*, align 8
  %9 = alloca %struct.pt_asid*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.pt_section_list*, align 8
  %15 = alloca i32, align 4
  store %struct.pt_section* %0, %struct.pt_section** %8, align 8
  store %struct.pt_asid* %1, %struct.pt_asid** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = call %struct.pt_section_list* @malloc(i32 8)
  store %struct.pt_section_list* %16, %struct.pt_section_list** %14, align 8
  %17 = load %struct.pt_section_list*, %struct.pt_section_list** %14, align 8
  %18 = icmp ne %struct.pt_section_list* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %6
  store %struct.pt_section_list* null, %struct.pt_section_list** %7, align 8
  br label %44

20:                                               ; preds = %6
  %21 = load %struct.pt_section_list*, %struct.pt_section_list** %14, align 8
  %22 = call i32 @memset(%struct.pt_section_list* %21, i32 0, i32 8)
  %23 = load %struct.pt_section*, %struct.pt_section** %8, align 8
  %24 = call i32 @pt_section_get(%struct.pt_section* %23)
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %15, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %41

28:                                               ; preds = %20
  %29 = load %struct.pt_section_list*, %struct.pt_section_list** %14, align 8
  %30 = getelementptr inbounds %struct.pt_section_list, %struct.pt_section_list* %29, i32 0, i32 1
  %31 = load %struct.pt_section*, %struct.pt_section** %8, align 8
  %32 = load %struct.pt_asid*, %struct.pt_asid** %9, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @pt_msec_init(i32* %30, %struct.pt_section* %31, %struct.pt_asid* %32, i32 %33, i32 %34, i32 %35)
  %37 = load i32, i32* %13, align 4
  %38 = load %struct.pt_section_list*, %struct.pt_section_list** %14, align 8
  %39 = getelementptr inbounds %struct.pt_section_list, %struct.pt_section_list* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.pt_section_list*, %struct.pt_section_list** %14, align 8
  store %struct.pt_section_list* %40, %struct.pt_section_list** %7, align 8
  br label %44

41:                                               ; preds = %27
  %42 = load %struct.pt_section_list*, %struct.pt_section_list** %14, align 8
  %43 = call i32 @free(%struct.pt_section_list* %42)
  store %struct.pt_section_list* null, %struct.pt_section_list** %7, align 8
  br label %44

44:                                               ; preds = %41, %28, %19
  %45 = load %struct.pt_section_list*, %struct.pt_section_list** %7, align 8
  ret %struct.pt_section_list* %45
}

declare dso_local %struct.pt_section_list* @malloc(i32) #1

declare dso_local i32 @memset(%struct.pt_section_list*, i32, i32) #1

declare dso_local i32 @pt_section_get(%struct.pt_section*) #1

declare dso_local i32 @pt_msec_init(i32*, %struct.pt_section*, %struct.pt_asid*, i32, i32, i32) #1

declare dso_local i32 @free(%struct.pt_section_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
