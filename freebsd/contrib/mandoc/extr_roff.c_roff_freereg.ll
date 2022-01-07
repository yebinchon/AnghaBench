; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_roff.c_roff_freereg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_roff.c_roff_freereg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roffreg = type { %struct.roffreg*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.roffreg* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.roffreg*)* @roff_freereg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @roff_freereg(%struct.roffreg* %0) #0 {
  %2 = alloca %struct.roffreg*, align 8
  %3 = alloca %struct.roffreg*, align 8
  store %struct.roffreg* %0, %struct.roffreg** %2, align 8
  br label %4

4:                                                ; preds = %7, %1
  %5 = load %struct.roffreg*, %struct.roffreg** %2, align 8
  %6 = icmp ne %struct.roffreg* null, %5
  br i1 %6, label %7, label %19

7:                                                ; preds = %4
  %8 = load %struct.roffreg*, %struct.roffreg** %2, align 8
  %9 = getelementptr inbounds %struct.roffreg, %struct.roffreg* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.roffreg*, %struct.roffreg** %10, align 8
  %12 = call i32 @free(%struct.roffreg* %11)
  %13 = load %struct.roffreg*, %struct.roffreg** %2, align 8
  store %struct.roffreg* %13, %struct.roffreg** %3, align 8
  %14 = load %struct.roffreg*, %struct.roffreg** %2, align 8
  %15 = getelementptr inbounds %struct.roffreg, %struct.roffreg* %14, i32 0, i32 0
  %16 = load %struct.roffreg*, %struct.roffreg** %15, align 8
  store %struct.roffreg* %16, %struct.roffreg** %2, align 8
  %17 = load %struct.roffreg*, %struct.roffreg** %3, align 8
  %18 = call i32 @free(%struct.roffreg* %17)
  br label %4

19:                                               ; preds = %4
  ret void
}

declare dso_local i32 @free(%struct.roffreg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
