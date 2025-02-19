; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_pinit0.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_pinit0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, i32, i32*, i32 }
%struct.TYPE_6__ = type { i64 }

@ttbr0_el1 = common dso_local global i32 0, align 4
@ASID_RESERVED_FOR_PID_0 = common dso_local global i32 0, align 4
@INT_MIN = common dso_local global i32 0, align 4
@curpmap = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_pinit0(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %3 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %4 = call i32 @PMAP_LOCK_INIT(%struct.TYPE_7__* %3)
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 4
  %7 = call i32 @bzero(i32* %6, i32 4)
  %8 = load i32, i32* @ttbr0_el1, align 4
  %9 = call i32 @READ_SPECIALREG(i32 %8)
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 2
  store i32 %9, i32* %11, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @PHYS_TO_DMAP(i32 %14)
  %16 = inttoptr i64 %15 to i32*
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 3
  store i32* %16, i32** %18, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  %22 = load i32, i32* @ASID_RESERVED_FOR_PID_0, align 4
  %23 = load i32, i32* @INT_MIN, align 4
  %24 = call i32 @COOKIE_FROM(i32 %22, i32 %23)
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* @curpmap, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %29 = call i32 @PCPU_SET(i32 %27, %struct.TYPE_7__* %28)
  ret void
}

declare dso_local i32 @PMAP_LOCK_INIT(%struct.TYPE_7__*) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @READ_SPECIALREG(i32) #1

declare dso_local i64 @PHYS_TO_DMAP(i32) #1

declare dso_local i32 @COOKIE_FROM(i32, i32) #1

declare dso_local i32 @PCPU_SET(i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
