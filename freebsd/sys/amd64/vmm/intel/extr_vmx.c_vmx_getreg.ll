; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vmx.c_vmx_getreg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vmx.c_vmx_getreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmx = type { i32*, i32*, i32 }

@curcpu = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"vmx_getreg: %s%d is running\00", align 1
@VM_REG_GUEST_INTR_SHADOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32*)* @vmx_getreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmx_getreg(i8* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.vmx*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.vmx*
  store %struct.vmx* %14, %struct.vmx** %12, align 8
  %15 = load %struct.vmx*, %struct.vmx** %12, align 8
  %16 = getelementptr inbounds %struct.vmx, %struct.vmx* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @vcpu_is_running(i32 %17, i32 %18, i32* %11)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %4
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* @curcpu, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = load %struct.vmx*, %struct.vmx** %12, align 8
  %28 = getelementptr inbounds %struct.vmx, %struct.vmx* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @vm_name(i32 %29)
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @panic(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %26, %22, %4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @VM_REG_GUEST_INTR_SHADOW, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load %struct.vmx*, %struct.vmx** %12, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32*, i32** %9, align 8
  %42 = call i32 @vmx_get_intr_shadow(%struct.vmx* %38, i32 %39, i32 %40, i32* %41)
  store i32 %42, i32* %5, align 4
  br label %66

43:                                               ; preds = %33
  %44 = load %struct.vmx*, %struct.vmx** %12, align 8
  %45 = getelementptr inbounds %struct.vmx, %struct.vmx* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %8, align 4
  %51 = load i32*, i32** %9, align 8
  %52 = call i64 @vmxctx_getreg(i32* %49, i32 %50, i32* %51)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %43
  store i32 0, i32* %5, align 4
  br label %66

55:                                               ; preds = %43
  %56 = load %struct.vmx*, %struct.vmx** %12, align 8
  %57 = getelementptr inbounds %struct.vmx, %struct.vmx* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32*, i32** %9, align 8
  %65 = call i32 @vmcs_getreg(i32* %61, i32 %62, i32 %63, i32* %64)
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %55, %54, %37
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @vcpu_is_running(i32, i32, i32*) #1

declare dso_local i32 @panic(i8*, i32, i32) #1

declare dso_local i32 @vm_name(i32) #1

declare dso_local i32 @vmx_get_intr_shadow(%struct.vmx*, i32, i32, i32*) #1

declare dso_local i64 @vmxctx_getreg(i32*, i32, i32*) #1

declare dso_local i32 @vmcs_getreg(i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
