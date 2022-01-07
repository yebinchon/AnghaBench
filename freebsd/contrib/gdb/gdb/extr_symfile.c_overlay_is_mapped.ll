; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symfile.c_overlay_is_mapped.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symfile.c_overlay_is_mapped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obj_section = type { i32, i32 }

@overlay_debugging = common dso_local global i32 0, align 4
@overlay_cache_invalid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.obj_section*)* @overlay_is_mapped to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @overlay_is_mapped(%struct.obj_section* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.obj_section*, align 8
  store %struct.obj_section* %0, %struct.obj_section** %3, align 8
  %4 = load %struct.obj_section*, %struct.obj_section** %3, align 8
  %5 = icmp eq %struct.obj_section* %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = load %struct.obj_section*, %struct.obj_section** %3, align 8
  %8 = getelementptr inbounds %struct.obj_section, %struct.obj_section* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @section_is_overlay(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %6, %1
  store i32 0, i32* %2, align 4
  br label %39

13:                                               ; preds = %6
  %14 = load i32, i32* @overlay_debugging, align 4
  switch i32 %14, label %15 [
    i32 129, label %16
    i32 130, label %17
    i32 128, label %33
  ]

15:                                               ; preds = %13
  br label %16

16:                                               ; preds = %13, %15
  store i32 0, i32* %2, align 4
  br label %39

17:                                               ; preds = %13
  br i1 true, label %18, label %32

18:                                               ; preds = %17
  %19 = load i32, i32* @overlay_cache_invalid, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = call i32 (...) @overlay_invalidate_all()
  store i32 0, i32* @overlay_cache_invalid, align 4
  br label %23

23:                                               ; preds = %21, %18
  %24 = load %struct.obj_section*, %struct.obj_section** %3, align 8
  %25 = getelementptr inbounds %struct.obj_section, %struct.obj_section* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct.obj_section*, %struct.obj_section** %3, align 8
  %30 = call i32 @target_overlay_update(%struct.obj_section* %29)
  br label %31

31:                                               ; preds = %28, %23
  br label %32

32:                                               ; preds = %31, %17
  br label %33

33:                                               ; preds = %13, %32
  %34 = load %struct.obj_section*, %struct.obj_section** %3, align 8
  %35 = getelementptr inbounds %struct.obj_section, %struct.obj_section* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 1
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %33, %16, %12
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @section_is_overlay(i32) #1

declare dso_local i32 @target_overlay_update(%struct.obj_section*) #1

declare dso_local i32 @overlay_invalidate_all(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
