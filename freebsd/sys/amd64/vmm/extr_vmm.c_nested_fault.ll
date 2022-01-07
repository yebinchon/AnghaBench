; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm.c_nested_fault.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm.c_nested_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm = type { i32 }

@VM_INTINFO_VALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"info1 %#lx is not valid\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"info2 %#lx is not valid\00", align 1
@VM_INTINFO_TYPE = common dso_local global i32 0, align 4
@VM_INTINFO_HWEXCEPTION = common dso_local global i32 0, align 4
@IDT_DF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"triple fault: info1(%#lx), info2(%#lx)\00", align 1
@VM_SUSPEND_TRIPLEFAULT = common dso_local global i32 0, align 4
@EXC_CONTRIBUTORY = common dso_local global i32 0, align 4
@EXC_PAGEFAULT = common dso_local global i32 0, align 4
@EXC_BENIGN = common dso_local global i32 0, align 4
@VM_INTINFO_DEL_ERRCODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm*, i32, i32, i32, i32*)* @nested_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nested_fault(%struct.vm* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.vm* %0, %struct.vm** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @VM_INTINFO_VALID, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to i8*
  %22 = call i32 @KASSERT(i32 %18, i8* %21)
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @VM_INTINFO_VALID, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i8*
  %29 = call i32 @KASSERT(i32 %25, i8* %28)
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @VM_INTINFO_TYPE, align 4
  %32 = and i32 %30, %31
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %9, align 4
  %34 = and i32 %33, 255
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %14, align 4
  %36 = load i32, i32* @VM_INTINFO_HWEXCEPTION, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %5
  %39 = load i32, i32* %15, align 4
  %40 = load i32, i32* @IDT_DF, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %38
  %43 = load %struct.vm*, %struct.vm** %7, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @VCPU_CTR2(%struct.vm* %43, i32 %44, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %45, i32 %46)
  %48 = load %struct.vm*, %struct.vm** %7, align 8
  %49 = load i32, i32* @VM_SUSPEND_TRIPLEFAULT, align 4
  %50 = call i32 @vm_suspend(%struct.vm* %48, i32 %49)
  %51 = load i32*, i32** %11, align 8
  store i32 0, i32* %51, align 4
  store i32 0, i32* %6, align 4
  br label %89

52:                                               ; preds = %38, %5
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @exception_class(i32 %53)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @exception_class(i32 %55)
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* @EXC_CONTRIBUTORY, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %52
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* @EXC_CONTRIBUTORY, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %72, label %64

64:                                               ; preds = %60, %52
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* @EXC_PAGEFAULT, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %85

68:                                               ; preds = %64
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* @EXC_BENIGN, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %85

72:                                               ; preds = %68, %60
  %73 = load i32, i32* @IDT_DF, align 4
  %74 = load i32*, i32** %11, align 8
  store i32 %73, i32* %74, align 4
  %75 = load i32, i32* @VM_INTINFO_VALID, align 4
  %76 = load i32, i32* @VM_INTINFO_HWEXCEPTION, align 4
  %77 = or i32 %75, %76
  %78 = load i32*, i32** %11, align 8
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %77
  store i32 %80, i32* %78, align 4
  %81 = load i32, i32* @VM_INTINFO_DEL_ERRCODE, align 4
  %82 = load i32*, i32** %11, align 8
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %81
  store i32 %84, i32* %82, align 4
  br label %88

85:                                               ; preds = %68, %64
  %86 = load i32, i32* %10, align 4
  %87 = load i32*, i32** %11, align 8
  store i32 %86, i32* %87, align 4
  br label %88

88:                                               ; preds = %85, %72
  store i32 1, i32* %6, align 4
  br label %89

89:                                               ; preds = %88, %42
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @VCPU_CTR2(%struct.vm*, i32, i8*, i32, i32) #1

declare dso_local i32 @vm_suspend(%struct.vm*, i32) #1

declare dso_local i32 @exception_class(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
