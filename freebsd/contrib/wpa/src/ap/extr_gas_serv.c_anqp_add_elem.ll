; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_gas_serv.c_anqp_add_elem.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_gas_serv.c_anqp_add_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32 }
%struct.wpabuf = type { i32 }
%struct.anqp_element = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"ANQP: No room for InfoID %u payload\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hostapd_data*, %struct.wpabuf*, i64)* @anqp_add_elem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @anqp_add_elem(%struct.hostapd_data* %0, %struct.wpabuf* %1, i64 %2) #0 {
  %4 = alloca %struct.hostapd_data*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.anqp_element*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %4, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %9 = load i64, i64* %6, align 8
  %10 = call %struct.anqp_element* @get_anqp_elem(%struct.hostapd_data* %8, i64 %9)
  store %struct.anqp_element* %10, %struct.anqp_element** %7, align 8
  %11 = load %struct.anqp_element*, %struct.anqp_element** %7, align 8
  %12 = icmp ne %struct.anqp_element* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %42

14:                                               ; preds = %3
  %15 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %16 = call i64 @wpabuf_tailroom(%struct.wpabuf* %15)
  %17 = load %struct.anqp_element*, %struct.anqp_element** %7, align 8
  %18 = getelementptr inbounds %struct.anqp_element, %struct.anqp_element* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @wpabuf_len(i32 %19)
  %21 = add nsw i64 4, %20
  %22 = icmp slt i64 %16, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %14
  %24 = load i32, i32* @MSG_DEBUG, align 4
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @wpa_printf(i32 %24, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %25)
  br label %42

27:                                               ; preds = %14
  %28 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @wpabuf_put_le16(%struct.wpabuf* %28, i64 %29)
  %31 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %32 = load %struct.anqp_element*, %struct.anqp_element** %7, align 8
  %33 = getelementptr inbounds %struct.anqp_element, %struct.anqp_element* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @wpabuf_len(i32 %34)
  %36 = call i32 @wpabuf_put_le16(%struct.wpabuf* %31, i64 %35)
  %37 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %38 = load %struct.anqp_element*, %struct.anqp_element** %7, align 8
  %39 = getelementptr inbounds %struct.anqp_element, %struct.anqp_element* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @wpabuf_put_buf(%struct.wpabuf* %37, i32 %40)
  br label %42

42:                                               ; preds = %27, %23, %13
  ret void
}

declare dso_local %struct.anqp_element* @get_anqp_elem(%struct.hostapd_data*, i64) #1

declare dso_local i64 @wpabuf_tailroom(%struct.wpabuf*) #1

declare dso_local i64 @wpabuf_len(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i64) #1

declare dso_local i32 @wpabuf_put_le16(%struct.wpabuf*, i64) #1

declare dso_local i32 @wpabuf_put_buf(%struct.wpabuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
