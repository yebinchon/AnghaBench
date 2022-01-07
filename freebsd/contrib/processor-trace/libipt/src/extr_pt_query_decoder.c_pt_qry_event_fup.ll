; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_event_fup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_event_fup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_event = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.pt_query_decoder = type { i32, i32 }

@pte_internal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_event*, %struct.pt_query_decoder*)* @pt_qry_event_fup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_qry_event_fup(%struct.pt_event* %0, %struct.pt_query_decoder* %1) #0 {
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
  br label %80

14:                                               ; preds = %8
  %15 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %16 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %76 [
    i32 130, label %18
    i32 128, label %28
    i32 132, label %46
    i32 131, label %56
    i32 129, label %66
  ]

18:                                               ; preds = %14
  %19 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %5, align 8
  %20 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %19, i32 0, i32 0
  store i32 1, i32* %20, align 4
  %21 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %22 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %5, align 8
  %26 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %25, i32 0, i32 1
  %27 = call i32 @pt_last_ip_query(i32* %24, i32* %26)
  store i32 %27, i32* %3, align 4
  br label %80

28:                                               ; preds = %14
  %29 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %30 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %28
  %36 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %5, align 8
  %37 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  br label %38

38:                                               ; preds = %35, %28
  %39 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %40 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %44 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %5, align 8
  %45 = call i32 @pt_qry_event_ip(i32* %42, %struct.pt_event* %43, %struct.pt_query_decoder* %44)
  store i32 %45, i32* %3, align 4
  br label %80

46:                                               ; preds = %14
  %47 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %5, align 8
  %48 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %47, i32 0, i32 0
  store i32 1, i32* %48, align 4
  %49 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %50 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %54 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %5, align 8
  %55 = call i32 @pt_qry_event_ip(i32* %52, %struct.pt_event* %53, %struct.pt_query_decoder* %54)
  store i32 %55, i32* %3, align 4
  br label %80

56:                                               ; preds = %14
  %57 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %5, align 8
  %58 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %57, i32 0, i32 0
  store i32 1, i32* %58, align 4
  %59 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %60 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %64 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %5, align 8
  %65 = call i32 @pt_qry_event_ip(i32* %62, %struct.pt_event* %63, %struct.pt_query_decoder* %64)
  store i32 %65, i32* %3, align 4
  br label %80

66:                                               ; preds = %14
  %67 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %5, align 8
  %68 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %67, i32 0, i32 0
  store i32 1, i32* %68, align 4
  %69 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %70 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %74 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %5, align 8
  %75 = call i32 @pt_qry_event_ip(i32* %72, %struct.pt_event* %73, %struct.pt_query_decoder* %74)
  store i32 %75, i32* %3, align 4
  br label %80

76:                                               ; preds = %14
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* @pte_internal, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %77, %66, %56, %46, %38, %18, %11
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @pt_last_ip_query(i32*, i32*) #1

declare dso_local i32 @pt_qry_event_ip(i32*, %struct.pt_event*, %struct.pt_query_decoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
