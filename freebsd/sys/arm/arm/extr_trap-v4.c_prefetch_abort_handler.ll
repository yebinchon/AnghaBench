; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_trap-v4.c_prefetch_abort_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_trap-v4.c_prefetch_abort_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i64, %struct.proc*, i64, %struct.TYPE_4__, %struct.trapframe* }
%struct.proc = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.vm_map }
%struct.vm_map = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.trapframe = type { i64, i32, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.ksig = type { i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@v_trap = common dso_local global i32 0, align 4
@PSR_I = common dso_local global i32 0, align 4
@PSR_F = common dso_local global i32 0, align 4
@VM_MAXUSER_ADDRESS = common dso_local global i64 0, align 8
@VM_MIN_ADDRESS = common dso_local global i64 0, align 8
@vector_page = common dso_local global i64 0, align 8
@ARM_VECTORS_LOW = common dso_local global i64 0, align 8
@SIGSEGV = common dso_local global i32 0, align 4
@VM_PROT_READ = common dso_local global i32 0, align 4
@VM_PROT_EXECUTE = common dso_local global i32 0, align 4
@VM_FAULT_NORMAL = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@last_fault_code = common dso_local global i32 0, align 4
@uvmexp = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trapframe*)* @prefetch_abort_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prefetch_abort_handler(%struct.trapframe* %0) #0 {
  %2 = alloca %struct.trapframe*, align 8
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.proc*, align 8
  %5 = alloca %struct.vm_map*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ksig, align 4
  store %struct.trapframe* %0, %struct.trapframe** %2, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %12, %struct.thread** %3, align 8
  %13 = load %struct.thread*, %struct.thread** %3, align 8
  %14 = getelementptr inbounds %struct.thread, %struct.thread* %13, i32 0, i32 1
  %15 = load %struct.proc*, %struct.proc** %14, align 8
  store %struct.proc* %15, %struct.proc** %4, align 8
  %16 = load i32, i32* @v_trap, align 4
  %17 = call i32 @VM_CNT_INC(i32 %16)
  %18 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %19 = call i64 @TRAP_USERMODE(%struct.trapframe* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %1
  %22 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %23 = load %struct.thread*, %struct.thread** %3, align 8
  %24 = getelementptr inbounds %struct.thread, %struct.thread* %23, i32 0, i32 4
  store %struct.trapframe* %22, %struct.trapframe** %24, align 8
  %25 = load %struct.thread*, %struct.thread** %3, align 8
  %26 = getelementptr inbounds %struct.thread, %struct.thread* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.thread*, %struct.thread** %3, align 8
  %29 = getelementptr inbounds %struct.thread, %struct.thread* %28, i32 0, i32 1
  %30 = load %struct.proc*, %struct.proc** %29, align 8
  %31 = getelementptr inbounds %struct.proc, %struct.proc* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %27, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %21
  %35 = load %struct.thread*, %struct.thread** %3, align 8
  %36 = call i32 @thread_cow_update(%struct.thread* %35)
  br label %37

37:                                               ; preds = %34, %21
  br label %38

38:                                               ; preds = %37, %1
  %39 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %40 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %6, align 8
  %42 = load %struct.thread*, %struct.thread** %3, align 8
  %43 = getelementptr inbounds %struct.thread, %struct.thread* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %70

47:                                               ; preds = %38
  %48 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %49 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @PSR_I, align 4
  %52 = and i32 %50, %51
  %53 = call i64 @__predict_true(i32 %52)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %47
  %56 = load i32, i32* @PSR_I, align 4
  %57 = call i32 @enable_interrupts(i32 %56)
  br label %58

58:                                               ; preds = %55, %47
  %59 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %60 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @PSR_F, align 4
  %63 = and i32 %61, %62
  %64 = call i64 @__predict_true(i32 %63)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %58
  %67 = load i32, i32* @PSR_F, align 4
  %68 = call i32 @enable_interrupts(i32 %67)
  br label %69

69:                                               ; preds = %66, %58
  br label %70

70:                                               ; preds = %69, %38
  %71 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %72 = call i64 @TRAP_USERMODE(%struct.trapframe* %71)
  %73 = icmp ne i64 %72, 0
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = call i64 @__predict_false(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %70
  %79 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %80 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %81 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @dab_fatal(%struct.trapframe* %79, i32 0, i64 %82, i32* null, %struct.ksig* %11)
  br label %84

84:                                               ; preds = %78, %70
  %85 = load %struct.thread*, %struct.thread** %3, align 8
  %86 = getelementptr inbounds %struct.thread, %struct.thread* %85, i32 0, i32 2
  store i64 0, i64* %86, align 8
  %87 = load i64, i64* %6, align 8
  %88 = load i64, i64* @VM_MAXUSER_ADDRESS, align 8
  %89 = icmp sge i64 %87, %88
  br i1 %89, label %100, label %90

90:                                               ; preds = %84
  %91 = load i64, i64* %6, align 8
  %92 = load i64, i64* @VM_MIN_ADDRESS, align 8
  %93 = icmp slt i64 %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = load i64, i64* @vector_page, align 8
  %96 = load i64, i64* @ARM_VECTORS_LOW, align 8
  %97 = icmp eq i64 %95, %96
  br label %98

98:                                               ; preds = %94, %90
  %99 = phi i1 [ false, %90 ], [ %97, %94 ]
  br label %100

100:                                              ; preds = %98, %84
  %101 = phi i1 [ true, %84 ], [ %99, %98 ]
  %102 = zext i1 %101 to i32
  %103 = call i64 @__predict_false(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = load i32, i32* @SIGSEGV, align 4
  store i32 %106, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %140

107:                                              ; preds = %100
  %108 = load %struct.thread*, %struct.thread** %3, align 8
  %109 = getelementptr inbounds %struct.thread, %struct.thread* %108, i32 0, i32 1
  %110 = load %struct.proc*, %struct.proc** %109, align 8
  %111 = getelementptr inbounds %struct.proc, %struct.proc* %110, i32 0, i32 1
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  store %struct.vm_map* %113, %struct.vm_map** %5, align 8
  %114 = load i64, i64* %6, align 8
  %115 = call i64 @trunc_page(i64 %114)
  store i64 %115, i64* %7, align 8
  %116 = load %struct.vm_map*, %struct.vm_map** %5, align 8
  %117 = getelementptr inbounds %struct.vm_map, %struct.vm_map* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i64, i64* %7, align 8
  %120 = load i32, i32* @VM_PROT_READ, align 4
  %121 = call i64 @pmap_fault_fixup(i32 %118, i64 %119, i32 %120, i32 1)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %107
  br label %145

124:                                              ; preds = %107
  %125 = load %struct.vm_map*, %struct.vm_map** %5, align 8
  %126 = load i64, i64* %7, align 8
  %127 = load i32, i32* @VM_PROT_READ, align 4
  %128 = load i32, i32* @VM_PROT_EXECUTE, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* @VM_FAULT_NORMAL, align 4
  %131 = call i32 @vm_fault_trap(%struct.vm_map* %125, i64 %126, i32 %129, i32 %130, i32* %9, i32* %10)
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* @KERN_SUCCESS, align 4
  %134 = icmp eq i32 %132, %133
  %135 = zext i1 %134 to i32
  %136 = call i64 @__predict_true(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %124
  br label %145

139:                                              ; preds = %124
  br label %140

140:                                              ; preds = %139, %105
  %141 = load %struct.thread*, %struct.thread** %3, align 8
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* %10, align 4
  %144 = call i32 @call_trapsignal(%struct.thread* %141, i32 %142, i32 %143)
  br label %145

145:                                              ; preds = %140, %138, %123
  %146 = load %struct.thread*, %struct.thread** %3, align 8
  %147 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %148 = call i32 @userret(%struct.thread* %146, %struct.trapframe* %147)
  ret void
}

declare dso_local i32 @VM_CNT_INC(i32) #1

declare dso_local i64 @TRAP_USERMODE(%struct.trapframe*) #1

declare dso_local i32 @thread_cow_update(%struct.thread*) #1

declare dso_local i64 @__predict_true(i32) #1

declare dso_local i32 @enable_interrupts(i32) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @dab_fatal(%struct.trapframe*, i32, i64, i32*, %struct.ksig*) #1

declare dso_local i64 @trunc_page(i64) #1

declare dso_local i64 @pmap_fault_fixup(i32, i64, i32, i32) #1

declare dso_local i32 @vm_fault_trap(%struct.vm_map*, i64, i32, i32, i32*, i32*) #1

declare dso_local i32 @call_trapsignal(%struct.thread*, i32, i32) #1

declare dso_local i32 @userret(%struct.thread*, %struct.trapframe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
