; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vmcs.c_vmcs_setdesc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vmcs.c_vmcs_setdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmcs = type { i32 }
%struct.seg_desc = type { i32, i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"vmcs_setdesc: invalid segment register %d\00", align 1
@VMCS_INVALID_ENCODING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmcs_setdesc(%struct.vmcs* %0, i32 %1, i32 %2, %struct.seg_desc* %3) #0 {
  %5 = alloca %struct.vmcs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.seg_desc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.vmcs* %0, %struct.vmcs** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.seg_desc* %3, %struct.seg_desc** %8, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @vmcs_seg_desc_encoding(i32 %13, i64* %10, i64* %11, i64* %12)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @panic(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %17, %4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load %struct.vmcs*, %struct.vmcs** %5, align 8
  %25 = call i32 @VMPTRLD(%struct.vmcs* %24)
  br label %26

26:                                               ; preds = %23, %20
  %27 = load i64, i64* %10, align 8
  %28 = load %struct.seg_desc*, %struct.seg_desc** %8, align 8
  %29 = getelementptr inbounds %struct.seg_desc, %struct.seg_desc* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @vmwrite(i64 %27, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %56

34:                                               ; preds = %26
  %35 = load i64, i64* %11, align 8
  %36 = load %struct.seg_desc*, %struct.seg_desc** %8, align 8
  %37 = getelementptr inbounds %struct.seg_desc, %struct.seg_desc* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @vmwrite(i64 %35, i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %56

42:                                               ; preds = %34
  %43 = load i64, i64* %12, align 8
  %44 = load i64, i64* @VMCS_INVALID_ENCODING, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %42
  %47 = load i64, i64* %12, align 8
  %48 = load %struct.seg_desc*, %struct.seg_desc** %8, align 8
  %49 = getelementptr inbounds %struct.seg_desc, %struct.seg_desc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @vmwrite(i64 %47, i32 %50)
  store i32 %51, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %56

54:                                               ; preds = %46
  br label %55

55:                                               ; preds = %54, %42
  br label %56

56:                                               ; preds = %55, %53, %41, %33
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = load %struct.vmcs*, %struct.vmcs** %5, align 8
  %61 = call i32 @VMCLEAR(%struct.vmcs* %60)
  br label %62

62:                                               ; preds = %59, %56
  %63 = load i32, i32* %9, align 4
  ret i32 %63
}

declare dso_local i32 @vmcs_seg_desc_encoding(i32, i64*, i64*, i64*) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @VMPTRLD(%struct.vmcs*) #1

declare dso_local i32 @vmwrite(i64, i32) #1

declare dso_local i32 @VMCLEAR(%struct.vmcs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
