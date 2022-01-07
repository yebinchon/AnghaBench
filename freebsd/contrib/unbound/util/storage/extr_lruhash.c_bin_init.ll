; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/storage/extr_lruhash.c_bin_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/storage/extr_lruhash.c_bin_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lruhash_bin = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bin_init(%struct.lruhash_bin* %0, i64 %1) #0 {
  %3 = alloca %struct.lruhash_bin*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.lruhash_bin* %0, %struct.lruhash_bin** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %5, align 8
  br label %6

6:                                                ; preds = %24, %2
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %27

10:                                               ; preds = %6
  %11 = load %struct.lruhash_bin*, %struct.lruhash_bin** %3, align 8
  %12 = load i64, i64* %5, align 8
  %13 = getelementptr inbounds %struct.lruhash_bin, %struct.lruhash_bin* %11, i64 %12
  %14 = getelementptr inbounds %struct.lruhash_bin, %struct.lruhash_bin* %13, i32 0, i32 0
  %15 = call i32 @lock_quick_init(i32* %14)
  %16 = load %struct.lruhash_bin*, %struct.lruhash_bin** %3, align 8
  %17 = load i64, i64* %5, align 8
  %18 = getelementptr inbounds %struct.lruhash_bin, %struct.lruhash_bin* %16, i64 %17
  %19 = getelementptr inbounds %struct.lruhash_bin, %struct.lruhash_bin* %18, i32 0, i32 0
  %20 = load %struct.lruhash_bin*, %struct.lruhash_bin** %3, align 8
  %21 = load i64, i64* %5, align 8
  %22 = getelementptr inbounds %struct.lruhash_bin, %struct.lruhash_bin* %20, i64 %21
  %23 = call i32 @lock_protect(i32* %19, %struct.lruhash_bin* %22, i32 4)
  br label %24

24:                                               ; preds = %10
  %25 = load i64, i64* %5, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %5, align 8
  br label %6

27:                                               ; preds = %6
  ret void
}

declare dso_local i32 @lock_quick_init(i32*) #1

declare dso_local i32 @lock_protect(i32*, %struct.lruhash_bin*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
