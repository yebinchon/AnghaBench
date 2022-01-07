; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/pae/extr_ieee802_1x_kay.c_ieee802_1x_kay_new_sak.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/pae/extr_ieee802_1x_kay.c_ieee802_1x_kay_new_sak.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802_1x_kay = type { i32 }
%struct.ieee802_1x_mka_participant = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"KaY: new SAK signal\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee802_1x_kay_new_sak(%struct.ieee802_1x_kay* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee802_1x_kay*, align 8
  %4 = alloca %struct.ieee802_1x_mka_participant*, align 8
  store %struct.ieee802_1x_kay* %0, %struct.ieee802_1x_kay** %3, align 8
  %5 = load %struct.ieee802_1x_kay*, %struct.ieee802_1x_kay** %3, align 8
  %6 = icmp ne %struct.ieee802_1x_kay* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %20

8:                                                ; preds = %1
  %9 = load %struct.ieee802_1x_kay*, %struct.ieee802_1x_kay** %3, align 8
  %10 = call %struct.ieee802_1x_mka_participant* @ieee802_1x_kay_get_principal_participant(%struct.ieee802_1x_kay* %9)
  store %struct.ieee802_1x_mka_participant* %10, %struct.ieee802_1x_mka_participant** %4, align 8
  %11 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %4, align 8
  %12 = icmp ne %struct.ieee802_1x_mka_participant* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  store i32 -1, i32* %2, align 4
  br label %20

14:                                               ; preds = %8
  %15 = load i32, i32* @TRUE, align 4
  %16 = load %struct.ieee802_1x_mka_participant*, %struct.ieee802_1x_mka_participant** %4, align 8
  %17 = getelementptr inbounds %struct.ieee802_1x_mka_participant, %struct.ieee802_1x_mka_participant* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @MSG_DEBUG, align 4
  %19 = call i32 @wpa_printf(i32 %18, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %14, %13, %7
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local %struct.ieee802_1x_mka_participant* @ieee802_1x_kay_get_principal_participant(%struct.ieee802_1x_kay*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
