; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpi_support/extr_atk0110.c_aibs_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpi_support/extr_atk0110.c_aibs_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aibs_softc = type { i32*, i32*, i32*, i32* }

@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @aibs_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aibs_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aibs_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.aibs_softc* @device_get_softc(i32 %4)
  store %struct.aibs_softc* %5, %struct.aibs_softc** %3, align 8
  %6 = load %struct.aibs_softc*, %struct.aibs_softc** %3, align 8
  %7 = getelementptr inbounds %struct.aibs_softc, %struct.aibs_softc* %6, i32 0, i32 3
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.aibs_softc*, %struct.aibs_softc** %3, align 8
  %12 = getelementptr inbounds %struct.aibs_softc, %struct.aibs_softc* %11, i32 0, i32 3
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* @M_DEVBUF, align 4
  %15 = call i32 @free(i32* %13, i32 %14)
  br label %16

16:                                               ; preds = %10, %1
  %17 = load %struct.aibs_softc*, %struct.aibs_softc** %3, align 8
  %18 = getelementptr inbounds %struct.aibs_softc, %struct.aibs_softc* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load %struct.aibs_softc*, %struct.aibs_softc** %3, align 8
  %23 = getelementptr inbounds %struct.aibs_softc, %struct.aibs_softc* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* @M_DEVBUF, align 4
  %26 = call i32 @free(i32* %24, i32 %25)
  br label %27

27:                                               ; preds = %21, %16
  %28 = load %struct.aibs_softc*, %struct.aibs_softc** %3, align 8
  %29 = getelementptr inbounds %struct.aibs_softc, %struct.aibs_softc* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load %struct.aibs_softc*, %struct.aibs_softc** %3, align 8
  %34 = getelementptr inbounds %struct.aibs_softc, %struct.aibs_softc* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* @M_DEVBUF, align 4
  %37 = call i32 @free(i32* %35, i32 %36)
  br label %38

38:                                               ; preds = %32, %27
  %39 = load %struct.aibs_softc*, %struct.aibs_softc** %3, align 8
  %40 = getelementptr inbounds %struct.aibs_softc, %struct.aibs_softc* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load %struct.aibs_softc*, %struct.aibs_softc** %3, align 8
  %45 = getelementptr inbounds %struct.aibs_softc, %struct.aibs_softc* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* @M_DEVBUF, align 4
  %48 = call i32 @free(i32* %46, i32 %47)
  br label %49

49:                                               ; preds = %43, %38
  ret i32 0
}

declare dso_local %struct.aibs_softc* @device_get_softc(i32) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
