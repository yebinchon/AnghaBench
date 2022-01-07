; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_pinmux.c_pinmux_process_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_pinmux.c_pinmux_process_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinmux_softc = type { i32 }
%struct.pincfg = type { i8* }

@.str = private unnamed_addr constant [30 x i8] c"Cannot configure pin: %s: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinmux_softc*, i32)* @pinmux_process_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pinmux_process_node(%struct.pinmux_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pinmux_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pincfg, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pinmux_softc* %0, %struct.pinmux_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.pinmux_softc*, %struct.pinmux_softc** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @pinmux_read_node(%struct.pinmux_softc* %13, i32 %14, %struct.pincfg* %6, i8** %7, i32* %11)
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %12, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %12, align 4
  store i32 %19, i32* %3, align 4
  br label %66

20:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  %21 = load i8*, i8** %7, align 8
  store i8* %21, i8** %8, align 8
  br label %22

22:                                               ; preds = %46, %20
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @strlen(i8* %23)
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %9, align 4
  %26 = load %struct.pinmux_softc*, %struct.pinmux_softc** %4, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = call i32 @pinmux_config_node(%struct.pinmux_softc* %26, i8* %27, %struct.pincfg* %6)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %22
  %32 = load %struct.pinmux_softc*, %struct.pinmux_softc** %4, align 8
  %33 = getelementptr inbounds %struct.pinmux_softc, %struct.pinmux_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %8, align 8
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @device_printf(i32 %34, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %35, i32 %36)
  br label %38

38:                                               ; preds = %31, %22
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %40, %39
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i8*, i8** %8, align 8
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  store i8* %45, i8** %8, align 8
  br label %46

46:                                               ; preds = %38
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %22, label %50

50:                                               ; preds = %46
  %51 = load i8*, i8** %7, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 @OF_prop_free(i8* %54)
  br label %56

56:                                               ; preds = %53, %50
  %57 = getelementptr inbounds %struct.pincfg, %struct.pincfg* %6, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.pincfg, %struct.pincfg* %6, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @OF_prop_free(i8* %62)
  br label %64

64:                                               ; preds = %60, %56
  %65 = load i32, i32* %12, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %64, %18
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @pinmux_read_node(%struct.pinmux_softc*, i32, %struct.pincfg*, i8**, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @pinmux_config_node(%struct.pinmux_softc*, i8*, %struct.pincfg*) #1

declare dso_local i32 @device_printf(i32, i8*, i8*, i32) #1

declare dso_local i32 @OF_prop_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
