; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_ndis_events.c_ndis_events_constructor.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_ndis_events.c_ndis_events_constructor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ndis_events_data = type { i32, i32, i32, i32* }

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"CreatePipe() failed: %d\00", align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"CreateEvent() failed: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ndis_events_data*)* @ndis_events_constructor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ndis_events_constructor(%struct.ndis_events_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ndis_events_data*, align 8
  store %struct.ndis_events_data* %0, %struct.ndis_events_data** %3, align 8
  %4 = load %struct.ndis_events_data*, %struct.ndis_events_data** %3, align 8
  %5 = getelementptr inbounds %struct.ndis_events_data, %struct.ndis_events_data* %4, i32 0, i32 0
  store i32 1, i32* %5, align 8
  %6 = load %struct.ndis_events_data*, %struct.ndis_events_data** %3, align 8
  %7 = getelementptr inbounds %struct.ndis_events_data, %struct.ndis_events_data* %6, i32 0, i32 2
  %8 = load %struct.ndis_events_data*, %struct.ndis_events_data** %3, align 8
  %9 = getelementptr inbounds %struct.ndis_events_data, %struct.ndis_events_data* %8, i32 0, i32 1
  %10 = call i32 @CreatePipe(i32* %7, i32* %9, i32* null, i32 512)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @MSG_ERROR, align 4
  %14 = call i64 (...) @GetLastError()
  %15 = trunc i64 %14 to i32
  %16 = call i32 @wpa_printf(i32 %13, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %15)
  store i32 -1, i32* %2, align 4
  br label %41

17:                                               ; preds = %1
  %18 = load i32, i32* @TRUE, align 4
  %19 = load i32, i32* @FALSE, align 4
  %20 = call i32* @CreateEvent(i32* null, i32 %18, i32 %19, i32* null)
  %21 = load %struct.ndis_events_data*, %struct.ndis_events_data** %3, align 8
  %22 = getelementptr inbounds %struct.ndis_events_data, %struct.ndis_events_data* %21, i32 0, i32 3
  store i32* %20, i32** %22, align 8
  %23 = load %struct.ndis_events_data*, %struct.ndis_events_data** %3, align 8
  %24 = getelementptr inbounds %struct.ndis_events_data, %struct.ndis_events_data* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %40

27:                                               ; preds = %17
  %28 = load i32, i32* @MSG_ERROR, align 4
  %29 = call i64 (...) @GetLastError()
  %30 = trunc i64 %29 to i32
  %31 = call i32 @wpa_printf(i32 %28, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load %struct.ndis_events_data*, %struct.ndis_events_data** %3, align 8
  %33 = getelementptr inbounds %struct.ndis_events_data, %struct.ndis_events_data* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @CloseHandle(i32 %34)
  %36 = load %struct.ndis_events_data*, %struct.ndis_events_data** %3, align 8
  %37 = getelementptr inbounds %struct.ndis_events_data, %struct.ndis_events_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @CloseHandle(i32 %38)
  store i32 -1, i32* %2, align 4
  br label %41

40:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %27, %12
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @CreatePipe(i32*, i32*, i32*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32* @CreateEvent(i32*, i32, i32, i32*) #1

declare dso_local i32 @CloseHandle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
