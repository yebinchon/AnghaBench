; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_indexer.c_idm_grow.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_indexer.c_idm_grow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_map = type { i32* }

@IDX_ENTRY_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.index_map*, i32)* @idm_grow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idm_grow(%struct.index_map* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.index_map*, align 8
  %5 = alloca i32, align 4
  store %struct.index_map* %0, %struct.index_map** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* @IDX_ENTRY_SIZE, align 4
  %7 = call i32 @calloc(i32 %6, i32 8)
  %8 = load %struct.index_map*, %struct.index_map** %4, align 8
  %9 = getelementptr inbounds %struct.index_map, %struct.index_map* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @idx_array_index(i32 %11)
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  store i32 %7, i32* %13, align 4
  %14 = load %struct.index_map*, %struct.index_map** %4, align 8
  %15 = getelementptr inbounds %struct.index_map, %struct.index_map* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @idx_array_index(i32 %17)
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  br label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %3, align 4
  br label %27

25:                                               ; preds = %22
  %26 = load i32, i32* @ENOMEM, align 4
  store i32 %26, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @calloc(i32, i32) #1

declare dso_local i64 @idx_array_index(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
