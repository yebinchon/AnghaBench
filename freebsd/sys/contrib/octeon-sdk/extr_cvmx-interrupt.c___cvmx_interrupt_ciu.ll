; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-interrupt.c___cvmx_interrupt_ciu.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-interrupt.c___cvmx_interrupt_ciu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.__cvmx_interrupt_handler* }
%struct.__cvmx_interrupt_handler = type { i32, i32 (i32, i32*, i32)* }

@CVMX_IRQ_MIPS2 = common dso_local global i32 0, align 4
@cvmx_interrupt_ciu_en0_mirror = common dso_local global i64 0, align 8
@OCTEON_CN61XX = common dso_local global i32 0, align 4
@OCTEON_CN66XX_PASS1_2 = common dso_local global i32 0, align 4
@cvmx_interrupt_ciu_61xx_timer_mirror = common dso_local global i64 0, align 8
@cvmx_ciu_61xx_timer_to_irq = common dso_local global i32* null, align 8
@cvmx_interrupt_state = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@cvmx_ciu_en0_to_irq = common dso_local global i32* null, align 8
@CVMX_CIU_INT_SUM1 = common dso_local global i32 0, align 4
@cvmx_interrupt_ciu_en1_mirror = common dso_local global i64 0, align 8
@cvmx_ciu_en1_to_irq = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i8*)* @__cvmx_interrupt_ciu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__cvmx_interrupt_ciu(i32 %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.__cvmx_interrupt_handler*, align 8
  %16 = alloca %struct.__cvmx_interrupt_handler*, align 8
  %17 = alloca %struct.__cvmx_interrupt_handler*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %18 = call i32 (...) @cvmx_get_core_num()
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @CVMX_IRQ_MIPS2, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %140

22:                                               ; preds = %3
  %23 = load i32, i32* %11, align 4
  %24 = mul nsw i32 %23, 2
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @CVMX_CIU_INTX_SUM0(i32 %25)
  %27 = call i64 @cvmx_read_csr(i32 %26)
  %28 = load i64, i64* @cvmx_interrupt_ciu_en0_mirror, align 8
  %29 = and i64 %27, %28
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @CVMX_DCLZ(i32 %31, i32 %32)
  %34 = load i32, i32* %10, align 4
  %35 = sub nsw i32 63, %34
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp eq i32 %36, 51
  br i1 %37, label %38, label %100

38:                                               ; preds = %22
  %39 = load i32, i32* @OCTEON_CN61XX, align 4
  %40 = call i64 @OCTEON_IS_MODEL(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* @OCTEON_CN66XX_PASS1_2, align 4
  %44 = call i64 @OCTEON_IS_MODEL(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %100

46:                                               ; preds = %42, %38
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @CVMX_CIU_SUM2_PPX_IP2(i32 %47)
  %49 = call i64 @cvmx_read_csr(i32 %48)
  %50 = load i64, i64* @cvmx_interrupt_ciu_61xx_timer_mirror, align 8
  %51 = and i64 %49, %50
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* %12, align 4
  %55 = call i32 @CVMX_DCLZ(i32 %53, i32 %54)
  %56 = load i32, i32* %13, align 4
  %57 = sub nsw i32 63, %56
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp sle i32 %58, 9
  br i1 %59, label %60, label %99

60:                                               ; preds = %46
  %61 = load i32, i32* %13, align 4
  %62 = icmp sge i32 %61, 4
  br i1 %62, label %63, label %99

63:                                               ; preds = %60
  %64 = load i32*, i32** @cvmx_ciu_61xx_timer_to_irq, align 8
  %65 = load i32, i32* %13, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %14, align 4
  %70 = icmp eq i32 %69, 255
  %71 = zext i1 %70 to i32
  %72 = call i64 @cvmx_unlikely(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %63
  %75 = load i32, i32* %13, align 4
  %76 = zext i32 %75 to i64
  %77 = shl i64 1, %76
  %78 = xor i64 %77, -1
  %79 = load i64, i64* @cvmx_interrupt_ciu_61xx_timer_mirror, align 8
  %80 = and i64 %79, %78
  store i64 %80, i64* @cvmx_interrupt_ciu_61xx_timer_mirror, align 8
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @CVMX_CIU_EN2_PPX_IP2(i32 %81)
  %83 = load i64, i64* @cvmx_interrupt_ciu_61xx_timer_mirror, align 8
  %84 = call i32 @cvmx_write_csr(i32 %82, i64 %83)
  br label %193

85:                                               ; preds = %63
  %86 = load %struct.__cvmx_interrupt_handler*, %struct.__cvmx_interrupt_handler** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cvmx_interrupt_state, i32 0, i32 0), align 8
  %87 = load i32, i32* %14, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.__cvmx_interrupt_handler, %struct.__cvmx_interrupt_handler* %86, i64 %88
  store %struct.__cvmx_interrupt_handler* %89, %struct.__cvmx_interrupt_handler** %15, align 8
  %90 = load %struct.__cvmx_interrupt_handler*, %struct.__cvmx_interrupt_handler** %15, align 8
  %91 = getelementptr inbounds %struct.__cvmx_interrupt_handler, %struct.__cvmx_interrupt_handler* %90, i32 0, i32 1
  %92 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %91, align 8
  %93 = load i32, i32* %14, align 4
  %94 = load i32*, i32** %5, align 8
  %95 = load %struct.__cvmx_interrupt_handler*, %struct.__cvmx_interrupt_handler** %15, align 8
  %96 = getelementptr inbounds %struct.__cvmx_interrupt_handler, %struct.__cvmx_interrupt_handler* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 %92(i32 %93, i32* %94, i32 %97)
  br label %193

99:                                               ; preds = %60, %46
  br label %100

100:                                              ; preds = %99, %42, %22
  %101 = load i32, i32* %10, align 4
  %102 = icmp sge i32 %101, 0
  br i1 %102, label %103, label %139

103:                                              ; preds = %100
  %104 = load i32*, i32** @cvmx_ciu_en0_to_irq, align 8
  %105 = load i32, i32* %10, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %9, align 4
  %110 = icmp eq i32 %109, 255
  %111 = zext i1 %110 to i32
  %112 = call i64 @cvmx_unlikely(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %125

114:                                              ; preds = %103
  %115 = load i32, i32* %10, align 4
  %116 = zext i32 %115 to i64
  %117 = shl i64 1, %116
  %118 = xor i64 %117, -1
  %119 = load i64, i64* @cvmx_interrupt_ciu_en0_mirror, align 8
  %120 = and i64 %119, %118
  store i64 %120, i64* @cvmx_interrupt_ciu_en0_mirror, align 8
  %121 = load i32, i32* %7, align 4
  %122 = call i32 @CVMX_CIU_INTX_EN0(i32 %121)
  %123 = load i64, i64* @cvmx_interrupt_ciu_en0_mirror, align 8
  %124 = call i32 @cvmx_write_csr(i32 %122, i64 %123)
  br label %193

125:                                              ; preds = %103
  %126 = load %struct.__cvmx_interrupt_handler*, %struct.__cvmx_interrupt_handler** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cvmx_interrupt_state, i32 0, i32 0), align 8
  %127 = load i32, i32* %9, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.__cvmx_interrupt_handler, %struct.__cvmx_interrupt_handler* %126, i64 %128
  store %struct.__cvmx_interrupt_handler* %129, %struct.__cvmx_interrupt_handler** %16, align 8
  %130 = load %struct.__cvmx_interrupt_handler*, %struct.__cvmx_interrupt_handler** %16, align 8
  %131 = getelementptr inbounds %struct.__cvmx_interrupt_handler, %struct.__cvmx_interrupt_handler* %130, i32 0, i32 1
  %132 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %131, align 8
  %133 = load i32, i32* %9, align 4
  %134 = load i32*, i32** %5, align 8
  %135 = load %struct.__cvmx_interrupt_handler*, %struct.__cvmx_interrupt_handler** %16, align 8
  %136 = getelementptr inbounds %struct.__cvmx_interrupt_handler, %struct.__cvmx_interrupt_handler* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i32 %132(i32 %133, i32* %134, i32 %137)
  br label %193

139:                                              ; preds = %100
  br label %193

140:                                              ; preds = %3
  %141 = call i32 (...) @cvmx_get_core_num()
  %142 = mul nsw i32 %141, 2
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %7, align 4
  %144 = load i32, i32* @CVMX_CIU_INT_SUM1, align 4
  %145 = call i64 @cvmx_read_csr(i32 %144)
  %146 = load i64, i64* @cvmx_interrupt_ciu_en1_mirror, align 8
  %147 = and i64 %145, %146
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* %8, align 4
  %149 = load i32, i32* %10, align 4
  %150 = load i32, i32* %8, align 4
  %151 = call i32 @CVMX_DCLZ(i32 %149, i32 %150)
  %152 = load i32, i32* %10, align 4
  %153 = sub nsw i32 63, %152
  store i32 %153, i32* %10, align 4
  %154 = load i32, i32* %10, align 4
  %155 = icmp sge i32 %154, 0
  br i1 %155, label %156, label %192

156:                                              ; preds = %140
  %157 = load i32*, i32** @cvmx_ciu_en1_to_irq, align 8
  %158 = load i32, i32* %10, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  store i32 %161, i32* %9, align 4
  %162 = load i32, i32* %9, align 4
  %163 = icmp eq i32 %162, 255
  %164 = zext i1 %163 to i32
  %165 = call i64 @cvmx_unlikely(i32 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %178

167:                                              ; preds = %156
  %168 = load i32, i32* %10, align 4
  %169 = zext i32 %168 to i64
  %170 = shl i64 1, %169
  %171 = xor i64 %170, -1
  %172 = load i64, i64* @cvmx_interrupt_ciu_en1_mirror, align 8
  %173 = and i64 %172, %171
  store i64 %173, i64* @cvmx_interrupt_ciu_en1_mirror, align 8
  %174 = load i32, i32* %7, align 4
  %175 = call i32 @CVMX_CIU_INTX_EN1(i32 %174)
  %176 = load i64, i64* @cvmx_interrupt_ciu_en1_mirror, align 8
  %177 = call i32 @cvmx_write_csr(i32 %175, i64 %176)
  br label %193

178:                                              ; preds = %156
  %179 = load %struct.__cvmx_interrupt_handler*, %struct.__cvmx_interrupt_handler** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cvmx_interrupt_state, i32 0, i32 0), align 8
  %180 = load i32, i32* %9, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.__cvmx_interrupt_handler, %struct.__cvmx_interrupt_handler* %179, i64 %181
  store %struct.__cvmx_interrupt_handler* %182, %struct.__cvmx_interrupt_handler** %17, align 8
  %183 = load %struct.__cvmx_interrupt_handler*, %struct.__cvmx_interrupt_handler** %17, align 8
  %184 = getelementptr inbounds %struct.__cvmx_interrupt_handler, %struct.__cvmx_interrupt_handler* %183, i32 0, i32 1
  %185 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %184, align 8
  %186 = load i32, i32* %9, align 4
  %187 = load i32*, i32** %5, align 8
  %188 = load %struct.__cvmx_interrupt_handler*, %struct.__cvmx_interrupt_handler** %17, align 8
  %189 = getelementptr inbounds %struct.__cvmx_interrupt_handler, %struct.__cvmx_interrupt_handler* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = call i32 %185(i32 %186, i32* %187, i32 %190)
  br label %193

192:                                              ; preds = %140
  br label %193

193:                                              ; preds = %74, %85, %114, %125, %167, %178, %192, %139
  ret void
}

declare dso_local i32 @cvmx_get_core_num(...) #1

declare dso_local i64 @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_CIU_INTX_SUM0(i32) #1

declare dso_local i32 @CVMX_DCLZ(i32, i32) #1

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i32 @CVMX_CIU_SUM2_PPX_IP2(i32) #1

declare dso_local i64 @cvmx_unlikely(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i64) #1

declare dso_local i32 @CVMX_CIU_EN2_PPX_IP2(i32) #1

declare dso_local i32 @CVMX_CIU_INTX_EN0(i32) #1

declare dso_local i32 @CVMX_CIU_INTX_EN1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
