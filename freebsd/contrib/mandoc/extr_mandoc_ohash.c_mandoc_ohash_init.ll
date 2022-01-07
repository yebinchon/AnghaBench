; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mandoc_ohash.c_mandoc_ohash_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mandoc_ohash.c_mandoc_ohash_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ohash = type { i32 }
%struct.ohash_info = type { i32, i32*, i32, i32, i32 }

@hash_alloc = common dso_local global i32 0, align 4
@hash_calloc = common dso_local global i32 0, align 4
@hash_free = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mandoc_ohash_init(%struct.ohash* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ohash*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ohash_info, align 8
  store %struct.ohash* %0, %struct.ohash** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @hash_alloc, align 4
  %9 = getelementptr inbounds %struct.ohash_info, %struct.ohash_info* %7, i32 0, i32 4
  store i32 %8, i32* %9, align 8
  %10 = load i32, i32* @hash_calloc, align 4
  %11 = getelementptr inbounds %struct.ohash_info, %struct.ohash_info* %7, i32 0, i32 3
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* @hash_free, align 4
  %13 = getelementptr inbounds %struct.ohash_info, %struct.ohash_info* %7, i32 0, i32 2
  store i32 %12, i32* %13, align 8
  %14 = getelementptr inbounds %struct.ohash_info, %struct.ohash_info* %7, i32 0, i32 1
  store i32* null, i32** %14, align 8
  %15 = load i32, i32* %6, align 4
  %16 = getelementptr inbounds %struct.ohash_info, %struct.ohash_info* %7, i32 0, i32 0
  store i32 %15, i32* %16, align 8
  %17 = load %struct.ohash*, %struct.ohash** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @ohash_init(%struct.ohash* %17, i32 %18, %struct.ohash_info* %7)
  ret void
}

declare dso_local i32 @ohash_init(%struct.ohash*, i32, %struct.ohash_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
