; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/Osd/extr_OsdSynch.c_timeout2hz.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/Osd/extr_OsdSynch.c_timeout2hz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @timeout2hz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @timeout2hz(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.timeval, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = sdiv i32 %4, 1000
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1
  store i64 %6, i64* %7, align 8
  %8 = load i32, i32* %2, align 4
  %9 = srem i32 %8, 1000
  %10 = mul nsw i32 %9, 1000
  %11 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  store i32 %10, i32* %11, align 8
  %12 = call i32 @tvtohz(%struct.timeval* %3)
  ret i32 %12
}

declare dso_local i32 @tvtohz(%struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
