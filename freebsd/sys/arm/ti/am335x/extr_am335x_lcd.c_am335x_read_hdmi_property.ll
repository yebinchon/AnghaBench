; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_lcd.c_am335x_read_hdmi_property.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_lcd.c_am335x_read_hdmi_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.am335x_lcd_softc = type { i64 }

@.str = private unnamed_addr constant [5 x i8] c"hdmi\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"remote-endpoint\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @am335x_read_hdmi_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @am335x_read_hdmi_property(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.am335x_lcd_softc*, align 8
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call %struct.am335x_lcd_softc* @device_get_softc(i32 %8)
  store %struct.am335x_lcd_softc* %9, %struct.am335x_lcd_softc** %7, align 8
  %10 = load i32, i32* %2, align 4
  %11 = call i64 @ofw_bus_get_node(i32 %10)
  store i64 %11, i64* %3, align 8
  %12 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %7, align 8
  %13 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %12, i32 0, i32 0
  store i64 0, i64* %13, align 8
  %14 = load i64, i64* %3, align 8
  %15 = call i32 @OF_getencprop(i64 %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64* %6, i32 8)
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i64, i64* %6, align 8
  %19 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %7, align 8
  %20 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  br label %59

21:                                               ; preds = %1
  %22 = load i64, i64* %3, align 8
  %23 = call i64 @ofw_bus_find_child(i64 %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i64 %23, i64* %3, align 8
  %24 = load i64, i64* %3, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %59

27:                                               ; preds = %21
  %28 = load i64, i64* %3, align 8
  %29 = call i64 @OF_child(i64 %28)
  store i64 %29, i64* %5, align 8
  br label %30

30:                                               ; preds = %56, %27
  %31 = load i64, i64* %5, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %59

33:                                               ; preds = %30
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @OF_getencprop(i64 %34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64* %4, i32 8)
  %36 = icmp ne i32 %35, -1
  br i1 %36, label %37, label %55

37:                                               ; preds = %33
  %38 = load i64, i64* %4, align 8
  %39 = call i64 @OF_node_from_xref(i64 %38)
  store i64 %39, i64* %3, align 8
  %40 = load i64, i64* %3, align 8
  %41 = call i64 @OF_parent(i64 %40)
  store i64 %41, i64* %3, align 8
  %42 = load i64, i64* %3, align 8
  %43 = call i64 @OF_parent(i64 %42)
  store i64 %43, i64* %3, align 8
  %44 = load i64, i64* %3, align 8
  %45 = call i64 @OF_parent(i64 %44)
  %46 = call i64 @OF_xref_from_node(i64 %45)
  %47 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %7, align 8
  %48 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %7, align 8
  %50 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %37
  br label %59

54:                                               ; preds = %37
  br label %55

55:                                               ; preds = %54, %33
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %5, align 8
  %58 = call i64 @OF_peer(i64 %57)
  store i64 %58, i64* %5, align 8
  br label %30

59:                                               ; preds = %17, %26, %53, %30
  ret void
}

declare dso_local %struct.am335x_lcd_softc* @device_get_softc(i32) #1

declare dso_local i64 @ofw_bus_get_node(i32) #1

declare dso_local i32 @OF_getencprop(i64, i8*, i64*, i32) #1

declare dso_local i64 @ofw_bus_find_child(i64, i8*) #1

declare dso_local i64 @OF_child(i64) #1

declare dso_local i64 @OF_node_from_xref(i64) #1

declare dso_local i64 @OF_parent(i64) #1

declare dso_local i64 @OF_xref_from_node(i64) #1

declare dso_local i64 @OF_peer(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
