; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vmx.c_vmx_getdesc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vmx.c_vmx_getdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seg_desc = type { i32 }
%struct.vmx = type { i32*, i32 }

@curcpu = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"vmx_getdesc: %s%d is running\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, %struct.seg_desc*)* @vmx_getdesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmx_getdesc(i8* %0, i32 %1, i32 %2, %struct.seg_desc* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.seg_desc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.vmx*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.seg_desc* %3, %struct.seg_desc** %8, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.vmx*
  store %struct.vmx* %13, %struct.vmx** %11, align 8
  %14 = load %struct.vmx*, %struct.vmx** %11, align 8
  %15 = getelementptr inbounds %struct.vmx, %struct.vmx* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @vcpu_is_running(i32 %16, i32 %17, i32* %9)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @curcpu, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = load %struct.vmx*, %struct.vmx** %11, align 8
  %27 = getelementptr inbounds %struct.vmx, %struct.vmx* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @vm_name(i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @panic(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %25, %21, %4
  %33 = load %struct.vmx*, %struct.vmx** %11, align 8
  %34 = getelementptr inbounds %struct.vmx, %struct.vmx* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.seg_desc*, %struct.seg_desc** %8, align 8
  %42 = call i32 @vmcs_getdesc(i32* %38, i32 %39, i32 %40, %struct.seg_desc* %41)
  ret i32 %42
}

declare dso_local i32 @vcpu_is_running(i32, i32, i32*) #1

declare dso_local i32 @panic(i8*, i32, i32) #1

declare dso_local i32 @vm_name(i32) #1

declare dso_local i32 @vmcs_getdesc(i32*, i32, i32, %struct.seg_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
