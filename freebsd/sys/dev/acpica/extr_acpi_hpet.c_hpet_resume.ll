; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_hpet.c_hpet_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_hpet.c_hpet_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpet_softc = type { i32, i64, i32, i32, %struct.hpet_timer* }
%struct.hpet_timer = type { i64, i64, i32, i32, i32, i32 }

@TIMER_STOPPED = common dso_local global i64 0, align 8
@HPET_MAIN_COUNTER = common dso_local global i32 0, align 4
@TIMER_PERIODIC = common dso_local global i64 0, align 8
@HPET_TCAP_PER_INT = common dso_local global i32 0, align 4
@HPET_TCNF_TYPE = common dso_local global i32 0, align 4
@HPET_TCNF_VAL_SET = common dso_local global i32 0, align 4
@HPET_ISR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @hpet_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpet_resume(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hpet_softc*, align 8
  %4 = alloca %struct.hpet_timer*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.hpet_softc* @device_get_softc(i32 %6)
  store %struct.hpet_softc* %7, %struct.hpet_softc** %3, align 8
  %8 = load %struct.hpet_softc*, %struct.hpet_softc** %3, align 8
  %9 = call i32 @hpet_enable(%struct.hpet_softc* %8)
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %146, %1
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.hpet_softc*, %struct.hpet_softc** %3, align 8
  %13 = getelementptr inbounds %struct.hpet_softc, %struct.hpet_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %149

16:                                               ; preds = %10
  %17 = load %struct.hpet_softc*, %struct.hpet_softc** %3, align 8
  %18 = getelementptr inbounds %struct.hpet_softc, %struct.hpet_softc* %17, i32 0, i32 4
  %19 = load %struct.hpet_timer*, %struct.hpet_timer** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %19, i64 %21
  store %struct.hpet_timer* %22, %struct.hpet_timer** %4, align 8
  %23 = load %struct.hpet_timer*, %struct.hpet_timer** %4, align 8
  %24 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @TIMER_STOPPED, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %16
  br label %146

29:                                               ; preds = %16
  %30 = load %struct.hpet_softc*, %struct.hpet_softc** %3, align 8
  %31 = getelementptr inbounds %struct.hpet_softc, %struct.hpet_softc* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @HPET_MAIN_COUNTER, align 4
  %34 = call i32 @bus_read_4(i32 %32, i32 %33)
  %35 = load %struct.hpet_timer*, %struct.hpet_timer** %4, align 8
  %36 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load %struct.hpet_timer*, %struct.hpet_timer** %4, align 8
  %38 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @TIMER_PERIODIC, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %105

42:                                               ; preds = %29
  %43 = load %struct.hpet_timer*, %struct.hpet_timer** %4, align 8
  %44 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @HPET_TCAP_PER_INT, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %105

49:                                               ; preds = %42
  %50 = load i32, i32* @HPET_TCNF_TYPE, align 4
  %51 = load %struct.hpet_timer*, %struct.hpet_timer** %4, align 8
  %52 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load %struct.hpet_timer*, %struct.hpet_timer** %4, align 8
  %56 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.hpet_timer*, %struct.hpet_timer** %4, align 8
  %59 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, %57
  store i32 %61, i32* %59, align 8
  %62 = load %struct.hpet_softc*, %struct.hpet_softc** %3, align 8
  %63 = getelementptr inbounds %struct.hpet_softc, %struct.hpet_softc* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.hpet_timer*, %struct.hpet_timer** %4, align 8
  %66 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @HPET_TIMER_CAP_CNF(i32 %67)
  %69 = load %struct.hpet_timer*, %struct.hpet_timer** %4, align 8
  %70 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @HPET_TCNF_VAL_SET, align 4
  %73 = or i32 %71, %72
  %74 = call i32 @bus_write_4(i32 %64, i32 %68, i32 %73)
  %75 = load %struct.hpet_softc*, %struct.hpet_softc** %3, align 8
  %76 = getelementptr inbounds %struct.hpet_softc, %struct.hpet_softc* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.hpet_timer*, %struct.hpet_timer** %4, align 8
  %79 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @HPET_TIMER_COMPARATOR(i32 %80)
  %82 = load %struct.hpet_timer*, %struct.hpet_timer** %4, align 8
  %83 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @bus_write_4(i32 %77, i32 %81, i32 %84)
  %86 = load %struct.hpet_softc*, %struct.hpet_softc** %3, align 8
  %87 = getelementptr inbounds %struct.hpet_softc, %struct.hpet_softc* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.hpet_timer*, %struct.hpet_timer** %4, align 8
  %90 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @HPET_TIMER_COMPARATOR(i32 %91)
  %93 = call i32 @bus_read_4(i32 %88, i32 %92)
  %94 = load %struct.hpet_softc*, %struct.hpet_softc** %3, align 8
  %95 = getelementptr inbounds %struct.hpet_softc, %struct.hpet_softc* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.hpet_timer*, %struct.hpet_timer** %4, align 8
  %98 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @HPET_TIMER_COMPARATOR(i32 %99)
  %101 = load %struct.hpet_timer*, %struct.hpet_timer** %4, align 8
  %102 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @bus_write_4(i32 %96, i32 %100, i32 %103)
  br label %125

105:                                              ; preds = %42, %29
  %106 = load %struct.hpet_softc*, %struct.hpet_softc** %3, align 8
  %107 = getelementptr inbounds %struct.hpet_softc, %struct.hpet_softc* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = sdiv i32 %108, 1024
  %110 = load %struct.hpet_timer*, %struct.hpet_timer** %4, align 8
  %111 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = add nsw i32 %112, %109
  store i32 %113, i32* %111, align 8
  %114 = load %struct.hpet_softc*, %struct.hpet_softc** %3, align 8
  %115 = getelementptr inbounds %struct.hpet_softc, %struct.hpet_softc* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.hpet_timer*, %struct.hpet_timer** %4, align 8
  %118 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @HPET_TIMER_COMPARATOR(i32 %119)
  %121 = load %struct.hpet_timer*, %struct.hpet_timer** %4, align 8
  %122 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @bus_write_4(i32 %116, i32 %120, i32 %123)
  br label %125

125:                                              ; preds = %105, %49
  %126 = load %struct.hpet_softc*, %struct.hpet_softc** %3, align 8
  %127 = getelementptr inbounds %struct.hpet_softc, %struct.hpet_softc* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @HPET_ISR, align 4
  %130 = load %struct.hpet_timer*, %struct.hpet_timer** %4, align 8
  %131 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %130, i32 0, i32 5
  %132 = load i32, i32* %131, align 4
  %133 = shl i32 1, %132
  %134 = call i32 @bus_write_4(i32 %128, i32 %129, i32 %133)
  %135 = load %struct.hpet_softc*, %struct.hpet_softc** %3, align 8
  %136 = getelementptr inbounds %struct.hpet_softc, %struct.hpet_softc* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.hpet_timer*, %struct.hpet_timer** %4, align 8
  %139 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @HPET_TIMER_CAP_CNF(i32 %140)
  %142 = load %struct.hpet_timer*, %struct.hpet_timer** %4, align 8
  %143 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @bus_write_4(i32 %137, i32 %141, i32 %144)
  br label %146

146:                                              ; preds = %125, %28
  %147 = load i32, i32* %5, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %5, align 4
  br label %10

149:                                              ; preds = %10
  ret i32 0
}

declare dso_local %struct.hpet_softc* @device_get_softc(i32) #1

declare dso_local i32 @hpet_enable(%struct.hpet_softc*) #1

declare dso_local i32 @bus_read_4(i32, i32) #1

declare dso_local i32 @bus_write_4(i32, i32, i32) #1

declare dso_local i32 @HPET_TIMER_CAP_CNF(i32) #1

declare dso_local i32 @HPET_TIMER_COMPARATOR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
