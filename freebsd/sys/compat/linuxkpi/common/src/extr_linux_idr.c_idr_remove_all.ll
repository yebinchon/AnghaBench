; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_idr.c_idr_remove_all.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_idr.c_idr_remove_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idr = type { i32, i64, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @idr_remove_all(%struct.idr* %0) #0 {
  %2 = alloca %struct.idr*, align 8
  store %struct.idr* %0, %struct.idr** %2, align 8
  %3 = load %struct.idr*, %struct.idr** %2, align 8
  %4 = getelementptr inbounds %struct.idr, %struct.idr* %3, i32 0, i32 0
  %5 = call i32 @mtx_lock(i32* %4)
  %6 = load %struct.idr*, %struct.idr** %2, align 8
  %7 = getelementptr inbounds %struct.idr, %struct.idr* %6, i32 0, i32 2
  %8 = load i32*, i32** %7, align 8
  %9 = load %struct.idr*, %struct.idr** %2, align 8
  %10 = getelementptr inbounds %struct.idr, %struct.idr* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = sub nsw i64 %11, 1
  %13 = call i32 @idr_remove_layer(i32* %8, i64 %12)
  %14 = load %struct.idr*, %struct.idr** %2, align 8
  %15 = getelementptr inbounds %struct.idr, %struct.idr* %14, i32 0, i32 2
  store i32* null, i32** %15, align 8
  %16 = load %struct.idr*, %struct.idr** %2, align 8
  %17 = getelementptr inbounds %struct.idr, %struct.idr* %16, i32 0, i32 1
  store i64 0, i64* %17, align 8
  %18 = load %struct.idr*, %struct.idr** %2, align 8
  %19 = getelementptr inbounds %struct.idr, %struct.idr* %18, i32 0, i32 0
  %20 = call i32 @mtx_unlock(i32* %19)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @idr_remove_layer(i32*, i64) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
