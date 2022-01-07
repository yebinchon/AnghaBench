; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast.c_eap_fast_pac_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast.c_eap_fast_pac_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }

@PAC_TYPE_TUNNEL_PAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* ()* @eap_fast_pac_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_fast_pac_request() #0 {
  %1 = alloca %struct.wpabuf*, align 8
  %2 = alloca %struct.wpabuf*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = call %struct.wpabuf* @wpabuf_alloc(i32 12)
  store %struct.wpabuf* %5, %struct.wpabuf** %2, align 8
  %6 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %7 = icmp eq %struct.wpabuf* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  store %struct.wpabuf* null, %struct.wpabuf** %1, align 8
  br label %25

9:                                                ; preds = %0
  %10 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %11 = call i32* @wpabuf_put(%struct.wpabuf* %10, i32 0)
  store i32* %11, i32** %3, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* @PAC_TYPE_TUNNEL_PAC, align 4
  %14 = call i32* @eap_fast_write_pac_request(i32* %12, i32 %13)
  store i32* %14, i32** %4, align 8
  %15 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = ptrtoint i32* %16 to i64
  %19 = ptrtoint i32* %17 to i64
  %20 = sub i64 %18, %19
  %21 = sdiv exact i64 %20, 4
  %22 = trunc i64 %21 to i32
  %23 = call i32* @wpabuf_put(%struct.wpabuf* %15, i32 %22)
  %24 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  store %struct.wpabuf* %24, %struct.wpabuf** %1, align 8
  br label %25

25:                                               ; preds = %9, %8
  %26 = load %struct.wpabuf*, %struct.wpabuf** %1, align 8
  ret %struct.wpabuf* %26
}

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i32* @wpabuf_put(%struct.wpabuf*, i32) #1

declare dso_local i32* @eap_fast_write_pac_request(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
