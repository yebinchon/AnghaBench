; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_gas.c_gas_add_adv_proto_anqp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_gas.c_gas_add_adv_proto_anqp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }

@WLAN_EID_ADV_PROTO = common dso_local global i32 0, align 4
@ACCESS_NETWORK_QUERY_PROTOCOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpabuf*, i32, i32)* @gas_add_adv_proto_anqp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gas_add_adv_proto_anqp(%struct.wpabuf* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.wpabuf* %0, %struct.wpabuf** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %8 = load i32, i32* @WLAN_EID_ADV_PROTO, align 4
  %9 = call i32 @wpabuf_put_u8(%struct.wpabuf* %7, i32 %8)
  %10 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %11 = call i32 @wpabuf_put_u8(%struct.wpabuf* %10, i32 2)
  %12 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %13, 127
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 128, i32 0
  %19 = or i32 %14, %18
  %20 = call i32 @wpabuf_put_u8(%struct.wpabuf* %12, i32 %19)
  %21 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %22 = load i32, i32* @ACCESS_NETWORK_QUERY_PROTOCOL, align 4
  %23 = call i32 @wpabuf_put_u8(%struct.wpabuf* %21, i32 %22)
  ret void
}

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
