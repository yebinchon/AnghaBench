; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vhpet.c_vhpet_mmio_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vhpet.c_vhpet_mmio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhpet = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@VHPET_BASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"hpet invalid mmio read: offset 0x%08x, size %d\00", align 1
@HPET_CAPABILITIES = common dso_local global i32 0, align 4
@HPET_CONFIG = common dso_local global i32 0, align 4
@HPET_ISR = common dso_local global i32 0, align 4
@HPET_MAIN_COUNTER = common dso_local global i32 0, align 4
@VHPET_NUM_TIMERS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vhpet_mmio_read(i8* %0, i32 %1, i32 %2, i32* %3, i32 %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.vhpet*, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = call %struct.vhpet* @vm_hpet(i8* %17)
  store %struct.vhpet* %18, %struct.vhpet** %15, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @VHPET_BASE, align 4
  %21 = sub nsw i32 %19, %20
  store i32 %21, i32* %14, align 4
  %22 = load %struct.vhpet*, %struct.vhpet** %15, align 8
  %23 = call i32 @VHPET_LOCK(%struct.vhpet* %22)
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 4
  br i1 %25, label %26, label %36

26:                                               ; preds = %6
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 8
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load %struct.vhpet*, %struct.vhpet** %15, align 8
  %31 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @VM_CTR2(i32 %32, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34)
  store i32 0, i32* %16, align 4
  br label %172

36:                                               ; preds = %26, %6
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* %11, align 4
  %39 = sub nsw i32 %38, 1
  %40 = and i32 %37, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load %struct.vhpet*, %struct.vhpet** %15, align 8
  %44 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @VM_CTR2(i32 %45, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %47)
  store i32 0, i32* %16, align 4
  br label %172

49:                                               ; preds = %36
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* @HPET_CAPABILITIES, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %58, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* @HPET_CAPABILITIES, align 4
  %56 = add nsw i32 %55, 4
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %53, %49
  %59 = call i32 (...) @vhpet_capabilities()
  store i32 %59, i32* %16, align 4
  br label %172

60:                                               ; preds = %53
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* @HPET_CONFIG, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %69, label %64

64:                                               ; preds = %60
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* @HPET_CONFIG, align 4
  %67 = add nsw i32 %66, 4
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %64, %60
  %70 = load %struct.vhpet*, %struct.vhpet** %15, align 8
  %71 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %16, align 4
  br label %172

73:                                               ; preds = %64
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* @HPET_ISR, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %82, label %77

77:                                               ; preds = %73
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* @HPET_ISR, align 4
  %80 = add nsw i32 %79, 4
  %81 = icmp eq i32 %78, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %77, %73
  %83 = load %struct.vhpet*, %struct.vhpet** %15, align 8
  %84 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %16, align 4
  br label %172

86:                                               ; preds = %77
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* @HPET_MAIN_COUNTER, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %95, label %90

90:                                               ; preds = %86
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* @HPET_MAIN_COUNTER, align 4
  %93 = add nsw i32 %92, 4
  %94 = icmp eq i32 %91, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %90, %86
  %96 = load %struct.vhpet*, %struct.vhpet** %15, align 8
  %97 = call i32 @vhpet_counter(%struct.vhpet* %96, i32* null)
  store i32 %97, i32* %16, align 4
  br label %172

98:                                               ; preds = %90
  store i32 0, i32* %13, align 4
  br label %99

99:                                               ; preds = %163, %98
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* @VHPET_NUM_TIMERS, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %166

103:                                              ; preds = %99
  %104 = load i32, i32* %14, align 4
  %105 = load i32, i32* %13, align 4
  %106 = call i32 @HPET_TIMER_CAP_CNF(i32 %105)
  %107 = icmp eq i32 %104, %106
  br i1 %107, label %114, label %108

108:                                              ; preds = %103
  %109 = load i32, i32* %14, align 4
  %110 = load i32, i32* %13, align 4
  %111 = call i32 @HPET_TIMER_CAP_CNF(i32 %110)
  %112 = add nsw i32 %111, 4
  %113 = icmp eq i32 %109, %112
  br i1 %113, label %114, label %123

114:                                              ; preds = %108, %103
  %115 = load %struct.vhpet*, %struct.vhpet** %15, align 8
  %116 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %115, i32 0, i32 2
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = load i32, i32* %13, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %16, align 4
  br label %166

123:                                              ; preds = %108
  %124 = load i32, i32* %14, align 4
  %125 = load i32, i32* %13, align 4
  %126 = call i32 @HPET_TIMER_COMPARATOR(i32 %125)
  %127 = icmp eq i32 %124, %126
  br i1 %127, label %134, label %128

128:                                              ; preds = %123
  %129 = load i32, i32* %14, align 4
  %130 = load i32, i32* %13, align 4
  %131 = call i32 @HPET_TIMER_COMPARATOR(i32 %130)
  %132 = add nsw i32 %131, 4
  %133 = icmp eq i32 %129, %132
  br i1 %133, label %134, label %143

134:                                              ; preds = %128, %123
  %135 = load %struct.vhpet*, %struct.vhpet** %15, align 8
  %136 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %135, i32 0, i32 2
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** %136, align 8
  %138 = load i32, i32* %13, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  store i32 %142, i32* %16, align 4
  br label %166

143:                                              ; preds = %128
  %144 = load i32, i32* %14, align 4
  %145 = load i32, i32* %13, align 4
  %146 = call i32 @HPET_TIMER_FSB_VAL(i32 %145)
  %147 = icmp eq i32 %144, %146
  br i1 %147, label %153, label %148

148:                                              ; preds = %143
  %149 = load i32, i32* %14, align 4
  %150 = load i32, i32* %13, align 4
  %151 = call i32 @HPET_TIMER_FSB_ADDR(i32 %150)
  %152 = icmp eq i32 %149, %151
  br i1 %152, label %153, label %162

153:                                              ; preds = %148, %143
  %154 = load %struct.vhpet*, %struct.vhpet** %15, align 8
  %155 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %154, i32 0, i32 2
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** %155, align 8
  %157 = load i32, i32* %13, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  store i32 %161, i32* %16, align 4
  br label %166

162:                                              ; preds = %148
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %13, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %13, align 4
  br label %99

166:                                              ; preds = %153, %134, %114, %99
  %167 = load i32, i32* %13, align 4
  %168 = load i32, i32* @VHPET_NUM_TIMERS, align 4
  %169 = icmp sge i32 %167, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %166
  store i32 0, i32* %16, align 4
  br label %171

171:                                              ; preds = %170, %166
  br label %172

172:                                              ; preds = %171, %95, %82, %69, %58, %42, %29
  %173 = load %struct.vhpet*, %struct.vhpet** %15, align 8
  %174 = call i32 @VHPET_UNLOCK(%struct.vhpet* %173)
  %175 = load i32, i32* %11, align 4
  %176 = icmp eq i32 %175, 4
  br i1 %176, label %177, label %185

177:                                              ; preds = %172
  %178 = load i32, i32* %14, align 4
  %179 = and i32 %178, 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %177
  %182 = load i32, i32* %16, align 4
  %183 = ashr i32 %182, 32
  store i32 %183, i32* %16, align 4
  br label %184

184:                                              ; preds = %181, %177
  br label %185

185:                                              ; preds = %184, %172
  %186 = load i32, i32* %16, align 4
  %187 = load i32*, i32** %10, align 8
  store i32 %186, i32* %187, align 4
  ret i32 0
}

declare dso_local %struct.vhpet* @vm_hpet(i8*) #1

declare dso_local i32 @VHPET_LOCK(%struct.vhpet*) #1

declare dso_local i32 @VM_CTR2(i32, i8*, i32, i32) #1

declare dso_local i32 @vhpet_capabilities(...) #1

declare dso_local i32 @vhpet_counter(%struct.vhpet*, i32*) #1

declare dso_local i32 @HPET_TIMER_CAP_CNF(i32) #1

declare dso_local i32 @HPET_TIMER_COMPARATOR(i32) #1

declare dso_local i32 @HPET_TIMER_FSB_VAL(i32) #1

declare dso_local i32 @HPET_TIMER_FSB_ADDR(i32) #1

declare dso_local i32 @VHPET_UNLOCK(%struct.vhpet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
