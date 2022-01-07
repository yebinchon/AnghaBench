; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/saal/extr_saal_sscfu.c_sscfu_getdefparam.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/saal/extr_saal_sscfu.c_sscfu_getdefparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sscop_param = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@SSCOP_SET_TCC = common dso_local global i32 0, align 4
@SSCOP_SET_TPOLL = common dso_local global i32 0, align 4
@SSCOP_SET_TKA = common dso_local global i32 0, align 4
@SSCOP_SET_TNR = common dso_local global i32 0, align 4
@SSCOP_SET_TIDLE = common dso_local global i32 0, align 4
@SSCOP_SET_MAXK = common dso_local global i32 0, align 4
@SSCOP_SET_MAXJ = common dso_local global i32 0, align 4
@SSCOP_SET_MAXCC = common dso_local global i32 0, align 4
@SSCOP_SET_MAXPD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sscfu_getdefparam(%struct.sscop_param* %0) #0 {
  %2 = alloca %struct.sscop_param*, align 8
  store %struct.sscop_param* %0, %struct.sscop_param** %2, align 8
  %3 = load %struct.sscop_param*, %struct.sscop_param** %2, align 8
  %4 = call i32 @memset(%struct.sscop_param* %3, i32 0, i32 36)
  %5 = load %struct.sscop_param*, %struct.sscop_param** %2, align 8
  %6 = getelementptr inbounds %struct.sscop_param, %struct.sscop_param* %5, i32 0, i32 0
  store i32 1000, i32* %6, align 4
  %7 = load %struct.sscop_param*, %struct.sscop_param** %2, align 8
  %8 = getelementptr inbounds %struct.sscop_param, %struct.sscop_param* %7, i32 0, i32 1
  store i32 750, i32* %8, align 4
  %9 = load %struct.sscop_param*, %struct.sscop_param** %2, align 8
  %10 = getelementptr inbounds %struct.sscop_param, %struct.sscop_param* %9, i32 0, i32 2
  store i32 2000, i32* %10, align 4
  %11 = load %struct.sscop_param*, %struct.sscop_param** %2, align 8
  %12 = getelementptr inbounds %struct.sscop_param, %struct.sscop_param* %11, i32 0, i32 3
  store i32 7000, i32* %12, align 4
  %13 = load %struct.sscop_param*, %struct.sscop_param** %2, align 8
  %14 = getelementptr inbounds %struct.sscop_param, %struct.sscop_param* %13, i32 0, i32 4
  store i32 15000, i32* %14, align 4
  %15 = load %struct.sscop_param*, %struct.sscop_param** %2, align 8
  %16 = getelementptr inbounds %struct.sscop_param, %struct.sscop_param* %15, i32 0, i32 5
  store i32 4096, i32* %16, align 4
  %17 = load %struct.sscop_param*, %struct.sscop_param** %2, align 8
  %18 = getelementptr inbounds %struct.sscop_param, %struct.sscop_param* %17, i32 0, i32 6
  store i32 4096, i32* %18, align 4
  %19 = load %struct.sscop_param*, %struct.sscop_param** %2, align 8
  %20 = getelementptr inbounds %struct.sscop_param, %struct.sscop_param* %19, i32 0, i32 7
  store i32 4, i32* %20, align 4
  %21 = load %struct.sscop_param*, %struct.sscop_param** %2, align 8
  %22 = getelementptr inbounds %struct.sscop_param, %struct.sscop_param* %21, i32 0, i32 8
  store i32 25, i32* %22, align 4
  %23 = load i32, i32* @SSCOP_SET_TCC, align 4
  %24 = load i32, i32* @SSCOP_SET_TPOLL, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @SSCOP_SET_TKA, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @SSCOP_SET_TNR, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @SSCOP_SET_TIDLE, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @SSCOP_SET_MAXK, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @SSCOP_SET_MAXJ, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @SSCOP_SET_MAXCC, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @SSCOP_SET_MAXPD, align 4
  %39 = or i32 %37, %38
  ret i32 %39
}

declare dso_local i32 @memset(%struct.sscop_param*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
