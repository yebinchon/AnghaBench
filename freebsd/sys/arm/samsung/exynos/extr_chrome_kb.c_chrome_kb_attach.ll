; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_chrome_kb.c_chrome_kb_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_chrome_kb.c_chrome_kb_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ckb_softc = type { i32, i32, i32*, i32, i32, i64*, i64*, %struct.TYPE_10__, i32, i32, i32, i32*, i32* }
%struct.TYPE_10__ = type { i8* }

@.str = private unnamed_addr constant [5 x i8] c"gpio\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Can't find gpio device.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@ckb_ec_intr = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@KBD_DRIVER_NAME = common dso_local global i32 0, align 4
@KB_OTHER = common dso_local global i32 0, align 4
@key_map = common dso_local global i32 0, align 4
@accent_map = common dso_local global i32 0, align 4
@CKB_NFKEY = common dso_local global i32 0, align 4
@fkey_tab = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @chrome_kb_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chrome_kb_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ckb_softc*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.ckb_softc* @device_get_softc(i32 %9)
  store %struct.ckb_softc* %10, %struct.ckb_softc** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.ckb_softc*, %struct.ckb_softc** %4, align 8
  %13 = getelementptr inbounds %struct.ckb_softc, %struct.ckb_softc* %12, i32 0, i32 10
  store i32 %11, i32* %13, align 8
  %14 = load %struct.ckb_softc*, %struct.ckb_softc** %4, align 8
  %15 = getelementptr inbounds %struct.ckb_softc, %struct.ckb_softc* %14, i32 0, i32 12
  store i32* null, i32** %15, align 8
  %16 = load %struct.ckb_softc*, %struct.ckb_softc** %4, align 8
  %17 = call i32 @parse_dts(%struct.ckb_softc* %16)
  store i32 %17, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %2, align 4
  br label %151

21:                                               ; preds = %1
  %22 = call i32 @devclass_find(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %23 = call i32* @devclass_get_device(i32 %22, i32 0)
  %24 = load %struct.ckb_softc*, %struct.ckb_softc** %4, align 8
  %25 = getelementptr inbounds %struct.ckb_softc, %struct.ckb_softc* %24, i32 0, i32 11
  store i32* %23, i32** %25, align 8
  %26 = load %struct.ckb_softc*, %struct.ckb_softc** %4, align 8
  %27 = getelementptr inbounds %struct.ckb_softc, %struct.ckb_softc* %26, i32 0, i32 11
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %21
  %31 = load %struct.ckb_softc*, %struct.ckb_softc** %4, align 8
  %32 = getelementptr inbounds %struct.ckb_softc, %struct.ckb_softc* %31, i32 0, i32 10
  %33 = load i32, i32* %32, align 8
  %34 = call i32 (i32, i8*, ...) @device_printf(i32 %33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @ENXIO, align 4
  store i32 %35, i32* %2, align 4
  br label %151

36:                                               ; preds = %21
  %37 = load %struct.ckb_softc*, %struct.ckb_softc** %4, align 8
  %38 = getelementptr inbounds %struct.ckb_softc, %struct.ckb_softc* %37, i32 0, i32 8
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @ckb_ec_intr, align 4
  %41 = load %struct.ckb_softc*, %struct.ckb_softc** %4, align 8
  %42 = call i32 @pad_setup_intr(i32 %39, i32 %40, %struct.ckb_softc* %41)
  %43 = load %struct.ckb_softc*, %struct.ckb_softc** %4, align 8
  %44 = getelementptr inbounds %struct.ckb_softc, %struct.ckb_softc* %43, i32 0, i32 7
  store %struct.TYPE_10__* %44, %struct.TYPE_10__** %5, align 8
  store i32 0, i32* %7, align 4
  %45 = load %struct.ckb_softc*, %struct.ckb_softc** %4, align 8
  %46 = getelementptr inbounds %struct.ckb_softc, %struct.ckb_softc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @M_DEVBUF, align 4
  %49 = load i32, i32* @M_NOWAIT, align 4
  %50 = call i8* @malloc(i32 %47, i32 %48, i32 %49)
  %51 = bitcast i8* %50 to i64*
  %52 = load %struct.ckb_softc*, %struct.ckb_softc** %4, align 8
  %53 = getelementptr inbounds %struct.ckb_softc, %struct.ckb_softc* %52, i32 0, i32 6
  store i64* %51, i64** %53, align 8
  %54 = load %struct.ckb_softc*, %struct.ckb_softc** %4, align 8
  %55 = getelementptr inbounds %struct.ckb_softc, %struct.ckb_softc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @M_DEVBUF, align 4
  %58 = load i32, i32* @M_NOWAIT, align 4
  %59 = call i8* @malloc(i32 %56, i32 %57, i32 %58)
  %60 = bitcast i8* %59 to i64*
  %61 = load %struct.ckb_softc*, %struct.ckb_softc** %4, align 8
  %62 = getelementptr inbounds %struct.ckb_softc, %struct.ckb_softc* %61, i32 0, i32 5
  store i64* %60, i64** %62, align 8
  store i32 0, i32* %8, align 4
  br label %63

63:                                               ; preds = %82, %36
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.ckb_softc*, %struct.ckb_softc** %4, align 8
  %66 = getelementptr inbounds %struct.ckb_softc, %struct.ckb_softc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %85

69:                                               ; preds = %63
  %70 = load %struct.ckb_softc*, %struct.ckb_softc** %4, align 8
  %71 = getelementptr inbounds %struct.ckb_softc, %struct.ckb_softc* %70, i32 0, i32 6
  %72 = load i64*, i64** %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  store i64 0, i64* %75, align 8
  %76 = load %struct.ckb_softc*, %struct.ckb_softc** %4, align 8
  %77 = getelementptr inbounds %struct.ckb_softc, %struct.ckb_softc* %76, i32 0, i32 5
  %78 = load i64*, i64** %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  store i64 0, i64* %81, align 8
  br label %82

82:                                               ; preds = %69
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %8, align 4
  br label %63

85:                                               ; preds = %63
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %87 = load i32, i32* @KBD_DRIVER_NAME, align 4
  %88 = load i32, i32* @KB_OTHER, align 4
  %89 = load i32, i32* %3, align 4
  %90 = call i32 @device_get_unit(i32 %89)
  %91 = call i32 @kbd_init_struct(%struct.TYPE_10__* %86, i32 %87, i32 %88, i32 %90, i32 0, i32 0, i32 0)
  %92 = load %struct.ckb_softc*, %struct.ckb_softc** %4, align 8
  %93 = bitcast %struct.ckb_softc* %92 to i8*
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  store i8* %93, i8** %95, align 8
  %96 = load i32, i32* @key_map, align 4
  %97 = load %struct.ckb_softc*, %struct.ckb_softc** %4, align 8
  %98 = getelementptr inbounds %struct.ckb_softc, %struct.ckb_softc* %97, i32 0, i32 4
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* @accent_map, align 4
  %100 = load %struct.ckb_softc*, %struct.ckb_softc** %4, align 8
  %101 = getelementptr inbounds %struct.ckb_softc, %struct.ckb_softc* %100, i32 0, i32 3
  store i32 %99, i32* %101, align 8
  store i32 0, i32* %8, align 4
  br label %102

102:                                              ; preds = %118, %85
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* @CKB_NFKEY, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %121

106:                                              ; preds = %102
  %107 = load i32*, i32** @fkey_tab, align 8
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.ckb_softc*, %struct.ckb_softc** %4, align 8
  %113 = getelementptr inbounds %struct.ckb_softc, %struct.ckb_softc* %112, i32 0, i32 2
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  store i32 %111, i32* %117, align 4
  br label %118

118:                                              ; preds = %106
  %119 = load i32, i32* %8, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %8, align 4
  br label %102

121:                                              ; preds = %102
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %123 = load %struct.ckb_softc*, %struct.ckb_softc** %4, align 8
  %124 = getelementptr inbounds %struct.ckb_softc, %struct.ckb_softc* %123, i32 0, i32 4
  %125 = load %struct.ckb_softc*, %struct.ckb_softc** %4, align 8
  %126 = getelementptr inbounds %struct.ckb_softc, %struct.ckb_softc* %125, i32 0, i32 3
  %127 = load %struct.ckb_softc*, %struct.ckb_softc** %4, align 8
  %128 = getelementptr inbounds %struct.ckb_softc, %struct.ckb_softc* %127, i32 0, i32 2
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* @CKB_NFKEY, align 4
  %131 = call i32 @kbd_set_maps(%struct.TYPE_10__* %122, i32* %124, i32* %126, i32* %129, i32 %130)
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %133 = call i32 @KBD_FOUND_DEVICE(%struct.TYPE_10__* %132)
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %135 = call i32 @ckb_clear_state(%struct.TYPE_10__* %134)
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %137 = call i32 @KBD_PROBE_DONE(%struct.TYPE_10__* %136)
  %138 = load %struct.ckb_softc*, %struct.ckb_softc** %4, align 8
  %139 = getelementptr inbounds %struct.ckb_softc, %struct.ckb_softc* %138, i32 0, i32 1
  %140 = call i32 @callout_init(i32* %139, i32 0)
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %142 = call i32 @KBD_INIT_DONE(%struct.TYPE_10__* %141)
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %144 = call i64 @kbd_register(%struct.TYPE_10__* %143)
  %145 = icmp slt i64 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %121
  %147 = load i32, i32* @ENXIO, align 4
  store i32 %147, i32* %2, align 4
  br label %151

148:                                              ; preds = %121
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %150 = call i32 @KBD_CONFIG_DONE(%struct.TYPE_10__* %149)
  store i32 0, i32* %2, align 4
  br label %151

151:                                              ; preds = %148, %146, %30, %19
  %152 = load i32, i32* %2, align 4
  ret i32 %152
}

declare dso_local %struct.ckb_softc* @device_get_softc(i32) #1

declare dso_local i32 @parse_dts(%struct.ckb_softc*) #1

declare dso_local i32* @devclass_get_device(i32, i32) #1

declare dso_local i32 @devclass_find(i8*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @pad_setup_intr(i32, i32, %struct.ckb_softc*) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @kbd_init_struct(%struct.TYPE_10__*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @kbd_set_maps(%struct.TYPE_10__*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @KBD_FOUND_DEVICE(%struct.TYPE_10__*) #1

declare dso_local i32 @ckb_clear_state(%struct.TYPE_10__*) #1

declare dso_local i32 @KBD_PROBE_DONE(%struct.TYPE_10__*) #1

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i32 @KBD_INIT_DONE(%struct.TYPE_10__*) #1

declare dso_local i64 @kbd_register(%struct.TYPE_10__*) #1

declare dso_local i32 @KBD_CONFIG_DONE(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
