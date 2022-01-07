; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm.c_vm_run.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm.c_vm_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm = type { i32, i32, i32, i32, %struct.vcpu*, i32, i32, i32 }
%struct.vcpu = type { i64, i32, %struct.vm_exit }
%struct.vm_exit = type { i32, %struct.TYPE_9__, i64, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.vm_run = type { i32, i32 }
%struct.vm_eventinfo = type { i32*, i32*, i32* }
%struct.pcb = type { i32 }
%struct.TYPE_10__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@curcpu = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"vm_run: absurd pm_active\00", align 1
@curpcb = common dso_local global i32 0, align 4
@PCB_FULL_IRET = common dso_local global i32 0, align 4
@VCPU_RUNNING = common dso_local global i32 0, align 4
@VCPU_FROZEN = common dso_local global i32 0, align 4
@VCPU_TOTAL_RUNTIME = common dso_local global i32 0, align 4
@PSL_I = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"retu %d/%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_run(%struct.vm* %0, %struct.vm_run* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vm*, align 8
  %5 = alloca %struct.vm_run*, align 8
  %6 = alloca %struct.vm_eventinfo, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vcpu*, align 8
  %10 = alloca %struct.pcb*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.vm_exit*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_10__*, align 8
  store %struct.vm* %0, %struct.vm** %4, align 8
  store %struct.vm_run* %1, %struct.vm_run** %5, align 8
  %16 = load %struct.vm_run*, %struct.vm_run** %5, align 8
  %17 = getelementptr inbounds %struct.vm_run, %struct.vm_run* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.vm*, %struct.vm** %4, align 8
  %24 = getelementptr inbounds %struct.vm, %struct.vm* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sge i32 %22, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21, %2
  %28 = load i32, i32* @EINVAL, align 4
  store i32 %28, i32* %3, align 4
  br label %201

29:                                               ; preds = %21
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.vm*, %struct.vm** %4, align 8
  %32 = getelementptr inbounds %struct.vm, %struct.vm* %31, i32 0, i32 7
  %33 = call i64 @CPU_ISSET(i32 %30, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* @EINVAL, align 4
  store i32 %36, i32* %3, align 4
  br label %201

37:                                               ; preds = %29
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.vm*, %struct.vm** %4, align 8
  %40 = getelementptr inbounds %struct.vm, %struct.vm* %39, i32 0, i32 6
  %41 = call i64 @CPU_ISSET(i32 %38, i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* @EINVAL, align 4
  store i32 %44, i32* %3, align 4
  br label %201

45:                                               ; preds = %37
  %46 = load %struct.vm*, %struct.vm** %4, align 8
  %47 = getelementptr inbounds %struct.vm, %struct.vm* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = call %struct.TYPE_10__* @vmspace_pmap(i32 %48)
  store %struct.TYPE_10__* %49, %struct.TYPE_10__** %15, align 8
  %50 = load %struct.vm*, %struct.vm** %4, align 8
  %51 = getelementptr inbounds %struct.vm, %struct.vm* %50, i32 0, i32 4
  %52 = load %struct.vcpu*, %struct.vcpu** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %52, i64 %54
  store %struct.vcpu* %55, %struct.vcpu** %9, align 8
  %56 = load %struct.vcpu*, %struct.vcpu** %9, align 8
  %57 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %56, i32 0, i32 2
  store %struct.vm_exit* %57, %struct.vm_exit** %12, align 8
  %58 = load %struct.vm*, %struct.vm** %4, align 8
  %59 = getelementptr inbounds %struct.vm, %struct.vm* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.vm_eventinfo, %struct.vm_eventinfo* %6, i32 0, i32 2
  store i32* %59, i32** %60, align 8
  %61 = load %struct.vm*, %struct.vm** %4, align 8
  %62 = getelementptr inbounds %struct.vm, %struct.vm* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.vm_eventinfo, %struct.vm_eventinfo* %6, i32 0, i32 1
  store i32* %62, i32** %63, align 8
  %64 = load %struct.vcpu*, %struct.vcpu** %9, align 8
  %65 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.vm_eventinfo, %struct.vm_eventinfo* %6, i32 0, i32 0
  store i32* %65, i32** %66, align 8
  br label %67

67:                                               ; preds = %187, %45
  %68 = call i32 (...) @critical_enter()
  %69 = load i32, i32* @curcpu, align 4
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = call i64 @CPU_ISSET(i32 %69, i32* %71)
  %73 = icmp ne i64 %72, 0
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = call i32 @KASSERT(i32 %75, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %77 = call i64 (...) @rdtsc()
  store i64 %77, i64* %11, align 8
  %78 = load i32, i32* @curpcb, align 4
  %79 = call %struct.pcb* @PCPU_GET(i32 %78)
  store %struct.pcb* %79, %struct.pcb** %10, align 8
  %80 = load %struct.pcb*, %struct.pcb** %10, align 8
  %81 = load i32, i32* @PCB_FULL_IRET, align 4
  %82 = call i32 @set_pcb_flags(%struct.pcb* %80, i32 %81)
  %83 = load %struct.vcpu*, %struct.vcpu** %9, align 8
  %84 = call i32 @restore_guest_fpustate(%struct.vcpu* %83)
  %85 = load %struct.vm*, %struct.vm** %4, align 8
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* @VCPU_RUNNING, align 4
  %88 = call i32 @vcpu_require_state(%struct.vm* %85, i32 %86, i32 %87)
  %89 = load %struct.vm*, %struct.vm** %4, align 8
  %90 = getelementptr inbounds %struct.vm, %struct.vm* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %8, align 4
  %93 = load %struct.vcpu*, %struct.vcpu** %9, align 8
  %94 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %97 = call i32 @VMRUN(i32 %91, i32 %92, i64 %95, %struct.TYPE_10__* %96, %struct.vm_eventinfo* %6)
  store i32 %97, i32* %7, align 4
  %98 = load %struct.vm*, %struct.vm** %4, align 8
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* @VCPU_FROZEN, align 4
  %101 = call i32 @vcpu_require_state(%struct.vm* %98, i32 %99, i32 %100)
  %102 = load %struct.vcpu*, %struct.vcpu** %9, align 8
  %103 = call i32 @save_guest_fpustate(%struct.vcpu* %102)
  %104 = load %struct.vm*, %struct.vm** %4, align 8
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* @VCPU_TOTAL_RUNTIME, align 4
  %107 = call i64 (...) @rdtsc()
  %108 = load i64, i64* %11, align 8
  %109 = sub nsw i64 %107, %108
  %110 = call i32 @vmm_stat_incr(%struct.vm* %104, i32 %105, i32 %106, i64 %109)
  %111 = call i32 (...) @critical_exit()
  %112 = load i32, i32* %7, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %181

114:                                              ; preds = %67
  store i32 0, i32* %13, align 4
  %115 = load %struct.vm_exit*, %struct.vm_exit** %12, align 8
  %116 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.vm_exit*, %struct.vm_exit** %12, align 8
  %119 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 %117, %120
  %122 = load %struct.vcpu*, %struct.vcpu** %9, align 8
  %123 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %122, i32 0, i32 0
  store i64 %121, i64* %123, align 8
  %124 = load %struct.vm_exit*, %struct.vm_exit** %12, align 8
  %125 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  switch i32 %126, label %179 [
    i32 130, label %127
    i32 129, label %131
    i32 135, label %135
    i32 131, label %144
    i32 139, label %148
    i32 132, label %162
    i32 136, label %166
    i32 138, label %170
    i32 137, label %170
    i32 134, label %175
    i32 133, label %175
    i32 128, label %175
  ]

127:                                              ; preds = %114
  %128 = load %struct.vm*, %struct.vm** %4, align 8
  %129 = load i32, i32* %8, align 4
  %130 = call i32 @vm_handle_reqidle(%struct.vm* %128, i32 %129, i32* %13)
  store i32 %130, i32* %7, align 4
  br label %180

131:                                              ; preds = %114
  %132 = load %struct.vm*, %struct.vm** %4, align 8
  %133 = load i32, i32* %8, align 4
  %134 = call i32 @vm_handle_suspend(%struct.vm* %132, i32 %133, i32* %13)
  store i32 %134, i32* %7, align 4
  br label %180

135:                                              ; preds = %114
  %136 = load %struct.vm*, %struct.vm** %4, align 8
  %137 = load i32, i32* %8, align 4
  %138 = load %struct.vm_exit*, %struct.vm_exit** %12, align 8
  %139 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @vioapic_process_eoi(%struct.vm* %136, i32 %137, i32 %142)
  br label %180

144:                                              ; preds = %114
  %145 = load %struct.vm*, %struct.vm** %4, align 8
  %146 = load i32, i32* %8, align 4
  %147 = call i32 @vm_handle_rendezvous(%struct.vm* %145, i32 %146)
  store i32 0, i32* %7, align 4
  br label %180

148:                                              ; preds = %114
  %149 = load %struct.vm_exit*, %struct.vm_exit** %12, align 8
  %150 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @PSL_I, align 4
  %155 = and i32 %153, %154
  %156 = icmp eq i32 %155, 0
  %157 = zext i1 %156 to i32
  store i32 %157, i32* %14, align 4
  %158 = load %struct.vm*, %struct.vm** %4, align 8
  %159 = load i32, i32* %8, align 4
  %160 = load i32, i32* %14, align 4
  %161 = call i32 @vm_handle_hlt(%struct.vm* %158, i32 %159, i32 %160, i32* %13)
  store i32 %161, i32* %7, align 4
  br label %180

162:                                              ; preds = %114
  %163 = load %struct.vm*, %struct.vm** %4, align 8
  %164 = load i32, i32* %8, align 4
  %165 = call i32 @vm_handle_paging(%struct.vm* %163, i32 %164, i32* %13)
  store i32 %165, i32* %7, align 4
  br label %180

166:                                              ; preds = %114
  %167 = load %struct.vm*, %struct.vm** %4, align 8
  %168 = load i32, i32* %8, align 4
  %169 = call i32 @vm_handle_inst_emul(%struct.vm* %167, i32 %168, i32* %13)
  store i32 %169, i32* %7, align 4
  br label %180

170:                                              ; preds = %114, %114
  %171 = load %struct.vm*, %struct.vm** %4, align 8
  %172 = load i32, i32* %8, align 4
  %173 = load %struct.vm_exit*, %struct.vm_exit** %12, align 8
  %174 = call i32 @vm_handle_inout(%struct.vm* %171, i32 %172, %struct.vm_exit* %173, i32* %13)
  store i32 %174, i32* %7, align 4
  br label %180

175:                                              ; preds = %114, %114, %114
  %176 = load %struct.vm*, %struct.vm** %4, align 8
  %177 = load i32, i32* %8, align 4
  %178 = call i32 @vm_inject_ud(%struct.vm* %176, i32 %177)
  br label %180

179:                                              ; preds = %114
  store i32 1, i32* %13, align 4
  br label %180

180:                                              ; preds = %179, %175, %170, %166, %162, %148, %144, %135, %131, %127
  br label %181

181:                                              ; preds = %180, %67
  %182 = load i32, i32* %7, align 4
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %181
  %185 = load i32, i32* %13, align 4
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %184
  br label %67

188:                                              ; preds = %184, %181
  %189 = load %struct.vm*, %struct.vm** %4, align 8
  %190 = load i32, i32* %8, align 4
  %191 = load i32, i32* %7, align 4
  %192 = load %struct.vm_exit*, %struct.vm_exit** %12, align 8
  %193 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @VCPU_CTR2(%struct.vm* %189, i32 %190, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %191, i32 %194)
  %196 = load %struct.vm_exit*, %struct.vm_exit** %12, align 8
  %197 = load %struct.vm_run*, %struct.vm_run** %5, align 8
  %198 = getelementptr inbounds %struct.vm_run, %struct.vm_run* %197, i32 0, i32 1
  %199 = call i32 @bcopy(%struct.vm_exit* %196, i32* %198, i32 32)
  %200 = load i32, i32* %7, align 4
  store i32 %200, i32* %3, align 4
  br label %201

201:                                              ; preds = %188, %43, %35, %27
  %202 = load i32, i32* %3, align 4
  ret i32 %202
}

declare dso_local i64 @CPU_ISSET(i32, i32*) #1

declare dso_local %struct.TYPE_10__* @vmspace_pmap(i32) #1

declare dso_local i32 @critical_enter(...) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @rdtsc(...) #1

declare dso_local %struct.pcb* @PCPU_GET(i32) #1

declare dso_local i32 @set_pcb_flags(%struct.pcb*, i32) #1

declare dso_local i32 @restore_guest_fpustate(%struct.vcpu*) #1

declare dso_local i32 @vcpu_require_state(%struct.vm*, i32, i32) #1

declare dso_local i32 @VMRUN(i32, i32, i64, %struct.TYPE_10__*, %struct.vm_eventinfo*) #1

declare dso_local i32 @save_guest_fpustate(%struct.vcpu*) #1

declare dso_local i32 @vmm_stat_incr(%struct.vm*, i32, i32, i64) #1

declare dso_local i32 @critical_exit(...) #1

declare dso_local i32 @vm_handle_reqidle(%struct.vm*, i32, i32*) #1

declare dso_local i32 @vm_handle_suspend(%struct.vm*, i32, i32*) #1

declare dso_local i32 @vioapic_process_eoi(%struct.vm*, i32, i32) #1

declare dso_local i32 @vm_handle_rendezvous(%struct.vm*, i32) #1

declare dso_local i32 @vm_handle_hlt(%struct.vm*, i32, i32, i32*) #1

declare dso_local i32 @vm_handle_paging(%struct.vm*, i32, i32*) #1

declare dso_local i32 @vm_handle_inst_emul(%struct.vm*, i32, i32*) #1

declare dso_local i32 @vm_handle_inout(%struct.vm*, i32, %struct.vm_exit*, i32*) #1

declare dso_local i32 @vm_inject_ud(%struct.vm*, i32) #1

declare dso_local i32 @VCPU_CTR2(%struct.vm*, i32, i8*, i32, i32) #1

declare dso_local i32 @bcopy(%struct.vm_exit*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
