; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_vdso.c_cloudabi_vdso_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_vdso.c_cloudabi_vdso_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysentvec = type { i64, i64, i64, i32, i64 }
%struct.TYPE_4__ = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@OBJT_PHYS = common dso_local global i32 0, align 4
@VM_PROT_DEFAULT = common dso_local global i32 0, align 4
@VM_ALLOC_NOBUSY = common dso_local global i32 0, align 4
@VM_ALLOC_ZERO = common dso_local global i32 0, align 4
@VM_PAGE_BITS_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cloudabi_vdso_init(%struct.sysentvec* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.sysentvec*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.sysentvec* %0, %struct.sysentvec** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = ptrtoint i8* %14 to i64
  %17 = ptrtoint i8* %15 to i64
  %18 = sub i64 %16, %17
  store i64 %18, i64* %13, align 8
  %19 = load i64, i64* %13, align 8
  %20 = load i64, i64* @PAGE_SIZE, align 8
  %21 = call i64 @howmany(i64 %19, i64 %20)
  store i64 %21, i64* %11, align 8
  %22 = load i64, i64* %11, align 8
  %23 = load i64, i64* @PAGE_SIZE, align 8
  %24 = mul i64 %22, %23
  store i64 %24, i64* %12, align 8
  %25 = load i32, i32* @OBJT_PHYS, align 4
  %26 = load i64, i64* %12, align 8
  %27 = load i32, i32* @VM_PROT_DEFAULT, align 4
  %28 = call i32 @vm_pager_allocate(i32 %25, i32 0, i64 %26, i32 %27, i32 0, i32* null)
  store i32 %28, i32* %8, align 4
  %29 = load i64, i64* @PAGE_SIZE, align 8
  %30 = call i64 @kva_alloc(i64 %29)
  store i64 %30, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %31

31:                                               ; preds = %68, %3
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* %11, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %71

35:                                               ; preds = %31
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @VM_OBJECT_WLOCK(i32 %36)
  %38 = load i32, i32* %8, align 4
  %39 = load i64, i64* %10, align 8
  %40 = load i32, i32* @VM_ALLOC_NOBUSY, align 4
  %41 = load i32, i32* @VM_ALLOC_ZERO, align 4
  %42 = or i32 %40, %41
  %43 = call %struct.TYPE_4__* @vm_page_grab(i32 %38, i64 %39, i32 %42)
  store %struct.TYPE_4__* %43, %struct.TYPE_4__** %7, align 8
  %44 = load i32, i32* @VM_PAGE_BITS_ALL, align 4
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @VM_OBJECT_WUNLOCK(i32 %47)
  %49 = load i64, i64* %9, align 8
  %50 = call i32 @pmap_qenter(i64 %49, %struct.TYPE_4__** %7, i32 1)
  %51 = load i64, i64* %9, align 8
  %52 = inttoptr i64 %51 to i8*
  %53 = load i8*, i8** %5, align 8
  %54 = load i64, i64* %10, align 8
  %55 = load i64, i64* @PAGE_SIZE, align 8
  %56 = mul i64 %54, %55
  %57 = getelementptr inbounds i8, i8* %53, i64 %56
  %58 = load i64, i64* %13, align 8
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* @PAGE_SIZE, align 8
  %61 = mul i64 %59, %60
  %62 = sub i64 %58, %61
  %63 = load i64, i64* @PAGE_SIZE, align 8
  %64 = call i32 @MIN(i64 %62, i64 %63)
  %65 = call i32 @memcpy(i8* %52, i8* %57, i32 %64)
  %66 = load i64, i64* %9, align 8
  %67 = call i32 @pmap_qremove(i64 %66, i32 1)
  br label %68

68:                                               ; preds = %35
  %69 = load i64, i64* %10, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %10, align 8
  br label %31

71:                                               ; preds = %31
  %72 = load i64, i64* %9, align 8
  %73 = load i64, i64* @PAGE_SIZE, align 8
  %74 = call i32 @kva_free(i64 %72, i64 %73)
  %75 = load %struct.sysentvec*, %struct.sysentvec** %4, align 8
  %76 = getelementptr inbounds %struct.sysentvec, %struct.sysentvec* %75, i32 0, i32 4
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %12, align 8
  %79 = sub i64 %77, %78
  %80 = load %struct.sysentvec*, %struct.sysentvec** %4, align 8
  %81 = getelementptr inbounds %struct.sysentvec, %struct.sysentvec* %80, i32 0, i32 1
  store i64 %79, i64* %81, align 8
  %82 = load i64, i64* %12, align 8
  %83 = load %struct.sysentvec*, %struct.sysentvec** %4, align 8
  %84 = getelementptr inbounds %struct.sysentvec, %struct.sysentvec* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  %85 = load i32, i32* %8, align 4
  %86 = load %struct.sysentvec*, %struct.sysentvec** %4, align 8
  %87 = getelementptr inbounds %struct.sysentvec, %struct.sysentvec* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 8
  %88 = load %struct.sysentvec*, %struct.sysentvec** %4, align 8
  %89 = getelementptr inbounds %struct.sysentvec, %struct.sysentvec* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.sysentvec*, %struct.sysentvec** %4, align 8
  %92 = getelementptr inbounds %struct.sysentvec, %struct.sysentvec* %91, i32 0, i32 2
  store i64 %90, i64* %92, align 8
  ret void
}

declare dso_local i64 @howmany(i64, i64) #1

declare dso_local i32 @vm_pager_allocate(i32, i32, i64, i32, i32, i32*) #1

declare dso_local i64 @kva_alloc(i64) #1

declare dso_local i32 @VM_OBJECT_WLOCK(i32) #1

declare dso_local %struct.TYPE_4__* @vm_page_grab(i32, i64, i32) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(i32) #1

declare dso_local i32 @pmap_qenter(i64, %struct.TYPE_4__**, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @MIN(i64, i64) #1

declare dso_local i32 @pmap_qremove(i64, i32) #1

declare dso_local i32 @kva_free(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
