; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_teap.c_eap_teap_clear.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_teap.c_eap_teap_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_teap_data = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32, i32 }

@EAP_TEAP_KEY_LEN = common dso_local global i32 0, align 4
@EAP_EMSK_LEN = common dso_local global i32 0, align 4
@EAP_TEAP_SIMCK_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_teap_data*)* @eap_teap_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_teap_clear(%struct.eap_teap_data* %0) #0 {
  %2 = alloca %struct.eap_teap_data*, align 8
  store %struct.eap_teap_data* %0, %struct.eap_teap_data** %2, align 8
  %3 = load %struct.eap_teap_data*, %struct.eap_teap_data** %2, align 8
  %4 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %3, i32 0, i32 8
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @EAP_TEAP_KEY_LEN, align 4
  %7 = call i32 @forced_memzero(i32 %5, i32 %6)
  %8 = load %struct.eap_teap_data*, %struct.eap_teap_data** %2, align 8
  %9 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %8, i32 0, i32 7
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @EAP_EMSK_LEN, align 4
  %12 = call i32 @forced_memzero(i32 %10, i32 %11)
  %13 = load %struct.eap_teap_data*, %struct.eap_teap_data** %2, align 8
  %14 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %13, i32 0, i32 6
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @os_free(i32* %15)
  %17 = load %struct.eap_teap_data*, %struct.eap_teap_data** %2, align 8
  %18 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %17, i32 0, i32 6
  store i32* null, i32** %18, align 8
  %19 = load %struct.eap_teap_data*, %struct.eap_teap_data** %2, align 8
  %20 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %19, i32 0, i32 5
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @wpabuf_free(i32* %21)
  %23 = load %struct.eap_teap_data*, %struct.eap_teap_data** %2, align 8
  %24 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %23, i32 0, i32 5
  store i32* null, i32** %24, align 8
  %25 = load %struct.eap_teap_data*, %struct.eap_teap_data** %2, align 8
  %26 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %25, i32 0, i32 4
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @wpabuf_free(i32* %27)
  %29 = load %struct.eap_teap_data*, %struct.eap_teap_data** %2, align 8
  %30 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %29, i32 0, i32 4
  store i32* null, i32** %30, align 8
  %31 = load %struct.eap_teap_data*, %struct.eap_teap_data** %2, align 8
  %32 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @wpabuf_free(i32* %33)
  %35 = load %struct.eap_teap_data*, %struct.eap_teap_data** %2, align 8
  %36 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %35, i32 0, i32 3
  store i32* null, i32** %36, align 8
  %37 = load %struct.eap_teap_data*, %struct.eap_teap_data** %2, align 8
  %38 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @wpabuf_free(i32* %39)
  %41 = load %struct.eap_teap_data*, %struct.eap_teap_data** %2, align 8
  %42 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %41, i32 0, i32 2
  store i32* null, i32** %42, align 8
  %43 = load %struct.eap_teap_data*, %struct.eap_teap_data** %2, align 8
  %44 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @EAP_TEAP_SIMCK_LEN, align 4
  %47 = call i32 @forced_memzero(i32 %45, i32 %46)
  %48 = load %struct.eap_teap_data*, %struct.eap_teap_data** %2, align 8
  %49 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @EAP_TEAP_SIMCK_LEN, align 4
  %52 = call i32 @forced_memzero(i32 %50, i32 %51)
  ret void
}

declare dso_local i32 @forced_memzero(i32, i32) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32 @wpabuf_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
