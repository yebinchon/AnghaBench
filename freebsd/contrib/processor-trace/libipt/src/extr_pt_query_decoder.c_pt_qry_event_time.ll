; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_event_time.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_event_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_event = type { i32, i32, i32, i32 }
%struct.pt_query_decoder = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@pte_no_time = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_event*, %struct.pt_query_decoder*)* @pt_qry_event_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_qry_event_time(%struct.pt_event* %0, %struct.pt_query_decoder* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_event*, align 8
  %5 = alloca %struct.pt_query_decoder*, align 8
  %6 = alloca i32, align 4
  store %struct.pt_event* %0, %struct.pt_event** %4, align 8
  store %struct.pt_query_decoder* %1, %struct.pt_query_decoder** %5, align 8
  %7 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %8 = icmp ne %struct.pt_event* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %5, align 8
  %11 = icmp ne %struct.pt_query_decoder* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %9, %2
  %13 = load i32, i32* @pte_internal, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %39

15:                                               ; preds = %9
  %16 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %17 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %16, i32 0, i32 3
  %18 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %19 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %18, i32 0, i32 2
  %20 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %21 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %20, i32 0, i32 1
  %22 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %5, align 8
  %23 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %22, i32 0, i32 0
  %24 = call i32 @pt_time_query_tsc(i32* %17, i32* %19, i32* %21, i32* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %15
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @pte_no_time, align 4
  %30 = sub nsw i32 0, %29
  %31 = icmp ne i32 %28, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %39

34:                                               ; preds = %27
  br label %38

35:                                               ; preds = %15
  %36 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %37 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  br label %38

38:                                               ; preds = %35, %34
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %32, %12
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @pt_time_query_tsc(i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
