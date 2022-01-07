; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/BM/extr_bman_low.c_bm_mc_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/BM/extr_bman_low.c_bm_mc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bm_portal = type { %struct.TYPE_4__, %struct.bm_mc }
%struct.TYPE_4__ = type { i32 }
%struct.bm_mc = type { i32, i8*, i8*, %struct.TYPE_3__*, i8* }
%struct.TYPE_3__ = type { i32 }

@CL_CR = common dso_local global i32 0, align 4
@CL_RR0 = common dso_local global i32 0, align 4
@BM_MCC_VERB_VBIT = common dso_local global i32 0, align 4
@mc_idle = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bm_mc_init(%struct.bm_portal* %0) #0 {
  %2 = alloca %struct.bm_portal*, align 8
  %3 = alloca %struct.bm_mc*, align 8
  store %struct.bm_portal* %0, %struct.bm_portal** %2, align 8
  %4 = load %struct.bm_portal*, %struct.bm_portal** %2, align 8
  %5 = getelementptr inbounds %struct.bm_portal, %struct.bm_portal* %4, i32 0, i32 1
  store %struct.bm_mc* %5, %struct.bm_mc** %3, align 8
  %6 = load %struct.bm_portal*, %struct.bm_portal** %2, align 8
  %7 = getelementptr inbounds %struct.bm_portal, %struct.bm_portal* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @CL_CR, align 4
  %11 = call i8* @ptr_ADD(i32 %9, i32 %10)
  %12 = bitcast i8* %11 to %struct.TYPE_3__*
  %13 = load %struct.bm_mc*, %struct.bm_mc** %3, align 8
  %14 = getelementptr inbounds %struct.bm_mc, %struct.bm_mc* %13, i32 0, i32 3
  store %struct.TYPE_3__* %12, %struct.TYPE_3__** %14, align 8
  %15 = load %struct.bm_portal*, %struct.bm_portal** %2, align 8
  %16 = getelementptr inbounds %struct.bm_portal, %struct.bm_portal* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @CL_RR0, align 4
  %20 = call i8* @ptr_ADD(i32 %18, i32 %19)
  %21 = load %struct.bm_mc*, %struct.bm_mc** %3, align 8
  %22 = getelementptr inbounds %struct.bm_mc, %struct.bm_mc* %21, i32 0, i32 4
  store i8* %20, i8** %22, align 8
  %23 = load %struct.bm_mc*, %struct.bm_mc** %3, align 8
  %24 = getelementptr inbounds %struct.bm_mc, %struct.bm_mc* %23, i32 0, i32 3
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @BM_MCC_VERB_VBIT, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 0, i32 1
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i8*
  %35 = load %struct.bm_mc*, %struct.bm_mc** %3, align 8
  %36 = getelementptr inbounds %struct.bm_mc, %struct.bm_mc* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  %37 = load %struct.bm_mc*, %struct.bm_mc** %3, align 8
  %38 = getelementptr inbounds %struct.bm_mc, %struct.bm_mc* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %1
  %42 = load i32, i32* @BM_MCC_VERB_VBIT, align 4
  br label %44

43:                                               ; preds = %1
  br label %44

44:                                               ; preds = %43, %41
  %45 = phi i32 [ %42, %41 ], [ 0, %43 ]
  %46 = sext i32 %45 to i64
  %47 = inttoptr i64 %46 to i8*
  %48 = load %struct.bm_mc*, %struct.bm_mc** %3, align 8
  %49 = getelementptr inbounds %struct.bm_mc, %struct.bm_mc* %48, i32 0, i32 2
  store i8* %47, i8** %49, align 8
  ret i32 0
}

declare dso_local i8* @ptr_ADD(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
