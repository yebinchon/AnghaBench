; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vmx.c_vmx_set_guest_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vmx.c_vmx_set_guest_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmx = type { %struct.vmxctx* }
%struct.vmxctx = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@VMCS_GUEST_RSP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"invalid vmx register %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmx*, i32, i32, i8*)* @vmx_set_guest_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmx_set_guest_reg(%struct.vmx* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.vmx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.vmxctx*, align 8
  store %struct.vmx* %0, %struct.vmx** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %10 = load %struct.vmx*, %struct.vmx** %5, align 8
  %11 = getelementptr inbounds %struct.vmx, %struct.vmx* %10, i32 0, i32 0
  %12 = load %struct.vmxctx*, %struct.vmxctx** %11, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.vmxctx, %struct.vmxctx* %12, i64 %14
  store %struct.vmxctx* %15, %struct.vmxctx** %9, align 8
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %81 [
    i32 0, label %17
    i32 1, label %21
    i32 2, label %25
    i32 3, label %29
    i32 4, label %33
    i32 5, label %37
    i32 6, label %41
    i32 7, label %45
    i32 8, label %49
    i32 9, label %53
    i32 10, label %57
    i32 11, label %61
    i32 12, label %65
    i32 13, label %69
    i32 14, label %73
    i32 15, label %77
  ]

17:                                               ; preds = %4
  %18 = load i8*, i8** %8, align 8
  %19 = load %struct.vmxctx*, %struct.vmxctx** %9, align 8
  %20 = getelementptr inbounds %struct.vmxctx, %struct.vmxctx* %19, i32 0, i32 14
  store i8* %18, i8** %20, align 8
  br label %84

21:                                               ; preds = %4
  %22 = load i8*, i8** %8, align 8
  %23 = load %struct.vmxctx*, %struct.vmxctx** %9, align 8
  %24 = getelementptr inbounds %struct.vmxctx, %struct.vmxctx* %23, i32 0, i32 13
  store i8* %22, i8** %24, align 8
  br label %84

25:                                               ; preds = %4
  %26 = load i8*, i8** %8, align 8
  %27 = load %struct.vmxctx*, %struct.vmxctx** %9, align 8
  %28 = getelementptr inbounds %struct.vmxctx, %struct.vmxctx* %27, i32 0, i32 12
  store i8* %26, i8** %28, align 8
  br label %84

29:                                               ; preds = %4
  %30 = load i8*, i8** %8, align 8
  %31 = load %struct.vmxctx*, %struct.vmxctx** %9, align 8
  %32 = getelementptr inbounds %struct.vmxctx, %struct.vmxctx* %31, i32 0, i32 11
  store i8* %30, i8** %32, align 8
  br label %84

33:                                               ; preds = %4
  %34 = load i32, i32* @VMCS_GUEST_RSP, align 4
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 @vmcs_write(i32 %34, i8* %35)
  br label %84

37:                                               ; preds = %4
  %38 = load i8*, i8** %8, align 8
  %39 = load %struct.vmxctx*, %struct.vmxctx** %9, align 8
  %40 = getelementptr inbounds %struct.vmxctx, %struct.vmxctx* %39, i32 0, i32 10
  store i8* %38, i8** %40, align 8
  br label %84

41:                                               ; preds = %4
  %42 = load i8*, i8** %8, align 8
  %43 = load %struct.vmxctx*, %struct.vmxctx** %9, align 8
  %44 = getelementptr inbounds %struct.vmxctx, %struct.vmxctx* %43, i32 0, i32 9
  store i8* %42, i8** %44, align 8
  br label %84

45:                                               ; preds = %4
  %46 = load i8*, i8** %8, align 8
  %47 = load %struct.vmxctx*, %struct.vmxctx** %9, align 8
  %48 = getelementptr inbounds %struct.vmxctx, %struct.vmxctx* %47, i32 0, i32 8
  store i8* %46, i8** %48, align 8
  br label %84

49:                                               ; preds = %4
  %50 = load i8*, i8** %8, align 8
  %51 = load %struct.vmxctx*, %struct.vmxctx** %9, align 8
  %52 = getelementptr inbounds %struct.vmxctx, %struct.vmxctx* %51, i32 0, i32 7
  store i8* %50, i8** %52, align 8
  br label %84

53:                                               ; preds = %4
  %54 = load i8*, i8** %8, align 8
  %55 = load %struct.vmxctx*, %struct.vmxctx** %9, align 8
  %56 = getelementptr inbounds %struct.vmxctx, %struct.vmxctx* %55, i32 0, i32 6
  store i8* %54, i8** %56, align 8
  br label %84

57:                                               ; preds = %4
  %58 = load i8*, i8** %8, align 8
  %59 = load %struct.vmxctx*, %struct.vmxctx** %9, align 8
  %60 = getelementptr inbounds %struct.vmxctx, %struct.vmxctx* %59, i32 0, i32 5
  store i8* %58, i8** %60, align 8
  br label %84

61:                                               ; preds = %4
  %62 = load i8*, i8** %8, align 8
  %63 = load %struct.vmxctx*, %struct.vmxctx** %9, align 8
  %64 = getelementptr inbounds %struct.vmxctx, %struct.vmxctx* %63, i32 0, i32 4
  store i8* %62, i8** %64, align 8
  br label %84

65:                                               ; preds = %4
  %66 = load i8*, i8** %8, align 8
  %67 = load %struct.vmxctx*, %struct.vmxctx** %9, align 8
  %68 = getelementptr inbounds %struct.vmxctx, %struct.vmxctx* %67, i32 0, i32 3
  store i8* %66, i8** %68, align 8
  br label %84

69:                                               ; preds = %4
  %70 = load i8*, i8** %8, align 8
  %71 = load %struct.vmxctx*, %struct.vmxctx** %9, align 8
  %72 = getelementptr inbounds %struct.vmxctx, %struct.vmxctx* %71, i32 0, i32 2
  store i8* %70, i8** %72, align 8
  br label %84

73:                                               ; preds = %4
  %74 = load i8*, i8** %8, align 8
  %75 = load %struct.vmxctx*, %struct.vmxctx** %9, align 8
  %76 = getelementptr inbounds %struct.vmxctx, %struct.vmxctx* %75, i32 0, i32 1
  store i8* %74, i8** %76, align 8
  br label %84

77:                                               ; preds = %4
  %78 = load i8*, i8** %8, align 8
  %79 = load %struct.vmxctx*, %struct.vmxctx** %9, align 8
  %80 = getelementptr inbounds %struct.vmxctx, %struct.vmxctx* %79, i32 0, i32 0
  store i8* %78, i8** %80, align 8
  br label %84

81:                                               ; preds = %4
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @panic(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %81, %77, %73, %69, %65, %61, %57, %53, %49, %45, %41, %37, %33, %29, %25, %21, %17
  ret void
}

declare dso_local i32 @vmcs_write(i32, i8*) #1

declare dso_local i32 @panic(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
