; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_activate_int.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_activate_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@curpmap = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"no active pmap\00", align 1
@kernel_pmap = common dso_local global %struct.TYPE_8__* null, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"kernel pmap activation\00", align 1
@ish = common dso_local global i32 0, align 4
@asid_epoch = common dso_local global i32 0, align 4
@bcast_tlbi_workaround = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @pmap_activate_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmap_activate_int(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %5 = load i32, i32* @curpmap, align 4
  %6 = call %struct.TYPE_8__* @PCPU_GET(i32 %5)
  %7 = icmp ne %struct.TYPE_8__* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @KASSERT(i32 %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** @kernel_pmap, align 8
  %12 = icmp ne %struct.TYPE_8__* %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @KASSERT(i32 %13, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %16 = load i32, i32* @curpmap, align 4
  %17 = call %struct.TYPE_8__* @PCPU_GET(i32 %16)
  %18 = icmp eq %struct.TYPE_8__* %15, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %49

20:                                               ; preds = %1
  %21 = load i32, i32* @curpmap, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %23 = call i32 @PCPU_SET(i32 %21, %struct.TYPE_8__* %22)
  %24 = load i32, i32* @ish, align 4
  %25 = call i32 @dsb(i32 %24)
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @COOKIE_TO_EPOCH(i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %20
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @asid_epoch, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %38 = call i32 @pmap_alloc_asid(%struct.TYPE_8__* %37)
  br label %39

39:                                               ; preds = %36, %32, %20
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %41 = call i32 @pmap_to_ttbr0(%struct.TYPE_8__* %40)
  %42 = call i32 @set_ttbr0(i32 %41)
  %43 = load i32, i32* @bcast_tlbi_workaround, align 4
  %44 = call %struct.TYPE_8__* @PCPU_GET(i32 %43)
  %45 = icmp ne %struct.TYPE_8__* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = call i32 (...) @invalidate_local_icache()
  br label %48

48:                                               ; preds = %46, %39
  store i32 1, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %19
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.TYPE_8__* @PCPU_GET(i32) #1

declare dso_local i32 @PCPU_SET(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @dsb(i32) #1

declare dso_local i32 @COOKIE_TO_EPOCH(i32) #1

declare dso_local i32 @pmap_alloc_asid(%struct.TYPE_8__*) #1

declare dso_local i32 @set_ttbr0(i32) #1

declare dso_local i32 @pmap_to_ttbr0(%struct.TYPE_8__*) #1

declare dso_local i32 @invalidate_local_icache(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
