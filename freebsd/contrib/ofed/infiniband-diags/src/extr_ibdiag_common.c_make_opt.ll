; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibdiag_common.c_make_opt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibdiag_common.c_make_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i64, i32*, i32, i32 }
%struct.ibdiag_opt = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.option*, %struct.ibdiag_opt*, %struct.ibdiag_opt**)* @make_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_opt(%struct.option* %0, %struct.ibdiag_opt* %1, %struct.ibdiag_opt** %2) #0 {
  %4 = alloca %struct.option*, align 8
  %5 = alloca %struct.ibdiag_opt*, align 8
  %6 = alloca %struct.ibdiag_opt**, align 8
  store %struct.option* %0, %struct.option** %4, align 8
  store %struct.ibdiag_opt* %1, %struct.ibdiag_opt** %5, align 8
  store %struct.ibdiag_opt** %2, %struct.ibdiag_opt*** %6, align 8
  %7 = load %struct.ibdiag_opt*, %struct.ibdiag_opt** %5, align 8
  %8 = getelementptr inbounds %struct.ibdiag_opt, %struct.ibdiag_opt* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.option*, %struct.option** %4, align 8
  %11 = getelementptr inbounds %struct.option, %struct.option* %10, i32 0, i32 3
  store i32 %9, i32* %11, align 4
  %12 = load %struct.ibdiag_opt*, %struct.ibdiag_opt** %5, align 8
  %13 = getelementptr inbounds %struct.ibdiag_opt, %struct.ibdiag_opt* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.option*, %struct.option** %4, align 8
  %16 = getelementptr inbounds %struct.option, %struct.option* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 8
  %17 = load %struct.option*, %struct.option** %4, align 8
  %18 = getelementptr inbounds %struct.option, %struct.option* %17, i32 0, i32 1
  store i32* null, i32** %18, align 8
  %19 = load %struct.ibdiag_opt*, %struct.ibdiag_opt** %5, align 8
  %20 = getelementptr inbounds %struct.ibdiag_opt, %struct.ibdiag_opt* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.option*, %struct.option** %4, align 8
  %23 = getelementptr inbounds %struct.option, %struct.option* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load %struct.ibdiag_opt**, %struct.ibdiag_opt*** %6, align 8
  %25 = load %struct.option*, %struct.option** %4, align 8
  %26 = getelementptr inbounds %struct.option, %struct.option* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.ibdiag_opt*, %struct.ibdiag_opt** %24, i64 %27
  %29 = load %struct.ibdiag_opt*, %struct.ibdiag_opt** %28, align 8
  %30 = icmp ne %struct.ibdiag_opt* %29, null
  br i1 %30, label %38, label %31

31:                                               ; preds = %3
  %32 = load %struct.ibdiag_opt*, %struct.ibdiag_opt** %5, align 8
  %33 = load %struct.ibdiag_opt**, %struct.ibdiag_opt*** %6, align 8
  %34 = load %struct.option*, %struct.option** %4, align 8
  %35 = getelementptr inbounds %struct.option, %struct.option* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.ibdiag_opt*, %struct.ibdiag_opt** %33, i64 %36
  store %struct.ibdiag_opt* %32, %struct.ibdiag_opt** %37, align 8
  br label %38

38:                                               ; preds = %31, %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
