; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vmcs.c_vmcs_getdesc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vmcs.c_vmcs_getdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmcs = type { i32 }
%struct.seg_desc = type { i8*, i8*, i8* }

@.str = private unnamed_addr constant [42 x i8] c"vmcs_getdesc: invalid segment register %d\00", align 1
@VMCS_INVALID_ENCODING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmcs_getdesc(%struct.vmcs* %0, i32 %1, i32 %2, %struct.seg_desc* %3) #0 {
  %5 = alloca %struct.vmcs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.seg_desc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store %struct.vmcs* %0, %struct.vmcs** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.seg_desc* %3, %struct.seg_desc** %8, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @vmcs_seg_desc_encoding(i32 %14, i64* %10, i64* %11, i64* %12)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @panic(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %18, %4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load %struct.vmcs*, %struct.vmcs** %5, align 8
  %26 = call i32 @VMPTRLD(%struct.vmcs* %25)
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i64, i64* %10, align 8
  %29 = call i32 @vmread(i64 %28, i8** %13)
  store i32 %29, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %57

32:                                               ; preds = %27
  %33 = load i8*, i8** %13, align 8
  %34 = load %struct.seg_desc*, %struct.seg_desc** %8, align 8
  %35 = getelementptr inbounds %struct.seg_desc, %struct.seg_desc* %34, i32 0, i32 2
  store i8* %33, i8** %35, align 8
  %36 = load i64, i64* %11, align 8
  %37 = call i32 @vmread(i64 %36, i8** %13)
  store i32 %37, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %57

40:                                               ; preds = %32
  %41 = load i8*, i8** %13, align 8
  %42 = load %struct.seg_desc*, %struct.seg_desc** %8, align 8
  %43 = getelementptr inbounds %struct.seg_desc, %struct.seg_desc* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  %44 = load i64, i64* %12, align 8
  %45 = load i64, i64* @VMCS_INVALID_ENCODING, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %40
  %48 = load i64, i64* %12, align 8
  %49 = call i32 @vmread(i64 %48, i8** %13)
  store i32 %49, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %57

52:                                               ; preds = %47
  %53 = load i8*, i8** %13, align 8
  %54 = load %struct.seg_desc*, %struct.seg_desc** %8, align 8
  %55 = getelementptr inbounds %struct.seg_desc, %struct.seg_desc* %54, i32 0, i32 0
  store i8* %53, i8** %55, align 8
  br label %56

56:                                               ; preds = %52, %40
  br label %57

57:                                               ; preds = %56, %51, %39, %31
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = load %struct.vmcs*, %struct.vmcs** %5, align 8
  %62 = call i32 @VMCLEAR(%struct.vmcs* %61)
  br label %63

63:                                               ; preds = %60, %57
  %64 = load i32, i32* %9, align 4
  ret i32 %64
}

declare dso_local i32 @vmcs_seg_desc_encoding(i32, i64*, i64*, i64*) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @VMPTRLD(%struct.vmcs*) #1

declare dso_local i32 @vmread(i64, i8**) #1

declare dso_local i32 @VMCLEAR(%struct.vmcs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
