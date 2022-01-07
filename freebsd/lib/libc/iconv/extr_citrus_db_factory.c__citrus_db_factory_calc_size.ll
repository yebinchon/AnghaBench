; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_db_factory.c__citrus_db_factory_calc_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_db_factory.c__citrus_db_factory_calc_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._citrus_db_factory = type { i32, i32, i64 }

@_CITRUS_DB_HEADER_SIZE = common dso_local global i32 0, align 4
@_CITRUS_DB_ENTRY_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_citrus_db_factory_calc_size(%struct._citrus_db_factory* %0) #0 {
  %2 = alloca %struct._citrus_db_factory*, align 8
  %3 = alloca i64, align 8
  store %struct._citrus_db_factory* %0, %struct._citrus_db_factory** %2, align 8
  %4 = load i32, i32* @_CITRUS_DB_HEADER_SIZE, align 4
  %5 = call i64 @ceilto(i32 %4)
  store i64 %5, i64* %3, align 8
  %6 = load i32, i32* @_CITRUS_DB_ENTRY_SIZE, align 4
  %7 = load %struct._citrus_db_factory*, %struct._citrus_db_factory** %2, align 8
  %8 = getelementptr inbounds %struct._citrus_db_factory, %struct._citrus_db_factory* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = mul nsw i32 %6, %9
  %11 = call i64 @ceilto(i32 %10)
  %12 = load i64, i64* %3, align 8
  %13 = add i64 %12, %11
  store i64 %13, i64* %3, align 8
  %14 = load %struct._citrus_db_factory*, %struct._citrus_db_factory** %2, align 8
  %15 = getelementptr inbounds %struct._citrus_db_factory, %struct._citrus_db_factory* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @ceilto(i32 %16)
  %18 = load i64, i64* %3, align 8
  %19 = add i64 %18, %17
  store i64 %19, i64* %3, align 8
  %20 = load %struct._citrus_db_factory*, %struct._citrus_db_factory** %2, align 8
  %21 = getelementptr inbounds %struct._citrus_db_factory, %struct._citrus_db_factory* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %3, align 8
  %24 = add i64 %23, %22
  store i64 %24, i64* %3, align 8
  %25 = load i64, i64* %3, align 8
  ret i64 %25
}

declare dso_local i64 @ceilto(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
