; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_gas_query_ap.c_ms_from_time.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_gas_query_ap.c_ms_from_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.os_reltime = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.os_reltime*)* @ms_from_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms_from_time(%struct.os_reltime* %0) #0 {
  %2 = alloca %struct.os_reltime*, align 8
  %3 = alloca %struct.os_reltime, align 4
  %4 = alloca %struct.os_reltime, align 4
  store %struct.os_reltime* %0, %struct.os_reltime** %2, align 8
  %5 = call i32 @os_get_reltime(%struct.os_reltime* %3)
  %6 = load %struct.os_reltime*, %struct.os_reltime** %2, align 8
  %7 = call i32 @os_reltime_sub(%struct.os_reltime* %3, %struct.os_reltime* %6, %struct.os_reltime* %4)
  %8 = getelementptr inbounds %struct.os_reltime, %struct.os_reltime* %4, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = mul nsw i32 %9, 1000
  %11 = getelementptr inbounds %struct.os_reltime, %struct.os_reltime* %4, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = sdiv i32 %12, 1000
  %14 = add nsw i32 %10, %13
  ret i32 %14
}

declare dso_local i32 @os_get_reltime(%struct.os_reltime*) #1

declare dso_local i32 @os_reltime_sub(%struct.os_reltime*, %struct.os_reltime*, %struct.os_reltime*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
