; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mansearch.c_manmerge_or.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mansearch.c_manmerge_or.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expr = type { %struct.expr* }
%struct.ohash = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ohash* (%struct.expr*, %struct.ohash*)* @manmerge_or to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ohash* @manmerge_or(%struct.expr* %0, %struct.ohash* %1) #0 {
  %3 = alloca %struct.expr*, align 8
  %4 = alloca %struct.ohash*, align 8
  store %struct.expr* %0, %struct.expr** %3, align 8
  store %struct.ohash* %1, %struct.ohash** %4, align 8
  br label %5

5:                                                ; preds = %8, %2
  %6 = load %struct.expr*, %struct.expr** %3, align 8
  %7 = icmp ne %struct.expr* %6, null
  br i1 %7, label %8, label %15

8:                                                ; preds = %5
  %9 = load %struct.expr*, %struct.expr** %3, align 8
  %10 = load %struct.ohash*, %struct.ohash** %4, align 8
  %11 = call %struct.ohash* @manmerge(%struct.expr* %9, %struct.ohash* %10)
  store %struct.ohash* %11, %struct.ohash** %4, align 8
  %12 = load %struct.expr*, %struct.expr** %3, align 8
  %13 = getelementptr inbounds %struct.expr, %struct.expr* %12, i32 0, i32 0
  %14 = load %struct.expr*, %struct.expr** %13, align 8
  store %struct.expr* %14, %struct.expr** %3, align 8
  br label %5

15:                                               ; preds = %5
  %16 = load %struct.ohash*, %struct.ohash** %4, align 8
  ret %struct.ohash* %16
}

declare dso_local %struct.ohash* @manmerge(%struct.expr*, %struct.ohash*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
