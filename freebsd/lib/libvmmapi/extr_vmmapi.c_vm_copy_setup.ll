; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libvmmapi/extr_vmmapi.c_vm_copy_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libvmmapi/extr_vmmapi.c_vm_copy_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }
%struct.vm_guest_paging = type { i32 }
%struct.iovec = type { i32, i8* }

@PAGE_MASK = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_copy_setup(%struct.vmctx* %0, i32 %1, %struct.vm_guest_paging* %2, i32 %3, i64 %4, i32 %5, %struct.iovec* %6, i32 %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.vmctx*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.vm_guest_paging*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.iovec*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.vmctx* %0, %struct.vmctx** %11, align 8
  store i32 %1, i32* %12, align 4
  store %struct.vm_guest_paging* %2, %struct.vm_guest_paging** %13, align 8
  store i32 %3, i32* %14, align 4
  store i64 %4, i64* %15, align 8
  store i32 %5, i32* %16, align 4
  store %struct.iovec* %6, %struct.iovec** %17, align 8
  store i32 %7, i32* %18, align 4
  store i32* %8, i32** %19, align 8
  store i32 0, i32* %23, align 4
  br label %26

26:                                               ; preds = %41, %9
  %27 = load i32, i32* %23, align 4
  %28 = load i32, i32* %18, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %26
  %31 = load %struct.iovec*, %struct.iovec** %17, align 8
  %32 = load i32, i32* %23, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.iovec, %struct.iovec* %31, i64 %33
  %35 = getelementptr inbounds %struct.iovec, %struct.iovec* %34, i32 0, i32 1
  store i8* null, i8** %35, align 8
  %36 = load %struct.iovec*, %struct.iovec** %17, align 8
  %37 = load i32, i32* %23, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.iovec, %struct.iovec* %36, i64 %38
  %40 = getelementptr inbounds %struct.iovec, %struct.iovec* %39, i32 0, i32 0
  store i32 0, i32* %40, align 8
  br label %41

41:                                               ; preds = %30
  %42 = load i32, i32* %23, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %23, align 4
  br label %26

44:                                               ; preds = %26
  br label %45

45:                                               ; preds = %86, %44
  %46 = load i64, i64* %15, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %104

48:                                               ; preds = %45
  %49 = load i32, i32* %18, align 4
  %50 = icmp sgt i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load %struct.vmctx*, %struct.vmctx** %11, align 8
  %54 = load i32, i32* %12, align 4
  %55 = load %struct.vm_guest_paging*, %struct.vm_guest_paging** %13, align 8
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* %16, align 4
  %58 = load i32*, i32** %19, align 8
  %59 = call i32 @vm_gla2gpa(%struct.vmctx* %53, i32 %54, %struct.vm_guest_paging* %55, i32 %56, i32 %57, i32* %21, i32* %58)
  store i32 %59, i32* %22, align 4
  %60 = load i32, i32* %22, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %48
  %63 = load i32*, i32** %19, align 8
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %62, %48
  %67 = load i32, i32* %22, align 4
  store i32 %67, i32* %10, align 4
  br label %105

68:                                               ; preds = %62
  %69 = load i32, i32* %21, align 4
  %70 = load i32, i32* @PAGE_MASK, align 4
  %71 = and i32 %69, %70
  store i32 %71, i32* %25, align 4
  %72 = load i64, i64* %15, align 8
  %73 = load i64, i64* @PAGE_SIZE, align 8
  %74 = load i32, i32* %25, align 4
  %75 = sext i32 %74 to i64
  %76 = sub nsw i64 %73, %75
  %77 = call i32 @min(i64 %72, i64 %76)
  store i32 %77, i32* %24, align 4
  %78 = load %struct.vmctx*, %struct.vmctx** %11, align 8
  %79 = load i32, i32* %21, align 4
  %80 = load i32, i32* %24, align 4
  %81 = call i8* @vm_map_gpa(%struct.vmctx* %78, i32 %79, i32 %80)
  store i8* %81, i8** %20, align 8
  %82 = load i8*, i8** %20, align 8
  %83 = icmp eq i8* %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %68
  %85 = load i32, i32* @EFAULT, align 4
  store i32 %85, i32* %10, align 4
  br label %105

86:                                               ; preds = %68
  %87 = load i8*, i8** %20, align 8
  %88 = load %struct.iovec*, %struct.iovec** %17, align 8
  %89 = getelementptr inbounds %struct.iovec, %struct.iovec* %88, i32 0, i32 1
  store i8* %87, i8** %89, align 8
  %90 = load i32, i32* %24, align 4
  %91 = load %struct.iovec*, %struct.iovec** %17, align 8
  %92 = getelementptr inbounds %struct.iovec, %struct.iovec* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load %struct.iovec*, %struct.iovec** %17, align 8
  %94 = getelementptr inbounds %struct.iovec, %struct.iovec* %93, i32 1
  store %struct.iovec* %94, %struct.iovec** %17, align 8
  %95 = load i32, i32* %18, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %18, align 4
  %97 = load i32, i32* %24, align 4
  %98 = load i32, i32* %14, align 4
  %99 = add nsw i32 %98, %97
  store i32 %99, i32* %14, align 4
  %100 = load i32, i32* %24, align 4
  %101 = sext i32 %100 to i64
  %102 = load i64, i64* %15, align 8
  %103 = sub i64 %102, %101
  store i64 %103, i64* %15, align 8
  br label %45

104:                                              ; preds = %45
  store i32 0, i32* %10, align 4
  br label %105

105:                                              ; preds = %104, %84, %66
  %106 = load i32, i32* %10, align 4
  ret i32 %106
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vm_gla2gpa(%struct.vmctx*, i32, %struct.vm_guest_paging*, i32, i32, i32*, i32*) #1

declare dso_local i32 @min(i64, i64) #1

declare dso_local i8* @vm_map_gpa(%struct.vmctx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
