; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_chrome_kb.c_ckb_read_char_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_chrome_kb.c_ckb_read_char_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.ckb_softc* }
%struct.ckb_softc = type { i32, i32, i32*, i32, i32, i32*, i32, i32, i32, i64 }

@NOKEY = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@ckb_repeat = common dso_local global i32 0, align 4
@CKB_FLAG_POLLING = common dso_local global i32 0, align 4
@EC_CMD_MKBP_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32)* @ckb_read_char_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ckb_read_char_locked(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ckb_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.ckb_softc*, %struct.ckb_softc** %14, align 8
  store %struct.ckb_softc* %15, %struct.ckb_softc** %6, align 8
  %16 = call i32 (...) @CKB_CTX_LOCK_ASSERT()
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = call i32 @KBD_IS_ACTIVE(%struct.TYPE_4__* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @NOKEY, align 4
  store i32 %21, i32* %3, align 4
  br label %186

22:                                               ; preds = %2
  %23 = load %struct.ckb_softc*, %struct.ckb_softc** %6, align 8
  %24 = getelementptr inbounds %struct.ckb_softc, %struct.ckb_softc* %23, i32 0, i32 9
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %22
  %28 = load %struct.ckb_softc*, %struct.ckb_softc** %6, align 8
  %29 = getelementptr inbounds %struct.ckb_softc, %struct.ckb_softc* %28, i32 0, i32 9
  store i64 0, i64* %29, align 8
  %30 = load %struct.ckb_softc*, %struct.ckb_softc** %6, align 8
  %31 = getelementptr inbounds %struct.ckb_softc, %struct.ckb_softc* %30, i32 0, i32 6
  %32 = load i32, i32* @hz, align 4
  %33 = sdiv i32 %32, 10
  %34 = load i32, i32* @ckb_repeat, align 4
  %35 = load %struct.ckb_softc*, %struct.ckb_softc** %6, align 8
  %36 = call i32 @callout_reset(i32* %31, i32 %33, i32 %34, %struct.ckb_softc* %35)
  %37 = load %struct.ckb_softc*, %struct.ckb_softc** %6, align 8
  %38 = getelementptr inbounds %struct.ckb_softc, %struct.ckb_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %3, align 4
  br label %186

40:                                               ; preds = %22
  %41 = load %struct.ckb_softc*, %struct.ckb_softc** %6, align 8
  %42 = getelementptr inbounds %struct.ckb_softc, %struct.ckb_softc* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @CKB_FLAG_POLLING, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %85

47:                                               ; preds = %40
  br label %48

48:                                               ; preds = %82, %47
  %49 = load %struct.ckb_softc*, %struct.ckb_softc** %6, align 8
  %50 = getelementptr inbounds %struct.ckb_softc, %struct.ckb_softc* %49, i32 0, i32 8
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.ckb_softc*, %struct.ckb_softc** %6, align 8
  %53 = getelementptr inbounds %struct.ckb_softc, %struct.ckb_softc* %52, i32 0, i32 7
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @GPIO_PIN_GET(i32 %51, i32 %54, i32* %12)
  %56 = load i32, i32* %12, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %77

58:                                               ; preds = %48
  %59 = load i32, i32* @EC_CMD_MKBP_STATE, align 4
  %60 = load %struct.ckb_softc*, %struct.ckb_softc** %6, align 8
  %61 = getelementptr inbounds %struct.ckb_softc, %struct.ckb_softc* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.ckb_softc*, %struct.ckb_softc** %6, align 8
  %64 = getelementptr inbounds %struct.ckb_softc, %struct.ckb_softc* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.ckb_softc*, %struct.ckb_softc** %6, align 8
  %67 = getelementptr inbounds %struct.ckb_softc, %struct.ckb_softc* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.ckb_softc*, %struct.ckb_softc** %6, align 8
  %70 = getelementptr inbounds %struct.ckb_softc, %struct.ckb_softc* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @ec_command(i32 %59, i32* %62, i32 %65, i32* %68, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %58
  %75 = load i32, i32* @NOKEY, align 4
  store i32 %75, i32* %3, align 4
  br label %186

76:                                               ; preds = %58
  br label %84

77:                                               ; preds = %48
  %78 = load i32, i32* %5, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %77
  %81 = load i32, i32* @NOKEY, align 4
  store i32 %81, i32* %3, align 4
  br label %186

82:                                               ; preds = %77
  %83 = call i32 @DELAY(i32 1000)
  br label %48

84:                                               ; preds = %76
  br label %85

85:                                               ; preds = %84, %40
  store i32 0, i32* %7, align 4
  br label %86

86:                                               ; preds = %181, %85
  %87 = load i32, i32* %7, align 4
  %88 = load %struct.ckb_softc*, %struct.ckb_softc** %6, align 8
  %89 = getelementptr inbounds %struct.ckb_softc, %struct.ckb_softc* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = icmp slt i32 %87, %90
  br i1 %91, label %92, label %184

92:                                               ; preds = %86
  store i32 0, i32* %8, align 4
  br label %93

93:                                               ; preds = %177, %92
  %94 = load i32, i32* %8, align 4
  %95 = load %struct.ckb_softc*, %struct.ckb_softc** %6, align 8
  %96 = getelementptr inbounds %struct.ckb_softc, %struct.ckb_softc* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = icmp slt i32 %94, %97
  br i1 %98, label %99, label %180

99:                                               ; preds = %93
  %100 = load %struct.ckb_softc*, %struct.ckb_softc** %6, align 8
  %101 = getelementptr inbounds %struct.ckb_softc, %struct.ckb_softc* %100, i32 0, i32 5
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %7, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %8, align 4
  %108 = shl i32 1, %107
  %109 = and i32 %106, %108
  store i32 %109, i32* %10, align 4
  %110 = load %struct.ckb_softc*, %struct.ckb_softc** %6, align 8
  %111 = getelementptr inbounds %struct.ckb_softc, %struct.ckb_softc* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %7, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %8, align 4
  %118 = shl i32 1, %117
  %119 = and i32 %116, %118
  store i32 %119, i32* %11, align 4
  %120 = load i32, i32* %10, align 4
  %121 = load i32, i32* %11, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %99
  br label %177

124:                                              ; preds = %99
  %125 = load %struct.ckb_softc*, %struct.ckb_softc** %6, align 8
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* %8, align 4
  %128 = call i32 @keymap_read(%struct.ckb_softc* %125, i32 %126, i32 %127)
  store i32 %128, i32* %9, align 4
  %129 = load i32, i32* %9, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %124
  br label %177

132:                                              ; preds = %124
  %133 = load i32, i32* %11, align 4
  %134 = icmp sgt i32 %133, 0
  br i1 %134, label %135, label %156

135:                                              ; preds = %132
  %136 = load i32, i32* %8, align 4
  %137 = shl i32 1, %136
  %138 = load %struct.ckb_softc*, %struct.ckb_softc** %6, align 8
  %139 = getelementptr inbounds %struct.ckb_softc, %struct.ckb_softc* %138, i32 0, i32 5
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %7, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = or i32 %144, %137
  store i32 %145, i32* %143, align 4
  %146 = load i32, i32* %9, align 4
  %147 = load %struct.ckb_softc*, %struct.ckb_softc** %6, align 8
  %148 = getelementptr inbounds %struct.ckb_softc, %struct.ckb_softc* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 8
  %149 = load %struct.ckb_softc*, %struct.ckb_softc** %6, align 8
  %150 = getelementptr inbounds %struct.ckb_softc, %struct.ckb_softc* %149, i32 0, i32 6
  %151 = load i32, i32* @hz, align 4
  %152 = sdiv i32 %151, 2
  %153 = load i32, i32* @ckb_repeat, align 4
  %154 = load %struct.ckb_softc*, %struct.ckb_softc** %6, align 8
  %155 = call i32 @callout_reset(i32* %150, i32 %152, i32 %153, %struct.ckb_softc* %154)
  br label %175

156:                                              ; preds = %132
  %157 = load i32, i32* %8, align 4
  %158 = shl i32 1, %157
  %159 = xor i32 %158, -1
  %160 = load %struct.ckb_softc*, %struct.ckb_softc** %6, align 8
  %161 = getelementptr inbounds %struct.ckb_softc, %struct.ckb_softc* %160, i32 0, i32 5
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %7, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = and i32 %166, %159
  store i32 %167, i32* %165, align 4
  %168 = load i32, i32* %9, align 4
  %169 = or i32 %168, 128
  store i32 %169, i32* %9, align 4
  %170 = load %struct.ckb_softc*, %struct.ckb_softc** %6, align 8
  %171 = getelementptr inbounds %struct.ckb_softc, %struct.ckb_softc* %170, i32 0, i32 0
  store i32 -1, i32* %171, align 8
  %172 = load %struct.ckb_softc*, %struct.ckb_softc** %6, align 8
  %173 = getelementptr inbounds %struct.ckb_softc, %struct.ckb_softc* %172, i32 0, i32 6
  %174 = call i32 @callout_stop(i32* %173)
  br label %175

175:                                              ; preds = %156, %135
  %176 = load i32, i32* %9, align 4
  store i32 %176, i32* %3, align 4
  br label %186

177:                                              ; preds = %131, %123
  %178 = load i32, i32* %8, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %8, align 4
  br label %93

180:                                              ; preds = %93
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %7, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %7, align 4
  br label %86

184:                                              ; preds = %86
  %185 = load i32, i32* @NOKEY, align 4
  store i32 %185, i32* %3, align 4
  br label %186

186:                                              ; preds = %184, %175, %80, %74, %27, %20
  %187 = load i32, i32* %3, align 4
  ret i32 %187
}

declare dso_local i32 @CKB_CTX_LOCK_ASSERT(...) #1

declare dso_local i32 @KBD_IS_ACTIVE(%struct.TYPE_4__*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.ckb_softc*) #1

declare dso_local i32 @GPIO_PIN_GET(i32, i32, i32*) #1

declare dso_local i64 @ec_command(i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @keymap_read(%struct.ckb_softc*, i32, i32) #1

declare dso_local i32 @callout_stop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
