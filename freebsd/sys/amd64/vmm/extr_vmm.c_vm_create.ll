; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm.c_vm_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm.c_vm_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm = type { i32, i32, i32, i32, i32, %struct.vmspace*, i32 }
%struct.vmspace = type { i32 }

@vmm_initialized = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@VM_MAX_NAMELEN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@VM_MAXUSER_ADDRESS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@M_VM = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"vm rendezvous lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@cores_per_package = common dso_local global i32 0, align 4
@threads_per_core = common dso_local global i32 0, align 4
@VM_MAXCPU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_create(i8* %0, %struct.vm** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.vm**, align 8
  %6 = alloca %struct.vm*, align 8
  %7 = alloca %struct.vmspace*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.vm** %1, %struct.vm*** %5, align 8
  %8 = load i32, i32* @vmm_initialized, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @ENXIO, align 4
  store i32 %11, i32* %3, align 4
  br label %62

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %12
  %16 = load i8*, i8** %4, align 8
  %17 = call i64 @strlen(i8* %16)
  %18 = load i64, i64* @VM_MAX_NAMELEN, align 8
  %19 = icmp sge i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %15, %12
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %3, align 4
  br label %62

22:                                               ; preds = %15
  %23 = load i32, i32* @VM_MAXUSER_ADDRESS, align 4
  %24 = call %struct.vmspace* @VMSPACE_ALLOC(i32 0, i32 %23)
  store %struct.vmspace* %24, %struct.vmspace** %7, align 8
  %25 = load %struct.vmspace*, %struct.vmspace** %7, align 8
  %26 = icmp eq %struct.vmspace* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* @ENOMEM, align 4
  store i32 %28, i32* %3, align 4
  br label %62

29:                                               ; preds = %22
  %30 = load i32, i32* @M_VM, align 4
  %31 = load i32, i32* @M_WAITOK, align 4
  %32 = load i32, i32* @M_ZERO, align 4
  %33 = or i32 %31, %32
  %34 = call %struct.vm* @malloc(i32 40, i32 %30, i32 %33)
  store %struct.vm* %34, %struct.vm** %6, align 8
  %35 = load %struct.vm*, %struct.vm** %6, align 8
  %36 = getelementptr inbounds %struct.vm, %struct.vm* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 8
  %38 = load i8*, i8** %4, align 8
  %39 = call i32 @strcpy(i32 %37, i8* %38)
  %40 = load %struct.vmspace*, %struct.vmspace** %7, align 8
  %41 = load %struct.vm*, %struct.vm** %6, align 8
  %42 = getelementptr inbounds %struct.vm, %struct.vm* %41, i32 0, i32 5
  store %struct.vmspace* %40, %struct.vmspace** %42, align 8
  %43 = load %struct.vm*, %struct.vm** %6, align 8
  %44 = getelementptr inbounds %struct.vm, %struct.vm* %43, i32 0, i32 4
  %45 = load i32, i32* @MTX_DEF, align 4
  %46 = call i32 @mtx_init(i32* %44, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 0, i32 %45)
  %47 = load %struct.vm*, %struct.vm** %6, align 8
  %48 = getelementptr inbounds %struct.vm, %struct.vm* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = load i32, i32* @cores_per_package, align 4
  %50 = load %struct.vm*, %struct.vm** %6, align 8
  %51 = getelementptr inbounds %struct.vm, %struct.vm* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @threads_per_core, align 4
  %53 = load %struct.vm*, %struct.vm** %6, align 8
  %54 = getelementptr inbounds %struct.vm, %struct.vm* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* @VM_MAXCPU, align 4
  %56 = load %struct.vm*, %struct.vm** %6, align 8
  %57 = getelementptr inbounds %struct.vm, %struct.vm* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.vm*, %struct.vm** %6, align 8
  %59 = call i32 @vm_init(%struct.vm* %58, i32 1)
  %60 = load %struct.vm*, %struct.vm** %6, align 8
  %61 = load %struct.vm**, %struct.vm*** %5, align 8
  store %struct.vm* %60, %struct.vm** %61, align 8
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %29, %27, %20, %10
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.vmspace* @VMSPACE_ALLOC(i32, i32) #1

declare dso_local %struct.vm* @malloc(i32, i32, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32, i32) #1

declare dso_local i32 @vm_init(%struct.vm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
