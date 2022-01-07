; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_arth.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_arth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arth = type { i64, %struct.slist* }
%struct.slist = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@BPF_DIV = common dso_local global i32 0, align 4
@BPF_LD = common dso_local global i32 0, align 4
@BPF_IMM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"division by zero\00", align 1
@BPF_MOD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"modulus by zero\00", align 1
@BPF_ALU = common dso_local global i32 0, align 4
@BPF_X = common dso_local global i32 0, align 4
@BPF_ST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.arth* @gen_arth(i32* %0, i32 %1, %struct.arth* %2, %struct.arth* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.arth*, align 8
  %8 = alloca %struct.arth*, align 8
  %9 = alloca %struct.slist*, align 8
  %10 = alloca %struct.slist*, align 8
  %11 = alloca %struct.slist*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.arth* %2, %struct.arth** %7, align 8
  store %struct.arth* %3, %struct.arth** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @BPF_DIV, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %38

15:                                               ; preds = %4
  %16 = load %struct.arth*, %struct.arth** %8, align 8
  %17 = getelementptr inbounds %struct.arth, %struct.arth* %16, i32 0, i32 1
  %18 = load %struct.slist*, %struct.slist** %17, align 8
  %19 = getelementptr inbounds %struct.slist, %struct.slist* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @BPF_LD, align 4
  %23 = load i32, i32* @BPF_IMM, align 4
  %24 = or i32 %22, %23
  %25 = icmp eq i32 %21, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %15
  %27 = load %struct.arth*, %struct.arth** %8, align 8
  %28 = getelementptr inbounds %struct.arth, %struct.arth* %27, i32 0, i32 1
  %29 = load %struct.slist*, %struct.slist** %28, align 8
  %30 = getelementptr inbounds %struct.slist, %struct.slist* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @bpf_error(i32* %35, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %26, %15
  br label %66

38:                                               ; preds = %4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @BPF_MOD, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %65

42:                                               ; preds = %38
  %43 = load %struct.arth*, %struct.arth** %8, align 8
  %44 = getelementptr inbounds %struct.arth, %struct.arth* %43, i32 0, i32 1
  %45 = load %struct.slist*, %struct.slist** %44, align 8
  %46 = getelementptr inbounds %struct.slist, %struct.slist* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @BPF_LD, align 4
  %50 = load i32, i32* @BPF_IMM, align 4
  %51 = or i32 %49, %50
  %52 = icmp eq i32 %48, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %42
  %54 = load %struct.arth*, %struct.arth** %8, align 8
  %55 = getelementptr inbounds %struct.arth, %struct.arth* %54, i32 0, i32 1
  %56 = load %struct.slist*, %struct.slist** %55, align 8
  %57 = getelementptr inbounds %struct.slist, %struct.slist* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %53
  %62 = load i32*, i32** %5, align 8
  %63 = call i32 @bpf_error(i32* %62, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %64

64:                                               ; preds = %61, %53, %42
  br label %65

65:                                               ; preds = %64, %38
  br label %66

66:                                               ; preds = %65, %37
  %67 = load i32*, i32** %5, align 8
  %68 = load %struct.arth*, %struct.arth** %8, align 8
  %69 = call %struct.slist* @xfer_to_x(i32* %67, %struct.arth* %68)
  store %struct.slist* %69, %struct.slist** %9, align 8
  %70 = load i32*, i32** %5, align 8
  %71 = load %struct.arth*, %struct.arth** %7, align 8
  %72 = call %struct.slist* @xfer_to_a(i32* %70, %struct.arth* %71)
  store %struct.slist* %72, %struct.slist** %10, align 8
  %73 = load i32*, i32** %5, align 8
  %74 = load i32, i32* @BPF_ALU, align 4
  %75 = load i32, i32* @BPF_X, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* %6, align 4
  %78 = or i32 %76, %77
  %79 = call %struct.slist* @new_stmt(i32* %73, i32 %78)
  store %struct.slist* %79, %struct.slist** %11, align 8
  %80 = load %struct.slist*, %struct.slist** %10, align 8
  %81 = load %struct.slist*, %struct.slist** %11, align 8
  %82 = call i32 @sappend(%struct.slist* %80, %struct.slist* %81)
  %83 = load %struct.slist*, %struct.slist** %9, align 8
  %84 = load %struct.slist*, %struct.slist** %10, align 8
  %85 = call i32 @sappend(%struct.slist* %83, %struct.slist* %84)
  %86 = load %struct.arth*, %struct.arth** %8, align 8
  %87 = getelementptr inbounds %struct.arth, %struct.arth* %86, i32 0, i32 1
  %88 = load %struct.slist*, %struct.slist** %87, align 8
  %89 = load %struct.slist*, %struct.slist** %9, align 8
  %90 = call i32 @sappend(%struct.slist* %88, %struct.slist* %89)
  %91 = load %struct.arth*, %struct.arth** %7, align 8
  %92 = getelementptr inbounds %struct.arth, %struct.arth* %91, i32 0, i32 1
  %93 = load %struct.slist*, %struct.slist** %92, align 8
  %94 = load %struct.arth*, %struct.arth** %8, align 8
  %95 = getelementptr inbounds %struct.arth, %struct.arth* %94, i32 0, i32 1
  %96 = load %struct.slist*, %struct.slist** %95, align 8
  %97 = call i32 @sappend(%struct.slist* %93, %struct.slist* %96)
  %98 = load i32*, i32** %5, align 8
  %99 = load %struct.arth*, %struct.arth** %7, align 8
  %100 = getelementptr inbounds %struct.arth, %struct.arth* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @free_reg(i32* %98, i64 %101)
  %103 = load i32*, i32** %5, align 8
  %104 = load %struct.arth*, %struct.arth** %8, align 8
  %105 = getelementptr inbounds %struct.arth, %struct.arth* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @free_reg(i32* %103, i64 %106)
  %108 = load i32*, i32** %5, align 8
  %109 = load i32, i32* @BPF_ST, align 4
  %110 = call %struct.slist* @new_stmt(i32* %108, i32 %109)
  store %struct.slist* %110, %struct.slist** %9, align 8
  %111 = load i32*, i32** %5, align 8
  %112 = call i64 @alloc_reg(i32* %111)
  %113 = load %struct.slist*, %struct.slist** %9, align 8
  %114 = getelementptr inbounds %struct.slist, %struct.slist* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 1
  store i64 %112, i64* %115, align 8
  %116 = load %struct.arth*, %struct.arth** %7, align 8
  %117 = getelementptr inbounds %struct.arth, %struct.arth* %116, i32 0, i32 0
  store i64 %112, i64* %117, align 8
  %118 = load %struct.arth*, %struct.arth** %7, align 8
  %119 = getelementptr inbounds %struct.arth, %struct.arth* %118, i32 0, i32 1
  %120 = load %struct.slist*, %struct.slist** %119, align 8
  %121 = load %struct.slist*, %struct.slist** %9, align 8
  %122 = call i32 @sappend(%struct.slist* %120, %struct.slist* %121)
  %123 = load %struct.arth*, %struct.arth** %7, align 8
  ret %struct.arth* %123
}

declare dso_local i32 @bpf_error(i32*, i8*) #1

declare dso_local %struct.slist* @xfer_to_x(i32*, %struct.arth*) #1

declare dso_local %struct.slist* @xfer_to_a(i32*, %struct.arth*) #1

declare dso_local %struct.slist* @new_stmt(i32*, i32) #1

declare dso_local i32 @sappend(%struct.slist*, %struct.slist*) #1

declare dso_local i32 @free_reg(i32*, i64) #1

declare dso_local i64 @alloc_reg(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
