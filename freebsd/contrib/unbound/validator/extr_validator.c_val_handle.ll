; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_validator.c_val_handle.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_validator.c_val_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_qstate = type { i32 }
%struct.val_qstate = type { i32 }
%struct.val_env = type { i32 }

@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"val handle processing q with state %s\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"validator: invalid state %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.module_qstate*, %struct.val_qstate*, %struct.val_env*, i32)* @val_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @val_handle(%struct.module_qstate* %0, %struct.val_qstate* %1, %struct.val_env* %2, i32 %3) #0 {
  %5 = alloca %struct.module_qstate*, align 8
  %6 = alloca %struct.val_qstate*, align 8
  %7 = alloca %struct.val_env*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.module_qstate* %0, %struct.module_qstate** %5, align 8
  store %struct.val_qstate* %1, %struct.val_qstate** %6, align 8
  store %struct.val_env* %2, %struct.val_env** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %10

10:                                               ; preds = %57, %4
  %11 = load i32, i32* %9, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %58

13:                                               ; preds = %10
  %14 = load i32, i32* @VERB_ALGO, align 4
  %15 = load %struct.val_qstate*, %struct.val_qstate** %6, align 8
  %16 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @val_state_to_string(i32 %17)
  %19 = call i32 @verbose(i32 %14, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.val_qstate*, %struct.val_qstate** %6, align 8
  %21 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %52 [
    i32 129, label %23
    i32 131, label %29
    i32 128, label %34
    i32 130, label %40
    i32 132, label %46
  ]

23:                                               ; preds = %13
  %24 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %25 = load %struct.val_qstate*, %struct.val_qstate** %6, align 8
  %26 = load %struct.val_env*, %struct.val_env** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @processInit(%struct.module_qstate* %24, %struct.val_qstate* %25, %struct.val_env* %26, i32 %27)
  store i32 %28, i32* %9, align 4
  br label %57

29:                                               ; preds = %13
  %30 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %31 = load %struct.val_qstate*, %struct.val_qstate** %6, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @processFindKey(%struct.module_qstate* %30, %struct.val_qstate* %31, i32 %32)
  store i32 %33, i32* %9, align 4
  br label %57

34:                                               ; preds = %13
  %35 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %36 = load %struct.val_qstate*, %struct.val_qstate** %6, align 8
  %37 = load %struct.val_env*, %struct.val_env** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @processValidate(%struct.module_qstate* %35, %struct.val_qstate* %36, %struct.val_env* %37, i32 %38)
  store i32 %39, i32* %9, align 4
  br label %57

40:                                               ; preds = %13
  %41 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %42 = load %struct.val_qstate*, %struct.val_qstate** %6, align 8
  %43 = load %struct.val_env*, %struct.val_env** %7, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @processFinished(%struct.module_qstate* %41, %struct.val_qstate* %42, %struct.val_env* %43, i32 %44)
  store i32 %45, i32* %9, align 4
  br label %57

46:                                               ; preds = %13
  %47 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %48 = load %struct.val_qstate*, %struct.val_qstate** %6, align 8
  %49 = load %struct.val_env*, %struct.val_env** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @processDLVLookup(%struct.module_qstate* %47, %struct.val_qstate* %48, %struct.val_env* %49, i32 %50)
  store i32 %51, i32* %9, align 4
  br label %57

52:                                               ; preds = %13
  %53 = load %struct.val_qstate*, %struct.val_qstate** %6, align 8
  %54 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @log_warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  store i32 0, i32* %9, align 4
  br label %57

57:                                               ; preds = %52, %46, %40, %34, %29, %23
  br label %10

58:                                               ; preds = %10
  ret void
}

declare dso_local i32 @verbose(i32, i8*, i32) #1

declare dso_local i32 @val_state_to_string(i32) #1

declare dso_local i32 @processInit(%struct.module_qstate*, %struct.val_qstate*, %struct.val_env*, i32) #1

declare dso_local i32 @processFindKey(%struct.module_qstate*, %struct.val_qstate*, i32) #1

declare dso_local i32 @processValidate(%struct.module_qstate*, %struct.val_qstate*, %struct.val_env*, i32) #1

declare dso_local i32 @processFinished(%struct.module_qstate*, %struct.val_qstate*, %struct.val_env*, i32) #1

declare dso_local i32 @processDLVLookup(%struct.module_qstate*, %struct.val_qstate*, %struct.val_env*, i32) #1

declare dso_local i32 @log_warn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
