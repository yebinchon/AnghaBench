; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_optimize.c_opt_root.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_optimize.c_opt_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block = type { %struct.slist*, %struct.TYPE_2__ }
%struct.slist = type { i32 }
%struct.TYPE_2__ = type { i32 }

@BPF_JMP = common dso_local global i64 0, align 8
@BPF_RET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.block**)* @opt_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opt_root(%struct.block** %0) #0 {
  %2 = alloca %struct.block**, align 8
  %3 = alloca %struct.slist*, align 8
  %4 = alloca %struct.slist*, align 8
  store %struct.block** %0, %struct.block*** %2, align 8
  %5 = load %struct.block**, %struct.block*** %2, align 8
  %6 = load %struct.block*, %struct.block** %5, align 8
  %7 = getelementptr inbounds %struct.block, %struct.block* %6, i32 0, i32 0
  %8 = load %struct.slist*, %struct.slist** %7, align 8
  store %struct.slist* %8, %struct.slist** %4, align 8
  %9 = load %struct.block**, %struct.block*** %2, align 8
  %10 = load %struct.block*, %struct.block** %9, align 8
  %11 = getelementptr inbounds %struct.block, %struct.block* %10, i32 0, i32 0
  store %struct.slist* null, %struct.slist** %11, align 8
  br label %12

12:                                               ; preds = %31, %1
  %13 = load %struct.block**, %struct.block*** %2, align 8
  %14 = load %struct.block*, %struct.block** %13, align 8
  %15 = getelementptr inbounds %struct.block, %struct.block* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @BPF_CLASS(i32 %17)
  %19 = load i64, i64* @BPF_JMP, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %12
  %22 = load %struct.block**, %struct.block*** %2, align 8
  %23 = load %struct.block*, %struct.block** %22, align 8
  %24 = call %struct.block* @JT(%struct.block* %23)
  %25 = load %struct.block**, %struct.block*** %2, align 8
  %26 = load %struct.block*, %struct.block** %25, align 8
  %27 = call %struct.block* @JF(%struct.block* %26)
  %28 = icmp eq %struct.block* %24, %27
  br label %29

29:                                               ; preds = %21, %12
  %30 = phi i1 [ false, %12 ], [ %28, %21 ]
  br i1 %30, label %31, label %36

31:                                               ; preds = %29
  %32 = load %struct.block**, %struct.block*** %2, align 8
  %33 = load %struct.block*, %struct.block** %32, align 8
  %34 = call %struct.block* @JT(%struct.block* %33)
  %35 = load %struct.block**, %struct.block*** %2, align 8
  store %struct.block* %34, %struct.block** %35, align 8
  br label %12

36:                                               ; preds = %29
  %37 = load %struct.block**, %struct.block*** %2, align 8
  %38 = load %struct.block*, %struct.block** %37, align 8
  %39 = getelementptr inbounds %struct.block, %struct.block* %38, i32 0, i32 0
  %40 = load %struct.slist*, %struct.slist** %39, align 8
  store %struct.slist* %40, %struct.slist** %3, align 8
  %41 = load %struct.slist*, %struct.slist** %3, align 8
  %42 = icmp ne %struct.slist* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load %struct.slist*, %struct.slist** %4, align 8
  %45 = load %struct.slist*, %struct.slist** %3, align 8
  %46 = call i32 @sappend(%struct.slist* %44, %struct.slist* %45)
  br label %47

47:                                               ; preds = %43, %36
  %48 = load %struct.slist*, %struct.slist** %4, align 8
  %49 = load %struct.block**, %struct.block*** %2, align 8
  %50 = load %struct.block*, %struct.block** %49, align 8
  %51 = getelementptr inbounds %struct.block, %struct.block* %50, i32 0, i32 0
  store %struct.slist* %48, %struct.slist** %51, align 8
  %52 = load %struct.block**, %struct.block*** %2, align 8
  %53 = load %struct.block*, %struct.block** %52, align 8
  %54 = getelementptr inbounds %struct.block, %struct.block* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @BPF_CLASS(i32 %56)
  %58 = load i64, i64* @BPF_RET, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %47
  %61 = load %struct.block**, %struct.block*** %2, align 8
  %62 = load %struct.block*, %struct.block** %61, align 8
  %63 = getelementptr inbounds %struct.block, %struct.block* %62, i32 0, i32 0
  store %struct.slist* null, %struct.slist** %63, align 8
  br label %64

64:                                               ; preds = %60, %47
  ret void
}

declare dso_local i64 @BPF_CLASS(i32) #1

declare dso_local %struct.block* @JT(%struct.block*) #1

declare dso_local %struct.block* @JF(%struct.block*) #1

declare dso_local i32 @sappend(%struct.slist*, %struct.slist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
