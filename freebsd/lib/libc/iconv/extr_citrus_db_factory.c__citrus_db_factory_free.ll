; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_db_factory.c__citrus_db_factory_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_db_factory.c__citrus_db_factory_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._citrus_db_factory = type { i32, i64, i32, i64, i32 }
%struct._citrus_db_factory_entry = type { i32, i64, i32, i64, i32 }

@de_entry = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_citrus_db_factory_free(%struct._citrus_db_factory* %0) #0 {
  %2 = alloca %struct._citrus_db_factory*, align 8
  %3 = alloca %struct._citrus_db_factory_entry*, align 8
  store %struct._citrus_db_factory* %0, %struct._citrus_db_factory** %2, align 8
  br label %4

4:                                                ; preds = %33, %1
  %5 = load %struct._citrus_db_factory*, %struct._citrus_db_factory** %2, align 8
  %6 = getelementptr inbounds %struct._citrus_db_factory, %struct._citrus_db_factory* %5, i32 0, i32 4
  %7 = call %struct._citrus_db_factory_entry* @STAILQ_FIRST(i32* %6)
  store %struct._citrus_db_factory_entry* %7, %struct._citrus_db_factory_entry** %3, align 8
  %8 = icmp ne %struct._citrus_db_factory_entry* %7, null
  br i1 %8, label %9, label %36

9:                                                ; preds = %4
  %10 = load %struct._citrus_db_factory*, %struct._citrus_db_factory** %2, align 8
  %11 = getelementptr inbounds %struct._citrus_db_factory, %struct._citrus_db_factory* %10, i32 0, i32 4
  %12 = load i32, i32* @de_entry, align 4
  %13 = call i32 @STAILQ_REMOVE_HEAD(i32* %11, i32 %12)
  %14 = load %struct._citrus_db_factory_entry*, %struct._citrus_db_factory_entry** %3, align 8
  %15 = getelementptr inbounds %struct._citrus_db_factory_entry, %struct._citrus_db_factory_entry* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %9
  %19 = load %struct._citrus_db_factory_entry*, %struct._citrus_db_factory_entry** %3, align 8
  %20 = getelementptr inbounds %struct._citrus_db_factory_entry, %struct._citrus_db_factory_entry* %19, i32 0, i32 2
  %21 = call %struct._citrus_db_factory_entry* @_region_head(i32* %20)
  %22 = call i32 @free(%struct._citrus_db_factory_entry* %21)
  br label %23

23:                                               ; preds = %18, %9
  %24 = load %struct._citrus_db_factory_entry*, %struct._citrus_db_factory_entry** %3, align 8
  %25 = getelementptr inbounds %struct._citrus_db_factory_entry, %struct._citrus_db_factory_entry* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct._citrus_db_factory_entry*, %struct._citrus_db_factory_entry** %3, align 8
  %30 = getelementptr inbounds %struct._citrus_db_factory_entry, %struct._citrus_db_factory_entry* %29, i32 0, i32 0
  %31 = call %struct._citrus_db_factory_entry* @_region_head(i32* %30)
  %32 = call i32 @free(%struct._citrus_db_factory_entry* %31)
  br label %33

33:                                               ; preds = %28, %23
  %34 = load %struct._citrus_db_factory_entry*, %struct._citrus_db_factory_entry** %3, align 8
  %35 = call i32 @free(%struct._citrus_db_factory_entry* %34)
  br label %4

36:                                               ; preds = %4
  %37 = load %struct._citrus_db_factory*, %struct._citrus_db_factory** %2, align 8
  %38 = bitcast %struct._citrus_db_factory* %37 to %struct._citrus_db_factory_entry*
  %39 = call i32 @free(%struct._citrus_db_factory_entry* %38)
  ret void
}

declare dso_local %struct._citrus_db_factory_entry* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @free(%struct._citrus_db_factory_entry*) #1

declare dso_local %struct._citrus_db_factory_entry* @_region_head(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
