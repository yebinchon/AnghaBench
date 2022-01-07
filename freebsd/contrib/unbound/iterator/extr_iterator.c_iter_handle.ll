; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iterator.c_iter_handle.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iterator.c_iter_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_qstate = type { i32 }
%struct.iter_qstate = type { i32 }
%struct.iter_env = type { i32 }

@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"iter_handle processing q with state %s\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"iterator: invalid state: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.module_qstate*, %struct.iter_qstate*, %struct.iter_env*, i32)* @iter_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iter_handle(%struct.module_qstate* %0, %struct.iter_qstate* %1, %struct.iter_env* %2, i32 %3) #0 {
  %5 = alloca %struct.module_qstate*, align 8
  %6 = alloca %struct.iter_qstate*, align 8
  %7 = alloca %struct.iter_env*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.module_qstate* %0, %struct.module_qstate** %5, align 8
  store %struct.iter_qstate* %1, %struct.iter_qstate** %6, align 8
  store %struct.iter_env* %2, %struct.iter_env** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %10

10:                                               ; preds = %73, %4
  %11 = load i32, i32* %9, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %74

13:                                               ; preds = %10
  %14 = load i32, i32* @VERB_ALGO, align 4
  %15 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %16 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @iter_state_to_string(i32 %17)
  %19 = call i32 @verbose(i32 %14, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %21 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %68 [
    i32 131, label %23
    i32 133, label %29
    i32 132, label %34
    i32 129, label %39
    i32 128, label %45
    i32 130, label %50
    i32 136, label %54
    i32 135, label %58
    i32 134, label %63
  ]

23:                                               ; preds = %13
  %24 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %25 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %26 = load %struct.iter_env*, %struct.iter_env** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @processInitRequest(%struct.module_qstate* %24, %struct.iter_qstate* %25, %struct.iter_env* %26, i32 %27)
  store i32 %28, i32* %9, align 4
  br label %73

29:                                               ; preds = %13
  %30 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %31 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @processInitRequest2(%struct.module_qstate* %30, %struct.iter_qstate* %31, i32 %32)
  store i32 %33, i32* %9, align 4
  br label %73

34:                                               ; preds = %13
  %35 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %36 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @processInitRequest3(%struct.module_qstate* %35, %struct.iter_qstate* %36, i32 %37)
  store i32 %38, i32* %9, align 4
  br label %73

39:                                               ; preds = %13
  %40 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %41 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %42 = load %struct.iter_env*, %struct.iter_env** %7, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @processQueryTargets(%struct.module_qstate* %40, %struct.iter_qstate* %41, %struct.iter_env* %42, i32 %43)
  store i32 %44, i32* %9, align 4
  br label %73

45:                                               ; preds = %13
  %46 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %47 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @processQueryResponse(%struct.module_qstate* %46, %struct.iter_qstate* %47, i32 %48)
  store i32 %49, i32* %9, align 4
  br label %73

50:                                               ; preds = %13
  %51 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @processPrimeResponse(%struct.module_qstate* %51, i32 %52)
  store i32 %53, i32* %9, align 4
  br label %73

54:                                               ; preds = %13
  %55 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @processCollectClass(%struct.module_qstate* %55, i32 %56)
  store i32 %57, i32* %9, align 4
  br label %73

58:                                               ; preds = %13
  %59 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %60 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @processDSNSFind(%struct.module_qstate* %59, %struct.iter_qstate* %60, i32 %61)
  store i32 %62, i32* %9, align 4
  br label %73

63:                                               ; preds = %13
  %64 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %65 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @processFinished(%struct.module_qstate* %64, %struct.iter_qstate* %65, i32 %66)
  store i32 %67, i32* %9, align 4
  br label %73

68:                                               ; preds = %13
  %69 = load %struct.iter_qstate*, %struct.iter_qstate** %6, align 8
  %70 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @log_warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  store i32 0, i32* %9, align 4
  br label %73

73:                                               ; preds = %68, %63, %58, %54, %50, %45, %39, %34, %29, %23
  br label %10

74:                                               ; preds = %10
  ret void
}

declare dso_local i32 @verbose(i32, i8*, i32) #1

declare dso_local i32 @iter_state_to_string(i32) #1

declare dso_local i32 @processInitRequest(%struct.module_qstate*, %struct.iter_qstate*, %struct.iter_env*, i32) #1

declare dso_local i32 @processInitRequest2(%struct.module_qstate*, %struct.iter_qstate*, i32) #1

declare dso_local i32 @processInitRequest3(%struct.module_qstate*, %struct.iter_qstate*, i32) #1

declare dso_local i32 @processQueryTargets(%struct.module_qstate*, %struct.iter_qstate*, %struct.iter_env*, i32) #1

declare dso_local i32 @processQueryResponse(%struct.module_qstate*, %struct.iter_qstate*, i32) #1

declare dso_local i32 @processPrimeResponse(%struct.module_qstate*, i32) #1

declare dso_local i32 @processCollectClass(%struct.module_qstate*, i32) #1

declare dso_local i32 @processDSNSFind(%struct.module_qstate*, %struct.iter_qstate*, i32) #1

declare dso_local i32 @processFinished(%struct.module_qstate*, %struct.iter_qstate*, i32) #1

declare dso_local i32 @log_warn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
