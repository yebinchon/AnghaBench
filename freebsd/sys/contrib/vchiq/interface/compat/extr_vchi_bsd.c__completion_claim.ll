; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/vchiq/interface/compat/extr_vchi_bsd.c__completion_claim.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/vchiq/interface/compat/extr_vchi_bsd.c__completion_claim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.completion = type { i32, i32 }

@.str = private unnamed_addr constant [54 x i8] c"_completion_claim should be called with acquired lock\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"_completion_claim on non-waited completion\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Invalid value of c->done: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.completion*)* @_completion_claim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_completion_claim(%struct.completion* %0) #0 {
  %2 = alloca %struct.completion*, align 8
  store %struct.completion* %0, %struct.completion** %2, align 8
  %3 = load %struct.completion*, %struct.completion** %2, align 8
  %4 = getelementptr inbounds %struct.completion, %struct.completion* %3, i32 0, i32 1
  %5 = call i32 @mtx_owned(i32* %4)
  %6 = call i32 @KASSERT(i32 %5, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.completion*, %struct.completion** %2, align 8
  %8 = getelementptr inbounds %struct.completion, %struct.completion* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @KASSERT(i32 %11, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %13 = load %struct.completion*, %struct.completion** %2, align 8
  %14 = getelementptr inbounds %struct.completion, %struct.completion* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.completion*, %struct.completion** %2, align 8
  %19 = getelementptr inbounds %struct.completion, %struct.completion* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %19, align 4
  br label %34

22:                                               ; preds = %1
  %23 = load %struct.completion*, %struct.completion** %2, align 8
  %24 = getelementptr inbounds %struct.completion, %struct.completion* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, -1
  %27 = zext i1 %26 to i32
  %28 = load %struct.completion*, %struct.completion** %2, align 8
  %29 = getelementptr inbounds %struct.completion, %struct.completion* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i8*
  %33 = call i32 @KASSERT(i32 %27, i8* %32)
  br label %34

34:                                               ; preds = %22, %17
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_owned(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
