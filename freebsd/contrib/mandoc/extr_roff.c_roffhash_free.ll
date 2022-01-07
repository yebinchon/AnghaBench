; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_roff.c_roffhash_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_roff.c_roffhash_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ohash = type opaque
%struct.roffreq = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @roffhash_free(%struct.ohash* %0) #0 {
  %2 = alloca %struct.ohash*, align 8
  %3 = alloca %struct.roffreq*, align 8
  %4 = alloca i32, align 4
  store %struct.ohash* %0, %struct.ohash** %2, align 8
  %5 = load %struct.ohash*, %struct.ohash** %2, align 8
  %6 = icmp eq %struct.ohash* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %29

8:                                                ; preds = %1
  %9 = load %struct.ohash*, %struct.ohash** %2, align 8
  %10 = bitcast %struct.ohash* %9 to %struct.roffreq*
  %11 = call %struct.roffreq* @ohash_first(%struct.roffreq* %10, i32* %4)
  store %struct.roffreq* %11, %struct.roffreq** %3, align 8
  br label %12

12:                                               ; preds = %18, %8
  %13 = load %struct.roffreq*, %struct.roffreq** %3, align 8
  %14 = icmp ne %struct.roffreq* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = load %struct.roffreq*, %struct.roffreq** %3, align 8
  %17 = call i32 @free(%struct.roffreq* %16)
  br label %18

18:                                               ; preds = %15
  %19 = load %struct.ohash*, %struct.ohash** %2, align 8
  %20 = bitcast %struct.ohash* %19 to %struct.roffreq*
  %21 = call %struct.roffreq* @ohash_next(%struct.roffreq* %20, i32* %4)
  store %struct.roffreq* %21, %struct.roffreq** %3, align 8
  br label %12

22:                                               ; preds = %12
  %23 = load %struct.ohash*, %struct.ohash** %2, align 8
  %24 = bitcast %struct.ohash* %23 to %struct.roffreq*
  %25 = call i32 @ohash_delete(%struct.roffreq* %24)
  %26 = load %struct.ohash*, %struct.ohash** %2, align 8
  %27 = bitcast %struct.ohash* %26 to %struct.roffreq*
  %28 = call i32 @free(%struct.roffreq* %27)
  br label %29

29:                                               ; preds = %22, %7
  ret void
}

declare dso_local %struct.roffreq* @ohash_first(%struct.roffreq*, i32*) #1

declare dso_local i32 @free(%struct.roffreq*) #1

declare dso_local %struct.roffreq* @ohash_next(%struct.roffreq*, i32*) #1

declare dso_local i32 @ohash_delete(%struct.roffreq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
