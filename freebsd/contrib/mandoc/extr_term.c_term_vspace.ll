; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_term.c_term_vspace.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_term.c_term_vspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termp = type { i64, i32 (%struct.termp*)*, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @term_vspace(%struct.termp* %0) #0 {
  %2 = alloca %struct.termp*, align 8
  store %struct.termp* %0, %struct.termp** %2, align 8
  %3 = load %struct.termp*, %struct.termp** %2, align 8
  %4 = call i32 @term_newln(%struct.termp* %3)
  %5 = load %struct.termp*, %struct.termp** %2, align 8
  %6 = getelementptr inbounds %struct.termp, %struct.termp* %5, i32 0, i32 3
  store i64 0, i64* %6, align 8
  %7 = load %struct.termp*, %struct.termp** %2, align 8
  %8 = getelementptr inbounds %struct.termp, %struct.termp* %7, i32 0, i32 2
  store i64 0, i64* %8, align 8
  %9 = load %struct.termp*, %struct.termp** %2, align 8
  %10 = getelementptr inbounds %struct.termp, %struct.termp* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp slt i64 0, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.termp*, %struct.termp** %2, align 8
  %15 = getelementptr inbounds %struct.termp, %struct.termp* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, -1
  store i64 %17, i64* %15, align 8
  br label %24

18:                                               ; preds = %1
  %19 = load %struct.termp*, %struct.termp** %2, align 8
  %20 = getelementptr inbounds %struct.termp, %struct.termp* %19, i32 0, i32 1
  %21 = load i32 (%struct.termp*)*, i32 (%struct.termp*)** %20, align 8
  %22 = load %struct.termp*, %struct.termp** %2, align 8
  %23 = call i32 %21(%struct.termp* %22)
  br label %24

24:                                               ; preds = %18, %13
  ret void
}

declare dso_local i32 @term_newln(%struct.termp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
