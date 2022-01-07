; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vmx.c_vmx_trigger_hostintr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vmx.c_vmx_trigger_hostintr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gate_descriptor = type { i32, i64, i64, i64, i64, i64, i64 }

@idt = common dso_local global %struct.gate_descriptor* null, align 8
@.str = private unnamed_addr constant [40 x i8] c"vmx_trigger_hostintr: invalid vector %d\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"gate descriptor for vector %d not present\00", align 1
@SDT_SYSIGT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [50 x i8] c"gate descriptor for vector %d has invalid type %d\00", align 1
@SEL_KPL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [49 x i8] c"gate descriptor for vector %d has invalid dpl %d\00", align 1
@GCODE_SEL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [54 x i8] c"gate descriptor for vector %d has invalid selector %d\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"gate descriptor for vector %d has invalid IST %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @vmx_trigger_hostintr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmx_trigger_hostintr(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.gate_descriptor*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load %struct.gate_descriptor*, %struct.gate_descriptor** @idt, align 8
  %6 = load i32, i32* %2, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.gate_descriptor, %struct.gate_descriptor* %5, i64 %7
  store %struct.gate_descriptor* %8, %struct.gate_descriptor** %4, align 8
  %9 = load i32, i32* %2, align 4
  %10 = icmp sge i32 %9, 32
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* %2, align 4
  %13 = icmp sle i32 %12, 255
  br label %14

14:                                               ; preds = %11, %1
  %15 = phi i1 [ false, %1 ], [ %13, %11 ]
  %16 = zext i1 %15 to i32
  %17 = load i32, i32* %2, align 4
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to i8*
  %20 = call i32 @KASSERT(i32 %16, i8* %19)
  %21 = load %struct.gate_descriptor*, %struct.gate_descriptor** %4, align 8
  %22 = getelementptr inbounds %struct.gate_descriptor, %struct.gate_descriptor* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 1
  %25 = zext i1 %24 to i32
  %26 = load i32, i32* %2, align 4
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i8*
  %29 = call i32 @KASSERT(i32 %25, i8* %28)
  %30 = load %struct.gate_descriptor*, %struct.gate_descriptor** %4, align 8
  %31 = getelementptr inbounds %struct.gate_descriptor, %struct.gate_descriptor* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SDT_SYSIGT, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = load i32, i32* %2, align 4
  %37 = load %struct.gate_descriptor*, %struct.gate_descriptor** %4, align 8
  %38 = getelementptr inbounds %struct.gate_descriptor, %struct.gate_descriptor* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i8*
  %41 = call i32 @KASSERT(i32 %35, i8* %40)
  %42 = load %struct.gate_descriptor*, %struct.gate_descriptor** %4, align 8
  %43 = getelementptr inbounds %struct.gate_descriptor, %struct.gate_descriptor* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @SEL_KPL, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = load i32, i32* %2, align 4
  %49 = load %struct.gate_descriptor*, %struct.gate_descriptor** %4, align 8
  %50 = getelementptr inbounds %struct.gate_descriptor, %struct.gate_descriptor* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to i8*
  %53 = call i32 @KASSERT(i32 %47, i8* %52)
  %54 = load %struct.gate_descriptor*, %struct.gate_descriptor** %4, align 8
  %55 = getelementptr inbounds %struct.gate_descriptor, %struct.gate_descriptor* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* @GCODE_SEL, align 4
  %58 = load i64, i64* @SEL_KPL, align 8
  %59 = call i64 @GSEL(i32 %57, i64 %58)
  %60 = icmp eq i64 %56, %59
  %61 = zext i1 %60 to i32
  %62 = load i32, i32* %2, align 4
  %63 = load %struct.gate_descriptor*, %struct.gate_descriptor** %4, align 8
  %64 = getelementptr inbounds %struct.gate_descriptor, %struct.gate_descriptor* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to i8*
  %67 = call i32 @KASSERT(i32 %61, i8* %66)
  %68 = load %struct.gate_descriptor*, %struct.gate_descriptor** %4, align 8
  %69 = getelementptr inbounds %struct.gate_descriptor, %struct.gate_descriptor* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %70, 0
  %72 = zext i1 %71 to i32
  %73 = load i32, i32* %2, align 4
  %74 = load %struct.gate_descriptor*, %struct.gate_descriptor** %4, align 8
  %75 = getelementptr inbounds %struct.gate_descriptor, %struct.gate_descriptor* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to i8*
  %78 = call i32 @KASSERT(i32 %72, i8* %77)
  %79 = load %struct.gate_descriptor*, %struct.gate_descriptor** %4, align 8
  %80 = getelementptr inbounds %struct.gate_descriptor, %struct.gate_descriptor* %79, i32 0, i32 6
  %81 = load i64, i64* %80, align 8
  %82 = shl i64 %81, 16
  %83 = load %struct.gate_descriptor*, %struct.gate_descriptor** %4, align 8
  %84 = getelementptr inbounds %struct.gate_descriptor, %struct.gate_descriptor* %83, i32 0, i32 5
  %85 = load i64, i64* %84, align 8
  %86 = or i64 %82, %85
  store i64 %86, i64* %3, align 8
  %87 = load i64, i64* %3, align 8
  %88 = call i32 @vmx_call_isr(i64 %87)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @GSEL(i32, i64) #1

declare dso_local i32 @vmx_call_isr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
