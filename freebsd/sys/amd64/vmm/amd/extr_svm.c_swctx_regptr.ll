; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_svm.c_swctx_regptr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_svm.c_swctx_regptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svm_regctx = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.svm_regctx*, i32)* @swctx_regptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @swctx_regptr(%struct.svm_regctx* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.svm_regctx*, align 8
  %5 = alloca i32, align 4
  store %struct.svm_regctx* %0, %struct.svm_regctx** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %61 [
    i32 132, label %7
    i32 131, label %10
    i32 129, label %13
    i32 130, label %16
    i32 128, label %19
    i32 133, label %22
    i32 135, label %25
    i32 134, label %28
    i32 141, label %31
    i32 140, label %34
    i32 139, label %37
    i32 138, label %40
    i32 137, label %43
    i32 136, label %46
    i32 145, label %49
    i32 144, label %52
    i32 143, label %55
    i32 142, label %58
  ]

7:                                                ; preds = %2
  %8 = load %struct.svm_regctx*, %struct.svm_regctx** %4, align 8
  %9 = getelementptr inbounds %struct.svm_regctx, %struct.svm_regctx* %8, i32 0, i32 17
  store i32* %9, i32** %3, align 8
  br label %62

10:                                               ; preds = %2
  %11 = load %struct.svm_regctx*, %struct.svm_regctx** %4, align 8
  %12 = getelementptr inbounds %struct.svm_regctx, %struct.svm_regctx* %11, i32 0, i32 16
  store i32* %12, i32** %3, align 8
  br label %62

13:                                               ; preds = %2
  %14 = load %struct.svm_regctx*, %struct.svm_regctx** %4, align 8
  %15 = getelementptr inbounds %struct.svm_regctx, %struct.svm_regctx* %14, i32 0, i32 15
  store i32* %15, i32** %3, align 8
  br label %62

16:                                               ; preds = %2
  %17 = load %struct.svm_regctx*, %struct.svm_regctx** %4, align 8
  %18 = getelementptr inbounds %struct.svm_regctx, %struct.svm_regctx* %17, i32 0, i32 14
  store i32* %18, i32** %3, align 8
  br label %62

19:                                               ; preds = %2
  %20 = load %struct.svm_regctx*, %struct.svm_regctx** %4, align 8
  %21 = getelementptr inbounds %struct.svm_regctx, %struct.svm_regctx* %20, i32 0, i32 13
  store i32* %21, i32** %3, align 8
  br label %62

22:                                               ; preds = %2
  %23 = load %struct.svm_regctx*, %struct.svm_regctx** %4, align 8
  %24 = getelementptr inbounds %struct.svm_regctx, %struct.svm_regctx* %23, i32 0, i32 12
  store i32* %24, i32** %3, align 8
  br label %62

25:                                               ; preds = %2
  %26 = load %struct.svm_regctx*, %struct.svm_regctx** %4, align 8
  %27 = getelementptr inbounds %struct.svm_regctx, %struct.svm_regctx* %26, i32 0, i32 11
  store i32* %27, i32** %3, align 8
  br label %62

28:                                               ; preds = %2
  %29 = load %struct.svm_regctx*, %struct.svm_regctx** %4, align 8
  %30 = getelementptr inbounds %struct.svm_regctx, %struct.svm_regctx* %29, i32 0, i32 10
  store i32* %30, i32** %3, align 8
  br label %62

31:                                               ; preds = %2
  %32 = load %struct.svm_regctx*, %struct.svm_regctx** %4, align 8
  %33 = getelementptr inbounds %struct.svm_regctx, %struct.svm_regctx* %32, i32 0, i32 9
  store i32* %33, i32** %3, align 8
  br label %62

34:                                               ; preds = %2
  %35 = load %struct.svm_regctx*, %struct.svm_regctx** %4, align 8
  %36 = getelementptr inbounds %struct.svm_regctx, %struct.svm_regctx* %35, i32 0, i32 8
  store i32* %36, i32** %3, align 8
  br label %62

37:                                               ; preds = %2
  %38 = load %struct.svm_regctx*, %struct.svm_regctx** %4, align 8
  %39 = getelementptr inbounds %struct.svm_regctx, %struct.svm_regctx* %38, i32 0, i32 7
  store i32* %39, i32** %3, align 8
  br label %62

40:                                               ; preds = %2
  %41 = load %struct.svm_regctx*, %struct.svm_regctx** %4, align 8
  %42 = getelementptr inbounds %struct.svm_regctx, %struct.svm_regctx* %41, i32 0, i32 6
  store i32* %42, i32** %3, align 8
  br label %62

43:                                               ; preds = %2
  %44 = load %struct.svm_regctx*, %struct.svm_regctx** %4, align 8
  %45 = getelementptr inbounds %struct.svm_regctx, %struct.svm_regctx* %44, i32 0, i32 5
  store i32* %45, i32** %3, align 8
  br label %62

46:                                               ; preds = %2
  %47 = load %struct.svm_regctx*, %struct.svm_regctx** %4, align 8
  %48 = getelementptr inbounds %struct.svm_regctx, %struct.svm_regctx* %47, i32 0, i32 4
  store i32* %48, i32** %3, align 8
  br label %62

49:                                               ; preds = %2
  %50 = load %struct.svm_regctx*, %struct.svm_regctx** %4, align 8
  %51 = getelementptr inbounds %struct.svm_regctx, %struct.svm_regctx* %50, i32 0, i32 3
  store i32* %51, i32** %3, align 8
  br label %62

52:                                               ; preds = %2
  %53 = load %struct.svm_regctx*, %struct.svm_regctx** %4, align 8
  %54 = getelementptr inbounds %struct.svm_regctx, %struct.svm_regctx* %53, i32 0, i32 2
  store i32* %54, i32** %3, align 8
  br label %62

55:                                               ; preds = %2
  %56 = load %struct.svm_regctx*, %struct.svm_regctx** %4, align 8
  %57 = getelementptr inbounds %struct.svm_regctx, %struct.svm_regctx* %56, i32 0, i32 1
  store i32* %57, i32** %3, align 8
  br label %62

58:                                               ; preds = %2
  %59 = load %struct.svm_regctx*, %struct.svm_regctx** %4, align 8
  %60 = getelementptr inbounds %struct.svm_regctx, %struct.svm_regctx* %59, i32 0, i32 0
  store i32* %60, i32** %3, align 8
  br label %62

61:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %62

62:                                               ; preds = %61, %58, %55, %52, %49, %46, %43, %40, %37, %34, %31, %28, %25, %22, %19, %16, %13, %10, %7
  %63 = load i32*, i32** %3, align 8
  ret i32* %63
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
