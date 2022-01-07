; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/linux32/extr_linux32_machdep.c_linux_set_thread_area.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/linux32/extr_linux32_machdep.c_linux_set_thread_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.pcb* }
%struct.pcb = type { i64 }
%struct.linux_set_thread_area_args = type { i32 }
%struct.l_user_desc = type { i32, i64 }
%struct.user_segment_descriptor = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PCB_32BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_set_thread_area(%struct.thread* %0, %struct.linux_set_thread_area_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_set_thread_area_args*, align 8
  %6 = alloca %struct.l_user_desc, align 8
  %7 = alloca %struct.user_segment_descriptor, align 4
  %8 = alloca %struct.pcb*, align 8
  %9 = alloca [2 x i32], align 4
  %10 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_set_thread_area_args* %1, %struct.linux_set_thread_area_args** %5, align 8
  %11 = load %struct.linux_set_thread_area_args*, %struct.linux_set_thread_area_args** %5, align 8
  %12 = getelementptr inbounds %struct.linux_set_thread_area_args, %struct.linux_set_thread_area_args* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @copyin(i32 %13, %struct.l_user_desc* %6, i32 16)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %3, align 4
  br label %63

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.l_user_desc, %struct.l_user_desc* %6, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %24 [
    i32 128, label %22
    i32 129, label %22
    i32 6, label %22
    i32 -1, label %22
  ]

22:                                               ; preds = %19, %19, %19, %19
  %23 = getelementptr inbounds %struct.l_user_desc, %struct.l_user_desc* %6, i32 0, i32 0
  store i32 128, i32* %23, align 8
  br label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %3, align 4
  br label %63

26:                                               ; preds = %22
  %27 = load %struct.linux_set_thread_area_args*, %struct.linux_set_thread_area_args** %5, align 8
  %28 = getelementptr inbounds %struct.linux_set_thread_area_args, %struct.linux_set_thread_area_args* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @copyout(%struct.l_user_desc* %6, i32 %29, i32 16)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %3, align 4
  br label %63

35:                                               ; preds = %26
  %36 = call i64 @LINUX_LDT_empty(%struct.l_user_desc* %6)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 0, i32* %39, align 4
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 0, i32* %40, align 4
  br label %46

41:                                               ; preds = %35
  %42 = call i32 @LINUX_LDT_entry_a(%struct.l_user_desc* %6)
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 %42, i32* %43, align 4
  %44 = call i32 @LINUX_LDT_entry_b(%struct.l_user_desc* %6)
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 %44, i32* %45, align 4
  br label %46

46:                                               ; preds = %41, %38
  %47 = bitcast [2 x i32]* %9 to i32**
  %48 = call i32 @memcpy(%struct.user_segment_descriptor* %7, i32** %47, i32 8)
  %49 = load %struct.thread*, %struct.thread** %4, align 8
  %50 = getelementptr inbounds %struct.thread, %struct.thread* %49, i32 0, i32 0
  %51 = load %struct.pcb*, %struct.pcb** %50, align 8
  store %struct.pcb* %51, %struct.pcb** %8, align 8
  %52 = getelementptr inbounds %struct.l_user_desc, %struct.l_user_desc* %6, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.pcb*, %struct.pcb** %8, align 8
  %55 = getelementptr inbounds %struct.pcb, %struct.pcb* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load %struct.pcb*, %struct.pcb** %8, align 8
  %57 = load i32, i32* @PCB_32BIT, align 4
  %58 = call i32 @set_pcb_flags(%struct.pcb* %56, i32 %57)
  %59 = load %struct.thread*, %struct.thread** %4, align 8
  %60 = getelementptr inbounds %struct.l_user_desc, %struct.l_user_desc* %6, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @update_gdt_gsbase(%struct.thread* %59, i64 %61)
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %46, %33, %24, %17
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @copyin(i32, %struct.l_user_desc*, i32) #1

declare dso_local i32 @copyout(%struct.l_user_desc*, i32, i32) #1

declare dso_local i64 @LINUX_LDT_empty(%struct.l_user_desc*) #1

declare dso_local i32 @LINUX_LDT_entry_a(%struct.l_user_desc*) #1

declare dso_local i32 @LINUX_LDT_entry_b(%struct.l_user_desc*) #1

declare dso_local i32 @memcpy(%struct.user_segment_descriptor*, i32**, i32) #1

declare dso_local i32 @set_pcb_flags(%struct.pcb*, i32) #1

declare dso_local i32 @update_gdt_gsbase(%struct.thread*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
