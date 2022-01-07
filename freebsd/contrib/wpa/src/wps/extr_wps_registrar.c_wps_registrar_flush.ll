; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_registrar.c_wps_registrar_flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_registrar.c_wps_registrar_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_registrar = type { %struct.TYPE_2__, i32*, i32*, i32, i32 }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wps_registrar_flush(%struct.wps_registrar* %0) #0 {
  %2 = alloca %struct.wps_registrar*, align 8
  store %struct.wps_registrar* %0, %struct.wps_registrar** %2, align 8
  %3 = load %struct.wps_registrar*, %struct.wps_registrar** %2, align 8
  %4 = icmp eq %struct.wps_registrar* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %25

6:                                                ; preds = %1
  %7 = load %struct.wps_registrar*, %struct.wps_registrar** %2, align 8
  %8 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %7, i32 0, i32 4
  %9 = call i32 @wps_free_pins(i32* %8)
  %10 = load %struct.wps_registrar*, %struct.wps_registrar** %2, align 8
  %11 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %10, i32 0, i32 3
  %12 = call i32 @wps_free_nfc_pw_tokens(i32* %11, i32 0)
  %13 = load %struct.wps_registrar*, %struct.wps_registrar** %2, align 8
  %14 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @wps_free_pbc_sessions(i32* %15)
  %17 = load %struct.wps_registrar*, %struct.wps_registrar** %2, align 8
  %18 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %17, i32 0, i32 2
  store i32* null, i32** %18, align 8
  %19 = load %struct.wps_registrar*, %struct.wps_registrar** %2, align 8
  %20 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @wps_free_devices(i32* %21)
  %23 = load %struct.wps_registrar*, %struct.wps_registrar** %2, align 8
  %24 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %23, i32 0, i32 1
  store i32* null, i32** %24, align 8
  br label %25

25:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @wps_free_pins(i32*) #1

declare dso_local i32 @wps_free_nfc_pw_tokens(i32*, i32) #1

declare dso_local i32 @wps_free_pbc_sessions(i32*) #1

declare dso_local i32 @wps_free_devices(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
