; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/pae/extr_ieee802_1x_kay.c_ieee802_1x_mka_dist_sak_body_present.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/pae/extr_ieee802_1x_kay.c_ieee802_1x_mka_dist_sak_body_present.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802_1x_mka_participant = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee802_1x_mka_participant*)* @ieee802_1x_mka_dist_sak_body_present to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee802_1x_mka_dist_sak_body_present(%struct.ieee802_1x_mka_participant* %0) #0 {
  %2 = alloca %struct.ieee802_1x_mka_participant*, align 8
  store %struct.ieee802_1x_mka_participant* %0, %struct.ieee802_1x_mka_participant** %2, align 8
  %3 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %2, align 8
  %4 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %3, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %1
  %8 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %2, align 8
  %9 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %2, align 8
  %14 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br label %17

17:                                               ; preds = %12, %7, %1
  %18 = phi i1 [ false, %7 ], [ false, %1 ], [ %16, %12 ]
  %19 = zext i1 %18 to i32
  ret i32 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
