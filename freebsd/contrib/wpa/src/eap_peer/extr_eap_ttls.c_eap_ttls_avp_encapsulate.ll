; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_ttls.c_eap_ttls_avp_encapsulate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_ttls.c_eap_ttls_avp_encapsulate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpabuf**, i32, i32)* @eap_ttls_avp_encapsulate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_ttls_avp_encapsulate(%struct.wpabuf** %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpabuf**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.wpabuf*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.wpabuf** %0, %struct.wpabuf*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.wpabuf**, %struct.wpabuf*** %5, align 8
  %12 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %13 = call i64 @wpabuf_len(%struct.wpabuf* %12)
  %14 = add i64 4, %13
  %15 = add i64 %14, 4
  %16 = call %struct.wpabuf* @wpabuf_alloc(i64 %15)
  store %struct.wpabuf* %16, %struct.wpabuf** %8, align 8
  %17 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %18 = icmp eq %struct.wpabuf* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load %struct.wpabuf**, %struct.wpabuf*** %5, align 8
  %21 = load %struct.wpabuf*, %struct.wpabuf** %20, align 8
  %22 = call i32 @wpabuf_clear_free(%struct.wpabuf* %21)
  %23 = load %struct.wpabuf**, %struct.wpabuf*** %5, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %23, align 8
  store i32 -1, i32* %4, align 4
  br label %64

24:                                               ; preds = %3
  %25 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %26 = call i32* @wpabuf_mhead(%struct.wpabuf* %25)
  store i32* %26, i32** %9, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.wpabuf**, %struct.wpabuf*** %5, align 8
  %31 = load %struct.wpabuf*, %struct.wpabuf** %30, align 8
  %32 = call i64 @wpabuf_len(%struct.wpabuf* %31)
  %33 = call i32* @eap_ttls_avp_hdr(i32* %27, i32 %28, i32 0, i32 %29, i64 %32)
  store i32* %33, i32** %10, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = load %struct.wpabuf**, %struct.wpabuf*** %5, align 8
  %36 = load %struct.wpabuf*, %struct.wpabuf** %35, align 8
  %37 = call i32 @wpabuf_head(%struct.wpabuf* %36)
  %38 = load %struct.wpabuf**, %struct.wpabuf*** %5, align 8
  %39 = load %struct.wpabuf*, %struct.wpabuf** %38, align 8
  %40 = call i64 @wpabuf_len(%struct.wpabuf* %39)
  %41 = call i32 @os_memcpy(i32* %34, i32 %37, i64 %40)
  %42 = load %struct.wpabuf**, %struct.wpabuf*** %5, align 8
  %43 = load %struct.wpabuf*, %struct.wpabuf** %42, align 8
  %44 = call i64 @wpabuf_len(%struct.wpabuf* %43)
  %45 = load i32*, i32** %10, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 %44
  store i32* %46, i32** %10, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = call i32 @AVP_PAD(i32* %47, i32* %48)
  %50 = load %struct.wpabuf**, %struct.wpabuf*** %5, align 8
  %51 = load %struct.wpabuf*, %struct.wpabuf** %50, align 8
  %52 = call i32 @wpabuf_clear_free(%struct.wpabuf* %51)
  %53 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = ptrtoint i32* %54 to i64
  %57 = ptrtoint i32* %55 to i64
  %58 = sub i64 %56, %57
  %59 = sdiv exact i64 %58, 4
  %60 = trunc i64 %59 to i32
  %61 = call i32 @wpabuf_put(%struct.wpabuf* %53, i32 %60)
  %62 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %63 = load %struct.wpabuf**, %struct.wpabuf*** %5, align 8
  store %struct.wpabuf* %62, %struct.wpabuf** %63, align 8
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %24, %19
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local %struct.wpabuf* @wpabuf_alloc(i64) #1

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_clear_free(%struct.wpabuf*) #1

declare dso_local i32* @wpabuf_mhead(%struct.wpabuf*) #1

declare dso_local i32* @eap_ttls_avp_hdr(i32*, i32, i32, i32, i64) #1

declare dso_local i32 @os_memcpy(i32*, i32, i64) #1

declare dso_local i32 @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @AVP_PAD(i32*, i32*) #1

declare dso_local i32 @wpabuf_put(%struct.wpabuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
