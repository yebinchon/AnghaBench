; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcuse/extr_cuse_lib.c_cuse_vmfree.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcuse/extr_cuse_lib.c_cuse_vmfree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cuse_vm_allocation = type { i8*, i64 }
%struct.cuse_alloc_info = type { i32 }

@f_cuse = common dso_local global i64 0, align 8
@CUSE_ALLOC_UNIT_MAX = common dso_local global i32 0, align 4
@a_cuse = common dso_local global %struct.cuse_vm_allocation* null, align 8
@CUSE_IOCTL_FREE_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Freeing memory failed: %d\0A\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cuse_vmfree(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.cuse_vm_allocation, align 8
  %4 = alloca %struct.cuse_alloc_info, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i64, i64* @f_cuse, align 8
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %67

10:                                               ; preds = %1
  %11 = call i32 (...) @CUSE_LOCK()
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %62, %10
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @CUSE_ALLOC_UNIT_MAX, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %65

16:                                               ; preds = %12
  %17 = load %struct.cuse_vm_allocation*, %struct.cuse_vm_allocation** @a_cuse, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.cuse_vm_allocation, %struct.cuse_vm_allocation* %17, i64 %19
  %21 = getelementptr inbounds %struct.cuse_vm_allocation, %struct.cuse_vm_allocation* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load i8*, i8** %2, align 8
  %24 = icmp ne i8* %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  br label %62

26:                                               ; preds = %16
  %27 = load %struct.cuse_vm_allocation*, %struct.cuse_vm_allocation** @a_cuse, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.cuse_vm_allocation, %struct.cuse_vm_allocation* %27, i64 %29
  %31 = bitcast %struct.cuse_vm_allocation* %3 to i8*
  %32 = bitcast %struct.cuse_vm_allocation* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 16, i1 false)
  %33 = call i32 (...) @CUSE_UNLOCK()
  %34 = getelementptr inbounds %struct.cuse_vm_allocation, %struct.cuse_vm_allocation* %3, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds %struct.cuse_vm_allocation, %struct.cuse_vm_allocation* %3, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @munmap(i8* %35, i64 %37)
  %39 = call i32 @memset(%struct.cuse_alloc_info* %4, i32 0, i32 4)
  %40 = load i32, i32* %6, align 4
  %41 = getelementptr inbounds %struct.cuse_alloc_info, %struct.cuse_alloc_info* %4, i32 0, i32 0
  store i32 %40, i32* %41, align 4
  %42 = load i64, i64* @f_cuse, align 8
  %43 = load i32, i32* @CUSE_IOCTL_FREE_MEMORY, align 4
  %44 = call i32 @ioctl(i64 %42, i32 %43, %struct.cuse_alloc_info* %4)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %26
  %48 = load i32, i32* @errno, align 4
  %49 = call i32 @DPRINTF(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %47, %26
  %51 = call i32 (...) @CUSE_LOCK()
  %52 = load %struct.cuse_vm_allocation*, %struct.cuse_vm_allocation** @a_cuse, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.cuse_vm_allocation, %struct.cuse_vm_allocation* %52, i64 %54
  %56 = getelementptr inbounds %struct.cuse_vm_allocation, %struct.cuse_vm_allocation* %55, i32 0, i32 0
  store i8* null, i8** %56, align 8
  %57 = load %struct.cuse_vm_allocation*, %struct.cuse_vm_allocation** @a_cuse, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.cuse_vm_allocation, %struct.cuse_vm_allocation* %57, i64 %59
  %61 = getelementptr inbounds %struct.cuse_vm_allocation, %struct.cuse_vm_allocation* %60, i32 0, i32 1
  store i64 0, i64* %61, align 8
  br label %65

62:                                               ; preds = %25
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %12

65:                                               ; preds = %50, %12
  %66 = call i32 (...) @CUSE_UNLOCK()
  br label %67

67:                                               ; preds = %65, %9
  ret void
}

declare dso_local i32 @CUSE_LOCK(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @CUSE_UNLOCK(...) #1

declare dso_local i32 @munmap(i8*, i64) #1

declare dso_local i32 @memset(%struct.cuse_alloc_info*, i32, i32) #1

declare dso_local i32 @ioctl(i64, i32, %struct.cuse_alloc_info*) #1

declare dso_local i32 @DPRINTF(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
