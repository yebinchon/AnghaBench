; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_ttls.c_eap_ttls_avp_encapsulate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_ttls.c_eap_ttls_avp_encapsulate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.wpabuf*, i32, i32)* @eap_ttls_avp_encapsulate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_ttls_avp_encapsulate(%struct.wpabuf* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.wpabuf*, align 8
  %9 = alloca i32*, align 8
  store %struct.wpabuf* %0, %struct.wpabuf** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %11 = call i64 @wpabuf_len(%struct.wpabuf* %10)
  %12 = add i64 4, %11
  %13 = add i64 %12, 4
  %14 = call %struct.wpabuf* @wpabuf_alloc(i64 %13)
  store %struct.wpabuf* %14, %struct.wpabuf** %8, align 8
  %15 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %16 = icmp eq %struct.wpabuf* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %19 = call i32 @wpabuf_free(%struct.wpabuf* %18)
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %57

20:                                               ; preds = %3
  %21 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %22 = call i32 @wpabuf_mhead(%struct.wpabuf* %21)
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %26 = call i64 @wpabuf_len(%struct.wpabuf* %25)
  %27 = call i32* @eap_ttls_avp_hdr(i32 %22, i32 %23, i32 0, i32 %24, i64 %26)
  store i32* %27, i32** %9, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %30 = call i64 @wpabuf_head(%struct.wpabuf* %29)
  %31 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %32 = call i64 @wpabuf_len(%struct.wpabuf* %31)
  %33 = call i32 @os_memcpy(i32* %28, i64 %30, i64 %32)
  %34 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %35 = call i64 @wpabuf_len(%struct.wpabuf* %34)
  %36 = load i32*, i32** %9, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 %35
  store i32* %37, i32** %9, align 8
  %38 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %39 = call i64 @wpabuf_head(%struct.wpabuf* %38)
  %40 = inttoptr i64 %39 to i32*
  %41 = load i32*, i32** %9, align 8
  %42 = call i32 @AVP_PAD(i32* %40, i32* %41)
  %43 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %44 = call i32 @wpabuf_free(%struct.wpabuf* %43)
  %45 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %48 = call i64 @wpabuf_head(%struct.wpabuf* %47)
  %49 = inttoptr i64 %48 to i32*
  %50 = ptrtoint i32* %46 to i64
  %51 = ptrtoint i32* %49 to i64
  %52 = sub i64 %50, %51
  %53 = sdiv exact i64 %52, 4
  %54 = trunc i64 %53 to i32
  %55 = call i32 @wpabuf_put(%struct.wpabuf* %45, i32 %54)
  %56 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  store %struct.wpabuf* %56, %struct.wpabuf** %4, align 8
  br label %57

57:                                               ; preds = %20, %17
  %58 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  ret %struct.wpabuf* %58
}

declare dso_local %struct.wpabuf* @wpabuf_alloc(i64) #1

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i32* @eap_ttls_avp_hdr(i32, i32, i32, i32, i64) #1

declare dso_local i32 @wpabuf_mhead(%struct.wpabuf*) #1

declare dso_local i32 @os_memcpy(i32*, i64, i64) #1

declare dso_local i64 @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @AVP_PAD(i32*, i32*) #1

declare dso_local i32 @wpabuf_put(%struct.wpabuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
