; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/saal/extr_saal_sscop.c_sscop_set_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/saal/extr_saal_sscop.c_sscop_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sscop = type { i64, i32, i32, i32 }

@SSCOP_DBG_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"changing state from %s to %s\00", align 1
@states = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sscop*, i64)* @sscop_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sscop_set_state(%struct.sscop* %0, i64 %1) #0 {
  %3 = alloca %struct.sscop*, align 8
  %4 = alloca i64, align 8
  store %struct.sscop* %0, %struct.sscop** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.sscop*, %struct.sscop** %3, align 8
  %6 = load i32, i32* @SSCOP_DBG_STATE, align 4
  %7 = load %struct.sscop*, %struct.sscop** %3, align 8
  %8 = load %struct.sscop*, %struct.sscop** %3, align 8
  %9 = getelementptr inbounds %struct.sscop, %struct.sscop* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = load i32*, i32** @states, align 8
  %12 = load %struct.sscop*, %struct.sscop** %3, align 8
  %13 = getelementptr inbounds %struct.sscop, %struct.sscop* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds i32, i32* %11, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** @states, align 8
  %18 = load i64, i64* %4, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = inttoptr i64 %21 to %struct.sscop*
  %23 = call i32 @VERBOSE(%struct.sscop* %5, i32 %6, %struct.sscop* %22)
  %24 = load i64, i64* %4, align 8
  %25 = load %struct.sscop*, %struct.sscop** %3, align 8
  %26 = getelementptr inbounds %struct.sscop, %struct.sscop* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load %struct.sscop*, %struct.sscop** %3, align 8
  %28 = getelementptr inbounds %struct.sscop, %struct.sscop* %27, i32 0, i32 2
  %29 = load %struct.sscop*, %struct.sscop** %3, align 8
  %30 = getelementptr inbounds %struct.sscop, %struct.sscop* %29, i32 0, i32 1
  %31 = call i32 @SIGQ_MOVE(i32* %28, i32* %30)
  ret void
}

declare dso_local i32 @VERBOSE(%struct.sscop*, i32, %struct.sscop*) #1

declare dso_local i32 @SIGQ_MOVE(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
