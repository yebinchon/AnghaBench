; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ngatm/snmp_atm/extr_snmp_atm.c_atmif_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ngatm/snmp_atm/extr_snmp_atm.c_atmif_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmif_priv = type { i32, i32* }
%struct.atmif_reg = type { i32, i32* }

@ATMIF_NOTIFY_DESTROY = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@atmif_list = common dso_local global i32 0, align 4
@this_tick = common dso_local global i32 0, align 4
@last_change = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atmif_priv*)* @atmif_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmif_destroy(%struct.atmif_priv* %0) #0 {
  %2 = alloca %struct.atmif_priv*, align 8
  %3 = alloca %struct.atmif_reg*, align 8
  store %struct.atmif_priv* %0, %struct.atmif_priv** %2, align 8
  %4 = load %struct.atmif_priv*, %struct.atmif_priv** %2, align 8
  %5 = bitcast %struct.atmif_priv* %4 to %struct.atmif_reg*
  %6 = load i32, i32* @ATMIF_NOTIFY_DESTROY, align 4
  %7 = call i32 @atmif_send_notification(%struct.atmif_reg* %5, i32 %6, i64 0)
  %8 = load %struct.atmif_priv*, %struct.atmif_priv** %2, align 8
  %9 = bitcast %struct.atmif_priv* %8 to %struct.atmif_reg*
  %10 = call i32 @atmif_sys_destroy(%struct.atmif_reg* %9)
  %11 = load %struct.atmif_priv*, %struct.atmif_priv** %2, align 8
  %12 = getelementptr inbounds %struct.atmif_priv, %struct.atmif_priv* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.atmif_priv*, %struct.atmif_priv** %2, align 8
  %17 = getelementptr inbounds %struct.atmif_priv, %struct.atmif_priv* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @mibif_unnotify(i32* %18)
  br label %20

20:                                               ; preds = %15, %1
  br label %21

21:                                               ; preds = %26, %20
  %22 = load %struct.atmif_priv*, %struct.atmif_priv** %2, align 8
  %23 = getelementptr inbounds %struct.atmif_priv, %struct.atmif_priv* %22, i32 0, i32 0
  %24 = call %struct.atmif_reg* @TAILQ_FIRST(i32* %23)
  store %struct.atmif_reg* %24, %struct.atmif_reg** %3, align 8
  %25 = icmp ne %struct.atmif_reg* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load %struct.atmif_priv*, %struct.atmif_priv** %2, align 8
  %28 = getelementptr inbounds %struct.atmif_priv, %struct.atmif_priv* %27, i32 0, i32 0
  %29 = load %struct.atmif_reg*, %struct.atmif_reg** %3, align 8
  %30 = load i32, i32* @link, align 4
  %31 = call i32 @TAILQ_REMOVE(i32* %28, %struct.atmif_reg* %29, i32 %30)
  %32 = load %struct.atmif_reg*, %struct.atmif_reg** %3, align 8
  %33 = call i32 @free(%struct.atmif_reg* %32)
  br label %21

34:                                               ; preds = %21
  %35 = load %struct.atmif_priv*, %struct.atmif_priv** %2, align 8
  %36 = bitcast %struct.atmif_priv* %35 to %struct.atmif_reg*
  %37 = load i32, i32* @link, align 4
  %38 = call i32 @TAILQ_REMOVE(i32* @atmif_list, %struct.atmif_reg* %36, i32 %37)
  %39 = load %struct.atmif_priv*, %struct.atmif_priv** %2, align 8
  %40 = bitcast %struct.atmif_priv* %39 to %struct.atmif_reg*
  %41 = call i32 @free(%struct.atmif_reg* %40)
  %42 = load i32, i32* @this_tick, align 4
  store i32 %42, i32* @last_change, align 4
  ret void
}

declare dso_local i32 @atmif_send_notification(%struct.atmif_reg*, i32, i64) #1

declare dso_local i32 @atmif_sys_destroy(%struct.atmif_reg*) #1

declare dso_local i32 @mibif_unnotify(i32*) #1

declare dso_local %struct.atmif_reg* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.atmif_reg*, i32) #1

declare dso_local i32 @free(%struct.atmif_reg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
