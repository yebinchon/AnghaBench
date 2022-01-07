; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vmx.c_vmx_get_guest_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vmx.c_vmx_get_guest_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmx = type { %struct.vmxctx* }
%struct.vmxctx = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@VMCS_GUEST_RSP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"invalid vmx register %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmx*, i32, i32)* @vmx_get_guest_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmx_get_guest_reg(%struct.vmx* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.vmxctx*, align 8
  store %struct.vmx* %0, %struct.vmx** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.vmx*, %struct.vmx** %5, align 8
  %10 = getelementptr inbounds %struct.vmx, %struct.vmx* %9, i32 0, i32 0
  %11 = load %struct.vmxctx*, %struct.vmxctx** %10, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.vmxctx, %struct.vmxctx* %11, i64 %13
  store %struct.vmxctx* %14, %struct.vmxctx** %8, align 8
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %79 [
    i32 0, label %16
    i32 1, label %20
    i32 2, label %24
    i32 3, label %28
    i32 4, label %32
    i32 5, label %35
    i32 6, label %39
    i32 7, label %43
    i32 8, label %47
    i32 9, label %51
    i32 10, label %55
    i32 11, label %59
    i32 12, label %63
    i32 13, label %67
    i32 14, label %71
    i32 15, label %75
  ]

16:                                               ; preds = %3
  %17 = load %struct.vmxctx*, %struct.vmxctx** %8, align 8
  %18 = getelementptr inbounds %struct.vmxctx, %struct.vmxctx* %17, i32 0, i32 14
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %4, align 4
  br label %82

20:                                               ; preds = %3
  %21 = load %struct.vmxctx*, %struct.vmxctx** %8, align 8
  %22 = getelementptr inbounds %struct.vmxctx, %struct.vmxctx* %21, i32 0, i32 13
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %4, align 4
  br label %82

24:                                               ; preds = %3
  %25 = load %struct.vmxctx*, %struct.vmxctx** %8, align 8
  %26 = getelementptr inbounds %struct.vmxctx, %struct.vmxctx* %25, i32 0, i32 12
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %4, align 4
  br label %82

28:                                               ; preds = %3
  %29 = load %struct.vmxctx*, %struct.vmxctx** %8, align 8
  %30 = getelementptr inbounds %struct.vmxctx, %struct.vmxctx* %29, i32 0, i32 11
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %4, align 4
  br label %82

32:                                               ; preds = %3
  %33 = load i32, i32* @VMCS_GUEST_RSP, align 4
  %34 = call i32 @vmcs_read(i32 %33)
  store i32 %34, i32* %4, align 4
  br label %82

35:                                               ; preds = %3
  %36 = load %struct.vmxctx*, %struct.vmxctx** %8, align 8
  %37 = getelementptr inbounds %struct.vmxctx, %struct.vmxctx* %36, i32 0, i32 10
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %4, align 4
  br label %82

39:                                               ; preds = %3
  %40 = load %struct.vmxctx*, %struct.vmxctx** %8, align 8
  %41 = getelementptr inbounds %struct.vmxctx, %struct.vmxctx* %40, i32 0, i32 9
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %4, align 4
  br label %82

43:                                               ; preds = %3
  %44 = load %struct.vmxctx*, %struct.vmxctx** %8, align 8
  %45 = getelementptr inbounds %struct.vmxctx, %struct.vmxctx* %44, i32 0, i32 8
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %4, align 4
  br label %82

47:                                               ; preds = %3
  %48 = load %struct.vmxctx*, %struct.vmxctx** %8, align 8
  %49 = getelementptr inbounds %struct.vmxctx, %struct.vmxctx* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %4, align 4
  br label %82

51:                                               ; preds = %3
  %52 = load %struct.vmxctx*, %struct.vmxctx** %8, align 8
  %53 = getelementptr inbounds %struct.vmxctx, %struct.vmxctx* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %4, align 4
  br label %82

55:                                               ; preds = %3
  %56 = load %struct.vmxctx*, %struct.vmxctx** %8, align 8
  %57 = getelementptr inbounds %struct.vmxctx, %struct.vmxctx* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %4, align 4
  br label %82

59:                                               ; preds = %3
  %60 = load %struct.vmxctx*, %struct.vmxctx** %8, align 8
  %61 = getelementptr inbounds %struct.vmxctx, %struct.vmxctx* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %4, align 4
  br label %82

63:                                               ; preds = %3
  %64 = load %struct.vmxctx*, %struct.vmxctx** %8, align 8
  %65 = getelementptr inbounds %struct.vmxctx, %struct.vmxctx* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %4, align 4
  br label %82

67:                                               ; preds = %3
  %68 = load %struct.vmxctx*, %struct.vmxctx** %8, align 8
  %69 = getelementptr inbounds %struct.vmxctx, %struct.vmxctx* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %4, align 4
  br label %82

71:                                               ; preds = %3
  %72 = load %struct.vmxctx*, %struct.vmxctx** %8, align 8
  %73 = getelementptr inbounds %struct.vmxctx, %struct.vmxctx* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %4, align 4
  br label %82

75:                                               ; preds = %3
  %76 = load %struct.vmxctx*, %struct.vmxctx** %8, align 8
  %77 = getelementptr inbounds %struct.vmxctx, %struct.vmxctx* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %4, align 4
  br label %82

79:                                               ; preds = %3
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @panic(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %16, %20, %24, %28, %32, %35, %39, %43, %47, %51, %55, %59, %63, %67, %71, %75, %79
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @vmcs_read(i32) #1

declare dso_local i32 @panic(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
