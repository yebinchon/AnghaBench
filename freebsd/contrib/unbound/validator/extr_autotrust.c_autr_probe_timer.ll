; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_autr_probe_timer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_autr_probe_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_env = type { i32 }
%struct.trust_anchor = type { i32 }

@autr_permit_small_holddown = common dso_local global i64 0, align 8
@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"autotrust probe timer callback\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"autotrust probe timer %d callbacks done\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @autr_probe_timer(%struct.module_env* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.module_env*, align 8
  %4 = alloca %struct.trust_anchor*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.module_env* %0, %struct.module_env** %3, align 8
  store i32 3600, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i64, i64* @autr_permit_small_holddown, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 1, i32* %5, align 4
  br label %10

10:                                               ; preds = %9, %1
  %11 = load i32, i32* @VERB_ALGO, align 4
  %12 = call i32 (i32, i8*, ...) @verbose(i32 %11, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %17, %10
  %14 = load %struct.module_env*, %struct.module_env** %3, align 8
  %15 = call %struct.trust_anchor* @todo_probe(%struct.module_env* %14, i32* %5)
  store %struct.trust_anchor* %15, %struct.trust_anchor** %4, align 8
  %16 = icmp ne %struct.trust_anchor* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = load %struct.module_env*, %struct.module_env** %3, align 8
  %19 = load %struct.trust_anchor*, %struct.trust_anchor** %4, align 8
  %20 = call i32 @probe_anchor(%struct.module_env* %18, %struct.trust_anchor* %19)
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %6, align 4
  br label %13

23:                                               ; preds = %13
  %24 = load %struct.module_env*, %struct.module_env** %3, align 8
  %25 = getelementptr inbounds %struct.module_env, %struct.module_env* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @regional_free_all(i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %36

31:                                               ; preds = %23
  %32 = load i32, i32* @VERB_ALGO, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 (i32, i8*, ...) @verbose(i32 %32, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %31, %30
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @verbose(i32, i8*, ...) #1

declare dso_local %struct.trust_anchor* @todo_probe(%struct.module_env*, i32*) #1

declare dso_local i32 @probe_anchor(%struct.module_env*, %struct.trust_anchor*) #1

declare dso_local i32 @regional_free_all(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
