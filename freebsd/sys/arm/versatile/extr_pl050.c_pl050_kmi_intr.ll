; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/versatile/extr_pl050.c_pl050_kmi_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/versatile/extr_pl050.c_pl050_kmi_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmi_softc = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 (%struct.TYPE_7__*, i32, i32)* }

@KMI_FLAG_POLLING = common dso_local global i32 0, align 4
@KBDIO_KEYINPUT = common dso_local global i32 0, align 4
@NOKEY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @pl050_kmi_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pl050_kmi_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.kmi_softc*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.kmi_softc*
  store %struct.kmi_softc* %6, %struct.kmi_softc** %3, align 8
  %7 = call i32 (...) @KMI_CTX_LOCK_ASSERT()
  %8 = load %struct.kmi_softc*, %struct.kmi_softc** %3, align 8
  %9 = getelementptr inbounds %struct.kmi_softc, %struct.kmi_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @KMI_FLAG_POLLING, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %50

15:                                               ; preds = %1
  %16 = load %struct.kmi_softc*, %struct.kmi_softc** %3, align 8
  %17 = getelementptr inbounds %struct.kmi_softc, %struct.kmi_softc* %16, i32 0, i32 1
  %18 = call i64 @KBD_IS_ACTIVE(%struct.TYPE_7__* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %15
  %21 = load %struct.kmi_softc*, %struct.kmi_softc** %3, align 8
  %22 = getelementptr inbounds %struct.kmi_softc, %struct.kmi_softc* %21, i32 0, i32 1
  %23 = call i64 @KBD_IS_BUSY(%struct.TYPE_7__* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %20
  %26 = load %struct.kmi_softc*, %struct.kmi_softc** %3, align 8
  %27 = getelementptr inbounds %struct.kmi_softc, %struct.kmi_softc* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i32 (%struct.TYPE_7__*, i32, i32)*, i32 (%struct.TYPE_7__*, i32, i32)** %29, align 8
  %31 = load %struct.kmi_softc*, %struct.kmi_softc** %3, align 8
  %32 = getelementptr inbounds %struct.kmi_softc, %struct.kmi_softc* %31, i32 0, i32 1
  %33 = load i32, i32* @KBDIO_KEYINPUT, align 4
  %34 = load %struct.kmi_softc*, %struct.kmi_softc** %3, align 8
  %35 = getelementptr inbounds %struct.kmi_softc, %struct.kmi_softc* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 %30(%struct.TYPE_7__* %32, i32 %33, i32 %38)
  br label %50

40:                                               ; preds = %20, %15
  br label %41

41:                                               ; preds = %45, %40
  %42 = load %struct.kmi_softc*, %struct.kmi_softc** %3, align 8
  %43 = getelementptr inbounds %struct.kmi_softc, %struct.kmi_softc* %42, i32 0, i32 1
  %44 = call i64 @kmi_read_char_locked(%struct.TYPE_7__* %43, i32 0)
  store i64 %44, i64* %4, align 8
  br label %45

45:                                               ; preds = %41
  %46 = load i64, i64* %4, align 8
  %47 = load i64, i64* @NOKEY, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %41, label %49

49:                                               ; preds = %45
  br label %50

50:                                               ; preds = %14, %49, %25
  ret void
}

declare dso_local i32 @KMI_CTX_LOCK_ASSERT(...) #1

declare dso_local i64 @KBD_IS_ACTIVE(%struct.TYPE_7__*) #1

declare dso_local i64 @KBD_IS_BUSY(%struct.TYPE_7__*) #1

declare dso_local i64 @kmi_read_char_locked(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
