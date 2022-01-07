; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libvmmapi/extr_vmmapi.c_vm_get_memseg.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libvmmapi/extr_vmmapi.c_vm_get_memseg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }
%struct.vm_memseg = type { i32, i64, i32 }

@VM_GET_MEMSEG = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_get_memseg(%struct.vmctx* %0, i32 %1, i64* %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.vmctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.vm_memseg, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.vmctx* %0, %struct.vmctx** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %14 = load i32, i32* %7, align 4
  %15 = getelementptr inbounds %struct.vm_memseg, %struct.vm_memseg* %11, i32 0, i32 0
  store i32 %14, i32* %15, align 8
  %16 = load %struct.vmctx*, %struct.vmctx** %6, align 8
  %17 = getelementptr inbounds %struct.vmctx, %struct.vmctx* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @VM_GET_MEMSEG, align 4
  %20 = call i32 @ioctl(i32 %18, i32 %19, %struct.vm_memseg* %11)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %5
  %24 = getelementptr inbounds %struct.vm_memseg, %struct.vm_memseg* %11, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64*, i64** %8, align 8
  store i64 %25, i64* %26, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = getelementptr inbounds %struct.vm_memseg, %struct.vm_memseg* %11, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i64, i64* %10, align 8
  %31 = call i64 @strlcpy(i8* %27, i32 %29, i64 %30)
  store i64 %31, i64* %12, align 8
  %32 = load i64, i64* %12, align 8
  %33 = load i64, i64* %10, align 8
  %34 = icmp uge i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %23
  %36 = load i32, i32* @ENAMETOOLONG, align 4
  store i32 %36, i32* @errno, align 4
  store i32 -1, i32* %13, align 4
  br label %37

37:                                               ; preds = %35, %23
  br label %38

38:                                               ; preds = %37, %5
  %39 = load i32, i32* %13, align 4
  ret i32 %39
}

declare dso_local i32 @ioctl(i32, i32, %struct.vm_memseg*) #1

declare dso_local i64 @strlcpy(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
