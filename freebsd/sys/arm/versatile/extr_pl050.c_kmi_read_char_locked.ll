; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/versatile/extr_pl050.c_kmi_read_char_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/versatile/extr_pl050.c_kmi_read_char_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.kmi_softc* }
%struct.kmi_softc = type { i32 }

@NOKEY = common dso_local global i32 0, align 4
@KMIIR = common dso_local global i32 0, align 4
@KMIIR_RXINTR = common dso_local global i32 0, align 4
@KMIDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32)* @kmi_read_char_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kmi_read_char_locked(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kmi_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load %struct.kmi_softc*, %struct.kmi_softc** %10, align 8
  store %struct.kmi_softc* %11, %struct.kmi_softc** %6, align 8
  %12 = call i32 (...) @KMI_CTX_LOCK_ASSERT()
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = call i32 @KBD_IS_ACTIVE(%struct.TYPE_4__* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @NOKEY, align 4
  store i32 %17, i32* %3, align 4
  br label %37

18:                                               ; preds = %2
  %19 = load %struct.kmi_softc*, %struct.kmi_softc** %6, align 8
  %20 = load i32, i32* @KMIIR, align 4
  %21 = call i32 @pl050_kmi_read_4(%struct.kmi_softc* %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @KMIIR_RXINTR, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %18
  %27 = load %struct.kmi_softc*, %struct.kmi_softc** %6, align 8
  %28 = load i32, i32* @KMIDATA, align 4
  %29 = call i32 @pl050_kmi_read_4(%struct.kmi_softc* %27, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %3, align 4
  br label %37

31:                                               ; preds = %18
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 8
  %36 = load i32, i32* @NOKEY, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %31, %26, %16
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @KMI_CTX_LOCK_ASSERT(...) #1

declare dso_local i32 @KBD_IS_ACTIVE(%struct.TYPE_4__*) #1

declare dso_local i32 @pl050_kmi_read_4(%struct.kmi_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
