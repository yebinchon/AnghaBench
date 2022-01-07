; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_validator.c_val_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_validator.c_val_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.val_qstate = type { i32 }
%struct.module_qstate = type { %struct.val_qstate**, i32 }

@VAL_INIT_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.val_qstate* (%struct.module_qstate*, i32)* @val_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.val_qstate* @val_new(%struct.module_qstate* %0, i32 %1) #0 {
  %3 = alloca %struct.val_qstate*, align 8
  %4 = alloca %struct.module_qstate*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.val_qstate*, align 8
  store %struct.module_qstate* %0, %struct.module_qstate** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %8 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i64 @regional_alloc(i32 %9, i32 4)
  %11 = inttoptr i64 %10 to %struct.val_qstate*
  store %struct.val_qstate* %11, %struct.val_qstate** %6, align 8
  %12 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %13 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %12, i32 0, i32 0
  %14 = load %struct.val_qstate**, %struct.val_qstate*** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.val_qstate*, %struct.val_qstate** %14, i64 %16
  %18 = load %struct.val_qstate*, %struct.val_qstate** %17, align 8
  %19 = icmp ne %struct.val_qstate* %18, null
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @log_assert(i32 %21)
  %23 = load %struct.val_qstate*, %struct.val_qstate** %6, align 8
  %24 = icmp ne %struct.val_qstate* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  store %struct.val_qstate* null, %struct.val_qstate** %3, align 8
  br label %42

26:                                               ; preds = %2
  %27 = load %struct.val_qstate*, %struct.val_qstate** %6, align 8
  %28 = call i32 @memset(%struct.val_qstate* %27, i32 0, i32 4)
  %29 = load %struct.val_qstate*, %struct.val_qstate** %6, align 8
  %30 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %31 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %30, i32 0, i32 0
  %32 = load %struct.val_qstate**, %struct.val_qstate*** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.val_qstate*, %struct.val_qstate** %32, i64 %34
  store %struct.val_qstate* %29, %struct.val_qstate** %35, align 8
  %36 = load i32, i32* @VAL_INIT_STATE, align 4
  %37 = load %struct.val_qstate*, %struct.val_qstate** %6, align 8
  %38 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %40 = load %struct.val_qstate*, %struct.val_qstate** %6, align 8
  %41 = call %struct.val_qstate* @val_new_getmsg(%struct.module_qstate* %39, %struct.val_qstate* %40)
  store %struct.val_qstate* %41, %struct.val_qstate** %3, align 8
  br label %42

42:                                               ; preds = %26, %25
  %43 = load %struct.val_qstate*, %struct.val_qstate** %3, align 8
  ret %struct.val_qstate* %43
}

declare dso_local i64 @regional_alloc(i32, i32) #1

declare dso_local i32 @log_assert(i32) #1

declare dso_local i32 @memset(%struct.val_qstate*, i32, i32) #1

declare dso_local %struct.val_qstate* @val_new_getmsg(%struct.module_qstate*, %struct.val_qstate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
