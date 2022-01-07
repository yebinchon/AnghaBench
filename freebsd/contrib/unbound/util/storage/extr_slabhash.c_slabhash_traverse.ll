; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/storage/extr_slabhash.c_slabhash_traverse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/storage/extr_slabhash.c_slabhash_traverse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slabhash = type { i64, i32* }
%struct.lruhash_entry = type opaque
%struct.lruhash_entry.0 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @slabhash_traverse(%struct.slabhash* %0, i32 %1, void (%struct.lruhash_entry*, i8*)* %2, i8* %3) #0 {
  %5 = alloca %struct.slabhash*, align 8
  %6 = alloca i32, align 4
  %7 = alloca void (%struct.lruhash_entry*, i8*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.slabhash* %0, %struct.slabhash** %5, align 8
  store i32 %1, i32* %6, align 4
  store void (%struct.lruhash_entry*, i8*)* %2, void (%struct.lruhash_entry*, i8*)** %7, align 8
  store i8* %3, i8** %8, align 8
  store i64 0, i64* %9, align 8
  br label %10

10:                                               ; preds = %28, %4
  %11 = load i64, i64* %9, align 8
  %12 = load %struct.slabhash*, %struct.slabhash** %5, align 8
  %13 = getelementptr inbounds %struct.slabhash, %struct.slabhash* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ult i64 %11, %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %10
  %17 = load %struct.slabhash*, %struct.slabhash** %5, align 8
  %18 = getelementptr inbounds %struct.slabhash, %struct.slabhash* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* %9, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load void (%struct.lruhash_entry*, i8*)*, void (%struct.lruhash_entry*, i8*)** %7, align 8
  %25 = bitcast void (%struct.lruhash_entry*, i8*)* %24 to void (%struct.lruhash_entry.0*, i8*)*
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @lruhash_traverse(i32 %22, i32 %23, void (%struct.lruhash_entry.0*, i8*)* %25, i8* %26)
  br label %28

28:                                               ; preds = %16
  %29 = load i64, i64* %9, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %9, align 8
  br label %10

31:                                               ; preds = %10
  ret void
}

declare dso_local i32 @lruhash_traverse(i32, i32, void (%struct.lruhash_entry.0*, i8*)*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
