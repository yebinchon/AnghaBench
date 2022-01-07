; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_mem.c_cloudabi_sys_mem_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_mem.c_cloudabi_sys_mem_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.cloudabi_sys_mem_map_args = type { i32, i32, i32, i32, i64, i32 }

@CLOUDABI_MAP_ANON = common dso_local global i32 0, align 4
@MAP_ANON = common dso_local global i32 0, align 4
@CLOUDABI_MAP_FIXED = common dso_local global i32 0, align 4
@MAP_FIXED = common dso_local global i32 0, align 4
@CLOUDABI_MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@CLOUDABI_MAP_SHARED = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cloudabi_sys_mem_map(%struct.thread* %0, %struct.cloudabi_sys_mem_map_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.cloudabi_sys_mem_map_args*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.cloudabi_sys_mem_map_args* %1, %struct.cloudabi_sys_mem_map_args** %5, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.cloudabi_sys_mem_map_args*, %struct.cloudabi_sys_mem_map_args** %5, align 8
  %10 = getelementptr inbounds %struct.cloudabi_sys_mem_map_args, %struct.cloudabi_sys_mem_map_args* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @CLOUDABI_MAP_ANON, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* @MAP_ANON, align 4
  %17 = load i32, i32* %7, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %7, align 4
  br label %19

19:                                               ; preds = %15, %2
  %20 = load %struct.cloudabi_sys_mem_map_args*, %struct.cloudabi_sys_mem_map_args** %5, align 8
  %21 = getelementptr inbounds %struct.cloudabi_sys_mem_map_args, %struct.cloudabi_sys_mem_map_args* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @CLOUDABI_MAP_FIXED, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load i32, i32* @MAP_FIXED, align 4
  %28 = load i32, i32* %7, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %26, %19
  %31 = load %struct.cloudabi_sys_mem_map_args*, %struct.cloudabi_sys_mem_map_args** %5, align 8
  %32 = getelementptr inbounds %struct.cloudabi_sys_mem_map_args, %struct.cloudabi_sys_mem_map_args* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @CLOUDABI_MAP_PRIVATE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load i32, i32* @MAP_PRIVATE, align 4
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %37, %30
  %42 = load %struct.cloudabi_sys_mem_map_args*, %struct.cloudabi_sys_mem_map_args** %5, align 8
  %43 = getelementptr inbounds %struct.cloudabi_sys_mem_map_args, %struct.cloudabi_sys_mem_map_args* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @CLOUDABI_MAP_SHARED, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load i32, i32* @MAP_SHARED, align 4
  %50 = load i32, i32* %7, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %48, %41
  %53 = load %struct.cloudabi_sys_mem_map_args*, %struct.cloudabi_sys_mem_map_args** %5, align 8
  %54 = getelementptr inbounds %struct.cloudabi_sys_mem_map_args, %struct.cloudabi_sys_mem_map_args* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @convert_mprot(i32 %55, i32* %8)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %3, align 4
  br label %78

61:                                               ; preds = %52
  %62 = load %struct.thread*, %struct.thread** %4, align 8
  %63 = load %struct.cloudabi_sys_mem_map_args*, %struct.cloudabi_sys_mem_map_args** %5, align 8
  %64 = getelementptr inbounds %struct.cloudabi_sys_mem_map_args, %struct.cloudabi_sys_mem_map_args* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.cloudabi_sys_mem_map_args*, %struct.cloudabi_sys_mem_map_args** %5, align 8
  %67 = getelementptr inbounds %struct.cloudabi_sys_mem_map_args, %struct.cloudabi_sys_mem_map_args* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.cloudabi_sys_mem_map_args*, %struct.cloudabi_sys_mem_map_args** %5, align 8
  %72 = getelementptr inbounds %struct.cloudabi_sys_mem_map_args, %struct.cloudabi_sys_mem_map_args* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.cloudabi_sys_mem_map_args*, %struct.cloudabi_sys_mem_map_args** %5, align 8
  %75 = getelementptr inbounds %struct.cloudabi_sys_mem_map_args, %struct.cloudabi_sys_mem_map_args* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @kern_mmap(%struct.thread* %62, i64 %65, i32 %68, i32 %69, i32 %70, i32 %73, i32 %76)
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %61, %59
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @convert_mprot(i32, i32*) #1

declare dso_local i32 @kern_mmap(%struct.thread*, i64, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
