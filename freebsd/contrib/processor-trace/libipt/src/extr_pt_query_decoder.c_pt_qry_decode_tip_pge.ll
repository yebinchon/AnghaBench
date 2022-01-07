; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_decode_tip_pge.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_decode_tip_pge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_query_decoder = type { i32, i32, i32, %struct.pt_event*, i32, i32 }
%struct.pt_event = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@ptev_enabled = common dso_local global i32 0, align 4
@pte_bad_packet = common dso_local global i32 0, align 4
@evb_tip = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_qry_decode_tip_pge(%struct.pt_query_decoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_query_decoder*, align 8
  %4 = alloca %struct.pt_event*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pt_query_decoder* %0, %struct.pt_query_decoder** %3, align 8
  %7 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %8 = icmp ne %struct.pt_query_decoder* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @pte_internal, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %112

12:                                               ; preds = %1
  %13 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %14 = call i32 @pt_qry_decode_ip(%struct.pt_query_decoder* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %112

19:                                               ; preds = %12
  %20 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %21 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %65, label %24

24:                                               ; preds = %19
  %25 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %26 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %25, i32 0, i32 2
  %27 = call %struct.pt_event* @pt_evq_standalone(i32* %26)
  store %struct.pt_event* %27, %struct.pt_event** %4, align 8
  %28 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %29 = icmp ne %struct.pt_event* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* @pte_internal, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %112

33:                                               ; preds = %24
  %34 = load i32, i32* @ptev_enabled, align 4
  %35 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %36 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %38 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %42 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %41, i32 0, i32 5
  %43 = call i32 @pt_last_ip_query(i32* %40, i32* %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %33
  %47 = load i32, i32* @pte_bad_packet, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %112

49:                                               ; preds = %33
  %50 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %51 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %52 = call i32 @pt_qry_event_time(%struct.pt_event* %50, %struct.pt_query_decoder* %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %2, align 4
  br label %112

57:                                               ; preds = %49
  %58 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %59 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %58, i32 0, i32 4
  %60 = call i32 @pt_tnt_cache_init(i32* %59)
  %61 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %62 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %61, i32 0, i32 0
  store i32 1, i32* %62, align 8
  %63 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %64 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %63, i32 0, i32 1
  store i32 1, i32* %64, align 4
  br label %82

65:                                               ; preds = %19
  %66 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %67 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %66, i32 0, i32 2
  %68 = load i32, i32* @evb_tip, align 4
  %69 = call %struct.pt_event* @pt_evq_dequeue(i32* %67, i32 %68)
  store %struct.pt_event* %69, %struct.pt_event** %4, align 8
  %70 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %71 = icmp ne %struct.pt_event* %70, null
  br i1 %71, label %72, label %81

72:                                               ; preds = %65
  %73 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %74 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %75 = call i32 @pt_qry_event_tip_pge(%struct.pt_event* %73, %struct.pt_query_decoder* %74)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = load i32, i32* %6, align 4
  store i32 %79, i32* %2, align 4
  br label %112

80:                                               ; preds = %72
  br label %81

81:                                               ; preds = %80, %65
  br label %82

82:                                               ; preds = %81, %57
  %83 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %84 = icmp ne %struct.pt_event* %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %82
  %86 = load i32, i32* @pte_internal, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %2, align 4
  br label %112

88:                                               ; preds = %82
  %89 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %90 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %91 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %90, i32 0, i32 3
  store %struct.pt_event* %89, %struct.pt_event** %91, align 8
  %92 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %93 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %92, i32 0, i32 2
  %94 = load i32, i32* @evb_tip, align 4
  %95 = call i64 @pt_evq_pending(i32* %93, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %88
  store i32 0, i32* %2, align 4
  br label %112

98:                                               ; preds = %88
  %99 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %100 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %98
  %104 = load i32, i32* @pte_internal, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %2, align 4
  br label %112

106:                                              ; preds = %98
  %107 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %108 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %107, i32 0, i32 0
  store i32 0, i32* %108, align 8
  %109 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %110 = load i32, i32* %5, align 4
  %111 = call i32 @pt_qry_consume_tip_pge(%struct.pt_query_decoder* %109, i32 %110)
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %106, %103, %97, %85, %78, %55, %46, %30, %17, %9
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i32 @pt_qry_decode_ip(%struct.pt_query_decoder*) #1

declare dso_local %struct.pt_event* @pt_evq_standalone(i32*) #1

declare dso_local i32 @pt_last_ip_query(i32*, i32*) #1

declare dso_local i32 @pt_qry_event_time(%struct.pt_event*, %struct.pt_query_decoder*) #1

declare dso_local i32 @pt_tnt_cache_init(i32*) #1

declare dso_local %struct.pt_event* @pt_evq_dequeue(i32*, i32) #1

declare dso_local i32 @pt_qry_event_tip_pge(%struct.pt_event*, %struct.pt_query_decoder*) #1

declare dso_local i64 @pt_evq_pending(i32*, i32) #1

declare dso_local i32 @pt_qry_consume_tip_pge(%struct.pt_query_decoder*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
