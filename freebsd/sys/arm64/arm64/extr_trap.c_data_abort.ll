; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_trap.c_data_abort.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_trap.c_data_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_map = type { i32 }
%struct.thread = type { i64, i64, %struct.TYPE_4__, %struct.proc*, %struct.pcb* }
%struct.TYPE_4__ = type { i64 }
%struct.proc = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.vm_map }
%struct.pcb = type { i64 }
%struct.trapframe = type { i32*, i64 }

@VM_MAXUSER_ADDRESS = common dso_local global i64 0, align 8
@kernel_map = common dso_local global %struct.vm_map* null, align 8
@KERN_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"data abort with spinlock held\00", align 1
@WARN_SLEEPOK = common dso_local global i32 0, align 4
@WARN_GIANTOK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Kernel page fault\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c" far: %16lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c" esr:         %.8lx\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"data abort in critical section or under mutex\00", align 1
@VM_PROT_EXECUTE = common dso_local global i32 0, align 4
@ISS_DATA_WnR = common dso_local global i64 0, align 8
@VM_PROT_READ = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@VM_FAULT_NORMAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"Fatal data abort:\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"vm_fault failed: %lx\00", align 1
@KDB_WHY_TRAP = common dso_local global i32 0, align 4
@KDB_WHY_UNSET = common dso_local global i32 0, align 4
@debugger_on_trap = common dso_local global i64 0, align 8
@kdb_active = common dso_local global i64 0, align 8
@kdb_why = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thread*, %struct.trapframe*, i64, i64, i32)* @data_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @data_abort(%struct.thread* %0, %struct.trapframe* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.thread*, align 8
  %7 = alloca %struct.trapframe*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.vm_map*, align 8
  %12 = alloca %struct.proc*, align 8
  %13 = alloca %struct.pcb*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %6, align 8
  store %struct.trapframe* %1, %struct.trapframe** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %18 = call i32 (...) @clrex()
  %19 = load %struct.thread*, %struct.thread** %6, align 8
  %20 = getelementptr inbounds %struct.thread, %struct.thread* %19, i32 0, i32 4
  %21 = load %struct.pcb*, %struct.pcb** %20, align 8
  store %struct.pcb* %21, %struct.pcb** %13, align 8
  %22 = load %struct.thread*, %struct.thread** %6, align 8
  %23 = getelementptr inbounds %struct.thread, %struct.thread* %22, i32 0, i32 3
  %24 = load %struct.proc*, %struct.proc** %23, align 8
  store %struct.proc* %24, %struct.proc** %12, align 8
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %5
  %28 = load %struct.proc*, %struct.proc** %12, align 8
  %29 = getelementptr inbounds %struct.proc, %struct.proc* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store %struct.vm_map* %31, %struct.vm_map** %11, align 8
  br label %50

32:                                               ; preds = %5
  %33 = call i32 (...) @intr_enable()
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* @VM_MAXUSER_ADDRESS, align 8
  %36 = icmp sge i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load %struct.vm_map*, %struct.vm_map** @kernel_map, align 8
  store %struct.vm_map* %38, %struct.vm_map** %11, align 8
  br label %49

39:                                               ; preds = %32
  %40 = load %struct.proc*, %struct.proc** %12, align 8
  %41 = getelementptr inbounds %struct.proc, %struct.proc* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store %struct.vm_map* %43, %struct.vm_map** %11, align 8
  %44 = load %struct.vm_map*, %struct.vm_map** %11, align 8
  %45 = icmp eq %struct.vm_map* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load %struct.vm_map*, %struct.vm_map** @kernel_map, align 8
  store %struct.vm_map* %47, %struct.vm_map** %11, align 8
  br label %48

48:                                               ; preds = %46, %39
  br label %49

49:                                               ; preds = %48, %37
  br label %50

50:                                               ; preds = %49, %27
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %50
  %54 = load %struct.vm_map*, %struct.vm_map** %11, align 8
  %55 = load %struct.vm_map*, %struct.vm_map** @kernel_map, align 8
  %56 = icmp eq %struct.vm_map* %54, %55
  br i1 %56, label %62, label %57

57:                                               ; preds = %53
  %58 = load %struct.pcb*, %struct.pcb** %13, align 8
  %59 = getelementptr inbounds %struct.pcb, %struct.pcb* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %57, %53, %50
  %63 = load %struct.vm_map*, %struct.vm_map** %11, align 8
  %64 = getelementptr inbounds %struct.vm_map, %struct.vm_map* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i64, i64* %8, align 8
  %67 = load i64, i64* %9, align 8
  %68 = call i32 @pmap_fault(i32 %65, i64 %66, i64 %67)
  %69 = load i32, i32* @KERN_SUCCESS, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  br label %176

72:                                               ; preds = %62, %57
  %73 = load %struct.thread*, %struct.thread** %6, align 8
  %74 = getelementptr inbounds %struct.thread, %struct.thread* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %76, 0
  %78 = zext i1 %77 to i32
  %79 = call i32 @KASSERT(i32 %78, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %80 = load %struct.thread*, %struct.thread** %6, align 8
  %81 = getelementptr inbounds %struct.thread, %struct.thread* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %72
  %85 = load i32, i32* @WARN_SLEEPOK, align 4
  %86 = load i32, i32* @WARN_GIANTOK, align 4
  %87 = or i32 %85, %86
  %88 = call i64 @WITNESS_CHECK(i32 %87, i32* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %84, %72
  %91 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %92 = call i32 @print_registers(%struct.trapframe* %91)
  %93 = load i64, i64* %9, align 8
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i64 %93)
  %95 = load i64, i64* %8, align 8
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i64 %95)
  %97 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  br label %98

98:                                               ; preds = %90, %84
  %99 = load i64, i64* %8, align 8
  %100 = call i32 @ESR_ELx_EXCEPTION(i64 %99)
  switch i32 %100, label %103 [
    i32 129, label %101
    i32 128, label %101
  ]

101:                                              ; preds = %98, %98
  %102 = load i32, i32* @VM_PROT_EXECUTE, align 4
  store i32 %102, i32* %14, align 4
  br label %116

103:                                              ; preds = %98
  %104 = load i64, i64* %8, align 8
  %105 = load i64, i64* @ISS_DATA_WnR, align 8
  %106 = and i64 %104, %105
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %103
  %109 = load i32, i32* @VM_PROT_READ, align 4
  br label %114

110:                                              ; preds = %103
  %111 = load i32, i32* @VM_PROT_READ, align 4
  %112 = load i32, i32* @VM_PROT_WRITE, align 4
  %113 = or i32 %111, %112
  br label %114

114:                                              ; preds = %110, %108
  %115 = phi i32 [ %109, %108 ], [ %113, %110 ]
  store i32 %115, i32* %14, align 4
  br label %116

116:                                              ; preds = %114, %101
  %117 = load %struct.vm_map*, %struct.vm_map** %11, align 8
  %118 = load i64, i64* %9, align 8
  %119 = load i32, i32* %14, align 4
  %120 = load i32, i32* @VM_FAULT_NORMAL, align 4
  %121 = call i32 @vm_fault_trap(%struct.vm_map* %117, i64 %118, i32 %119, i32 %120, i32* %16, i32* %17)
  store i32 %121, i32* %15, align 4
  %122 = load i32, i32* %15, align 4
  %123 = load i32, i32* @KERN_SUCCESS, align 4
  %124 = icmp ne i32 %122, %123
  br i1 %124, label %125, label %169

125:                                              ; preds = %116
  %126 = load i32, i32* %10, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %125
  %129 = load %struct.thread*, %struct.thread** %6, align 8
  %130 = load i32, i32* %16, align 4
  %131 = load i32, i32* %17, align 4
  %132 = load i64, i64* %9, align 8
  %133 = inttoptr i64 %132 to i8*
  %134 = call i32 @call_trapsignal(%struct.thread* %129, i32 %130, i32 %131, i8* %133)
  br label %168

135:                                              ; preds = %125
  %136 = load %struct.thread*, %struct.thread** %6, align 8
  %137 = getelementptr inbounds %struct.thread, %struct.thread* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %156

140:                                              ; preds = %135
  %141 = load %struct.pcb*, %struct.pcb** %13, align 8
  %142 = getelementptr inbounds %struct.pcb, %struct.pcb* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %156

145:                                              ; preds = %140
  %146 = load i32, i32* %15, align 4
  %147 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %148 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 0
  store i32 %146, i32* %150, align 4
  %151 = load %struct.pcb*, %struct.pcb** %13, align 8
  %152 = getelementptr inbounds %struct.pcb, %struct.pcb* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %155 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %154, i32 0, i32 1
  store i64 %153, i64* %155, align 8
  br label %176

156:                                              ; preds = %140, %135
  %157 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %158 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %159 = call i32 @print_registers(%struct.trapframe* %158)
  %160 = load i64, i64* %9, align 8
  %161 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i64 %160)
  %162 = load i64, i64* %8, align 8
  %163 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i64 %162)
  %164 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %165 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i64 %166)
  br label %168

168:                                              ; preds = %156, %128
  br label %169

169:                                              ; preds = %168, %116
  %170 = load i32, i32* %10, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %169
  %173 = load %struct.thread*, %struct.thread** %6, align 8
  %174 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %175 = call i32 @userret(%struct.thread* %173, %struct.trapframe* %174)
  br label %176

176:                                              ; preds = %71, %145, %172, %169
  ret void
}

declare dso_local i32 @clrex(...) #1

declare dso_local i32 @intr_enable(...) #1

declare dso_local i32 @pmap_fault(i32, i64, i64) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @WITNESS_CHECK(i32, i32*, i8*) #1

declare dso_local i32 @print_registers(%struct.trapframe*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local i32 @ESR_ELx_EXCEPTION(i64) #1

declare dso_local i32 @vm_fault_trap(%struct.vm_map*, i64, i32, i32, i32*, i32*) #1

declare dso_local i32 @call_trapsignal(%struct.thread*, i32, i32, i8*) #1

declare dso_local i32 @userret(%struct.thread*, %struct.trapframe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
