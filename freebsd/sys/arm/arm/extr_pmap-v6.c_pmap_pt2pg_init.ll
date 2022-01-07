; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v6.c_pmap_pt2pg_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v6.c_pmap_pt2pg_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@pt_memattr = common dso_local global i64 0, align 8
@kernel_pmap = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, %struct.TYPE_8__*)* @pmap_pt2pg_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmap_pt2pg_init(i64 %0, i32 %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %6, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @pt_memattr, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %17 = load i64, i64* @pt_memattr, align 8
  %18 = call i32 @pmap_page_set_memattr(%struct.TYPE_8__* %16, i64 %17)
  br label %19

19:                                               ; preds = %15, %3
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %21 = call i32 @pmap_pt2pg_zero(%struct.TYPE_8__* %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %23 = call i32 @pt2_wirecount_init(%struct.TYPE_8__* %22)
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* @kernel_pmap, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %19
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @PTE2_KPT(i32 %29)
  %31 = call i32 @pmap_kenter_pt2tab(i32 %28, i32 %30)
  br label %40

32:                                               ; preds = %19
  %33 = load i64, i64* %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32* @pmap_pt2tab_entry(i64 %33, i32 %34)
  store i32* %35, i32** %8, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @PTE2_KPT_NG(i32 %37)
  %39 = call i32 @pt2tab_store(i32* %36, i32 %38)
  br label %40

40:                                               ; preds = %32, %27
  %41 = load i32, i32* %7, align 4
  ret i32 %41
}

declare dso_local i32 @pmap_page_set_memattr(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @pmap_pt2pg_zero(%struct.TYPE_8__*) #1

declare dso_local i32 @pt2_wirecount_init(%struct.TYPE_8__*) #1

declare dso_local i32 @pmap_kenter_pt2tab(i32, i32) #1

declare dso_local i32 @PTE2_KPT(i32) #1

declare dso_local i32* @pmap_pt2tab_entry(i64, i32) #1

declare dso_local i32 @pt2tab_store(i32*, i32) #1

declare dso_local i32 @PTE2_KPT_NG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
