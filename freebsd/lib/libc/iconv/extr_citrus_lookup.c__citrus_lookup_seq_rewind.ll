; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_lookup.c__citrus_lookup_seq_rewind.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_lookup.c__citrus_lookup_seq_rewind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._citrus_lookup = type { i32, i64, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_citrus_lookup_seq_rewind(%struct._citrus_lookup* %0) #0 {
  %2 = alloca %struct._citrus_lookup*, align 8
  store %struct._citrus_lookup* %0, %struct._citrus_lookup** %2, align 8
  %3 = load %struct._citrus_lookup*, %struct._citrus_lookup** %2, align 8
  %4 = getelementptr inbounds %struct._citrus_lookup, %struct._citrus_lookup* %3, i32 0, i32 0
  store i32 1, i32* %4, align 8
  %5 = load %struct._citrus_lookup*, %struct._citrus_lookup** %2, align 8
  %6 = getelementptr inbounds %struct._citrus_lookup, %struct._citrus_lookup* %5, i32 0, i32 2
  %7 = load i32*, i32** %6, align 8
  %8 = call i32 @free(i32* %7)
  %9 = load %struct._citrus_lookup*, %struct._citrus_lookup** %2, align 8
  %10 = getelementptr inbounds %struct._citrus_lookup, %struct._citrus_lookup* %9, i32 0, i32 2
  store i32* null, i32** %10, align 8
  %11 = load %struct._citrus_lookup*, %struct._citrus_lookup** %2, align 8
  %12 = getelementptr inbounds %struct._citrus_lookup, %struct._citrus_lookup* %11, i32 0, i32 1
  store i64 0, i64* %12, align 8
  ret void
}

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
