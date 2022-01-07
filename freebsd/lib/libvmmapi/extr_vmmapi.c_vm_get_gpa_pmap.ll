; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libvmmapi/extr_vmmapi.c_vm_get_gpa_pmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libvmmapi/extr_vmmapi.c_vm_get_gpa_pmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }
%struct.vm_gpa_pte = type { i32, i32*, i32 }

@VM_GET_GPA_PMAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_get_gpa_pmap(%struct.vmctx* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.vmctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.vm_gpa_pte, align 8
  store %struct.vmctx* %0, %struct.vmctx** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = call i32 @bzero(%struct.vm_gpa_pte* %11, i32 24)
  %13 = load i32, i32* %6, align 4
  %14 = getelementptr inbounds %struct.vm_gpa_pte, %struct.vm_gpa_pte* %11, i32 0, i32 2
  store i32 %13, i32* %14, align 8
  %15 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %16 = getelementptr inbounds %struct.vmctx, %struct.vmctx* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @VM_GET_GPA_PMAP, align 4
  %19 = call i32 @ioctl(i32 %17, i32 %18, %struct.vm_gpa_pte* %11)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %46

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.vm_gpa_pte, %struct.vm_gpa_pte* %11, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32*, i32** %8, align 8
  store i32 %24, i32* %25, align 4
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %42, %22
  %27 = load i32, i32* %10, align 4
  %28 = getelementptr inbounds %struct.vm_gpa_pte, %struct.vm_gpa_pte* %11, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.vm_gpa_pte, %struct.vm_gpa_pte* %11, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32 %37, i32* %41, align 4
  br label %42

42:                                               ; preds = %31
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %10, align 4
  br label %26

45:                                               ; preds = %26
  br label %46

46:                                               ; preds = %45, %4
  %47 = load i32, i32* %9, align 4
  ret i32 %47
}

declare dso_local i32 @bzero(%struct.vm_gpa_pte*, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.vm_gpa_pte*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
