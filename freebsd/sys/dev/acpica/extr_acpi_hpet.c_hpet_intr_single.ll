; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_hpet.c_hpet_intr_single.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_hpet.c_hpet_intr_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpet_timer = type { i64, i64, i32, i32, i32, i32, i64, %struct.TYPE_2__, i8*, %struct.hpet_softc* }
%struct.TYPE_2__ = type { i32, i32 (%struct.TYPE_2__*, i32)*, i64 }
%struct.hpet_softc = type { i32, %struct.hpet_timer*, i32 }

@TIMER_STOPPED = common dso_local global i64 0, align 8
@FILTER_STRAY = common dso_local global i32 0, align 4
@curcpu = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [65 x i8] c"HPET interrupt routed to the wrong CPU (timer %d CPU %d -> %d)!\0A\00", align 1
@TIMER_PERIODIC = common dso_local global i64 0, align 8
@HPET_TCAP_PER_INT = common dso_local global i32 0, align 4
@TIMER_ONESHOT = common dso_local global i64 0, align 8
@HPET_MAIN_COUNTER = common dso_local global i32 0, align 4
@FILTER_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @hpet_intr_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpet_intr_single(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.hpet_timer*, align 8
  %5 = alloca %struct.hpet_timer*, align 8
  %6 = alloca %struct.hpet_softc*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.hpet_timer*
  store %struct.hpet_timer* %9, %struct.hpet_timer** %4, align 8
  %10 = load %struct.hpet_timer*, %struct.hpet_timer** %4, align 8
  %11 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %10, i32 0, i32 9
  %12 = load %struct.hpet_softc*, %struct.hpet_softc** %11, align 8
  store %struct.hpet_softc* %12, %struct.hpet_softc** %6, align 8
  %13 = load %struct.hpet_timer*, %struct.hpet_timer** %4, align 8
  %14 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @TIMER_STOPPED, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @FILTER_STRAY, align 4
  store i32 %19, i32* %2, align 4
  br label %203

20:                                               ; preds = %1
  %21 = load %struct.hpet_timer*, %struct.hpet_timer** %4, align 8
  %22 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp sge i64 %23, 0
  br i1 %24, label %25, label %93

25:                                               ; preds = %20
  %26 = load %struct.hpet_timer*, %struct.hpet_timer** %4, align 8
  %27 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @curcpu, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %93

31:                                               ; preds = %25
  %32 = load %struct.hpet_timer*, %struct.hpet_timer** %4, align 8
  %33 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 8
  %36 = srem i32 %35, 32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %31
  %39 = load %struct.hpet_timer*, %struct.hpet_timer** %4, align 8
  %40 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.hpet_timer*, %struct.hpet_timer** %4, align 8
  %43 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @curcpu, align 8
  %46 = call i32 @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %41, i64 %44, i64 %45)
  br label %47

47:                                               ; preds = %38, %31
  %48 = load %struct.hpet_timer*, %struct.hpet_timer** %4, align 8
  %49 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @TIMER_PERIODIC, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = load %struct.hpet_timer*, %struct.hpet_timer** %4, align 8
  %55 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @HPET_TCAP_PER_INT, align 4
  %58 = and i32 %56, %57
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %53, %47
  %61 = load %struct.hpet_timer*, %struct.hpet_timer** %4, align 8
  %62 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @TIMER_ONESHOT, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %91

66:                                               ; preds = %60, %53
  %67 = load %struct.hpet_softc*, %struct.hpet_softc** %6, align 8
  %68 = getelementptr inbounds %struct.hpet_softc, %struct.hpet_softc* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @HPET_MAIN_COUNTER, align 4
  %71 = call i8* @bus_read_4(i32 %69, i32 %70)
  %72 = load %struct.hpet_softc*, %struct.hpet_softc** %6, align 8
  %73 = getelementptr inbounds %struct.hpet_softc, %struct.hpet_softc* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sdiv i32 %74, 8
  %76 = sext i32 %75 to i64
  %77 = getelementptr i8, i8* %71, i64 %76
  %78 = load %struct.hpet_timer*, %struct.hpet_timer** %4, align 8
  %79 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %78, i32 0, i32 8
  store i8* %77, i8** %79, align 8
  %80 = load %struct.hpet_softc*, %struct.hpet_softc** %6, align 8
  %81 = getelementptr inbounds %struct.hpet_softc, %struct.hpet_softc* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.hpet_timer*, %struct.hpet_timer** %4, align 8
  %84 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @HPET_TIMER_COMPARATOR(i32 %85)
  %87 = load %struct.hpet_timer*, %struct.hpet_timer** %4, align 8
  %88 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %87, i32 0, i32 8
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @bus_write_4(i32 %82, i32 %86, i8* %89)
  br label %91

91:                                               ; preds = %66, %60
  %92 = load i32, i32* @FILTER_HANDLED, align 4
  store i32 %92, i32* %2, align 4
  br label %203

93:                                               ; preds = %25, %20
  %94 = load %struct.hpet_timer*, %struct.hpet_timer** %4, align 8
  %95 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @TIMER_PERIODIC, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %156

99:                                               ; preds = %93
  %100 = load %struct.hpet_timer*, %struct.hpet_timer** %4, align 8
  %101 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @HPET_TCAP_PER_INT, align 4
  %104 = and i32 %102, %103
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %156

106:                                              ; preds = %99
  %107 = load %struct.hpet_timer*, %struct.hpet_timer** %4, align 8
  %108 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.hpet_timer*, %struct.hpet_timer** %4, align 8
  %111 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %110, i32 0, i32 8
  %112 = load i8*, i8** %111, align 8
  %113 = sext i32 %109 to i64
  %114 = getelementptr i8, i8* %112, i64 %113
  store i8* %114, i8** %111, align 8
  %115 = load %struct.hpet_softc*, %struct.hpet_softc** %6, align 8
  %116 = getelementptr inbounds %struct.hpet_softc, %struct.hpet_softc* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @HPET_MAIN_COUNTER, align 4
  %119 = call i8* @bus_read_4(i32 %117, i32 %118)
  store i8* %119, i8** %7, align 8
  %120 = load i8*, i8** %7, align 8
  %121 = load %struct.hpet_timer*, %struct.hpet_timer** %4, align 8
  %122 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 4
  %124 = sdiv i32 %123, 2
  %125 = sext i32 %124 to i64
  %126 = getelementptr i8, i8* %120, i64 %125
  %127 = load %struct.hpet_timer*, %struct.hpet_timer** %4, align 8
  %128 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %127, i32 0, i32 8
  %129 = load i8*, i8** %128, align 8
  %130 = ptrtoint i8* %126 to i64
  %131 = ptrtoint i8* %129 to i64
  %132 = sub i64 %130, %131
  %133 = icmp sgt i64 %132, 0
  br i1 %133, label %134, label %144

134:                                              ; preds = %106
  %135 = load i8*, i8** %7, align 8
  %136 = load %struct.hpet_timer*, %struct.hpet_timer** %4, align 8
  %137 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 4
  %139 = sdiv i32 %138, 2
  %140 = sext i32 %139 to i64
  %141 = getelementptr i8, i8* %135, i64 %140
  %142 = load %struct.hpet_timer*, %struct.hpet_timer** %4, align 8
  %143 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %142, i32 0, i32 8
  store i8* %141, i8** %143, align 8
  br label %144

144:                                              ; preds = %134, %106
  %145 = load %struct.hpet_softc*, %struct.hpet_softc** %6, align 8
  %146 = getelementptr inbounds %struct.hpet_softc, %struct.hpet_softc* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.hpet_timer*, %struct.hpet_timer** %4, align 8
  %149 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @HPET_TIMER_COMPARATOR(i32 %150)
  %152 = load %struct.hpet_timer*, %struct.hpet_timer** %4, align 8
  %153 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %152, i32 0, i32 8
  %154 = load i8*, i8** %153, align 8
  %155 = call i32 @bus_write_4(i32 %147, i32 %151, i8* %154)
  br label %167

156:                                              ; preds = %99, %93
  %157 = load %struct.hpet_timer*, %struct.hpet_timer** %4, align 8
  %158 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @TIMER_ONESHOT, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %166

162:                                              ; preds = %156
  %163 = load i64, i64* @TIMER_STOPPED, align 8
  %164 = load %struct.hpet_timer*, %struct.hpet_timer** %4, align 8
  %165 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %164, i32 0, i32 0
  store i64 %163, i64* %165, align 8
  br label %166

166:                                              ; preds = %162, %156
  br label %167

167:                                              ; preds = %166, %144
  %168 = load %struct.hpet_timer*, %struct.hpet_timer** %4, align 8
  %169 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %168, i32 0, i32 6
  %170 = load i64, i64* %169, align 8
  %171 = icmp ult i64 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %167
  %173 = load %struct.hpet_timer*, %struct.hpet_timer** %4, align 8
  br label %182

174:                                              ; preds = %167
  %175 = load %struct.hpet_softc*, %struct.hpet_softc** %6, align 8
  %176 = getelementptr inbounds %struct.hpet_softc, %struct.hpet_softc* %175, i32 0, i32 1
  %177 = load %struct.hpet_timer*, %struct.hpet_timer** %176, align 8
  %178 = load %struct.hpet_timer*, %struct.hpet_timer** %4, align 8
  %179 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %178, i32 0, i32 6
  %180 = load i64, i64* %179, align 8
  %181 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %177, i64 %180
  br label %182

182:                                              ; preds = %174, %172
  %183 = phi %struct.hpet_timer* [ %173, %172 ], [ %181, %174 ]
  store %struct.hpet_timer* %183, %struct.hpet_timer** %5, align 8
  %184 = load %struct.hpet_timer*, %struct.hpet_timer** %5, align 8
  %185 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %184, i32 0, i32 7
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %201

189:                                              ; preds = %182
  %190 = load %struct.hpet_timer*, %struct.hpet_timer** %5, align 8
  %191 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %190, i32 0, i32 7
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 1
  %193 = load i32 (%struct.TYPE_2__*, i32)*, i32 (%struct.TYPE_2__*, i32)** %192, align 8
  %194 = load %struct.hpet_timer*, %struct.hpet_timer** %5, align 8
  %195 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %194, i32 0, i32 7
  %196 = load %struct.hpet_timer*, %struct.hpet_timer** %5, align 8
  %197 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %196, i32 0, i32 7
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = call i32 %193(%struct.TYPE_2__* %195, i32 %199)
  br label %201

201:                                              ; preds = %189, %182
  %202 = load i32, i32* @FILTER_HANDLED, align 4
  store i32 %202, i32* %2, align 4
  br label %203

203:                                              ; preds = %201, %91, %18
  %204 = load i32, i32* %2, align 4
  ret i32 %204
}

declare dso_local i32 @printf(i8*, i32, i64, i64) #1

declare dso_local i8* @bus_read_4(i32, i32) #1

declare dso_local i32 @bus_write_4(i32, i32, i8*) #1

declare dso_local i32 @HPET_TIMER_COMPARATOR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
