; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm.c_vm_copy_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm.c_vm_copy_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm = type { i32 }
%struct.vm_guest_paging = type { i32 }
%struct.vm_copyinfo = type { i64, i64, i8*, i8* }

@.str = private unnamed_addr constant [25 x i8] c"insufficient vm_copyinfo\00", align 1
@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_copy_setup(%struct.vm* %0, i32 %1, %struct.vm_guest_paging* %2, i64 %3, i64 %4, i32 %5, %struct.vm_copyinfo* %6, i32 %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.vm*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.vm_guest_paging*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.vm_copyinfo*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i64, align 8
  store %struct.vm* %0, %struct.vm** %11, align 8
  store i32 %1, i32* %12, align 4
  store %struct.vm_guest_paging* %2, %struct.vm_guest_paging** %13, align 8
  store i64 %3, i64* %14, align 8
  store i64 %4, i64* %15, align 8
  store i32 %5, i32* %16, align 4
  store %struct.vm_copyinfo* %6, %struct.vm_copyinfo** %17, align 8
  store i32 %7, i32* %18, align 4
  store i32* %8, i32** %19, align 8
  %29 = load %struct.vm_copyinfo*, %struct.vm_copyinfo** %17, align 8
  %30 = load i32, i32* %18, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 32, %31
  %33 = trunc i64 %32 to i32
  %34 = call i32 @bzero(%struct.vm_copyinfo* %29, i32 %33)
  store i32 0, i32* %22, align 4
  %35 = load i64, i64* %15, align 8
  store i64 %35, i64* %25, align 8
  br label %36

36:                                               ; preds = %60, %9
  %37 = load i64, i64* %25, align 8
  %38 = icmp ugt i64 %37, 0
  br i1 %38, label %39, label %89

39:                                               ; preds = %36
  %40 = load i32, i32* %22, align 4
  %41 = load i32, i32* %18, align 4
  %42 = icmp slt i32 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @KASSERT(i32 %43, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.vm*, %struct.vm** %11, align 8
  %46 = load i32, i32* %12, align 4
  %47 = load %struct.vm_guest_paging*, %struct.vm_guest_paging** %13, align 8
  %48 = load i64, i64* %14, align 8
  %49 = load i32, i32* %16, align 4
  %50 = load i32*, i32** %19, align 8
  %51 = call i32 @vm_gla2gpa(%struct.vm* %45, i32 %46, %struct.vm_guest_paging* %47, i64 %48, i32 %49, i64* %28, i32* %50)
  store i32 %51, i32* %20, align 4
  %52 = load i32, i32* %20, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %39
  %55 = load i32*, i32** %19, align 8
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %54, %39
  %59 = load i32, i32* %20, align 4
  store i32 %59, i32* %10, align 4
  br label %143

60:                                               ; preds = %54
  %61 = load i64, i64* %28, align 8
  %62 = load i64, i64* @PAGE_MASK, align 8
  %63 = and i64 %61, %62
  store i64 %63, i64* %24, align 8
  %64 = load i64, i64* %25, align 8
  %65 = load i64, i64* @PAGE_SIZE, align 8
  %66 = load i64, i64* %24, align 8
  %67 = sub i64 %65, %66
  %68 = call i64 @min(i64 %64, i64 %67)
  store i64 %68, i64* %23, align 8
  %69 = load i64, i64* %28, align 8
  %70 = load %struct.vm_copyinfo*, %struct.vm_copyinfo** %17, align 8
  %71 = load i32, i32* %22, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.vm_copyinfo, %struct.vm_copyinfo* %70, i64 %72
  %74 = getelementptr inbounds %struct.vm_copyinfo, %struct.vm_copyinfo* %73, i32 0, i32 0
  store i64 %69, i64* %74, align 8
  %75 = load i64, i64* %23, align 8
  %76 = load %struct.vm_copyinfo*, %struct.vm_copyinfo** %17, align 8
  %77 = load i32, i32* %22, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.vm_copyinfo, %struct.vm_copyinfo* %76, i64 %78
  %80 = getelementptr inbounds %struct.vm_copyinfo, %struct.vm_copyinfo* %79, i32 0, i32 1
  store i64 %75, i64* %80, align 8
  %81 = load i64, i64* %23, align 8
  %82 = load i64, i64* %25, align 8
  %83 = sub i64 %82, %81
  store i64 %83, i64* %25, align 8
  %84 = load i64, i64* %23, align 8
  %85 = load i64, i64* %14, align 8
  %86 = add i64 %85, %84
  store i64 %86, i64* %14, align 8
  %87 = load i32, i32* %22, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %22, align 4
  br label %36

89:                                               ; preds = %36
  store i32 0, i32* %21, align 4
  br label %90

90:                                               ; preds = %127, %89
  %91 = load i32, i32* %21, align 4
  %92 = load i32, i32* %22, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %130

94:                                               ; preds = %90
  %95 = load %struct.vm*, %struct.vm** %11, align 8
  %96 = load i32, i32* %12, align 4
  %97 = load %struct.vm_copyinfo*, %struct.vm_copyinfo** %17, align 8
  %98 = load i32, i32* %21, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.vm_copyinfo, %struct.vm_copyinfo* %97, i64 %99
  %101 = getelementptr inbounds %struct.vm_copyinfo, %struct.vm_copyinfo* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.vm_copyinfo*, %struct.vm_copyinfo** %17, align 8
  %104 = load i32, i32* %21, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.vm_copyinfo, %struct.vm_copyinfo* %103, i64 %105
  %107 = getelementptr inbounds %struct.vm_copyinfo, %struct.vm_copyinfo* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i32, i32* %16, align 4
  %110 = call i8* @vm_gpa_hold(%struct.vm* %95, i32 %96, i64 %102, i64 %108, i32 %109, i8** %27)
  store i8* %110, i8** %26, align 8
  %111 = load i8*, i8** %26, align 8
  %112 = icmp eq i8* %111, null
  br i1 %112, label %113, label %114

113:                                              ; preds = %94
  br label %130

114:                                              ; preds = %94
  %115 = load i8*, i8** %26, align 8
  %116 = load %struct.vm_copyinfo*, %struct.vm_copyinfo** %17, align 8
  %117 = load i32, i32* %21, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.vm_copyinfo, %struct.vm_copyinfo* %116, i64 %118
  %120 = getelementptr inbounds %struct.vm_copyinfo, %struct.vm_copyinfo* %119, i32 0, i32 3
  store i8* %115, i8** %120, align 8
  %121 = load i8*, i8** %27, align 8
  %122 = load %struct.vm_copyinfo*, %struct.vm_copyinfo** %17, align 8
  %123 = load i32, i32* %21, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.vm_copyinfo, %struct.vm_copyinfo* %122, i64 %124
  %126 = getelementptr inbounds %struct.vm_copyinfo, %struct.vm_copyinfo* %125, i32 0, i32 2
  store i8* %121, i8** %126, align 8
  br label %127

127:                                              ; preds = %114
  %128 = load i32, i32* %21, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %21, align 4
  br label %90

130:                                              ; preds = %113, %90
  %131 = load i32, i32* %21, align 4
  %132 = load i32, i32* %22, align 4
  %133 = icmp ne i32 %131, %132
  br i1 %133, label %134, label %141

134:                                              ; preds = %130
  %135 = load %struct.vm*, %struct.vm** %11, align 8
  %136 = load i32, i32* %12, align 4
  %137 = load %struct.vm_copyinfo*, %struct.vm_copyinfo** %17, align 8
  %138 = load i32, i32* %18, align 4
  %139 = call i32 @vm_copy_teardown(%struct.vm* %135, i32 %136, %struct.vm_copyinfo* %137, i32 %138)
  %140 = load i32, i32* @EFAULT, align 4
  store i32 %140, i32* %10, align 4
  br label %143

141:                                              ; preds = %130
  %142 = load i32*, i32** %19, align 8
  store i32 0, i32* %142, align 4
  store i32 0, i32* %10, align 4
  br label %143

143:                                              ; preds = %141, %134, %58
  %144 = load i32, i32* %10, align 4
  ret i32 %144
}

declare dso_local i32 @bzero(%struct.vm_copyinfo*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vm_gla2gpa(%struct.vm*, i32, %struct.vm_guest_paging*, i64, i32, i64*, i32*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i8* @vm_gpa_hold(%struct.vm*, i32, i64, i64, i32, i8**) #1

declare dso_local i32 @vm_copy_teardown(%struct.vm*, i32, %struct.vm_copyinfo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
