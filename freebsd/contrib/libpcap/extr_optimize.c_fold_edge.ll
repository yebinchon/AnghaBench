; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_optimize.c_fold_edge.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_optimize.c_fold_edge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block = type { i32*, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.edge = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32*, i32 }

@A_ATOM = common dso_local global i64 0, align 8
@BPF_JMP = common dso_local global i32 0, align 4
@BPF_JEQ = common dso_local global i32 0, align 4
@BPF_K = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.block* (%struct.block*, %struct.edge*)* @fold_edge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.block* @fold_edge(%struct.block* %0, %struct.edge* %1) #0 {
  %3 = alloca %struct.block*, align 8
  %4 = alloca %struct.block*, align 8
  %5 = alloca %struct.edge*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.block* %0, %struct.block** %4, align 8
  store %struct.edge* %1, %struct.edge** %5, align 8
  %12 = load %struct.edge*, %struct.edge** %5, align 8
  %13 = getelementptr inbounds %struct.edge, %struct.edge* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* %11, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %11, align 4
  store i32 0, i32* %6, align 4
  br label %21

20:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  br label %21

21:                                               ; preds = %20, %17
  %22 = load %struct.block*, %struct.block** %4, align 8
  %23 = getelementptr inbounds %struct.block, %struct.block* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store %struct.block* null, %struct.block** %3, align 8
  br label %86

29:                                               ; preds = %21
  %30 = load %struct.block*, %struct.block** %4, align 8
  %31 = getelementptr inbounds %struct.block, %struct.block* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @A_ATOM, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %7, align 4
  %36 = load %struct.block*, %struct.block** %4, align 8
  %37 = getelementptr inbounds %struct.block, %struct.block* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %9, align 4
  %39 = load %struct.edge*, %struct.edge** %5, align 8
  %40 = getelementptr inbounds %struct.edge, %struct.edge* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* @A_ATOM, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %8, align 4
  %47 = load %struct.edge*, %struct.edge** %5, align 8
  %48 = getelementptr inbounds %struct.edge, %struct.edge* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %29
  store %struct.block* null, %struct.block** %3, align 8
  br label %86

56:                                               ; preds = %29
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %56
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load %struct.block*, %struct.block** %4, align 8
  %65 = call %struct.block* @JT(%struct.block* %64)
  br label %69

66:                                               ; preds = %60
  %67 = load %struct.block*, %struct.block** %4, align 8
  %68 = call %struct.block* @JF(%struct.block* %67)
  br label %69

69:                                               ; preds = %66, %63
  %70 = phi %struct.block* [ %65, %63 ], [ %68, %66 ]
  store %struct.block* %70, %struct.block** %3, align 8
  br label %86

71:                                               ; preds = %56
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %71
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* @BPF_JMP, align 4
  %77 = load i32, i32* @BPF_JEQ, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @BPF_K, align 4
  %80 = or i32 %78, %79
  %81 = icmp eq i32 %75, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %74
  %83 = load %struct.block*, %struct.block** %4, align 8
  %84 = call %struct.block* @JF(%struct.block* %83)
  store %struct.block* %84, %struct.block** %3, align 8
  br label %86

85:                                               ; preds = %74, %71
  store %struct.block* null, %struct.block** %3, align 8
  br label %86

86:                                               ; preds = %85, %82, %69, %55, %28
  %87 = load %struct.block*, %struct.block** %3, align 8
  ret %struct.block* %87
}

declare dso_local %struct.block* @JT(%struct.block*) #1

declare dso_local %struct.block* @JF(%struct.block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
