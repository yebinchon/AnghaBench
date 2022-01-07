; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_mem.c_memrw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_mem.c_memrw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.uio = type { i64, i64, i32, i32, %struct.iovec* }
%struct.iovec = type { i64 }
%struct.vm_page = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"memrw\00", align 1
@PAGE_MASK = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@UIO_READ = common dso_local global i32 0, align 4
@VM_PROT_READ = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memrw(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca %struct.cdev*, align 8
  %5 = alloca %struct.uio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iovec*, align 8
  %8 = alloca %struct.vm_page, align 4
  %9 = alloca %struct.vm_page*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %4, align 8
  store %struct.uio* %1, %struct.uio** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %13, align 4
  br label %14

14:                                               ; preds = %130, %65, %47, %3
  %15 = load %struct.uio*, %struct.uio** %5, align 8
  %16 = getelementptr inbounds %struct.uio, %struct.uio* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i32, i32* %13, align 4
  %21 = icmp eq i32 %20, 0
  br label %22

22:                                               ; preds = %19, %14
  %23 = phi i1 [ false, %14 ], [ %21, %19 ]
  br i1 %23, label %24, label %131

24:                                               ; preds = %22
  %25 = load %struct.uio*, %struct.uio** %5, align 8
  %26 = getelementptr inbounds %struct.uio, %struct.uio* %25, i32 0, i32 4
  %27 = load %struct.iovec*, %struct.iovec** %26, align 8
  store %struct.iovec* %27, %struct.iovec** %7, align 8
  %28 = load %struct.iovec*, %struct.iovec** %7, align 8
  %29 = getelementptr inbounds %struct.iovec, %struct.iovec* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %24
  %33 = load %struct.uio*, %struct.uio** %5, align 8
  %34 = getelementptr inbounds %struct.uio, %struct.uio* %33, i32 0, i32 4
  %35 = load %struct.iovec*, %struct.iovec** %34, align 8
  %36 = getelementptr inbounds %struct.iovec, %struct.iovec* %35, i32 1
  store %struct.iovec* %36, %struct.iovec** %34, align 8
  %37 = load %struct.uio*, %struct.uio** %5, align 8
  %38 = getelementptr inbounds %struct.uio, %struct.uio* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, -1
  store i64 %40, i64* %38, align 8
  %41 = load %struct.uio*, %struct.uio** %5, align 8
  %42 = getelementptr inbounds %struct.uio, %struct.uio* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %32
  %46 = call i32 @panic(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %32
  br label %14

48:                                               ; preds = %24
  %49 = load %struct.uio*, %struct.uio** %5, align 8
  %50 = getelementptr inbounds %struct.uio, %struct.uio* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* @PAGE_MASK, align 4
  %54 = and i32 %52, %53
  store i32 %54, i32* %10, align 4
  %55 = load %struct.iovec*, %struct.iovec** %7, align 8
  %56 = getelementptr inbounds %struct.iovec, %struct.iovec* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @PAGE_SIZE, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = sub nsw i64 %58, %60
  %62 = call i64 @ulmin(i64 %57, i64 %61)
  store i64 %62, i64* %12, align 8
  %63 = load i64, i64* %12, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %48
  br label %14

66:                                               ; preds = %48
  %67 = load %struct.cdev*, %struct.cdev** %4, align 8
  %68 = call i32 @dev2unit(%struct.cdev* %67)
  switch i32 %68, label %130 [
    i32 129, label %69
    i32 128, label %109
  ]

69:                                               ; preds = %66
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @VIRT_IN_DMAP(i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %69
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = inttoptr i64 %75 to i8*
  %77 = load i64, i64* %12, align 8
  %78 = load %struct.uio*, %struct.uio** %5, align 8
  %79 = call i32 @uiomove(i8* %76, i64 %77, %struct.uio* %78)
  store i32 %79, i32* %13, align 4
  br label %130

80:                                               ; preds = %69
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = inttoptr i64 %82 to i8*
  %84 = load i64, i64* %12, align 8
  %85 = load %struct.uio*, %struct.uio** %5, align 8
  %86 = getelementptr inbounds %struct.uio, %struct.uio* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @UIO_READ, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %80
  %91 = load i32, i32* @VM_PROT_READ, align 4
  br label %94

92:                                               ; preds = %80
  %93 = load i32, i32* @VM_PROT_WRITE, align 4
  br label %94

94:                                               ; preds = %92, %90
  %95 = phi i32 [ %91, %90 ], [ %93, %92 ]
  %96 = call i32 @kernacc(i8* %83, i64 %84, i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %94
  %99 = load i32, i32* @EFAULT, align 4
  store i32 %99, i32* %13, align 4
  br label %130

100:                                              ; preds = %94
  %101 = load i32, i32* @kernel_pmap, align 4
  %102 = load i32, i32* %11, align 4
  %103 = call i32 @pmap_extract(i32 %101, i32 %102)
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %11, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %100
  %107 = load i32, i32* @EFAULT, align 4
  store i32 %107, i32* %13, align 4
  br label %130

108:                                              ; preds = %100
  br label %109

109:                                              ; preds = %66, %108
  %110 = load i32, i32* %11, align 4
  %111 = call i32 @PHYS_IN_DMAP(i32 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %109
  %114 = load i32, i32* %11, align 4
  %115 = call i32 @PHYS_TO_DMAP(i32 %114)
  store i32 %115, i32* %11, align 4
  %116 = load i32, i32* %11, align 4
  %117 = sext i32 %116 to i64
  %118 = inttoptr i64 %117 to i8*
  %119 = load i64, i64* %12, align 8
  %120 = load %struct.uio*, %struct.uio** %5, align 8
  %121 = call i32 @uiomove(i8* %118, i64 %119, %struct.uio* %120)
  store i32 %121, i32* %13, align 4
  br label %130

122:                                              ; preds = %109
  %123 = load i32, i32* %11, align 4
  %124 = call i32 @trunc_page(i32 %123)
  %125 = getelementptr inbounds %struct.vm_page, %struct.vm_page* %8, i32 0, i32 0
  store i32 %124, i32* %125, align 4
  store %struct.vm_page* %8, %struct.vm_page** %9, align 8
  %126 = load i32, i32* %10, align 4
  %127 = load i64, i64* %12, align 8
  %128 = load %struct.uio*, %struct.uio** %5, align 8
  %129 = call i32 @uiomove_fromphys(%struct.vm_page** %9, i32 %126, i64 %127, %struct.uio* %128)
  br label %130

130:                                              ; preds = %66, %122, %113, %106, %98, %73
  br label %14

131:                                              ; preds = %22
  %132 = load i32, i32* %13, align 4
  ret i32 %132
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @ulmin(i64, i64) #1

declare dso_local i32 @dev2unit(%struct.cdev*) #1

declare dso_local i32 @VIRT_IN_DMAP(i32) #1

declare dso_local i32 @uiomove(i8*, i64, %struct.uio*) #1

declare dso_local i32 @kernacc(i8*, i64, i32) #1

declare dso_local i32 @pmap_extract(i32, i32) #1

declare dso_local i32 @PHYS_IN_DMAP(i32) #1

declare dso_local i32 @PHYS_TO_DMAP(i32) #1

declare dso_local i32 @trunc_page(i32) #1

declare dso_local i32 @uiomove_fromphys(%struct.vm_page**, i32, i64, %struct.uio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
