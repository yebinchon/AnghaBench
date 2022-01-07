; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_pmap_modify_pv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_pmap_modify_pv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_page = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.pv_entry = type { i32 }

@pvh_global_lock = common dso_local global i32 0, align 4
@RA_WLOCKED = common dso_local global i32 0, align 4
@PVF_REF = common dso_local global i32 0, align 4
@PVF_MOD = common dso_local global i32 0, align 4
@PVF_WIRED = common dso_local global i32 0, align 4
@PVF_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_page*, %struct.TYPE_10__*, i32, i32, i32)* @pmap_modify_pv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmap_modify_pv(%struct.vm_page* %0, %struct.TYPE_10__* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vm_page*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.pv_entry*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.vm_page* %0, %struct.vm_page** %7, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %16 = call i32 @PMAP_ASSERT_LOCKED(%struct.TYPE_10__* %15)
  %17 = load i32, i32* @RA_WLOCKED, align 4
  %18 = call i32 @rw_assert(i32* @pvh_global_lock, i32 %17)
  %19 = load %struct.vm_page*, %struct.vm_page** %7, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call %struct.pv_entry* @pmap_find_pv(%struct.vm_page* %19, %struct.TYPE_10__* %20, i32 %21)
  store %struct.pv_entry* %22, %struct.pv_entry** %12, align 8
  %23 = icmp eq %struct.pv_entry* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %92

25:                                               ; preds = %5
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @PVF_REF, align 4
  %28 = load i32, i32* @PVF_MOD, align 4
  %29 = or i32 %27, %28
  %30 = and i32 %26, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %25
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @PVF_REF, align 4
  %35 = load i32, i32* @PVF_MOD, align 4
  %36 = or i32 %34, %35
  %37 = and i32 %33, %36
  %38 = load %struct.vm_page*, %struct.vm_page** %7, align 8
  %39 = getelementptr inbounds %struct.vm_page, %struct.vm_page* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %37
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %32, %25
  %44 = load %struct.pv_entry*, %struct.pv_entry** %12, align 8
  %45 = getelementptr inbounds %struct.pv_entry, %struct.pv_entry* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* %10, align 4
  %49 = xor i32 %48, -1
  %50 = and i32 %47, %49
  %51 = load i32, i32* %11, align 4
  %52 = or i32 %50, %51
  store i32 %52, i32* %13, align 4
  %53 = load %struct.pv_entry*, %struct.pv_entry** %12, align 8
  %54 = getelementptr inbounds %struct.pv_entry, %struct.pv_entry* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* %14, align 4
  %57 = xor i32 %55, %56
  %58 = load i32, i32* @PVF_WIRED, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %79

61:                                               ; preds = %43
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* @PVF_WIRED, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  br label %78

72:                                               ; preds = %61
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %72, %66
  br label %79

79:                                               ; preds = %78, %43
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* %14, align 4
  %82 = xor i32 %80, %81
  %83 = load i32, i32* @PVF_WRITE, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %79
  %87 = load %struct.vm_page*, %struct.vm_page** %7, align 8
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %89 = call i32 @pmap_fix_cache(%struct.vm_page* %87, %struct.TYPE_10__* %88, i32 0)
  br label %90

90:                                               ; preds = %86, %79
  %91 = load i32, i32* %14, align 4
  store i32 %91, i32* %6, align 4
  br label %92

92:                                               ; preds = %90, %24
  %93 = load i32, i32* %6, align 4
  ret i32 %93
}

declare dso_local i32 @PMAP_ASSERT_LOCKED(%struct.TYPE_10__*) #1

declare dso_local i32 @rw_assert(i32*, i32) #1

declare dso_local %struct.pv_entry* @pmap_find_pv(%struct.vm_page*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @pmap_fix_cache(%struct.vm_page*, %struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
