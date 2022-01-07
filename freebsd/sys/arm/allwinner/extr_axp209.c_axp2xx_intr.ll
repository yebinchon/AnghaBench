; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_axp209.c_axp2xx_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_axp209.c_axp2xx_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axp2xx_softc = type { i32 }

@AXP2XX_IRQ1_STATUS = common dso_local global i32 0, align 4
@AXP2XX_IRQ1_AC_OVERVOLT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"PMU\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"AC\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"overvoltage\00", align 1
@AXP2XX_IRQ1_VBUS_OVERVOLT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"USB\00", align 1
@AXP2XX_IRQ1_VBUS_LOW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"undervoltage\00", align 1
@AXP2XX_IRQ1_AC_CONN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"plugged\00", align 1
@AXP2XX_IRQ1_AC_DISCONN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"unplugged\00", align 1
@AXP2XX_IRQ1_VBUS_CONN = common dso_local global i32 0, align 4
@AXP2XX_IRQ1_VBUS_DISCONN = common dso_local global i32 0, align 4
@AXP2XX_IRQ_ACK = common dso_local global i32 0, align 4
@AXP2XX_IRQ2_STATUS = common dso_local global i32 0, align 4
@AXP2XX_IRQ2_BATT_CHARGED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"Battery\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"charged\00", align 1
@AXP2XX_IRQ2_BATT_CHARGING = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"charging\00", align 1
@AXP2XX_IRQ2_BATT_CONN = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [10 x i8] c"connected\00", align 1
@AXP2XX_IRQ2_BATT_DISCONN = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [13 x i8] c"disconnected\00", align 1
@AXP2XX_IRQ2_BATT_TEMP_LOW = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [9 x i8] c"low temp\00", align 1
@AXP2XX_IRQ2_BATT_TEMP_OVER = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [10 x i8] c"high temp\00", align 1
@AXP2XX_IRQ3_STATUS = common dso_local global i32 0, align 4
@AXP2XX_IRQ3_PEK_SHORT = common dso_local global i32 0, align 4
@RB_POWEROFF = common dso_local global i32 0, align 4
@AXP2XX_IRQ4_STATUS = common dso_local global i32 0, align 4
@AXP2XX_IRQ5_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @axp2xx_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @axp2xx_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.axp2xx_softc*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.axp2xx_softc*
  store %struct.axp2xx_softc* %6, %struct.axp2xx_softc** %3, align 8
  %7 = load %struct.axp2xx_softc*, %struct.axp2xx_softc** %3, align 8
  %8 = getelementptr inbounds %struct.axp2xx_softc, %struct.axp2xx_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @AXP2XX_IRQ1_STATUS, align 4
  %11 = call i32 @axp2xx_read(i32 %9, i32 %10, i32* %4, i32 1)
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %70

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @AXP2XX_IRQ1_AC_OVERVOLT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = call i32 @devctl_notify(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* null)
  br label %21

21:                                               ; preds = %19, %14
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @AXP2XX_IRQ1_VBUS_OVERVOLT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = call i32 @devctl_notify(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* null)
  br label %28

28:                                               ; preds = %26, %21
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @AXP2XX_IRQ1_VBUS_LOW, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = call i32 @devctl_notify(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32* null)
  br label %35

35:                                               ; preds = %33, %28
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @AXP2XX_IRQ1_AC_CONN, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = call i32 @devctl_notify(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32* null)
  br label %42

42:                                               ; preds = %40, %35
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @AXP2XX_IRQ1_AC_DISCONN, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = call i32 @devctl_notify(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32* null)
  br label %49

49:                                               ; preds = %47, %42
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @AXP2XX_IRQ1_VBUS_CONN, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = call i32 @devctl_notify(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32* null)
  br label %56

56:                                               ; preds = %54, %49
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @AXP2XX_IRQ1_VBUS_DISCONN, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = call i32 @devctl_notify(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32* null)
  br label %63

63:                                               ; preds = %61, %56
  %64 = load %struct.axp2xx_softc*, %struct.axp2xx_softc** %3, align 8
  %65 = getelementptr inbounds %struct.axp2xx_softc, %struct.axp2xx_softc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @AXP2XX_IRQ1_STATUS, align 4
  %68 = load i32, i32* @AXP2XX_IRQ_ACK, align 4
  %69 = call i32 @axp2xx_write(i32 %66, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %63, %1
  %71 = load %struct.axp2xx_softc*, %struct.axp2xx_softc** %3, align 8
  %72 = getelementptr inbounds %struct.axp2xx_softc, %struct.axp2xx_softc* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @AXP2XX_IRQ2_STATUS, align 4
  %75 = call i32 @axp2xx_read(i32 %73, i32 %74, i32* %4, i32 1)
  %76 = load i32, i32* %4, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %127

78:                                               ; preds = %70
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @AXP2XX_IRQ2_BATT_CHARGED, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = call i32 @devctl_notify(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32* null)
  br label %85

85:                                               ; preds = %83, %78
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @AXP2XX_IRQ2_BATT_CHARGING, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = call i32 @devctl_notify(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32* null)
  br label %92

92:                                               ; preds = %90, %85
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* @AXP2XX_IRQ2_BATT_CONN, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = call i32 @devctl_notify(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32* null)
  br label %99

99:                                               ; preds = %97, %92
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* @AXP2XX_IRQ2_BATT_DISCONN, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %99
  %105 = call i32 @devctl_notify(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i32* null)
  br label %106

106:                                              ; preds = %104, %99
  %107 = load i32, i32* %4, align 4
  %108 = load i32, i32* @AXP2XX_IRQ2_BATT_TEMP_LOW, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %106
  %112 = call i32 @devctl_notify(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i32* null)
  br label %113

113:                                              ; preds = %111, %106
  %114 = load i32, i32* %4, align 4
  %115 = load i32, i32* @AXP2XX_IRQ2_BATT_TEMP_OVER, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %113
  %119 = call i32 @devctl_notify(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32* null)
  br label %120

120:                                              ; preds = %118, %113
  %121 = load %struct.axp2xx_softc*, %struct.axp2xx_softc** %3, align 8
  %122 = getelementptr inbounds %struct.axp2xx_softc, %struct.axp2xx_softc* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @AXP2XX_IRQ2_STATUS, align 4
  %125 = load i32, i32* @AXP2XX_IRQ_ACK, align 4
  %126 = call i32 @axp2xx_write(i32 %123, i32 %124, i32 %125)
  br label %127

127:                                              ; preds = %120, %70
  %128 = load %struct.axp2xx_softc*, %struct.axp2xx_softc** %3, align 8
  %129 = getelementptr inbounds %struct.axp2xx_softc, %struct.axp2xx_softc* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @AXP2XX_IRQ3_STATUS, align 4
  %132 = call i32 @axp2xx_read(i32 %130, i32 %131, i32* %4, i32 1)
  %133 = load i32, i32* %4, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %150

135:                                              ; preds = %127
  %136 = load i32, i32* %4, align 4
  %137 = load i32, i32* @AXP2XX_IRQ3_PEK_SHORT, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %135
  %141 = load i32, i32* @RB_POWEROFF, align 4
  %142 = call i32 @shutdown_nice(i32 %141)
  br label %143

143:                                              ; preds = %140, %135
  %144 = load %struct.axp2xx_softc*, %struct.axp2xx_softc** %3, align 8
  %145 = getelementptr inbounds %struct.axp2xx_softc, %struct.axp2xx_softc* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @AXP2XX_IRQ3_STATUS, align 4
  %148 = load i32, i32* @AXP2XX_IRQ_ACK, align 4
  %149 = call i32 @axp2xx_write(i32 %146, i32 %147, i32 %148)
  br label %150

150:                                              ; preds = %143, %127
  %151 = load %struct.axp2xx_softc*, %struct.axp2xx_softc** %3, align 8
  %152 = getelementptr inbounds %struct.axp2xx_softc, %struct.axp2xx_softc* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @AXP2XX_IRQ4_STATUS, align 4
  %155 = call i32 @axp2xx_read(i32 %153, i32 %154, i32* %4, i32 1)
  %156 = load i32, i32* %4, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %165

158:                                              ; preds = %150
  %159 = load %struct.axp2xx_softc*, %struct.axp2xx_softc** %3, align 8
  %160 = getelementptr inbounds %struct.axp2xx_softc, %struct.axp2xx_softc* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @AXP2XX_IRQ4_STATUS, align 4
  %163 = load i32, i32* @AXP2XX_IRQ_ACK, align 4
  %164 = call i32 @axp2xx_write(i32 %161, i32 %162, i32 %163)
  br label %165

165:                                              ; preds = %158, %150
  %166 = load %struct.axp2xx_softc*, %struct.axp2xx_softc** %3, align 8
  %167 = getelementptr inbounds %struct.axp2xx_softc, %struct.axp2xx_softc* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @AXP2XX_IRQ5_STATUS, align 4
  %170 = call i32 @axp2xx_read(i32 %168, i32 %169, i32* %4, i32 1)
  %171 = load i32, i32* %4, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %180

173:                                              ; preds = %165
  %174 = load %struct.axp2xx_softc*, %struct.axp2xx_softc** %3, align 8
  %175 = getelementptr inbounds %struct.axp2xx_softc, %struct.axp2xx_softc* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @AXP2XX_IRQ5_STATUS, align 4
  %178 = load i32, i32* @AXP2XX_IRQ_ACK, align 4
  %179 = call i32 @axp2xx_write(i32 %176, i32 %177, i32 %178)
  br label %180

180:                                              ; preds = %173, %165
  ret void
}

declare dso_local i32 @axp2xx_read(i32, i32, i32*, i32) #1

declare dso_local i32 @devctl_notify(i8*, i8*, i8*, i32*) #1

declare dso_local i32 @axp2xx_write(i32, i32, i32) #1

declare dso_local i32 @shutdown_nice(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
