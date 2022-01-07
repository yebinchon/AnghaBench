; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_event_tip.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_event_tip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_event = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.pt_query_decoder = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@pte_bad_context = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_event*, %struct.pt_query_decoder*)* @pt_qry_event_tip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_qry_event_tip(%struct.pt_event* %0, %struct.pt_query_decoder* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_event*, align 8
  %5 = alloca %struct.pt_query_decoder*, align 8
  store %struct.pt_event* %0, %struct.pt_event** %4, align 8
  store %struct.pt_query_decoder* %1, %struct.pt_query_decoder** %5, align 8
  %6 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %7 = icmp ne %struct.pt_event* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %5, align 8
  %10 = icmp ne %struct.pt_query_decoder* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %8, %2
  %12 = load i32, i32* @pte_internal, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %56

14:                                               ; preds = %8
  %15 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %16 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %52 [
    i32 131, label %18
    i32 130, label %28
    i32 129, label %36
    i32 128, label %44
  ]

18:                                               ; preds = %14
  %19 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %5, align 8
  %20 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %19, i32 0, i32 0
  store i32 1, i32* %20, align 4
  %21 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %22 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %26 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %5, align 8
  %27 = call i32 @pt_qry_event_ip(i32* %24, %struct.pt_event* %25, %struct.pt_query_decoder* %26)
  store i32 %27, i32* %3, align 4
  br label %56

28:                                               ; preds = %14
  %29 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %30 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %34 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %5, align 8
  %35 = call i32 @pt_qry_event_ip(i32* %32, %struct.pt_event* %33, %struct.pt_query_decoder* %34)
  store i32 %35, i32* %3, align 4
  br label %56

36:                                               ; preds = %14
  %37 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %38 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %42 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %5, align 8
  %43 = call i32 @pt_qry_event_ip(i32* %40, %struct.pt_event* %41, %struct.pt_query_decoder* %42)
  store i32 %43, i32* %3, align 4
  br label %56

44:                                               ; preds = %14
  %45 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %46 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %50 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %5, align 8
  %51 = call i32 @pt_qry_event_ip(i32* %48, %struct.pt_event* %49, %struct.pt_query_decoder* %50)
  store i32 %51, i32* %3, align 4
  br label %56

52:                                               ; preds = %14
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* @pte_bad_context, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %53, %44, %36, %28, %18, %11
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @pt_qry_event_ip(i32*, %struct.pt_event*, %struct.pt_query_decoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
