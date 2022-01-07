; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/vchiq/interface/compat/extr_vchi_bsd.c_complete_all.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/vchiq/interface/compat/extr_vchi_bsd.c_complete_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.completion = type { i32, i32, i32 }

@INT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"c->done overflow\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Invalid value of c->done: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @complete_all(%struct.completion* %0) #0 {
  %2 = alloca %struct.completion*, align 8
  store %struct.completion* %0, %struct.completion** %2, align 8
  %3 = load %struct.completion*, %struct.completion** %2, align 8
  %4 = getelementptr inbounds %struct.completion, %struct.completion* %3, i32 0, i32 1
  %5 = call i32 @mtx_lock(i32* %4)
  %6 = load %struct.completion*, %struct.completion** %2, align 8
  %7 = getelementptr inbounds %struct.completion, %struct.completion* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp sge i32 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %1
  %11 = load %struct.completion*, %struct.completion** %2, align 8
  %12 = getelementptr inbounds %struct.completion, %struct.completion* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @INT_MAX, align 4
  %15 = icmp slt i32 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @KASSERT(i32 %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.completion*, %struct.completion** %2, align 8
  %19 = getelementptr inbounds %struct.completion, %struct.completion* %18, i32 0, i32 0
  store i32 -1, i32* %19, align 4
  %20 = load %struct.completion*, %struct.completion** %2, align 8
  %21 = getelementptr inbounds %struct.completion, %struct.completion* %20, i32 0, i32 2
  %22 = call i32 @cv_broadcast(i32* %21)
  br label %35

23:                                               ; preds = %1
  %24 = load %struct.completion*, %struct.completion** %2, align 8
  %25 = getelementptr inbounds %struct.completion, %struct.completion* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, -1
  %28 = zext i1 %27 to i32
  %29 = load %struct.completion*, %struct.completion** %2, align 8
  %30 = getelementptr inbounds %struct.completion, %struct.completion* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i8*
  %34 = call i32 @KASSERT(i32 %28, i8* %33)
  br label %35

35:                                               ; preds = %23, %10
  %36 = load %struct.completion*, %struct.completion** %2, align 8
  %37 = getelementptr inbounds %struct.completion, %struct.completion* %36, i32 0, i32 1
  %38 = call i32 @mtx_unlock(i32* %37)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @cv_broadcast(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
