; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vmx.c_emulate_rdmsr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vmx.c_emulate_rdmsr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmx = type { %struct.vmxctx*, i32 }
%struct.vmxctx = type { i32 }

@VM_REG_GUEST_RAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"vmxctx_setreg(rax) error %d\00", align 1
@VM_REG_GUEST_RDX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"vmxctx_setreg(rdx) error %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmx*, i32, i32, i32*)* @emulate_rdmsr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emulate_rdmsr(%struct.vmx* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.vmx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.vmxctx*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.vmx* %0, %struct.vmx** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i64 @lapic_msr(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %4
  %18 = load %struct.vmx*, %struct.vmx** %5, align 8
  %19 = getelementptr inbounds %struct.vmx, %struct.vmx* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @lapic_rdmsr(i32 %20, i32 %21, i32 %22, i32* %10, i32* %23)
  store i32 %24, i32* %13, align 4
  br label %31

25:                                               ; preds = %4
  %26 = load %struct.vmx*, %struct.vmx** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @vmx_rdmsr(%struct.vmx* %26, i32 %27, i32 %28, i32* %10, i32* %29)
  store i32 %30, i32* %13, align 4
  br label %31

31:                                               ; preds = %25, %17
  %32 = load i32, i32* %13, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %66

34:                                               ; preds = %31
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %11, align 4
  %36 = load %struct.vmx*, %struct.vmx** %5, align 8
  %37 = getelementptr inbounds %struct.vmx, %struct.vmx* %36, i32 0, i32 0
  %38 = load %struct.vmxctx*, %struct.vmxctx** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.vmxctx, %struct.vmxctx* %38, i64 %40
  store %struct.vmxctx* %41, %struct.vmxctx** %9, align 8
  %42 = load %struct.vmxctx*, %struct.vmxctx** %9, align 8
  %43 = load i32, i32* @VM_REG_GUEST_RAX, align 4
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @vmxctx_setreg(%struct.vmxctx* %42, i32 %43, i32 %44)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp eq i32 %46, 0
  %48 = zext i1 %47 to i32
  %49 = load i32, i32* %13, align 4
  %50 = sext i32 %49 to i64
  %51 = inttoptr i64 %50 to i8*
  %52 = call i32 @KASSERT(i32 %48, i8* %51)
  %53 = load i32, i32* %10, align 4
  %54 = ashr i32 %53, 32
  store i32 %54, i32* %12, align 4
  %55 = load %struct.vmxctx*, %struct.vmxctx** %9, align 8
  %56 = load i32, i32* @VM_REG_GUEST_RDX, align 4
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @vmxctx_setreg(%struct.vmxctx* %55, i32 %56, i32 %57)
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp eq i32 %59, 0
  %61 = zext i1 %60 to i32
  %62 = load i32, i32* %13, align 4
  %63 = sext i32 %62 to i64
  %64 = inttoptr i64 %63 to i8*
  %65 = call i32 @KASSERT(i32 %61, i8* %64)
  br label %66

66:                                               ; preds = %34, %31
  %67 = load i32, i32* %13, align 4
  ret i32 %67
}

declare dso_local i64 @lapic_msr(i32) #1

declare dso_local i32 @lapic_rdmsr(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @vmx_rdmsr(%struct.vmx*, i32, i32, i32*, i32*) #1

declare dso_local i32 @vmxctx_setreg(%struct.vmxctx*, i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
