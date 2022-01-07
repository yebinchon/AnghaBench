; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/saal/extr_saal_sscfu.c_set_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/saal/extr_saal_sscfu.c_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sscfu = type { i64, i32 }

@SSCFU_DBG_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"change state from %s to %s\00", align 1
@sscf_states = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sscfu*, i32)* @set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_state(%struct.sscfu* %0, i32 %1) #0 {
  %3 = alloca %struct.sscfu*, align 8
  %4 = alloca i32, align 4
  store %struct.sscfu* %0, %struct.sscfu** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.sscfu*, %struct.sscfu** %3, align 8
  %6 = load i32, i32* @SSCFU_DBG_STATE, align 4
  %7 = load %struct.sscfu*, %struct.sscfu** %3, align 8
  %8 = load %struct.sscfu*, %struct.sscfu** %3, align 8
  %9 = getelementptr inbounds %struct.sscfu, %struct.sscfu* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load i32*, i32** @sscf_states, align 8
  %12 = load %struct.sscfu*, %struct.sscfu** %3, align 8
  %13 = getelementptr inbounds %struct.sscfu, %struct.sscfu* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds i32, i32* %11, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** @sscf_states, align 8
  %18 = load i32, i32* %4, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to %struct.sscfu*
  %24 = call i32 @VERBOSE(%struct.sscfu* %5, i32 %6, %struct.sscfu* %23)
  %25 = load i32, i32* %4, align 4
  %26 = zext i32 %25 to i64
  %27 = load %struct.sscfu*, %struct.sscfu** %3, align 8
  %28 = getelementptr inbounds %struct.sscfu, %struct.sscfu* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  ret void
}

declare dso_local i32 @VERBOSE(%struct.sscfu*, i32, %struct.sscfu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
