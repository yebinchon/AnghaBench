; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_regional.c_regional_get_mem.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_regional.c_regional_get_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regional = type { i64, i64 }

@REGIONAL_CHUNK_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @regional_get_mem(%struct.regional* %0) #0 {
  %2 = alloca %struct.regional*, align 8
  store %struct.regional* %0, %struct.regional** %2, align 8
  %3 = load %struct.regional*, %struct.regional** %2, align 8
  %4 = getelementptr inbounds %struct.regional, %struct.regional* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.regional*, %struct.regional** %2, align 8
  %7 = call i32 @count_chunks(%struct.regional* %6)
  %8 = sub nsw i32 %7, 1
  %9 = load i32, i32* @REGIONAL_CHUNK_SIZE, align 4
  %10 = mul nsw i32 %8, %9
  %11 = sext i32 %10 to i64
  %12 = add i64 %5, %11
  %13 = load %struct.regional*, %struct.regional** %2, align 8
  %14 = getelementptr inbounds %struct.regional, %struct.regional* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = add i64 %12, %15
  ret i64 %16
}

declare dso_local i32 @count_chunks(%struct.regional*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
