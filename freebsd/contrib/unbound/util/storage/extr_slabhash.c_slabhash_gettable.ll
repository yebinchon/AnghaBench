; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/storage/extr_slabhash.c_slabhash_gettable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/storage/extr_slabhash.c_slabhash_gettable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lruhash = type { i32 }
%struct.slabhash = type { %struct.lruhash** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.lruhash* @slabhash_gettable(%struct.slabhash* %0, i32 %1) #0 {
  %3 = alloca %struct.slabhash*, align 8
  %4 = alloca i32, align 4
  store %struct.slabhash* %0, %struct.slabhash** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.slabhash*, %struct.slabhash** %3, align 8
  %6 = getelementptr inbounds %struct.slabhash, %struct.slabhash* %5, i32 0, i32 0
  %7 = load %struct.lruhash**, %struct.lruhash*** %6, align 8
  %8 = load %struct.slabhash*, %struct.slabhash** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i64 @slab_idx(%struct.slabhash* %8, i32 %9)
  %11 = getelementptr inbounds %struct.lruhash*, %struct.lruhash** %7, i64 %10
  %12 = load %struct.lruhash*, %struct.lruhash** %11, align 8
  ret %struct.lruhash* %12
}

declare dso_local i64 @slab_idx(%struct.slabhash*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
