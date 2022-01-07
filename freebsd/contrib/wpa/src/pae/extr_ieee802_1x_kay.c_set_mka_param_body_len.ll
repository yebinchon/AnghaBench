; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/pae/extr_ieee802_1x_kay.c_set_mka_param_body_len.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/pae/extr_ieee802_1x_kay.c_set_mka_param_body_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802_1x_mka_hdr = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @set_mka_param_body_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_mka_param_body_len(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee802_1x_mka_hdr*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.ieee802_1x_mka_hdr*
  store %struct.ieee802_1x_mka_hdr* %7, %struct.ieee802_1x_mka_hdr** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = lshr i32 %8, 8
  %10 = and i32 %9, 15
  %11 = load %struct.ieee802_1x_mka_hdr*, %struct.ieee802_1x_mka_hdr** %5, align 8
  %12 = getelementptr inbounds %struct.ieee802_1x_mka_hdr, %struct.ieee802_1x_mka_hdr* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* %4, align 4
  %14 = and i32 %13, 255
  %15 = load %struct.ieee802_1x_mka_hdr*, %struct.ieee802_1x_mka_hdr** %5, align 8
  %16 = getelementptr inbounds %struct.ieee802_1x_mka_hdr, %struct.ieee802_1x_mka_hdr* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
