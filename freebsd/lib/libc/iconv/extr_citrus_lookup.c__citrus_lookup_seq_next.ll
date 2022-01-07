; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_lookup.c__citrus_lookup_seq_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_lookup.c__citrus_lookup_seq_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._citrus_lookup = type { {}* }
%struct._region = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_citrus_lookup_seq_next(%struct._citrus_lookup* %0, %struct._region* %1, %struct._region* %2) #0 {
  %4 = alloca %struct._citrus_lookup*, align 8
  %5 = alloca %struct._region*, align 8
  %6 = alloca %struct._region*, align 8
  store %struct._citrus_lookup* %0, %struct._citrus_lookup** %4, align 8
  store %struct._region* %1, %struct._region** %5, align 8
  store %struct._region* %2, %struct._region** %6, align 8
  %7 = load %struct._citrus_lookup*, %struct._citrus_lookup** %4, align 8
  %8 = getelementptr inbounds %struct._citrus_lookup, %struct._citrus_lookup* %7, i32 0, i32 0
  %9 = bitcast {}** %8 to i32 (%struct._citrus_lookup*, %struct._region*, %struct._region*)**
  %10 = load i32 (%struct._citrus_lookup*, %struct._region*, %struct._region*)*, i32 (%struct._citrus_lookup*, %struct._region*, %struct._region*)** %9, align 8
  %11 = load %struct._citrus_lookup*, %struct._citrus_lookup** %4, align 8
  %12 = load %struct._region*, %struct._region** %5, align 8
  %13 = load %struct._region*, %struct._region** %6, align 8
  %14 = call i32 %10(%struct._citrus_lookup* %11, %struct._region* %12, %struct._region* %13)
  ret i32 %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
