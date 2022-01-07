; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_rrm.c_wpas_rrm_process_neighbor_rep.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_rrm.c_wpas_rrm_process_neighbor_rep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32*, i32 (i32*, %struct.wpabuf*)* }
%struct.wpabuf = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"RRM: New Neighbor Report\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"RRM: Discarding neighbor report with token %d (expected %d)\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"RRM: Unexpected neighbor report\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"RRM: Notifying neighbor report (token = %d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpas_rrm_process_neighbor_rep(%struct.wpa_supplicant* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.wpabuf*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i32, i32* @MSG_DEBUG, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = load i64, i64* %6, align 8
  %11 = call i32 @wpa_hexdump(i32 %8, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32* %9, i64 %10)
  %12 = load i64, i64* %6, align 8
  %13 = icmp ult i64 %12, 1
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %86

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %20 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sub nsw i32 %22, 1
  %24 = icmp ne i32 %18, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %15
  %26 = load i32, i32* @MSG_DEBUG, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %31 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sub nsw i32 %33, 1
  %35 = call i32 (i32, i8*, ...) @wpa_printf(i32 %26, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 %34)
  br label %86

36:                                               ; preds = %15
  %37 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %38 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %37, i32 0, i32 0
  %39 = call i32 @eloop_cancel_timeout(i32 (%struct.TYPE_4__*, i32*)* @wpas_rrm_neighbor_rep_timeout_handler, %struct.TYPE_4__* %38, i32* null)
  %40 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %41 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = load i32 (i32*, %struct.wpabuf*)*, i32 (i32*, %struct.wpabuf*)** %42, align 8
  %44 = icmp ne i32 (i32*, %struct.wpabuf*)* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %36
  %46 = load i32, i32* @MSG_ERROR, align 4
  %47 = call i32 (i32, i8*, ...) @wpa_printf(i32 %46, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %86

48:                                               ; preds = %36
  %49 = load i64, i64* %6, align 8
  %50 = sub i64 %49, 1
  %51 = call %struct.wpabuf* @wpabuf_alloc(i64 %50)
  store %struct.wpabuf* %51, %struct.wpabuf** %7, align 8
  %52 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %53 = icmp ne %struct.wpabuf* %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %48
  %55 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %56 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %55, i32 0, i32 0
  %57 = call i32 @wpas_rrm_neighbor_rep_timeout_handler(%struct.TYPE_4__* %56, i32* null)
  br label %86

58:                                               ; preds = %48
  %59 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %60 = load i32*, i32** %5, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load i64, i64* %6, align 8
  %63 = sub i64 %62, 1
  %64 = call i32 @wpabuf_put_data(%struct.wpabuf* %59, i32* %61, i64 %63)
  %65 = load i32, i32* @MSG_DEBUG, align 4
  %66 = load i32*, i32** %5, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i32, i8*, ...) @wpa_printf(i32 %65, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %68)
  %70 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %71 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  %73 = load i32 (i32*, %struct.wpabuf*)*, i32 (i32*, %struct.wpabuf*)** %72, align 8
  %74 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %75 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %79 = call i32 %73(i32* %77, %struct.wpabuf* %78)
  %80 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %81 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 2
  store i32 (i32*, %struct.wpabuf*)* null, i32 (i32*, %struct.wpabuf*)** %82, align 8
  %83 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %84 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  store i32* null, i32** %85, align 8
  br label %86

86:                                               ; preds = %58, %54, %45, %25, %14
  ret void
}

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @eloop_cancel_timeout(i32 (%struct.TYPE_4__*, i32*)*, %struct.TYPE_4__*, i32*) #1

declare dso_local i32 @wpas_rrm_neighbor_rep_timeout_handler(%struct.TYPE_4__*, i32*) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i64) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
