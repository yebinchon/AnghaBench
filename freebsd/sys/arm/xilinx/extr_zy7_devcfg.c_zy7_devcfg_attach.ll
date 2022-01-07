; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/xilinx/extr_zy7_devcfg.c_zy7_devcfg_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/xilinx/extr_zy7_devcfg.c_zy7_devcfg_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zy7_devcfg_softc = type { %struct.TYPE_3__*, i32, i32*, i32*, i32 }
%struct.TYPE_3__ = type { %struct.zy7_devcfg_softc* }
%struct.TYPE_4__ = type { i32, i32, i32 }

@zy7_devcfg_softc_p = common dso_local global %struct.zy7_devcfg_softc* null, align 8
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"could not allocate memory resources.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"cannot allocate IRQ\0A\00", align 1
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@zy7_devcfg_intr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"cannot setup IRQ\0A\00", align 1
@zy7_devcfg_cdevsw = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_WHEEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"devcfg\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"failed to create /dev/devcfg\00", align 1
@ZY7_DEVCFG_UNLOCK = common dso_local global i32 0, align 4
@ZY7_DEVCFG_UNLOCK_MAGIC = common dso_local global i32 0, align 4
@ZY7_DEVCFG_INT_STATUS = common dso_local global i32 0, align 4
@ZY7_DEVCFG_INT_ALL = common dso_local global i32 0, align 4
@ZY7_DEVCFG_INT_MASK = common dso_local global i32 0, align 4
@ZY7_DEVCFG_MCTRL = common dso_local global i32 0, align 4
@ZY7_DEVCFG_MCTRL_PS_VERS_MASK = common dso_local global i32 0, align 4
@ZY7_DEVCFG_MCTRL_PS_VERS_SHIFT = common dso_local global i32 0, align 4
@zy7_ps_vers = common dso_local global i32 0, align 4
@FCLK_NUM = common dso_local global i32 0, align 4
@fclk_configs = common dso_local global %struct.TYPE_4__* null, align 8
@.str.5 = private unnamed_addr constant [35 x i8] c"failed to initialized sysctl tree\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @zy7_devcfg_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zy7_devcfg_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.zy7_devcfg_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.zy7_devcfg_softc* @device_get_softc(i32 %8)
  store %struct.zy7_devcfg_softc* %9, %struct.zy7_devcfg_softc** %4, align 8
  %10 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** @zy7_devcfg_softc_p, align 8
  %11 = icmp ne %struct.zy7_devcfg_softc* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @ENXIO, align 4
  store i32 %13, i32* %2, align 4
  br label %165

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %4, align 8
  %17 = getelementptr inbounds %struct.zy7_devcfg_softc, %struct.zy7_devcfg_softc* %16, i32 0, i32 4
  store i32 %15, i32* %17, align 8
  %18 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %4, align 8
  %19 = call i32 @DEVCFG_SC_LOCK_INIT(%struct.zy7_devcfg_softc* %18)
  store i32 0, i32* %6, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @SYS_RES_MEMORY, align 4
  %22 = load i32, i32* @RF_ACTIVE, align 4
  %23 = call i8* @bus_alloc_resource_any(i32 %20, i32 %21, i32* %6, i32 %22)
  %24 = bitcast i8* %23 to i32*
  %25 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %4, align 8
  %26 = getelementptr inbounds %struct.zy7_devcfg_softc, %struct.zy7_devcfg_softc* %25, i32 0, i32 3
  store i32* %24, i32** %26, align 8
  %27 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %4, align 8
  %28 = getelementptr inbounds %struct.zy7_devcfg_softc, %struct.zy7_devcfg_softc* %27, i32 0, i32 3
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %14
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @device_printf(i32 %32, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @zy7_devcfg_detach(i32 %34)
  %36 = load i32, i32* @ENOMEM, align 4
  store i32 %36, i32* %2, align 4
  br label %165

37:                                               ; preds = %14
  store i32 0, i32* %6, align 4
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @SYS_RES_IRQ, align 4
  %40 = load i32, i32* @RF_ACTIVE, align 4
  %41 = call i8* @bus_alloc_resource_any(i32 %38, i32 %39, i32* %6, i32 %40)
  %42 = bitcast i8* %41 to i32*
  %43 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %4, align 8
  %44 = getelementptr inbounds %struct.zy7_devcfg_softc, %struct.zy7_devcfg_softc* %43, i32 0, i32 2
  store i32* %42, i32** %44, align 8
  %45 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %4, align 8
  %46 = getelementptr inbounds %struct.zy7_devcfg_softc, %struct.zy7_devcfg_softc* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %37
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @device_printf(i32 %50, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @zy7_devcfg_detach(i32 %52)
  %54 = load i32, i32* @ENOMEM, align 4
  store i32 %54, i32* %2, align 4
  br label %165

55:                                               ; preds = %37
  %56 = load i32, i32* %3, align 4
  %57 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %4, align 8
  %58 = getelementptr inbounds %struct.zy7_devcfg_softc, %struct.zy7_devcfg_softc* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* @INTR_TYPE_MISC, align 4
  %61 = load i32, i32* @INTR_MPSAFE, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @zy7_devcfg_intr, align 4
  %64 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %4, align 8
  %65 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %4, align 8
  %66 = getelementptr inbounds %struct.zy7_devcfg_softc, %struct.zy7_devcfg_softc* %65, i32 0, i32 1
  %67 = call i32 @bus_setup_intr(i32 %56, i32* %59, i32 %62, i32* null, i32 %63, %struct.zy7_devcfg_softc* %64, i32* %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %55
  %71 = load i32, i32* %3, align 4
  %72 = call i32 @device_printf(i32 %71, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %73 = load i32, i32* %3, align 4
  %74 = call i32 @zy7_devcfg_detach(i32 %73)
  %75 = load i32, i32* %7, align 4
  store i32 %75, i32* %2, align 4
  br label %165

76:                                               ; preds = %55
  %77 = load i32, i32* @UID_ROOT, align 4
  %78 = load i32, i32* @GID_WHEEL, align 4
  %79 = call %struct.TYPE_3__* @make_dev(i32* @zy7_devcfg_cdevsw, i32 0, i32 %77, i32 %78, i32 384, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %80 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %4, align 8
  %81 = getelementptr inbounds %struct.zy7_devcfg_softc, %struct.zy7_devcfg_softc* %80, i32 0, i32 0
  store %struct.TYPE_3__* %79, %struct.TYPE_3__** %81, align 8
  %82 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %4, align 8
  %83 = getelementptr inbounds %struct.zy7_devcfg_softc, %struct.zy7_devcfg_softc* %82, i32 0, i32 0
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = icmp eq %struct.TYPE_3__* %84, null
  br i1 %85, label %86, label %92

86:                                               ; preds = %76
  %87 = load i32, i32* %3, align 4
  %88 = call i32 @device_printf(i32 %87, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %89 = load i32, i32* %3, align 4
  %90 = call i32 @zy7_devcfg_detach(i32 %89)
  %91 = load i32, i32* @ENXIO, align 4
  store i32 %91, i32* %2, align 4
  br label %165

92:                                               ; preds = %76
  %93 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %4, align 8
  %94 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %4, align 8
  %95 = getelementptr inbounds %struct.zy7_devcfg_softc, %struct.zy7_devcfg_softc* %94, i32 0, i32 0
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  store %struct.zy7_devcfg_softc* %93, %struct.zy7_devcfg_softc** %97, align 8
  %98 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %4, align 8
  store %struct.zy7_devcfg_softc* %98, %struct.zy7_devcfg_softc** @zy7_devcfg_softc_p, align 8
  %99 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %4, align 8
  %100 = load i32, i32* @ZY7_DEVCFG_UNLOCK, align 4
  %101 = load i32, i32* @ZY7_DEVCFG_UNLOCK_MAGIC, align 4
  %102 = call i32 @WR4(%struct.zy7_devcfg_softc* %99, i32 %100, i32 %101)
  %103 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %4, align 8
  %104 = load i32, i32* @ZY7_DEVCFG_INT_STATUS, align 4
  %105 = load i32, i32* @ZY7_DEVCFG_INT_ALL, align 4
  %106 = call i32 @WR4(%struct.zy7_devcfg_softc* %103, i32 %104, i32 %105)
  %107 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %4, align 8
  %108 = load i32, i32* @ZY7_DEVCFG_INT_MASK, align 4
  %109 = call i32 @WR4(%struct.zy7_devcfg_softc* %107, i32 %108, i32 -1)
  %110 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %4, align 8
  %111 = load i32, i32* @ZY7_DEVCFG_MCTRL, align 4
  %112 = call i32 @RD4(%struct.zy7_devcfg_softc* %110, i32 %111)
  %113 = load i32, i32* @ZY7_DEVCFG_MCTRL_PS_VERS_MASK, align 4
  %114 = and i32 %112, %113
  %115 = load i32, i32* @ZY7_DEVCFG_MCTRL_PS_VERS_SHIFT, align 4
  %116 = ashr i32 %114, %115
  store i32 %116, i32* @zy7_ps_vers, align 4
  store i32 0, i32* %5, align 4
  br label %117

117:                                              ; preds = %154, %92
  %118 = load i32, i32* %5, align 4
  %119 = load i32, i32* @FCLK_NUM, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %157

121:                                              ; preds = %117
  %122 = load i32, i32* %5, align 4
  %123 = call i32 @zy7_pl_fclk_get_source(i32 %122)
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** @fclk_configs, align 8
  %125 = load i32, i32* %5, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 2
  store i32 %123, i32* %128, align 4
  %129 = load i32, i32* %5, align 4
  %130 = call i64 @zy7_pl_fclk_enabled(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %121
  %133 = load i32, i32* %5, align 4
  %134 = call i32 @zy7_pl_fclk_get_freq(i32 %133)
  br label %136

135:                                              ; preds = %121
  br label %136

136:                                              ; preds = %135, %132
  %137 = phi i32 [ %134, %132 ], [ 0, %135 ]
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** @fclk_configs, align 8
  %139 = load i32, i32* %5, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  store i32 %137, i32* %142, align 4
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** @fclk_configs, align 8
  %144 = load i32, i32* %5, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** @fclk_configs, align 8
  %150 = load i32, i32* %5, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 1
  store i32 %148, i32* %153, align 4
  br label %154

154:                                              ; preds = %136
  %155 = load i32, i32* %5, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %5, align 4
  br label %117

157:                                              ; preds = %117
  %158 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %4, align 8
  %159 = call i64 @zy7_devcfg_init_fclk_sysctl(%struct.zy7_devcfg_softc* %158)
  %160 = icmp slt i64 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %157
  %162 = load i32, i32* %3, align 4
  %163 = call i32 @device_printf(i32 %162, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  br label %164

164:                                              ; preds = %161, %157
  store i32 0, i32* %2, align 4
  br label %165

165:                                              ; preds = %164, %86, %70, %49, %31, %12
  %166 = load i32, i32* %2, align 4
  ret i32 %166
}

declare dso_local %struct.zy7_devcfg_softc* @device_get_softc(i32) #1

declare dso_local i32 @DEVCFG_SC_LOCK_INIT(%struct.zy7_devcfg_softc*) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @zy7_devcfg_detach(i32) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.zy7_devcfg_softc*, i32*) #1

declare dso_local %struct.TYPE_3__* @make_dev(i32*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @WR4(%struct.zy7_devcfg_softc*, i32, i32) #1

declare dso_local i32 @RD4(%struct.zy7_devcfg_softc*, i32) #1

declare dso_local i32 @zy7_pl_fclk_get_source(i32) #1

declare dso_local i64 @zy7_pl_fclk_enabled(i32) #1

declare dso_local i32 @zy7_pl_fclk_get_freq(i32) #1

declare dso_local i64 @zy7_devcfg_init_fclk_sysctl(%struct.zy7_devcfg_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
