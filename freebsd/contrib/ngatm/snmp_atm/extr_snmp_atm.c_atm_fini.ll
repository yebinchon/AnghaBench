; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ngatm/snmp_atm/extr_snmp_atm.c_atm_fini.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ngatm/snmp_atm/extr_snmp_atm.c_atm_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmif_priv = type { i32 }

@atmif_list = common dso_local global i32 0, align 4
@module = common dso_local global i32 0, align 4
@reg_atm = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @atm_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atm_fini() #0 {
  %1 = alloca %struct.atmif_priv*, align 8
  br label %2

2:                                                ; preds = %5, %0
  %3 = call %struct.atmif_priv* @TAILQ_FIRST(i32* @atmif_list)
  store %struct.atmif_priv* %3, %struct.atmif_priv** %1, align 8
  %4 = icmp ne %struct.atmif_priv* %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = load %struct.atmif_priv*, %struct.atmif_priv** %1, align 8
  %7 = call i32 @atmif_destroy(%struct.atmif_priv* %6)
  br label %2

8:                                                ; preds = %2
  %9 = load i32, i32* @module, align 4
  %10 = call i32 @mib_unregister_newif(i32 %9)
  %11 = load i32, i32* @reg_atm, align 4
  %12 = call i32 @or_unregister(i32 %11)
  ret i32 0
}

declare dso_local %struct.atmif_priv* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @atmif_destroy(%struct.atmif_priv*) #1

declare dso_local i32 @mib_unregister_newif(i32) #1

declare dso_local i32 @or_unregister(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
