; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_atheros.c_atheros_send_eapol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_atheros.c_atheros_send_eapol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atheros_driver_data = type { i32 }
%struct.l2_ethhdr = type { i32, %struct.l2_ethhdr*, %struct.l2_ethhdr* }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"EAPOL frame discarded, cannot malloc temp buffer of size %lu!\00", align 1
@ETH_ALEN = common dso_local global i64 0, align 8
@ETH_P_EAPOL = common dso_local global i32 0, align 4
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"TX EAPOL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*, i64, i32, i32*, i32)* @atheros_send_eapol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atheros_send_eapol(i8* %0, i32* %1, i32* %2, i64 %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.atheros_driver_data*, align 8
  %17 = alloca [3000 x i8], align 16
  %18 = alloca i8*, align 8
  %19 = alloca %struct.l2_ethhdr*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %22 = load i8*, i8** %9, align 8
  %23 = bitcast i8* %22 to %struct.atheros_driver_data*
  store %struct.atheros_driver_data* %23, %struct.atheros_driver_data** %16, align 8
  %24 = getelementptr inbounds [3000 x i8], [3000 x i8]* %17, i64 0, i64 0
  store i8* %24, i8** %18, align 8
  %25 = load i64, i64* %12, align 8
  %26 = add i64 %25, 24
  store i64 %26, i64* %20, align 8
  %27 = load i64, i64* %20, align 8
  %28 = icmp ugt i64 %27, 3000
  br i1 %28, label %29, label %39

29:                                               ; preds = %7
  %30 = load i64, i64* %20, align 8
  %31 = call i8* @os_malloc(i64 %30)
  store i8* %31, i8** %18, align 8
  %32 = load i8*, i8** %18, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32, i32* @MSG_INFO, align 4
  %36 = load i64, i64* %20, align 8
  %37 = call i32 @wpa_printf(i32 %35, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i64 %36)
  store i32 -1, i32* %8, align 4
  br label %83

38:                                               ; preds = %29
  br label %39

39:                                               ; preds = %38, %7
  %40 = load i8*, i8** %18, align 8
  %41 = bitcast i8* %40 to %struct.l2_ethhdr*
  store %struct.l2_ethhdr* %41, %struct.l2_ethhdr** %19, align 8
  %42 = load %struct.l2_ethhdr*, %struct.l2_ethhdr** %19, align 8
  %43 = getelementptr inbounds %struct.l2_ethhdr, %struct.l2_ethhdr* %42, i32 0, i32 2
  %44 = load %struct.l2_ethhdr*, %struct.l2_ethhdr** %43, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = load i64, i64* @ETH_ALEN, align 8
  %47 = call i32 @os_memcpy(%struct.l2_ethhdr* %44, i32* %45, i64 %46)
  %48 = load %struct.l2_ethhdr*, %struct.l2_ethhdr** %19, align 8
  %49 = getelementptr inbounds %struct.l2_ethhdr, %struct.l2_ethhdr* %48, i32 0, i32 1
  %50 = load %struct.l2_ethhdr*, %struct.l2_ethhdr** %49, align 8
  %51 = load i32*, i32** %14, align 8
  %52 = load i64, i64* @ETH_ALEN, align 8
  %53 = call i32 @os_memcpy(%struct.l2_ethhdr* %50, i32* %51, i64 %52)
  %54 = load i32, i32* @ETH_P_EAPOL, align 4
  %55 = call i32 @host_to_be16(i32 %54)
  %56 = load %struct.l2_ethhdr*, %struct.l2_ethhdr** %19, align 8
  %57 = getelementptr inbounds %struct.l2_ethhdr, %struct.l2_ethhdr* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.l2_ethhdr*, %struct.l2_ethhdr** %19, align 8
  %59 = getelementptr inbounds %struct.l2_ethhdr, %struct.l2_ethhdr* %58, i64 1
  %60 = load i32*, i32** %11, align 8
  %61 = load i64, i64* %12, align 8
  %62 = call i32 @os_memcpy(%struct.l2_ethhdr* %59, i32* %60, i64 %61)
  %63 = load i32, i32* @MSG_MSGDUMP, align 4
  %64 = load i8*, i8** %18, align 8
  %65 = load i64, i64* %20, align 8
  %66 = call i32 @wpa_hexdump(i32 %63, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %64, i64 %65)
  %67 = load %struct.atheros_driver_data*, %struct.atheros_driver_data** %16, align 8
  %68 = getelementptr inbounds %struct.atheros_driver_data, %struct.atheros_driver_data* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %10, align 8
  %71 = load i32, i32* @ETH_P_EAPOL, align 4
  %72 = load i8*, i8** %18, align 8
  %73 = load i64, i64* %20, align 8
  %74 = call i32 @l2_packet_send(i32 %69, i32* %70, i32 %71, i8* %72, i64 %73)
  store i32 %74, i32* %21, align 4
  %75 = load i8*, i8** %18, align 8
  %76 = getelementptr inbounds [3000 x i8], [3000 x i8]* %17, i64 0, i64 0
  %77 = icmp ne i8* %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %39
  %79 = load i8*, i8** %18, align 8
  %80 = call i32 @os_free(i8* %79)
  br label %81

81:                                               ; preds = %78, %39
  %82 = load i32, i32* %21, align 4
  store i32 %82, i32* %8, align 4
  br label %83

83:                                               ; preds = %81, %34
  %84 = load i32, i32* %8, align 4
  ret i32 %84
}

declare dso_local i8* @os_malloc(i64) #1

declare dso_local i32 @wpa_printf(i32, i8*, i64) #1

declare dso_local i32 @os_memcpy(%struct.l2_ethhdr*, i32*, i64) #1

declare dso_local i32 @host_to_be16(i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i8*, i64) #1

declare dso_local i32 @l2_packet_send(i32, i32*, i32, i8*, i64) #1

declare dso_local i32 @os_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
