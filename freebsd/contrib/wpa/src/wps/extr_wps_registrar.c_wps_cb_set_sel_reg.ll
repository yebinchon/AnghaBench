; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_registrar.c_wps_cb_set_sel_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_registrar.c_wps_cb_set_sel_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_registrar = type { i64, i64, i32, i32 (i32, i64, i32, i32)*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@WPS_CONFIG_PUSHBUTTON = common dso_local global i32 0, align 4
@WPS_CONFIG_VIRT_PUSHBUTTON = common dso_local global i32 0, align 4
@WPS_CONFIG_PHY_PUSHBUTTON = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"WPS: wps_cb_set_sel_reg: sel_reg=%d config_methods=0x%x pbc=%d methods=0x%x\00", align 1
@DEV_PW_PUSHBUTTON = common dso_local global i32 0, align 4
@DEV_PW_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wps_registrar*)* @wps_cb_set_sel_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wps_cb_set_sel_reg(%struct.wps_registrar* %0) #0 {
  %2 = alloca %struct.wps_registrar*, align 8
  %3 = alloca i32, align 4
  store %struct.wps_registrar* %0, %struct.wps_registrar** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.wps_registrar*, %struct.wps_registrar** %2, align 8
  %5 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %4, i32 0, i32 3
  %6 = load i32 (i32, i64, i32, i32)*, i32 (i32, i64, i32, i32)** %5, align 8
  %7 = icmp eq i32 (i32, i64, i32, i32)* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %77

9:                                                ; preds = %1
  %10 = load %struct.wps_registrar*, %struct.wps_registrar** %2, align 8
  %11 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %41

14:                                               ; preds = %9
  %15 = load %struct.wps_registrar*, %struct.wps_registrar** %2, align 8
  %16 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %15, i32 0, i32 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @WPS_CONFIG_PUSHBUTTON, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %19, %21
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* @WPS_CONFIG_VIRT_PUSHBUTTON, align 4
  %24 = load i32, i32* @WPS_CONFIG_PHY_PUSHBUTTON, align 4
  %25 = or i32 %23, %24
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %3, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %3, align 4
  %29 = load %struct.wps_registrar*, %struct.wps_registrar** %2, align 8
  %30 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %14
  %34 = load %struct.wps_registrar*, %struct.wps_registrar** %2, align 8
  %35 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %34, i32 0, i32 4
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @wps_set_pushbutton(i32* %3, i32 %38)
  br label %40

40:                                               ; preds = %33, %14
  br label %41

41:                                               ; preds = %40, %9
  %42 = load i32, i32* @MSG_DEBUG, align 4
  %43 = load %struct.wps_registrar*, %struct.wps_registrar** %2, align 8
  %44 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.wps_registrar*, %struct.wps_registrar** %2, align 8
  %47 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %46, i32 0, i32 4
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.wps_registrar*, %struct.wps_registrar** %2, align 8
  %52 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @wpa_printf(i32 %42, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i64 %45, i32 %50, i64 %53, i32 %54)
  %56 = load %struct.wps_registrar*, %struct.wps_registrar** %2, align 8
  %57 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %56, i32 0, i32 3
  %58 = load i32 (i32, i64, i32, i32)*, i32 (i32, i64, i32, i32)** %57, align 8
  %59 = load %struct.wps_registrar*, %struct.wps_registrar** %2, align 8
  %60 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.wps_registrar*, %struct.wps_registrar** %2, align 8
  %63 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.wps_registrar*, %struct.wps_registrar** %2, align 8
  %66 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %41
  %70 = load i32, i32* @DEV_PW_PUSHBUTTON, align 4
  br label %73

71:                                               ; preds = %41
  %72 = load i32, i32* @DEV_PW_DEFAULT, align 4
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi i32 [ %70, %69 ], [ %72, %71 ]
  %75 = load i32, i32* %3, align 4
  %76 = call i32 %58(i32 %61, i64 %64, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %73, %8
  ret void
}

declare dso_local i32 @wps_set_pushbutton(i32*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i64, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
