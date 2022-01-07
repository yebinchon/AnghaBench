; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mansearch.c_manmerge.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mansearch.c_manmerge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expr = type { i32, i32 }
%struct.ohash = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ohash* (%struct.expr*, %struct.ohash*)* @manmerge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ohash* @manmerge(%struct.expr* %0, %struct.ohash* %1) #0 {
  %3 = alloca %struct.ohash*, align 8
  %4 = alloca %struct.expr*, align 8
  %5 = alloca %struct.ohash*, align 8
  store %struct.expr* %0, %struct.expr** %4, align 8
  store %struct.ohash* %1, %struct.ohash** %5, align 8
  %6 = load %struct.expr*, %struct.expr** %4, align 8
  %7 = getelementptr inbounds %struct.expr, %struct.expr* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %25 [
    i32 128, label %9
    i32 129, label %13
    i32 130, label %19
  ]

9:                                                ; preds = %2
  %10 = load %struct.expr*, %struct.expr** %4, align 8
  %11 = load %struct.ohash*, %struct.ohash** %5, align 8
  %12 = call %struct.ohash* @manmerge_term(%struct.expr* %10, %struct.ohash* %11)
  store %struct.ohash* %12, %struct.ohash** %3, align 8
  br label %27

13:                                               ; preds = %2
  %14 = load %struct.expr*, %struct.expr** %4, align 8
  %15 = getelementptr inbounds %struct.expr, %struct.expr* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ohash*, %struct.ohash** %5, align 8
  %18 = call %struct.ohash* @manmerge_or(i32 %16, %struct.ohash* %17)
  store %struct.ohash* %18, %struct.ohash** %3, align 8
  br label %27

19:                                               ; preds = %2
  %20 = load %struct.expr*, %struct.expr** %4, align 8
  %21 = getelementptr inbounds %struct.expr, %struct.expr* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ohash*, %struct.ohash** %5, align 8
  %24 = call %struct.ohash* @manmerge_and(i32 %22, %struct.ohash* %23)
  store %struct.ohash* %24, %struct.ohash** %3, align 8
  br label %27

25:                                               ; preds = %2
  %26 = call i32 (...) @abort() #3
  unreachable

27:                                               ; preds = %19, %13, %9
  %28 = load %struct.ohash*, %struct.ohash** %3, align 8
  ret %struct.ohash* %28
}

declare dso_local %struct.ohash* @manmerge_term(%struct.expr*, %struct.ohash*) #1

declare dso_local %struct.ohash* @manmerge_or(i32, %struct.ohash*) #1

declare dso_local %struct.ohash* @manmerge_and(i32, %struct.ohash*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
