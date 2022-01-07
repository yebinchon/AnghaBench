; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_intr.c_bcm2835_intc_active_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_intr.c_bcm2835_intc_active_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_intc_softc = type { i32 }

@INTC_PENDING_BASIC = common dso_local global i32 0, align 4
@INTC_PENDING_BASIC_MASK = common dso_local global i32 0, align 4
@INTC_PENDING_BASIC_ARM = common dso_local global i32 0, align 4
@INTC_PENDING_BASIC_GPU1_MASK = common dso_local global i32 0, align 4
@INTC_PENDING_BASIC_GPU1_7 = common dso_local global i32 0, align 4
@BANK1_START = common dso_local global i32 0, align 4
@INTC_PENDING_BASIC_GPU1_9 = common dso_local global i32 0, align 4
@INTC_PENDING_BASIC_GPU1_10 = common dso_local global i32 0, align 4
@INTC_PENDING_BASIC_GPU1_18 = common dso_local global i32 0, align 4
@INTC_PENDING_BASIC_GPU1_19 = common dso_local global i32 0, align 4
@INTC_PENDING_BASIC_GPU2_MASK = common dso_local global i32 0, align 4
@INTC_PENDING_BASIC_GPU2_21 = common dso_local global i32 0, align 4
@BANK2_START = common dso_local global i32 0, align 4
@INTC_PENDING_BASIC_GPU2_22 = common dso_local global i32 0, align 4
@INTC_PENDING_BASIC_GPU2_23 = common dso_local global i32 0, align 4
@INTC_PENDING_BASIC_GPU2_24 = common dso_local global i32 0, align 4
@INTC_PENDING_BASIC_GPU2_25 = common dso_local global i32 0, align 4
@INTC_PENDING_BASIC_GPU2_30 = common dso_local global i32 0, align 4
@INTC_PENDING_BASIC_GPU1_PEND = common dso_local global i32 0, align 4
@INTC_PENDING_BANK1 = common dso_local global i32 0, align 4
@INTC_PENDING_BANK1_MASK = common dso_local global i32 0, align 4
@INTC_PENDING_BASIC_GPU2_PEND = common dso_local global i32 0, align 4
@INTC_PENDING_BANK2 = common dso_local global i32 0, align 4
@INTC_PENDING_BANK2_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm_intc_softc*)* @bcm2835_intc_active_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835_intc_active_intr(%struct.bcm_intc_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bcm_intc_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bcm_intc_softc* %0, %struct.bcm_intc_softc** %3, align 8
  %6 = load %struct.bcm_intc_softc*, %struct.bcm_intc_softc** %3, align 8
  %7 = load i32, i32* @INTC_PENDING_BASIC, align 4
  %8 = call i32 @intc_read_4(%struct.bcm_intc_softc* %6, i32 %7)
  %9 = load i32, i32* @INTC_PENDING_BASIC_MASK, align 4
  %10 = and i32 %8, %9
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %166

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @INTC_PENDING_BASIC_ARM, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @ffs(i32 %20)
  %22 = sub nsw i32 %21, 1
  store i32 %22, i32* %2, align 4
  br label %166

23:                                               ; preds = %14
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @INTC_PENDING_BASIC_GPU1_MASK, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %69

28:                                               ; preds = %23
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @INTC_PENDING_BASIC_GPU1_7, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @BANK1_START, align 4
  %35 = add nsw i32 %34, 7
  store i32 %35, i32* %2, align 4
  br label %166

36:                                               ; preds = %28
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @INTC_PENDING_BASIC_GPU1_9, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* @BANK1_START, align 4
  %43 = add nsw i32 %42, 9
  store i32 %43, i32* %2, align 4
  br label %166

44:                                               ; preds = %36
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @INTC_PENDING_BASIC_GPU1_10, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* @BANK1_START, align 4
  %51 = add nsw i32 %50, 10
  store i32 %51, i32* %2, align 4
  br label %166

52:                                               ; preds = %44
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @INTC_PENDING_BASIC_GPU1_18, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, i32* @BANK1_START, align 4
  %59 = add nsw i32 %58, 18
  store i32 %59, i32* %2, align 4
  br label %166

60:                                               ; preds = %52
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @INTC_PENDING_BASIC_GPU1_19, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i32, i32* @BANK1_START, align 4
  %67 = add nsw i32 %66, 19
  store i32 %67, i32* %2, align 4
  br label %166

68:                                               ; preds = %60
  br label %69

69:                                               ; preds = %68, %23
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @INTC_PENDING_BASIC_GPU2_MASK, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %123

74:                                               ; preds = %69
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @INTC_PENDING_BASIC_GPU2_21, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load i32, i32* @BANK2_START, align 4
  %81 = add nsw i32 %80, 21
  store i32 %81, i32* %2, align 4
  br label %166

82:                                               ; preds = %74
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @INTC_PENDING_BASIC_GPU2_22, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i32, i32* @BANK2_START, align 4
  %89 = add nsw i32 %88, 22
  store i32 %89, i32* %2, align 4
  br label %166

90:                                               ; preds = %82
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* @INTC_PENDING_BASIC_GPU2_23, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load i32, i32* @BANK2_START, align 4
  %97 = add nsw i32 %96, 23
  store i32 %97, i32* %2, align 4
  br label %166

98:                                               ; preds = %90
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* @INTC_PENDING_BASIC_GPU2_24, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load i32, i32* @BANK2_START, align 4
  %105 = add nsw i32 %104, 24
  store i32 %105, i32* %2, align 4
  br label %166

106:                                              ; preds = %98
  %107 = load i32, i32* %4, align 4
  %108 = load i32, i32* @INTC_PENDING_BASIC_GPU2_25, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load i32, i32* @BANK2_START, align 4
  %113 = add nsw i32 %112, 25
  store i32 %113, i32* %2, align 4
  br label %166

114:                                              ; preds = %106
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* @INTC_PENDING_BASIC_GPU2_30, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = load i32, i32* @BANK2_START, align 4
  %121 = add nsw i32 %120, 30
  store i32 %121, i32* %2, align 4
  br label %166

122:                                              ; preds = %114
  br label %123

123:                                              ; preds = %122, %69
  %124 = load i32, i32* %4, align 4
  %125 = load i32, i32* @INTC_PENDING_BASIC_GPU1_PEND, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %144

128:                                              ; preds = %123
  %129 = load %struct.bcm_intc_softc*, %struct.bcm_intc_softc** %3, align 8
  %130 = load i32, i32* @INTC_PENDING_BANK1, align 4
  %131 = call i32 @intc_read_4(%struct.bcm_intc_softc* %129, i32 %130)
  store i32 %131, i32* %5, align 4
  %132 = load i32, i32* @INTC_PENDING_BANK1_MASK, align 4
  %133 = load i32, i32* %5, align 4
  %134 = and i32 %133, %132
  store i32 %134, i32* %5, align 4
  %135 = load i32, i32* %5, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %128
  %138 = load i32, i32* @BANK1_START, align 4
  %139 = load i32, i32* %5, align 4
  %140 = call i32 @ffs(i32 %139)
  %141 = add nsw i32 %138, %140
  %142 = sub nsw i32 %141, 1
  store i32 %142, i32* %2, align 4
  br label %166

143:                                              ; preds = %128
  br label %144

144:                                              ; preds = %143, %123
  %145 = load i32, i32* %4, align 4
  %146 = load i32, i32* @INTC_PENDING_BASIC_GPU2_PEND, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %165

149:                                              ; preds = %144
  %150 = load %struct.bcm_intc_softc*, %struct.bcm_intc_softc** %3, align 8
  %151 = load i32, i32* @INTC_PENDING_BANK2, align 4
  %152 = call i32 @intc_read_4(%struct.bcm_intc_softc* %150, i32 %151)
  store i32 %152, i32* %5, align 4
  %153 = load i32, i32* @INTC_PENDING_BANK2_MASK, align 4
  %154 = load i32, i32* %5, align 4
  %155 = and i32 %154, %153
  store i32 %155, i32* %5, align 4
  %156 = load i32, i32* %5, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %149
  %159 = load i32, i32* @BANK2_START, align 4
  %160 = load i32, i32* %5, align 4
  %161 = call i32 @ffs(i32 %160)
  %162 = add nsw i32 %159, %161
  %163 = sub nsw i32 %162, 1
  store i32 %163, i32* %2, align 4
  br label %166

164:                                              ; preds = %149
  br label %165

165:                                              ; preds = %164, %144
  store i32 -1, i32* %2, align 4
  br label %166

166:                                              ; preds = %165, %158, %137, %119, %111, %103, %95, %87, %79, %65, %57, %49, %41, %33, %19, %13
  %167 = load i32, i32* %2, align 4
  ret i32 %167
}

declare dso_local i32 @intc_read_4(%struct.bcm_intc_softc*, i32) #1

declare dso_local i32 @ffs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
