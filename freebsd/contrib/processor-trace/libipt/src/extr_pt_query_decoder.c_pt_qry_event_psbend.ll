; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_event_psbend.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_event_psbend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_event = type { i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.pt_query_decoder = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_event*, %struct.pt_query_decoder*)* @pt_qry_event_psbend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_qry_event_psbend(%struct.pt_event* %0, %struct.pt_query_decoder* %1) #0 {
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
  br label %69

15:                                               ; preds = %9
  %16 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %17 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %16, i32 0, i32 0
  store i32 1, i32* %17, align 4
  %18 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %19 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %5, align 8
  %20 = call i32 @pt_qry_event_time(%struct.pt_event* %18, %struct.pt_query_decoder* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %69

25:                                               ; preds = %15
  %26 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %27 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %65 [
    i32 133, label %29
    i32 130, label %37
    i32 128, label %45
    i32 132, label %53
    i32 131, label %61
    i32 129, label %62
  ]

29:                                               ; preds = %25
  %30 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %31 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %35 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %5, align 8
  %36 = call i32 @pt_qry_event_ip(i32* %33, %struct.pt_event* %34, %struct.pt_query_decoder* %35)
  store i32 %36, i32* %3, align 4
  br label %69

37:                                               ; preds = %25
  %38 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %39 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %43 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %5, align 8
  %44 = call i32 @pt_qry_event_ip(i32* %41, %struct.pt_event* %42, %struct.pt_query_decoder* %43)
  store i32 %44, i32* %3, align 4
  br label %69

45:                                               ; preds = %25
  %46 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %47 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %51 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %5, align 8
  %52 = call i32 @pt_qry_event_ip(i32* %49, %struct.pt_event* %50, %struct.pt_query_decoder* %51)
  store i32 %52, i32* %3, align 4
  br label %69

53:                                               ; preds = %25
  %54 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %55 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %59 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %5, align 8
  %60 = call i32 @pt_qry_event_ip(i32* %57, %struct.pt_event* %58, %struct.pt_query_decoder* %59)
  store i32 %60, i32* %3, align 4
  br label %69

61:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %69

62:                                               ; preds = %25
  %63 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %64 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %63, i32 0, i32 0
  store i32 0, i32* %64, align 4
  store i32 0, i32* %3, align 4
  br label %69

65:                                               ; preds = %25
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* @pte_internal, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %66, %62, %61, %53, %45, %37, %29, %23, %12
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @pt_qry_event_time(%struct.pt_event*, %struct.pt_query_decoder*) #1

declare dso_local i32 @pt_qry_event_ip(i32*, %struct.pt_event*, %struct.pt_query_decoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
