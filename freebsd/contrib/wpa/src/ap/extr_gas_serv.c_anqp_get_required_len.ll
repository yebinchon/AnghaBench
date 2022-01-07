; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_gas_serv.c_anqp_get_required_len.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_gas_serv.c_anqp_get_required_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32 }
%struct.anqp_element = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.hostapd_data*, i32*, i32)* @anqp_get_required_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @anqp_get_required_len(%struct.hostapd_data* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.hostapd_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.anqp_element*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %33, %3
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %36

14:                                               ; preds = %10
  %15 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %8, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.anqp_element* @get_anqp_elem(%struct.hostapd_data* %15, i32 %20)
  store %struct.anqp_element* %21, %struct.anqp_element** %9, align 8
  %22 = load %struct.anqp_element*, %struct.anqp_element** %9, align 8
  %23 = icmp ne %struct.anqp_element* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %14
  %25 = load %struct.anqp_element*, %struct.anqp_element** %9, align 8
  %26 = getelementptr inbounds %struct.anqp_element, %struct.anqp_element* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @wpabuf_len(i32 %27)
  %29 = add nsw i64 4, %28
  %30 = load i64, i64* %7, align 8
  %31 = add i64 %30, %29
  store i64 %31, i64* %7, align 8
  br label %32

32:                                               ; preds = %24, %14
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %8, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %8, align 4
  br label %10

36:                                               ; preds = %10
  %37 = load i64, i64* %7, align 8
  ret i64 %37
}

declare dso_local %struct.anqp_element* @get_anqp_elem(%struct.hostapd_data*, i32) #1

declare dso_local i64 @wpabuf_len(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
