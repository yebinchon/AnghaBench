; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_event_tip_pgd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_event_tip_pgd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_event = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.pt_query_decoder = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@ptev_async_disabled = common dso_local global i32 0, align 4
@pte_bad_context = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_event*, %struct.pt_query_decoder*)* @pt_qry_event_tip_pgd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_qry_event_tip_pgd(%struct.pt_event* %0, %struct.pt_query_decoder* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_event*, align 8
  %5 = alloca %struct.pt_query_decoder*, align 8
  %6 = alloca i32, align 4
  store %struct.pt_event* %0, %struct.pt_event** %4, align 8
  store %struct.pt_query_decoder* %1, %struct.pt_query_decoder** %5, align 8
  %7 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %8 = icmp ne %struct.pt_event* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @pte_internal, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %44

12:                                               ; preds = %2
  %13 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %14 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %40 [
    i32 131, label %16
    i32 130, label %37
    i32 129, label %37
    i32 128, label %37
  ]

16:                                               ; preds = %12
  %17 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %18 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* @ptev_async_disabled, align 4
  %23 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %24 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %27 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  store i32 %25, i32* %29, align 4
  %30 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %31 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %35 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %5, align 8
  %36 = call i32 @pt_qry_event_ip(i32* %33, %struct.pt_event* %34, %struct.pt_query_decoder* %35)
  store i32 %36, i32* %3, align 4
  br label %44

37:                                               ; preds = %12, %12, %12
  %38 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %39 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %38, i32 0, i32 1
  store i32 1, i32* %39, align 4
  store i32 0, i32* %3, align 4
  br label %44

40:                                               ; preds = %12
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* @pte_bad_context, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %41, %37, %16, %9
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @pt_qry_event_ip(i32*, %struct.pt_event*, %struct.pt_query_decoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
