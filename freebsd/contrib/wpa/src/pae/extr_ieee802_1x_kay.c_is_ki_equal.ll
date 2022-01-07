; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/pae/extr_ieee802_1x_kay.c_is_ki_equal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/pae/extr_ieee802_1x_kay.c_is_ki_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802_1x_mka_ki = type { i64, i32 }

@MI_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee802_1x_mka_ki*, %struct.ieee802_1x_mka_ki*)* @is_ki_equal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_ki_equal(%struct.ieee802_1x_mka_ki* %0, %struct.ieee802_1x_mka_ki* %1) #0 {
  %3 = alloca %struct.ieee802_1x_mka_ki*, align 8
  %4 = alloca %struct.ieee802_1x_mka_ki*, align 8
  store %struct.ieee802_1x_mka_ki* %0, %struct.ieee802_1x_mka_ki** %3, align 8
  store %struct.ieee802_1x_mka_ki* %1, %struct.ieee802_1x_mka_ki** %4, align 8
  %5 = load %struct.ieee802_1x_mka_ki*, %struct.ieee802_1x_mka_ki** %3, align 8
  %6 = getelementptr inbounds %struct.ieee802_1x_mka_ki, %struct.ieee802_1x_mka_ki* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.ieee802_1x_mka_ki*, %struct.ieee802_1x_mka_ki** %4, align 8
  %9 = getelementptr inbounds %struct.ieee802_1x_mka_ki, %struct.ieee802_1x_mka_ki* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @MI_LEN, align 4
  %12 = call i64 @os_memcmp(i32 %7, i32 %10, i32 %11)
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load %struct.ieee802_1x_mka_ki*, %struct.ieee802_1x_mka_ki** %3, align 8
  %16 = getelementptr inbounds %struct.ieee802_1x_mka_ki, %struct.ieee802_1x_mka_ki* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.ieee802_1x_mka_ki*, %struct.ieee802_1x_mka_ki** %4, align 8
  %19 = getelementptr inbounds %struct.ieee802_1x_mka_ki, %struct.ieee802_1x_mka_ki* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %17, %20
  br label %22

22:                                               ; preds = %14, %2
  %23 = phi i1 [ false, %2 ], [ %21, %14 ]
  %24 = zext i1 %23 to i32
  ret i32 %24
}

declare dso_local i64 @os_memcmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
