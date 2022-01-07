; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libvmmapi/extr_vmmapi.c_vm_alloc_memseg.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libvmmapi/extr_vmmapi.c_vm_alloc_memseg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }
%struct.vm_memseg = type { i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@VM_ALLOC_MEMSEG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmctx*, i32, i64, i8*)* @vm_alloc_memseg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vm_alloc_memseg(%struct.vmctx* %0, i32 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vmctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.vm_memseg, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.vmctx* %0, %struct.vmctx** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.vmctx*, %struct.vmctx** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = getelementptr inbounds %struct.vm_memseg, %struct.vm_memseg* %10, i32 0, i32 0
  %16 = getelementptr inbounds %struct.vm_memseg, %struct.vm_memseg* %10, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @vm_get_memseg(%struct.vmctx* %13, i32 %14, i64* %15, i32 %17, i32 4)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* %12, align 4
  store i32 %22, i32* %5, align 4
  br label %63

23:                                               ; preds = %4
  %24 = getelementptr inbounds %struct.vm_memseg, %struct.vm_memseg* %10, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  %28 = load i64, i64* %8, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = getelementptr inbounds %struct.vm_memseg, %struct.vm_memseg* %10, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @VM_MEMSEG_NAME(%struct.vm_memseg* %10)
  %33 = call i64 @cmpseg(i64 %28, i8* %29, i64 %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* @EINVAL, align 4
  store i32 %36, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %63

37:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %63

38:                                               ; preds = %23
  %39 = call i32 @bzero(%struct.vm_memseg* %10, i32 16)
  %40 = load i32, i32* %7, align 4
  %41 = getelementptr inbounds %struct.vm_memseg, %struct.vm_memseg* %10, i32 0, i32 1
  store i32 %40, i32* %41, align 8
  %42 = load i64, i64* %8, align 8
  %43 = getelementptr inbounds %struct.vm_memseg, %struct.vm_memseg* %10, i32 0, i32 0
  store i64 %42, i64* %43, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %56

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.vm_memseg, %struct.vm_memseg* %10, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i8*, i8** %9, align 8
  %50 = call i64 @strlcpy(i32 %48, i8* %49, i32 4)
  store i64 %50, i64* %11, align 8
  %51 = load i64, i64* %11, align 8
  %52 = icmp uge i64 %51, 4
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i32, i32* @ENAMETOOLONG, align 4
  store i32 %54, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %63

55:                                               ; preds = %46
  br label %56

56:                                               ; preds = %55, %38
  %57 = load %struct.vmctx*, %struct.vmctx** %6, align 8
  %58 = getelementptr inbounds %struct.vmctx, %struct.vmctx* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @VM_ALLOC_MEMSEG, align 4
  %61 = call i32 @ioctl(i32 %59, i32 %60, %struct.vm_memseg* %10)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %56, %53, %37, %35, %21
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @vm_get_memseg(%struct.vmctx*, i32, i64*, i32, i32) #1

declare dso_local i64 @cmpseg(i64, i8*, i64, i32) #1

declare dso_local i32 @VM_MEMSEG_NAME(%struct.vm_memseg*) #1

declare dso_local i32 @bzero(%struct.vm_memseg*, i32) #1

declare dso_local i64 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.vm_memseg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
