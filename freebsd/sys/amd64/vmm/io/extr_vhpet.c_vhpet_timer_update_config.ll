; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vhpet.c_vhpet_timer_update_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vhpet.c_vhpet_timer_update_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhpet = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@.str = private unnamed_addr constant [42 x i8] c"vhpet timer %d isr should not be asserted\00", align 1
@HPET_TCAP_RO_MASK = common dso_local global i32 0, align 4
@HPET_TCNF_32MODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"hpet t%d cap_config set to 0x%016x\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"hpet t%d configured invalid irq %d, allowed_irqs 0x%08x\00", align 1
@HPET_TCNF_INT_ROUTE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"timer %d isr asserted to ioapic pin %d\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"hpet t%d isr cleared due to configuration change\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vhpet*, i32, i32, i32)* @vhpet_timer_update_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vhpet_timer_update_config(%struct.vhpet* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.vhpet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.vhpet* %0, %struct.vhpet** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load %struct.vhpet*, %struct.vhpet** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i64 @vhpet_timer_msi_enabled(%struct.vhpet* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %4
  %20 = load %struct.vhpet*, %struct.vhpet** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i64 @vhpet_timer_edge_trig(%struct.vhpet* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %19, %4
  %25 = load %struct.vhpet*, %struct.vhpet** %5, align 8
  %26 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = shl i32 1, %28
  %30 = and i32 %27, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @panic(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %32, %24
  br label %36

36:                                               ; preds = %35, %19
  %37 = load %struct.vhpet*, %struct.vhpet** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @vhpet_timer_ioapic_pin(%struct.vhpet* %37, i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load %struct.vhpet*, %struct.vhpet** %5, align 8
  %41 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %40, i32 0, i32 2
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @update_register(i32* %14, i32 %49, i32 %50)
  %52 = load i32, i32* @HPET_TCAP_RO_MASK, align 4
  %53 = load i32, i32* @HPET_TCNF_32MODE, align 4
  %54 = or i32 %52, %53
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %14, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* @HPET_TCAP_RO_MASK, align 4
  %60 = and i32 %58, %59
  %61 = load i32, i32* %14, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* %13, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %36
  br label %201

67:                                               ; preds = %36
  %68 = load i32, i32* %14, align 4
  %69 = load %struct.vhpet*, %struct.vhpet** %5, align 8
  %70 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %69, i32 0, i32 2
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  store i32 %68, i32* %75, align 8
  %76 = load %struct.vhpet*, %struct.vhpet** %5, align 8
  %77 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %14, align 4
  %81 = call i32 @VM_CTR2(i32 %78, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %79, i32 %80)
  %82 = load %struct.vhpet*, %struct.vhpet** %5, align 8
  %83 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %82, i32 0, i32 2
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = ashr i32 %89, 32
  store i32 %90, i32* %12, align 4
  %91 = load %struct.vhpet*, %struct.vhpet** %5, align 8
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @vhpet_timer_ioapic_pin(%struct.vhpet* %91, i32 %92)
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* %11, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %121

96:                                               ; preds = %67
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* %11, align 4
  %99 = shl i32 1, %98
  %100 = and i32 %97, %99
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %121

102:                                              ; preds = %96
  %103 = load %struct.vhpet*, %struct.vhpet** %5, align 8
  %104 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* %12, align 4
  %109 = call i32 @VM_CTR3(i32 %105, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %106, i32 %107, i32 %108)
  store i32 0, i32* %11, align 4
  %110 = load i32, i32* @HPET_TCNF_INT_ROUTE, align 4
  %111 = xor i32 %110, -1
  %112 = load %struct.vhpet*, %struct.vhpet** %5, align 8
  %113 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %112, i32 0, i32 2
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = and i32 %119, %111
  store i32 %120, i32* %118, align 8
  br label %121

121:                                              ; preds = %102, %96, %67
  %122 = load %struct.vhpet*, %struct.vhpet** %5, align 8
  %123 = load i32, i32* %6, align 4
  %124 = call i32 @vhpet_periodic_timer(%struct.vhpet* %122, i32 %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %134, label %126

126:                                              ; preds = %121
  %127 = load %struct.vhpet*, %struct.vhpet** %5, align 8
  %128 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %127, i32 0, i32 2
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = load i32, i32* %6, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 1
  store i64 0, i64* %133, align 8
  br label %134

134:                                              ; preds = %126, %121
  %135 = load %struct.vhpet*, %struct.vhpet** %5, align 8
  %136 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* %6, align 4
  %139 = shl i32 1, %138
  %140 = and i32 %137, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %201

142:                                              ; preds = %134
  %143 = load i32, i32* %10, align 4
  %144 = icmp ne i32 %143, 0
  %145 = zext i1 %144 to i32
  %146 = load i32, i32* %6, align 4
  %147 = load i32, i32* %10, align 4
  %148 = sext i32 %147 to i64
  %149 = inttoptr i64 %148 to i8*
  %150 = call i32 @KASSERT(i32 %145, i8* %149)
  %151 = load %struct.vhpet*, %struct.vhpet** %5, align 8
  %152 = load i32, i32* %6, align 4
  %153 = call i32 @vhpet_timer_interrupt_enabled(%struct.vhpet* %151, i32 %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %142
  store i32 1, i32* %9, align 4
  br label %179

156:                                              ; preds = %142
  %157 = load %struct.vhpet*, %struct.vhpet** %5, align 8
  %158 = load i32, i32* %6, align 4
  %159 = call i64 @vhpet_timer_msi_enabled(%struct.vhpet* %157, i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %156
  store i32 1, i32* %9, align 4
  br label %178

162:                                              ; preds = %156
  %163 = load %struct.vhpet*, %struct.vhpet** %5, align 8
  %164 = load i32, i32* %6, align 4
  %165 = call i64 @vhpet_timer_edge_trig(%struct.vhpet* %163, i32 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %162
  store i32 1, i32* %9, align 4
  br label %177

168:                                              ; preds = %162
  %169 = load %struct.vhpet*, %struct.vhpet** %5, align 8
  %170 = load i32, i32* %6, align 4
  %171 = call i32 @vhpet_timer_ioapic_pin(%struct.vhpet* %169, i32 %170)
  %172 = load i32, i32* %10, align 4
  %173 = icmp ne i32 %171, %172
  br i1 %173, label %174, label %175

174:                                              ; preds = %168
  store i32 1, i32* %9, align 4
  br label %176

175:                                              ; preds = %168
  store i32 0, i32* %9, align 4
  br label %176

176:                                              ; preds = %175, %174
  br label %177

177:                                              ; preds = %176, %167
  br label %178

178:                                              ; preds = %177, %161
  br label %179

179:                                              ; preds = %178, %155
  %180 = load i32, i32* %9, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %200

182:                                              ; preds = %179
  %183 = load %struct.vhpet*, %struct.vhpet** %5, align 8
  %184 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* %6, align 4
  %187 = call i32 @VM_CTR1(i32 %185, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i32 %186)
  %188 = load %struct.vhpet*, %struct.vhpet** %5, align 8
  %189 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* %10, align 4
  %192 = call i32 @vioapic_deassert_irq(i32 %190, i32 %191)
  %193 = load i32, i32* %6, align 4
  %194 = shl i32 1, %193
  %195 = xor i32 %194, -1
  %196 = load %struct.vhpet*, %struct.vhpet** %5, align 8
  %197 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = and i32 %198, %195
  store i32 %199, i32* %197, align 8
  br label %200

200:                                              ; preds = %182, %179
  br label %201

201:                                              ; preds = %66, %200, %134
  ret void
}

declare dso_local i64 @vhpet_timer_msi_enabled(%struct.vhpet*, i32) #1

declare dso_local i64 @vhpet_timer_edge_trig(%struct.vhpet*, i32) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @vhpet_timer_ioapic_pin(%struct.vhpet*, i32) #1

declare dso_local i32 @update_register(i32*, i32, i32) #1

declare dso_local i32 @VM_CTR2(i32, i8*, i32, i32) #1

declare dso_local i32 @VM_CTR3(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @vhpet_periodic_timer(%struct.vhpet*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vhpet_timer_interrupt_enabled(%struct.vhpet*, i32) #1

declare dso_local i32 @VM_CTR1(i32, i8*, i32) #1

declare dso_local i32 @vioapic_deassert_irq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
