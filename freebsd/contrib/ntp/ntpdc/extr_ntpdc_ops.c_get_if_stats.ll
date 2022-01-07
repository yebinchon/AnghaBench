; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpdc/extr_ntpdc_ops.c_get_if_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpdc/extr_ntpdc_ops.c_get_if_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse = type { i32 }
%struct.info_if_stats = type { i32 }

@impl_ver = common dso_local global i32 0, align 4
@REQ_IF_STATS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parse*, i32*)* @get_if_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_if_stats(%struct.parse* %0, i32* %1) #0 {
  %3 = alloca %struct.parse*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.info_if_stats*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.parse* %0, %struct.parse** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32, i32* @impl_ver, align 4
  %10 = load i32, i32* @REQ_IF_STATS, align 4
  %11 = bitcast %struct.info_if_stats** %5 to i8*
  %12 = call i32 @doquery(i32 %9, i32 %10, i32 1, i32 0, i32 0, i8* null, i64* %6, i64* %7, i8* %11, i32 0, i32 4)
  store i32 %12, i32* %8, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = load %struct.info_if_stats*, %struct.info_if_stats** %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @iflist(i32* %13, %struct.info_if_stats* %14, i64 %15, i64 %16, i32 %17)
  ret void
}

declare dso_local i32 @doquery(i32, i32, i32, i32, i32, i8*, i64*, i64*, i8*, i32, i32) #1

declare dso_local i32 @iflist(i32*, %struct.info_if_stats*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
