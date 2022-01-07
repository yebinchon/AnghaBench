; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vmcs.c_vmcs_getreg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vmcs.c_vmcs_getreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmcs = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmcs_getreg(%struct.vmcs* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vmcs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.vmcs* %0, %struct.vmcs** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load i32, i32* %8, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load i32, i32* %8, align 4
  %16 = and i32 %15, 2147483647
  store i32 %16, i32* %11, align 4
  br label %20

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @vmcs_field_encoding(i32 %18)
  store i32 %19, i32* %11, align 4
  br label %20

20:                                               ; preds = %17, %14
  %21 = load i32, i32* %11, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %5, align 4
  br label %42

25:                                               ; preds = %20
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load %struct.vmcs*, %struct.vmcs** %6, align 8
  %30 = call i32 @VMPTRLD(%struct.vmcs* %29)
  br label %31

31:                                               ; preds = %28, %25
  %32 = load i32, i32* %11, align 4
  %33 = load i32*, i32** %9, align 8
  %34 = call i32 @vmread(i32 %32, i32* %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %31
  %38 = load %struct.vmcs*, %struct.vmcs** %6, align 8
  %39 = call i32 @VMCLEAR(%struct.vmcs* %38)
  br label %40

40:                                               ; preds = %37, %31
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %40, %23
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @vmcs_field_encoding(i32) #1

declare dso_local i32 @VMPTRLD(%struct.vmcs*) #1

declare dso_local i32 @vmread(i32, i32*) #1

declare dso_local i32 @VMCLEAR(%struct.vmcs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
