; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_ntp_calendar.c_vint64_to_time.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_ntp_calendar.c_vint64_to_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vint64_to_time(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  ret i32 %8
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
