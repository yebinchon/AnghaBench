; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_hpet.c_hpet_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_hpet.c_hpet_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eventtimer = type { i64 }
%struct.hpet_timer = type { i64, i64*, i64, i32, i64, i32, i32, i32, %struct.hpet_softc* }
%struct.hpet_softc = type { i32, i32, %struct.hpet_timer* }

@curcpu = common dso_local global i64 0, align 8
@TIMER_PERIODIC = common dso_local global i64 0, align 8
@TIMER_ONESHOT = common dso_local global i64 0, align 8
@HPET_ISR = common dso_local global i32 0, align 4
@HPET_TCNF_INT_ENB = common dso_local global i32 0, align 4
@HPET_MAIN_COUNTER = common dso_local global i32 0, align 4
@HPET_TCAP_PER_INT = common dso_local global i32 0, align 4
@HPET_TCNF_TYPE = common dso_local global i32 0, align 4
@HPET_TCNF_VAL_SET = common dso_local global i32 0, align 4
@HPET_MIN_CYCLES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eventtimer*, i32, i32)* @hpet_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpet_start(%struct.eventtimer* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.eventtimer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hpet_timer*, align 8
  %8 = alloca %struct.hpet_timer*, align 8
  %9 = alloca %struct.hpet_softc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.eventtimer* %0, %struct.eventtimer** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.eventtimer*, %struct.eventtimer** %4, align 8
  %13 = getelementptr inbounds %struct.eventtimer, %struct.eventtimer* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.hpet_timer*
  store %struct.hpet_timer* %15, %struct.hpet_timer** %7, align 8
  %16 = load %struct.hpet_timer*, %struct.hpet_timer** %7, align 8
  %17 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %16, i32 0, i32 8
  %18 = load %struct.hpet_softc*, %struct.hpet_softc** %17, align 8
  store %struct.hpet_softc* %18, %struct.hpet_softc** %9, align 8
  %19 = load %struct.hpet_timer*, %struct.hpet_timer** %7, align 8
  %20 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load %struct.hpet_timer*, %struct.hpet_timer** %7, align 8
  br label %36

25:                                               ; preds = %3
  %26 = load %struct.hpet_softc*, %struct.hpet_softc** %9, align 8
  %27 = getelementptr inbounds %struct.hpet_softc, %struct.hpet_softc* %26, i32 0, i32 2
  %28 = load %struct.hpet_timer*, %struct.hpet_timer** %27, align 8
  %29 = load %struct.hpet_timer*, %struct.hpet_timer** %7, align 8
  %30 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %29, i32 0, i32 1
  %31 = load i64*, i64** %30, align 8
  %32 = load i64, i64* @curcpu, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %28, i64 %34
  br label %36

36:                                               ; preds = %25, %23
  %37 = phi %struct.hpet_timer* [ %24, %23 ], [ %35, %25 ]
  store %struct.hpet_timer* %37, %struct.hpet_timer** %8, align 8
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %36
  %41 = load i64, i64* @TIMER_PERIODIC, align 8
  %42 = load %struct.hpet_timer*, %struct.hpet_timer** %8, align 8
  %43 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %42, i32 0, i32 2
  store i64 %41, i64* %43, align 8
  %44 = load %struct.hpet_softc*, %struct.hpet_softc** %9, align 8
  %45 = getelementptr inbounds %struct.hpet_softc, %struct.hpet_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = mul nsw i32 %46, %47
  %49 = ashr i32 %48, 32
  %50 = load %struct.hpet_timer*, %struct.hpet_timer** %8, align 8
  %51 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 8
  br label %58

52:                                               ; preds = %36
  %53 = load i64, i64* @TIMER_ONESHOT, align 8
  %54 = load %struct.hpet_timer*, %struct.hpet_timer** %8, align 8
  %55 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %54, i32 0, i32 2
  store i64 %53, i64* %55, align 8
  %56 = load %struct.hpet_timer*, %struct.hpet_timer** %8, align 8
  %57 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %56, i32 0, i32 3
  store i32 0, i32* %57, align 8
  br label %58

58:                                               ; preds = %52, %40
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %58
  %62 = load %struct.hpet_softc*, %struct.hpet_softc** %9, align 8
  %63 = getelementptr inbounds %struct.hpet_softc, %struct.hpet_softc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = mul nsw i32 %64, %65
  %67 = ashr i32 %66, 32
  store i32 %67, i32* %10, align 4
  br label %72

68:                                               ; preds = %58
  %69 = load %struct.hpet_timer*, %struct.hpet_timer** %8, align 8
  %70 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %68, %61
  %73 = load %struct.hpet_timer*, %struct.hpet_timer** %8, align 8
  %74 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = icmp slt i64 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %72
  %78 = load %struct.hpet_softc*, %struct.hpet_softc** %9, align 8
  %79 = getelementptr inbounds %struct.hpet_softc, %struct.hpet_softc* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @HPET_ISR, align 4
  %82 = load %struct.hpet_timer*, %struct.hpet_timer** %8, align 8
  %83 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 8
  %85 = shl i32 1, %84
  %86 = call i32 @bus_write_4(i32 %80, i32 %81, i32 %85)
  br label %87

87:                                               ; preds = %77, %72
  %88 = load i32, i32* @HPET_TCNF_INT_ENB, align 4
  %89 = load %struct.hpet_timer*, %struct.hpet_timer** %8, align 8
  %90 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 4
  %93 = load %struct.hpet_softc*, %struct.hpet_softc** %9, align 8
  %94 = getelementptr inbounds %struct.hpet_softc, %struct.hpet_softc* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @HPET_MAIN_COUNTER, align 4
  %97 = call i32 @bus_read_4(i32 %95, i32 %96)
  store i32 %97, i32* %11, align 4
  br label %98

98:                                               ; preds = %201, %87
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* %10, align 4
  %101 = add nsw i32 %99, %100
  %102 = load %struct.hpet_timer*, %struct.hpet_timer** %8, align 8
  %103 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %102, i32 0, i32 7
  store i32 %101, i32* %103, align 8
  %104 = load %struct.hpet_timer*, %struct.hpet_timer** %8, align 8
  %105 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @TIMER_PERIODIC, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %157

109:                                              ; preds = %98
  %110 = load %struct.hpet_timer*, %struct.hpet_timer** %8, align 8
  %111 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %110, i32 0, i32 6
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @HPET_TCAP_PER_INT, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %157

116:                                              ; preds = %109
  %117 = load i32, i32* @HPET_TCNF_TYPE, align 4
  %118 = load %struct.hpet_timer*, %struct.hpet_timer** %8, align 8
  %119 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %118, i32 0, i32 6
  %120 = load i32, i32* %119, align 4
  %121 = or i32 %120, %117
  store i32 %121, i32* %119, align 4
  %122 = load %struct.hpet_softc*, %struct.hpet_softc** %9, align 8
  %123 = getelementptr inbounds %struct.hpet_softc, %struct.hpet_softc* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.hpet_timer*, %struct.hpet_timer** %8, align 8
  %126 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @HPET_TIMER_CAP_CNF(i32 %127)
  %129 = load %struct.hpet_timer*, %struct.hpet_timer** %8, align 8
  %130 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %129, i32 0, i32 6
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @HPET_TCNF_VAL_SET, align 4
  %133 = or i32 %131, %132
  %134 = call i32 @bus_write_4(i32 %124, i32 %128, i32 %133)
  %135 = load %struct.hpet_softc*, %struct.hpet_softc** %9, align 8
  %136 = getelementptr inbounds %struct.hpet_softc, %struct.hpet_softc* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.hpet_timer*, %struct.hpet_timer** %8, align 8
  %139 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @HPET_TIMER_COMPARATOR(i32 %140)
  %142 = load %struct.hpet_timer*, %struct.hpet_timer** %8, align 8
  %143 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %142, i32 0, i32 7
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @bus_write_4(i32 %137, i32 %141, i32 %144)
  %146 = load %struct.hpet_softc*, %struct.hpet_softc** %9, align 8
  %147 = getelementptr inbounds %struct.hpet_softc, %struct.hpet_softc* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.hpet_timer*, %struct.hpet_timer** %8, align 8
  %150 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @HPET_TIMER_COMPARATOR(i32 %151)
  %153 = load %struct.hpet_timer*, %struct.hpet_timer** %8, align 8
  %154 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @bus_write_4(i32 %148, i32 %152, i32 %155)
  br label %186

157:                                              ; preds = %109, %98
  %158 = load i32, i32* @HPET_TCNF_TYPE, align 4
  %159 = xor i32 %158, -1
  %160 = load %struct.hpet_timer*, %struct.hpet_timer** %8, align 8
  %161 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %160, i32 0, i32 6
  %162 = load i32, i32* %161, align 4
  %163 = and i32 %162, %159
  store i32 %163, i32* %161, align 4
  %164 = load %struct.hpet_softc*, %struct.hpet_softc** %9, align 8
  %165 = getelementptr inbounds %struct.hpet_softc, %struct.hpet_softc* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.hpet_timer*, %struct.hpet_timer** %8, align 8
  %168 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %167, i32 0, i32 5
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @HPET_TIMER_CAP_CNF(i32 %169)
  %171 = load %struct.hpet_timer*, %struct.hpet_timer** %8, align 8
  %172 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %171, i32 0, i32 6
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @bus_write_4(i32 %166, i32 %170, i32 %173)
  %175 = load %struct.hpet_softc*, %struct.hpet_softc** %9, align 8
  %176 = getelementptr inbounds %struct.hpet_softc, %struct.hpet_softc* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.hpet_timer*, %struct.hpet_timer** %8, align 8
  %179 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %178, i32 0, i32 5
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @HPET_TIMER_COMPARATOR(i32 %180)
  %182 = load %struct.hpet_timer*, %struct.hpet_timer** %8, align 8
  %183 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %182, i32 0, i32 7
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @bus_write_4(i32 %177, i32 %181, i32 %184)
  br label %186

186:                                              ; preds = %157, %116
  %187 = load %struct.hpet_softc*, %struct.hpet_softc** %9, align 8
  %188 = getelementptr inbounds %struct.hpet_softc, %struct.hpet_softc* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @HPET_MAIN_COUNTER, align 4
  %191 = call i32 @bus_read_4(i32 %189, i32 %190)
  store i32 %191, i32* %11, align 4
  %192 = load i32, i32* %11, align 4
  %193 = load %struct.hpet_timer*, %struct.hpet_timer** %8, align 8
  %194 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %193, i32 0, i32 7
  %195 = load i32, i32* %194, align 8
  %196 = sub nsw i32 %192, %195
  %197 = load i32, i32* @HPET_MIN_CYCLES, align 4
  %198 = add nsw i32 %196, %197
  %199 = sext i32 %198 to i64
  %200 = icmp sge i64 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %186
  %202 = load i32, i32* %10, align 4
  %203 = mul nsw i32 %202, 2
  store i32 %203, i32* %10, align 4
  br label %98

204:                                              ; preds = %186
  ret i32 0
}

declare dso_local i32 @bus_write_4(i32, i32, i32) #1

declare dso_local i32 @bus_read_4(i32, i32) #1

declare dso_local i32 @HPET_TIMER_CAP_CNF(i32) #1

declare dso_local i32 @HPET_TIMER_COMPARATOR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
