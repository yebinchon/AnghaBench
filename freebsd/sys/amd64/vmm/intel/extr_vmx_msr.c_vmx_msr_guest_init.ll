; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vmx_msr.c_vmx_msr_guest_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vmx_msr.c_vmx_msr_guest_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmx = type { i32** }

@MSR_LSTAR = common dso_local global i32 0, align 4
@MSR_CSTAR = common dso_local global i32 0, align 4
@MSR_STAR = common dso_local global i32 0, align 4
@MSR_SF_MASK = common dso_local global i32 0, align 4
@MSR_KGSBASE = common dso_local global i32 0, align 4
@PAT_WRITE_BACK = common dso_local global i32 0, align 4
@PAT_WRITE_THROUGH = common dso_local global i32 0, align 4
@PAT_UNCACHED = common dso_local global i32 0, align 4
@PAT_UNCACHEABLE = common dso_local global i32 0, align 4
@IDX_MSR_PAT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmx_msr_guest_init(%struct.vmx* %0, i32 %1) #0 {
  %3 = alloca %struct.vmx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.vmx* %0, %struct.vmx** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.vmx*, %struct.vmx** %3, align 8
  %7 = getelementptr inbounds %struct.vmx, %struct.vmx* %6, i32 0, i32 0
  %8 = load i32**, i32*** %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32*, i32** %8, i64 %10
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %2
  %16 = load %struct.vmx*, %struct.vmx** %3, align 8
  %17 = load i32, i32* @MSR_LSTAR, align 4
  %18 = call i32 @guest_msr_rw(%struct.vmx* %16, i32 %17)
  %19 = load %struct.vmx*, %struct.vmx** %3, align 8
  %20 = load i32, i32* @MSR_CSTAR, align 4
  %21 = call i32 @guest_msr_rw(%struct.vmx* %19, i32 %20)
  %22 = load %struct.vmx*, %struct.vmx** %3, align 8
  %23 = load i32, i32* @MSR_STAR, align 4
  %24 = call i32 @guest_msr_rw(%struct.vmx* %22, i32 %23)
  %25 = load %struct.vmx*, %struct.vmx** %3, align 8
  %26 = load i32, i32* @MSR_SF_MASK, align 4
  %27 = call i32 @guest_msr_rw(%struct.vmx* %25, i32 %26)
  %28 = load %struct.vmx*, %struct.vmx** %3, align 8
  %29 = load i32, i32* @MSR_KGSBASE, align 4
  %30 = call i32 @guest_msr_rw(%struct.vmx* %28, i32 %29)
  br label %31

31:                                               ; preds = %15, %2
  %32 = load i32, i32* @PAT_WRITE_BACK, align 4
  %33 = call i32 @PAT_VALUE(i32 0, i32 %32)
  %34 = load i32, i32* @PAT_WRITE_THROUGH, align 4
  %35 = call i32 @PAT_VALUE(i32 1, i32 %34)
  %36 = or i32 %33, %35
  %37 = load i32, i32* @PAT_UNCACHED, align 4
  %38 = call i32 @PAT_VALUE(i32 2, i32 %37)
  %39 = or i32 %36, %38
  %40 = load i32, i32* @PAT_UNCACHEABLE, align 4
  %41 = call i32 @PAT_VALUE(i32 3, i32 %40)
  %42 = or i32 %39, %41
  %43 = load i32, i32* @PAT_WRITE_BACK, align 4
  %44 = call i32 @PAT_VALUE(i32 4, i32 %43)
  %45 = or i32 %42, %44
  %46 = load i32, i32* @PAT_WRITE_THROUGH, align 4
  %47 = call i32 @PAT_VALUE(i32 5, i32 %46)
  %48 = or i32 %45, %47
  %49 = load i32, i32* @PAT_UNCACHED, align 4
  %50 = call i32 @PAT_VALUE(i32 6, i32 %49)
  %51 = or i32 %48, %50
  %52 = load i32, i32* @PAT_UNCACHEABLE, align 4
  %53 = call i32 @PAT_VALUE(i32 7, i32 %52)
  %54 = or i32 %51, %53
  %55 = load i32*, i32** %5, align 8
  %56 = load i64, i64* @IDX_MSR_PAT, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  store i32 %54, i32* %57, align 4
  ret void
}

declare dso_local i32 @guest_msr_rw(%struct.vmx*, i32) #1

declare dso_local i32 @PAT_VALUE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
