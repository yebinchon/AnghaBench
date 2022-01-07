; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-interrupt.c_cvmx_interrupt_do_irq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-interrupt.c_cvmx_interrupt_do_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.__cvmx_interrupt_handler*, i32 (i32*)* }
%struct.__cvmx_interrupt_handler = type { i32, i32 (i32, i32*, i32)* }

@OCTEON_CN3XXX = common dso_local global i32 0, align 4
@OCTEON_CN5XXX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Dcache error detected: core: %d, way: %d, va 7:3: 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"Icache error detected: core: %d, set: %d, way : %d, va 6:3 = 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Cache error exception: core %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"Dcache error detected: core: %d, way: %d, va 9:7: 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"Icache error detected: core: %d, way : %d, va 9:3 = 0x%x\0A\00", align 1
@OCTEON_CN6XXX = common dso_local global i32 0, align 4
@OCTEON_CNF7XXX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [49 x i8] c"Bus error detected due to DID timeout: core: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [57 x i8] c"Bus error detected due to write buffer parity: core: %d\0A\00", align 1
@cvmx_interrupt_state = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cvmx_interrupt_do_irq(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.__cvmx_interrupt_handler*, align 8
  store i32* %0, i32** %2, align 8
  %10 = call i32 asm sideeffect "dmfc0 $0,$$13,0", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  store i32 %10, i32* %4, align 4
  %11 = call i32 asm sideeffect "dmfc0 $0,$$12,0", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !3
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = and i32 %12, 124
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, -65283
  call void asm sideeffect "dmtc0 $0, $$12, 0", "r,~{dirflag},~{fpsr},~{flags}"(i32 %17) #2, !srcloc !4
  br label %18

18:                                               ; preds = %15, %1
  %19 = load i32*, i32** %2, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 27
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 1920
  store i32 %22, i32* %8, align 4
  %23 = call i32 (...) @cvmx_get_core_num()
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp eq i32 %24, 256
  br i1 %25, label %26, label %120

26:                                               ; preds = %18
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %120

30:                                               ; preds = %26
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @CVMX_MF_CACHE_ERR(i32 %31)
  %33 = load i32, i32* @OCTEON_CN3XXX, align 4
  %34 = call i64 @OCTEON_IS_MODEL(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* @OCTEON_CN5XXX, align 4
  %38 = call i64 @OCTEON_IS_MODEL(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %80

40:                                               ; preds = %36, %30
  %41 = load i32*, i32** %2, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 34
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, 1
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %40
  %47 = load i32, i32* %7, align 4
  %48 = load i32*, i32** %2, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 34
  %50 = load i32, i32* %49, align 4
  %51 = ashr i32 %50, 8
  %52 = and i32 %51, 63
  %53 = load i32*, i32** %2, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 34
  %55 = load i32, i32* %54, align 4
  %56 = ashr i32 %55, 3
  %57 = and i32 %56, 31
  %58 = call i32 (i8*, i32, ...) @cvmx_safe_printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %52, i32 %57)
  br label %79

59:                                               ; preds = %40
  %60 = load i32, i32* %6, align 4
  %61 = and i32 %60, 1
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %59
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %6, align 4
  %66 = ashr i32 %65, 5
  %67 = and i32 %66, 63
  %68 = load i32, i32* %6, align 4
  %69 = ashr i32 %68, 3
  %70 = and i32 %69, 3
  %71 = load i32, i32* %6, align 4
  %72 = ashr i32 %71, 11
  %73 = and i32 %72, 15
  %74 = call i32 (i8*, i32, ...) @cvmx_safe_printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %64, i32 %67, i32 %70, i32 %73)
  br label %78

75:                                               ; preds = %59
  %76 = load i32, i32* %7, align 4
  %77 = call i32 (i8*, i32, ...) @cvmx_safe_printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %75, %63
  br label %79

79:                                               ; preds = %78, %46
  br label %117

80:                                               ; preds = %36
  %81 = load i32*, i32** %2, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 34
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, 1
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %99

86:                                               ; preds = %80
  %87 = load i32, i32* %7, align 4
  %88 = load i32*, i32** %2, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 34
  %90 = load i32, i32* %89, align 4
  %91 = ashr i32 %90, 10
  %92 = and i32 %91, 31
  %93 = load i32*, i32** %2, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 34
  %95 = load i32, i32* %94, align 4
  %96 = ashr i32 %95, 7
  %97 = and i32 %96, 3
  %98 = call i32 (i8*, i32, ...) @cvmx_safe_printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %87, i32 %92, i32 %97)
  br label %116

99:                                               ; preds = %80
  %100 = load i32, i32* %6, align 4
  %101 = and i32 %100, 1
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %99
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* %6, align 4
  %106 = ashr i32 %105, 10
  %107 = and i32 %106, 63
  %108 = load i32, i32* %6, align 4
  %109 = ashr i32 %108, 3
  %110 = and i32 %109, 127
  %111 = call i32 (i8*, i32, ...) @cvmx_safe_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0), i32 %104, i32 %107, i32 %110)
  br label %115

112:                                              ; preds = %99
  %113 = load i32, i32* %7, align 4
  %114 = call i32 (i8*, i32, ...) @cvmx_safe_printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %113)
  br label %115

115:                                              ; preds = %112, %103
  br label %116

116:                                              ; preds = %115, %86
  br label %117

117:                                              ; preds = %116, %79
  %118 = call i32 @CVMX_MT_DCACHE_ERR(i32 1)
  %119 = call i32 @CVMX_MT_CACHE_ERR(i32 0)
  br label %120

120:                                              ; preds = %117, %26, %18
  %121 = load i32, i32* @OCTEON_CN6XXX, align 4
  %122 = call i64 @OCTEON_IS_MODEL(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %120
  %125 = load i32, i32* @OCTEON_CNF7XXX, align 4
  %126 = call i64 @OCTEON_IS_MODEL(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %151

128:                                              ; preds = %124, %120
  %129 = call i32 (...) @cvmx_get_core_num()
  store i32 %129, i32* %7, align 4
  %130 = load i32*, i32** %2, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 34
  %132 = load i32, i32* %131, align 4
  %133 = and i32 %132, 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %128
  %136 = load i32, i32* %7, align 4
  %137 = call i32 (i8*, i32, ...) @cvmx_safe_printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i32 %136)
  %138 = call i32 @CVMX_MT_DCACHE_ERR(i32 4)
  br label %150

139:                                              ; preds = %128
  %140 = load i32*, i32** %2, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 34
  %142 = load i32, i32* %141, align 4
  %143 = and i32 %142, 2
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %139
  %146 = load i32, i32* %7, align 4
  %147 = call i32 (i8*, i32, ...) @cvmx_safe_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6, i64 0, i64 0), i32 %146)
  %148 = call i32 @CVMX_MT_DCACHE_ERR(i32 2)
  br label %149

149:                                              ; preds = %145, %139
  br label %150

150:                                              ; preds = %149, %135
  br label %151

151:                                              ; preds = %150, %124
  %152 = load i32, i32* %4, align 4
  %153 = and i32 %152, 124
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %151
  %156 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cvmx_interrupt_state, i32 0, i32 1), align 8
  %157 = load i32*, i32** %2, align 8
  %158 = call i32 %156(i32* %157)
  br label %199

159:                                              ; preds = %151
  %160 = load i32, i32* %4, align 4
  %161 = load i32, i32* %5, align 4
  %162 = and i32 %160, %161
  %163 = ashr i32 %162, 8
  %164 = and i32 %163, 255
  store i32 %164, i32* %3, align 4
  %165 = load i32, i32* %3, align 4
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %159
  br label %199

168:                                              ; preds = %159
  store i32 0, i32* %7, align 4
  br label %169

169:                                              ; preds = %193, %168
  %170 = load i32, i32* %7, align 4
  %171 = icmp slt i32 %170, 8
  br i1 %171, label %172, label %196

172:                                              ; preds = %169
  %173 = load i32, i32* %3, align 4
  %174 = load i32, i32* %7, align 4
  %175 = shl i32 1, %174
  %176 = and i32 %173, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %192

178:                                              ; preds = %172
  %179 = load %struct.__cvmx_interrupt_handler*, %struct.__cvmx_interrupt_handler** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cvmx_interrupt_state, i32 0, i32 0), align 8
  %180 = load i32, i32* %7, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.__cvmx_interrupt_handler, %struct.__cvmx_interrupt_handler* %179, i64 %181
  store %struct.__cvmx_interrupt_handler* %182, %struct.__cvmx_interrupt_handler** %9, align 8
  %183 = load %struct.__cvmx_interrupt_handler*, %struct.__cvmx_interrupt_handler** %9, align 8
  %184 = getelementptr inbounds %struct.__cvmx_interrupt_handler, %struct.__cvmx_interrupt_handler* %183, i32 0, i32 1
  %185 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %184, align 8
  %186 = load i32, i32* %7, align 4
  %187 = load i32*, i32** %2, align 8
  %188 = load %struct.__cvmx_interrupt_handler*, %struct.__cvmx_interrupt_handler** %9, align 8
  %189 = getelementptr inbounds %struct.__cvmx_interrupt_handler, %struct.__cvmx_interrupt_handler* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = call i32 %185(i32 %186, i32* %187, i32 %190)
  br label %199

192:                                              ; preds = %172
  br label %193

193:                                              ; preds = %192
  %194 = load i32, i32* %7, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %7, align 4
  br label %169

196:                                              ; preds = %169
  %197 = load i32*, i32** %2, align 8
  %198 = call i32 @__cvmx_interrupt_default_exception_handler(i32* %197)
  br label %199

199:                                              ; preds = %196, %178, %167, %155
  %200 = load i32, i32* %5, align 4
  call void asm sideeffect "dmtc0 $0, $$12, 0", "r,~{dirflag},~{fpsr},~{flags}"(i32 %200) #2, !srcloc !5
  ret void
}

declare dso_local i32 @cvmx_get_core_num(...) #1

declare dso_local i32 @CVMX_MF_CACHE_ERR(i32) #1

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i32 @cvmx_safe_printf(i8*, i32, ...) #1

declare dso_local i32 @CVMX_MT_DCACHE_ERR(i32) #1

declare dso_local i32 @CVMX_MT_CACHE_ERR(i32) #1

declare dso_local i32 @__cvmx_interrupt_default_exception_handler(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1013}
!3 = !{i32 1065}
!4 = !{i32 1159}
!5 = !{i32 3697}
