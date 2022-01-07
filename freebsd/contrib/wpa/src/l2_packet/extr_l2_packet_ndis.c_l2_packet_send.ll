; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/l2_packet/extr_l2_packet_ndis.c_l2_packet_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/l2_packet/extr_l2_packet_ndis.c_l2_packet_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2_packet_data = type { %struct.l2_ethhdr*, i64 }
%struct.l2_ethhdr = type { i32, %struct.l2_ethhdr*, %struct.l2_ethhdr* }

@ETH_ALEN = common dso_local global i64 0, align 8
@ERROR_IO_PENDING = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"L2(NDISUIO): Wait for pending write to complete\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"L2(NDISUIO): GetOverlappedResult failed: %d\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"L2(NDISUIO): WriteFile failed: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @l2_packet_send(%struct.l2_packet_data* %0, %struct.l2_ethhdr* %1, i32 %2, %struct.l2_ethhdr* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.l2_packet_data*, align 8
  %8 = alloca %struct.l2_ethhdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.l2_ethhdr*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.l2_ethhdr*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.l2_packet_data* %0, %struct.l2_packet_data** %7, align 8
  store %struct.l2_ethhdr* %1, %struct.l2_ethhdr** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.l2_ethhdr* %3, %struct.l2_ethhdr** %10, align 8
  store i64 %4, i64* %11, align 8
  %19 = load %struct.l2_packet_data*, %struct.l2_packet_data** %7, align 8
  %20 = icmp eq %struct.l2_packet_data* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %101

22:                                               ; preds = %5
  %23 = call i32 @os_memset(i32* %15, i32 0, i32 4)
  store i32* %15, i32** %16, align 8
  %24 = load %struct.l2_packet_data*, %struct.l2_packet_data** %7, align 8
  %25 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = call i32 (...) @driver_ndis_get_ndisuio_handle()
  %30 = load %struct.l2_ethhdr*, %struct.l2_ethhdr** %10, align 8
  %31 = load i64, i64* %11, align 8
  %32 = load i32*, i32** %16, align 8
  %33 = call i64 @WriteFile(i32 %29, %struct.l2_ethhdr* %30, i64 %31, i64* %13, i32* %32)
  store i64 %33, i64* %12, align 8
  br label %73

34:                                               ; preds = %22
  %35 = load i64, i64* %11, align 8
  %36 = add i64 24, %35
  store i64 %36, i64* %17, align 8
  %37 = load i64, i64* %17, align 8
  %38 = call %struct.l2_ethhdr* @os_malloc(i64 %37)
  store %struct.l2_ethhdr* %38, %struct.l2_ethhdr** %14, align 8
  %39 = load %struct.l2_ethhdr*, %struct.l2_ethhdr** %14, align 8
  %40 = icmp eq %struct.l2_ethhdr* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  store i32 -1, i32* %6, align 4
  br label %101

42:                                               ; preds = %34
  %43 = load %struct.l2_ethhdr*, %struct.l2_ethhdr** %14, align 8
  %44 = getelementptr inbounds %struct.l2_ethhdr, %struct.l2_ethhdr* %43, i32 0, i32 2
  %45 = load %struct.l2_ethhdr*, %struct.l2_ethhdr** %44, align 8
  %46 = load %struct.l2_ethhdr*, %struct.l2_ethhdr** %8, align 8
  %47 = load i64, i64* @ETH_ALEN, align 8
  %48 = call i32 @os_memcpy(%struct.l2_ethhdr* %45, %struct.l2_ethhdr* %46, i64 %47)
  %49 = load %struct.l2_ethhdr*, %struct.l2_ethhdr** %14, align 8
  %50 = getelementptr inbounds %struct.l2_ethhdr, %struct.l2_ethhdr* %49, i32 0, i32 1
  %51 = load %struct.l2_ethhdr*, %struct.l2_ethhdr** %50, align 8
  %52 = load %struct.l2_packet_data*, %struct.l2_packet_data** %7, align 8
  %53 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %52, i32 0, i32 0
  %54 = load %struct.l2_ethhdr*, %struct.l2_ethhdr** %53, align 8
  %55 = load i64, i64* @ETH_ALEN, align 8
  %56 = call i32 @os_memcpy(%struct.l2_ethhdr* %51, %struct.l2_ethhdr* %54, i64 %55)
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @htons(i32 %57)
  %59 = load %struct.l2_ethhdr*, %struct.l2_ethhdr** %14, align 8
  %60 = getelementptr inbounds %struct.l2_ethhdr, %struct.l2_ethhdr* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.l2_ethhdr*, %struct.l2_ethhdr** %14, align 8
  %62 = getelementptr inbounds %struct.l2_ethhdr, %struct.l2_ethhdr* %61, i64 1
  %63 = load %struct.l2_ethhdr*, %struct.l2_ethhdr** %10, align 8
  %64 = load i64, i64* %11, align 8
  %65 = call i32 @os_memcpy(%struct.l2_ethhdr* %62, %struct.l2_ethhdr* %63, i64 %64)
  %66 = call i32 (...) @driver_ndis_get_ndisuio_handle()
  %67 = load %struct.l2_ethhdr*, %struct.l2_ethhdr** %14, align 8
  %68 = load i64, i64* %17, align 8
  %69 = load i32*, i32** %16, align 8
  %70 = call i64 @WriteFile(i32 %66, %struct.l2_ethhdr* %67, i64 %68, i64* %13, i32* %69)
  store i64 %70, i64* %12, align 8
  %71 = load %struct.l2_ethhdr*, %struct.l2_ethhdr** %14, align 8
  %72 = call i32 @os_free(%struct.l2_ethhdr* %71)
  br label %73

73:                                               ; preds = %42, %28
  %74 = load i64, i64* %12, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %100, label %76

76:                                               ; preds = %73
  %77 = call i64 (...) @GetLastError()
  store i64 %77, i64* %18, align 8
  %78 = load i64, i64* %18, align 8
  %79 = load i64, i64* @ERROR_IO_PENDING, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %95

81:                                               ; preds = %76
  %82 = load i32, i32* @MSG_DEBUG, align 4
  %83 = call i32 (i32, i8*, ...) @wpa_printf(i32 %82, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %84 = call i32 (...) @driver_ndis_get_ndisuio_handle()
  %85 = load i32, i32* @TRUE, align 4
  %86 = call i64 @GetOverlappedResult(i32 %84, i32* %15, i64* %13, i32 %85)
  store i64 %86, i64* %12, align 8
  %87 = load i64, i64* %12, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %81
  %90 = load i32, i32* @MSG_DEBUG, align 4
  %91 = call i64 (...) @GetLastError()
  %92 = trunc i64 %91 to i32
  %93 = call i32 (i32, i8*, ...) @wpa_printf(i32 %90, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %92)
  store i32 -1, i32* %6, align 4
  br label %101

94:                                               ; preds = %81
  store i32 0, i32* %6, align 4
  br label %101

95:                                               ; preds = %76
  %96 = load i32, i32* @MSG_DEBUG, align 4
  %97 = call i64 (...) @GetLastError()
  %98 = trunc i64 %97 to i32
  %99 = call i32 (i32, i8*, ...) @wpa_printf(i32 %96, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %98)
  store i32 -1, i32* %6, align 4
  br label %101

100:                                              ; preds = %73
  store i32 0, i32* %6, align 4
  br label %101

101:                                              ; preds = %100, %95, %94, %89, %41, %21
  %102 = load i32, i32* %6, align 4
  ret i32 %102
}

declare dso_local i32 @os_memset(i32*, i32, i32) #1

declare dso_local i64 @WriteFile(i32, %struct.l2_ethhdr*, i64, i64*, i32*) #1

declare dso_local i32 @driver_ndis_get_ndisuio_handle(...) #1

declare dso_local %struct.l2_ethhdr* @os_malloc(i64) #1

declare dso_local i32 @os_memcpy(%struct.l2_ethhdr*, %struct.l2_ethhdr*, i64) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @os_free(%struct.l2_ethhdr*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @GetOverlappedResult(i32, i32*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
