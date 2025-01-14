; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/l2_packet/extr_l2_packet_ndis.c_l2_ndisuio_start_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/l2_packet/extr_l2_packet_ndis.c_l2_ndisuio_start_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2_packet_data = type { %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@ERROR_IO_PENDING = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"L2(NDISUIO): ReadFile failed: %d\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"L2(NDISUIO): ReadFile returned data without wait for completion\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l2_packet_data*, i32)* @l2_ndisuio_start_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2_ndisuio_start_read(%struct.l2_packet_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.l2_packet_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.l2_packet_data* %0, %struct.l2_packet_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.l2_packet_data*, %struct.l2_packet_data** %4, align 8
  %8 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %7, i32 0, i32 0
  %9 = call i32 @os_memset(%struct.TYPE_3__* %8, i32 0, i32 4)
  %10 = load %struct.l2_packet_data*, %struct.l2_packet_data** %4, align 8
  %11 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.l2_packet_data*, %struct.l2_packet_data** %4, align 8
  %14 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store i32 %12, i32* %15, align 4
  %16 = call i32 (...) @driver_ndis_get_ndisuio_handle()
  %17 = load %struct.l2_packet_data*, %struct.l2_packet_data** %4, align 8
  %18 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.l2_packet_data*, %struct.l2_packet_data** %4, align 8
  %21 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %20, i32 0, i32 1
  %22 = load %struct.l2_packet_data*, %struct.l2_packet_data** %4, align 8
  %23 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %22, i32 0, i32 0
  %24 = call i32 @ReadFile(i32 %16, i32 %19, i32 4, i32* %21, %struct.TYPE_3__* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %2
  %27 = call i64 (...) @GetLastError()
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @ERROR_IO_PENDING, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load i32, i32* @MSG_DEBUG, align 4
  %33 = load i64, i64* %6, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i32 (i32, i8*, ...) @wpa_printf(i32 %32, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %34)
  store i32 -1, i32* %3, align 4
  br label %47

36:                                               ; preds = %26
  br label %46

37:                                               ; preds = %2
  %38 = load i32, i32* @MSG_DEBUG, align 4
  %39 = call i32 (i32, i8*, ...) @wpa_printf(i32 %38, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = load %struct.l2_packet_data*, %struct.l2_packet_data** %4, align 8
  %44 = call i32 @l2_packet_callback(%struct.l2_packet_data* %43)
  br label %45

45:                                               ; preds = %42, %37
  br label %46

46:                                               ; preds = %45, %36
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %31
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @os_memset(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @ReadFile(i32, i32, i32, i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @driver_ndis_get_ndisuio_handle(...) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @l2_packet_callback(%struct.l2_packet_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
