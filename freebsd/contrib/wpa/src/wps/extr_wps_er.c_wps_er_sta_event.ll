; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_sta_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_sta_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_context = type { i32, i32 (i32, i32, %union.wps_event_data*)* }
%union.wps_event_data = type { %struct.wps_event_er_enrollee }
%struct.wps_event_er_enrollee = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.wps_er_sta = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wps_context*, %struct.wps_er_sta*, i32)* @wps_er_sta_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wps_er_sta_event(%struct.wps_context* %0, %struct.wps_er_sta* %1, i32 %2) #0 {
  %4 = alloca %struct.wps_context*, align 8
  %5 = alloca %struct.wps_er_sta*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.wps_event_data, align 4
  %8 = alloca %struct.wps_event_er_enrollee*, align 8
  store %struct.wps_context* %0, %struct.wps_context** %4, align 8
  store %struct.wps_er_sta* %1, %struct.wps_er_sta** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = bitcast %union.wps_event_data* %7 to %struct.wps_event_er_enrollee*
  store %struct.wps_event_er_enrollee* %9, %struct.wps_event_er_enrollee** %8, align 8
  %10 = load %struct.wps_context*, %struct.wps_context** %4, align 8
  %11 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %10, i32 0, i32 1
  %12 = load i32 (i32, i32, %union.wps_event_data*)*, i32 (i32, i32, %union.wps_event_data*)** %11, align 8
  %13 = icmp eq i32 (i32, i32, %union.wps_event_data*)* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %80

15:                                               ; preds = %3
  %16 = call i32 @os_memset(%union.wps_event_data* %7, i32 0, i32 44)
  %17 = load %struct.wps_er_sta*, %struct.wps_er_sta** %5, align 8
  %18 = getelementptr inbounds %struct.wps_er_sta, %struct.wps_er_sta* %17, i32 0, i32 10
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.wps_event_er_enrollee*, %struct.wps_event_er_enrollee** %8, align 8
  %21 = getelementptr inbounds %struct.wps_event_er_enrollee, %struct.wps_event_er_enrollee* %20, i32 0, i32 10
  store i32 %19, i32* %21, align 4
  %22 = load %struct.wps_er_sta*, %struct.wps_er_sta** %5, align 8
  %23 = getelementptr inbounds %struct.wps_er_sta, %struct.wps_er_sta* %22, i32 0, i32 9
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.wps_event_er_enrollee*, %struct.wps_event_er_enrollee** %8, align 8
  %26 = getelementptr inbounds %struct.wps_event_er_enrollee, %struct.wps_event_er_enrollee* %25, i32 0, i32 9
  store i32 %24, i32* %26, align 4
  %27 = load %struct.wps_er_sta*, %struct.wps_er_sta** %5, align 8
  %28 = getelementptr inbounds %struct.wps_er_sta, %struct.wps_er_sta* %27, i32 0, i32 8
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.wps_event_er_enrollee*, %struct.wps_event_er_enrollee** %8, align 8
  %31 = getelementptr inbounds %struct.wps_event_er_enrollee, %struct.wps_event_er_enrollee* %30, i32 0, i32 8
  store i32 %29, i32* %31, align 4
  %32 = load %struct.wps_er_sta*, %struct.wps_er_sta** %5, align 8
  %33 = getelementptr inbounds %struct.wps_er_sta, %struct.wps_er_sta* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.wps_event_er_enrollee*, %struct.wps_event_er_enrollee** %8, align 8
  %36 = getelementptr inbounds %struct.wps_event_er_enrollee, %struct.wps_event_er_enrollee* %35, i32 0, i32 7
  store i32 %34, i32* %36, align 4
  %37 = load %struct.wps_er_sta*, %struct.wps_er_sta** %5, align 8
  %38 = getelementptr inbounds %struct.wps_er_sta, %struct.wps_er_sta* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.wps_event_er_enrollee*, %struct.wps_event_er_enrollee** %8, align 8
  %41 = getelementptr inbounds %struct.wps_event_er_enrollee, %struct.wps_event_er_enrollee* %40, i32 0, i32 6
  store i32 %39, i32* %41, align 4
  %42 = load %struct.wps_er_sta*, %struct.wps_er_sta** %5, align 8
  %43 = getelementptr inbounds %struct.wps_er_sta, %struct.wps_er_sta* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.wps_event_er_enrollee*, %struct.wps_event_er_enrollee** %8, align 8
  %46 = getelementptr inbounds %struct.wps_event_er_enrollee, %struct.wps_event_er_enrollee* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 4
  %47 = load %struct.wps_er_sta*, %struct.wps_er_sta** %5, align 8
  %48 = getelementptr inbounds %struct.wps_er_sta, %struct.wps_er_sta* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.wps_event_er_enrollee*, %struct.wps_event_er_enrollee** %8, align 8
  %51 = getelementptr inbounds %struct.wps_event_er_enrollee, %struct.wps_event_er_enrollee* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 4
  %52 = load %struct.wps_er_sta*, %struct.wps_er_sta** %5, align 8
  %53 = getelementptr inbounds %struct.wps_er_sta, %struct.wps_er_sta* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.wps_event_er_enrollee*, %struct.wps_event_er_enrollee** %8, align 8
  %56 = getelementptr inbounds %struct.wps_event_er_enrollee, %struct.wps_event_er_enrollee* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  %57 = load %struct.wps_er_sta*, %struct.wps_er_sta** %5, align 8
  %58 = getelementptr inbounds %struct.wps_er_sta, %struct.wps_er_sta* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.wps_event_er_enrollee*, %struct.wps_event_er_enrollee** %8, align 8
  %61 = getelementptr inbounds %struct.wps_event_er_enrollee, %struct.wps_event_er_enrollee* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  %62 = load %struct.wps_er_sta*, %struct.wps_er_sta** %5, align 8
  %63 = getelementptr inbounds %struct.wps_er_sta, %struct.wps_er_sta* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.wps_event_er_enrollee*, %struct.wps_event_er_enrollee** %8, align 8
  %66 = getelementptr inbounds %struct.wps_event_er_enrollee, %struct.wps_event_er_enrollee* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.wps_er_sta*, %struct.wps_er_sta** %5, align 8
  %68 = getelementptr inbounds %struct.wps_er_sta, %struct.wps_er_sta* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.wps_event_er_enrollee*, %struct.wps_event_er_enrollee** %8, align 8
  %71 = getelementptr inbounds %struct.wps_event_er_enrollee, %struct.wps_event_er_enrollee* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  %72 = load %struct.wps_context*, %struct.wps_context** %4, align 8
  %73 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %72, i32 0, i32 1
  %74 = load i32 (i32, i32, %union.wps_event_data*)*, i32 (i32, i32, %union.wps_event_data*)** %73, align 8
  %75 = load %struct.wps_context*, %struct.wps_context** %4, align 8
  %76 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = call i32 %74(i32 %77, i32 %78, %union.wps_event_data* %7)
  br label %80

80:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @os_memset(%union.wps_event_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
