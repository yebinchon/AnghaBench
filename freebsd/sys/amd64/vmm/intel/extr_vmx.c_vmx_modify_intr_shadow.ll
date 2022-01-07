; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vmx.c_vmx_modify_intr_shadow.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vmx.c_vmx_modify_intr_shadow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmx = type { i32, %struct.vmcs* }
%struct.vmcs = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@VMCS_GUEST_INTERRUPTIBILITY = common dso_local global i32 0, align 4
@HWINTR_BLOCKING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Setting intr_shadow to %#lx %s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"succeeded\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmx*, i32, i32, i64)* @vmx_modify_intr_shadow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmx_modify_intr_shadow(%struct.vmx* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.vmx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.vmcs*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.vmx* %0, %struct.vmx** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %13 = load i64, i64* %8, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %11, align 4
  br label %43

17:                                               ; preds = %4
  %18 = load %struct.vmx*, %struct.vmx** %5, align 8
  %19 = getelementptr inbounds %struct.vmx, %struct.vmx* %18, i32 0, i32 1
  %20 = load %struct.vmcs*, %struct.vmcs** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.vmcs, %struct.vmcs* %20, i64 %22
  store %struct.vmcs* %23, %struct.vmcs** %9, align 8
  %24 = load i32, i32* @VMCS_GUEST_INTERRUPTIBILITY, align 4
  %25 = call i32 @VMCS_IDENT(i32 %24)
  store i32 %25, i32* %12, align 4
  %26 = load %struct.vmcs*, %struct.vmcs** %9, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %12, align 4
  %29 = call i32 @vmcs_getreg(%struct.vmcs* %26, i32 %27, i32 %28, i64* %10)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %17
  %33 = load i64, i64* @HWINTR_BLOCKING, align 8
  %34 = xor i64 %33, -1
  %35 = load i64, i64* %10, align 8
  %36 = and i64 %35, %34
  store i64 %36, i64* %10, align 8
  %37 = load %struct.vmcs*, %struct.vmcs** %9, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load i64, i64* %10, align 8
  %41 = call i32 @vmcs_setreg(%struct.vmcs* %37, i32 %38, i32 %39, i64 %40)
  store i32 %41, i32* %11, align 4
  br label %42

42:                                               ; preds = %32, %17
  br label %43

43:                                               ; preds = %42, %15
  %44 = load %struct.vmx*, %struct.vmx** %5, align 8
  %45 = getelementptr inbounds %struct.vmx, %struct.vmx* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load i64, i64* %8, align 8
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)
  %53 = call i32 @VCPU_CTR2(i32 %46, i32 %47, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %48, i8* %52)
  %54 = load i32, i32* %11, align 4
  ret i32 %54
}

declare dso_local i32 @VMCS_IDENT(i32) #1

declare dso_local i32 @vmcs_getreg(%struct.vmcs*, i32, i32, i64*) #1

declare dso_local i32 @vmcs_setreg(%struct.vmcs*, i32, i32, i64) #1

declare dso_local i32 @VCPU_CTR2(i32, i32, i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
