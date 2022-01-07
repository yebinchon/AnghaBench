; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_roff.c_roff_man_alloc1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_roff.c_roff_man_alloc1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff_man = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@ROFFT_ROOT = common dso_local global i32 0, align 4
@MACROSET_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.roff_man*)* @roff_man_alloc1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @roff_man_alloc1(%struct.roff_man* %0) #0 {
  %2 = alloca %struct.roff_man*, align 8
  store %struct.roff_man* %0, %struct.roff_man** %2, align 8
  %3 = load %struct.roff_man*, %struct.roff_man** %2, align 8
  %4 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %3, i32 0, i32 0
  %5 = call i32 @memset(%struct.TYPE_3__* %4, i32 0, i32 16)
  %6 = call %struct.TYPE_4__* @mandoc_calloc(i32 1, i32 4)
  %7 = load %struct.roff_man*, %struct.roff_man** %2, align 8
  %8 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  store %struct.TYPE_4__* %6, %struct.TYPE_4__** %9, align 8
  %10 = load i32, i32* @ROFFT_ROOT, align 4
  %11 = load %struct.roff_man*, %struct.roff_man** %2, align 8
  %12 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store i32 %10, i32* %15, align 4
  %16 = load i32, i32* @MACROSET_NONE, align 4
  %17 = load %struct.roff_man*, %struct.roff_man** %2, align 8
  %18 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 8
  %20 = load %struct.roff_man*, %struct.roff_man** %2, align 8
  %21 = call i32 @roff_state_reset(%struct.roff_man* %20)
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #1

declare dso_local %struct.TYPE_4__* @mandoc_calloc(i32, i32) #1

declare dso_local i32 @roff_state_reset(%struct.roff_man*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
