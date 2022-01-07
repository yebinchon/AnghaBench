; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libvmmapi/extr_vmmapi.c_vm_gla2gpa_nofault.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libvmmapi/extr_vmmapi.c_vm_gla2gpa_nofault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }
%struct.vm_guest_paging = type { i32 }
%struct.vm_gla2gpa = type { i32, i32, i32, i32, %struct.vm_guest_paging, i32 }

@VM_GLA2GPA_NOFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_gla2gpa_nofault(%struct.vmctx* %0, i32 %1, %struct.vm_guest_paging* %2, i32 %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.vmctx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.vm_guest_paging*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.vm_gla2gpa, align 4
  %16 = alloca i32, align 4
  store %struct.vmctx* %0, %struct.vmctx** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.vm_guest_paging* %2, %struct.vm_guest_paging** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %17 = call i32 @bzero(%struct.vm_gla2gpa* %15, i32 24)
  %18 = load i32, i32* %9, align 4
  %19 = getelementptr inbounds %struct.vm_gla2gpa, %struct.vm_gla2gpa* %15, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* %12, align 4
  %21 = getelementptr inbounds %struct.vm_gla2gpa, %struct.vm_gla2gpa* %15, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* %11, align 4
  %23 = getelementptr inbounds %struct.vm_gla2gpa, %struct.vm_gla2gpa* %15, i32 0, i32 5
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds %struct.vm_gla2gpa, %struct.vm_gla2gpa* %15, i32 0, i32 4
  %25 = load %struct.vm_guest_paging*, %struct.vm_guest_paging** %10, align 8
  %26 = bitcast %struct.vm_guest_paging* %24 to i8*
  %27 = bitcast %struct.vm_guest_paging* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 %27, i64 4, i1 false)
  %28 = load %struct.vmctx*, %struct.vmctx** %8, align 8
  %29 = getelementptr inbounds %struct.vmctx, %struct.vmctx* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @VM_GLA2GPA_NOFAULT, align 4
  %32 = call i32 @ioctl(i32 %30, i32 %31, %struct.vm_gla2gpa* %15)
  store i32 %32, i32* %16, align 4
  %33 = load i32, i32* %16, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %7
  %36 = getelementptr inbounds %struct.vm_gla2gpa, %struct.vm_gla2gpa* %15, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %14, align 8
  store i32 %37, i32* %38, align 4
  %39 = getelementptr inbounds %struct.vm_gla2gpa, %struct.vm_gla2gpa* %15, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %13, align 8
  store i32 %40, i32* %41, align 4
  br label %42

42:                                               ; preds = %35, %7
  %43 = load i32, i32* %16, align 4
  ret i32 %43
}

declare dso_local i32 @bzero(%struct.vm_gla2gpa*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ioctl(i32, i32, %struct.vm_gla2gpa*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
