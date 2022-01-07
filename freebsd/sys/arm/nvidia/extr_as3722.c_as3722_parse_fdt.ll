; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_as3722.c_as3722_parse_fdt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_as3722.c_as3722_parse_fdt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.as3722_softc = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"ams,enable-internal-int-pullup\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"ams,enable-internal-i2c-pullup\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.as3722_softc*, i32)* @as3722_parse_fdt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @as3722_parse_fdt(%struct.as3722_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.as3722_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.as3722_softc* %0, %struct.as3722_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = call i64 @OF_hasprop(i32 %5, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %7 = icmp ne i64 %6, 0
  %8 = zext i1 %7 to i64
  %9 = select i1 %7, i32 1, i32 0
  %10 = load %struct.as3722_softc*, %struct.as3722_softc** %3, align 8
  %11 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @OF_hasprop(i32 %12, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %14 = icmp ne i64 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 1, i32 0
  %17 = load %struct.as3722_softc*, %struct.as3722_softc** %3, align 8
  %18 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  ret i32 0
}

declare dso_local i64 @OF_hasprop(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
