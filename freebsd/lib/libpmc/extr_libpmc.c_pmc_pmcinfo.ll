; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libpmc/extr_libpmc.c_pmc_pmcinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libpmc/extr_libpmc.c_pmc_pmcinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmc_pmcinfo = type { i32 }
%struct.pmc_op_getpmcinfo = type { i32 }

@GETPMCINFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmc_pmcinfo(i32 %0, %struct.pmc_pmcinfo** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.pmc_pmcinfo**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pmc_op_getpmcinfo*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.pmc_pmcinfo** %1, %struct.pmc_pmcinfo*** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @pmc_npmc(i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %38

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 4
  %17 = add i64 4, %16
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call %struct.pmc_op_getpmcinfo* @calloc(i32 1, i32 %19)
  store %struct.pmc_op_getpmcinfo* %20, %struct.pmc_op_getpmcinfo** %8, align 8
  %21 = icmp eq %struct.pmc_op_getpmcinfo* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  store i32 -1, i32* %3, align 4
  br label %38

23:                                               ; preds = %13
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.pmc_op_getpmcinfo*, %struct.pmc_op_getpmcinfo** %8, align 8
  %26 = getelementptr inbounds %struct.pmc_op_getpmcinfo, %struct.pmc_op_getpmcinfo* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @GETPMCINFO, align 4
  %28 = load %struct.pmc_op_getpmcinfo*, %struct.pmc_op_getpmcinfo** %8, align 8
  %29 = call i64 @PMC_CALL(i32 %27, %struct.pmc_op_getpmcinfo* %28)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load %struct.pmc_op_getpmcinfo*, %struct.pmc_op_getpmcinfo** %8, align 8
  %33 = call i32 @free(%struct.pmc_op_getpmcinfo* %32)
  store i32 -1, i32* %3, align 4
  br label %38

34:                                               ; preds = %23
  %35 = load %struct.pmc_op_getpmcinfo*, %struct.pmc_op_getpmcinfo** %8, align 8
  %36 = bitcast %struct.pmc_op_getpmcinfo* %35 to %struct.pmc_pmcinfo*
  %37 = load %struct.pmc_pmcinfo**, %struct.pmc_pmcinfo*** %5, align 8
  store %struct.pmc_pmcinfo* %36, %struct.pmc_pmcinfo** %37, align 8
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %34, %31, %22, %12
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @pmc_npmc(i32) #1

declare dso_local %struct.pmc_op_getpmcinfo* @calloc(i32, i32) #1

declare dso_local i64 @PMC_CALL(i32, %struct.pmc_op_getpmcinfo*) #1

declare dso_local i32 @free(%struct.pmc_op_getpmcinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
