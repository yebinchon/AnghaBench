; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_macsec_qca.c_macsec_qca_lookup_receive_channel.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_macsec_qca.c_macsec_qca_lookup_receive_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macsec_qca_data = type { i32 }
%struct.receive_sc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.macsec_qca_data*, %struct.receive_sc*, i32*)* @macsec_qca_lookup_receive_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macsec_qca_lookup_receive_channel(%struct.macsec_qca_data* %0, %struct.receive_sc* %1, i32* %2) #0 {
  %4 = alloca %struct.macsec_qca_data*, align 8
  %5 = alloca %struct.receive_sc*, align 8
  %6 = alloca i32*, align 8
  store %struct.macsec_qca_data* %0, %struct.macsec_qca_data** %4, align 8
  store %struct.receive_sc* %1, %struct.receive_sc** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %struct.macsec_qca_data*, %struct.macsec_qca_data** %4, align 8
  %8 = getelementptr inbounds %struct.macsec_qca_data, %struct.macsec_qca_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.receive_sc*, %struct.receive_sc** %5, align 8
  %11 = getelementptr inbounds %struct.receive_sc, %struct.receive_sc* %10, i32 0, i32 0
  %12 = load i32*, i32** %6, align 8
  %13 = call i32 @macsec_qca_lookup_channel(i32 %9, i32* %11, i32* %12)
  ret i32 %13
}

declare dso_local i32 @macsec_qca_lookup_channel(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
