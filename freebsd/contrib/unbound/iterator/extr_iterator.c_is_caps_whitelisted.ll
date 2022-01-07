; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iterator.c_is_caps_whitelisted.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iterator.c_is_caps_whitelisted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iter_env = type { i32 }
%struct.iter_qstate = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iter_env*, %struct.iter_qstate*)* @is_caps_whitelisted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_caps_whitelisted(%struct.iter_env* %0, %struct.iter_qstate* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iter_env*, align 8
  %5 = alloca %struct.iter_qstate*, align 8
  store %struct.iter_env* %0, %struct.iter_env** %4, align 8
  store %struct.iter_qstate* %1, %struct.iter_qstate** %5, align 8
  %6 = load %struct.iter_env*, %struct.iter_env** %4, align 8
  %7 = getelementptr inbounds %struct.iter_env, %struct.iter_env* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %35

11:                                               ; preds = %2
  %12 = load %struct.iter_env*, %struct.iter_env** %4, align 8
  %13 = getelementptr inbounds %struct.iter_env, %struct.iter_env* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.iter_qstate*, %struct.iter_qstate** %5, align 8
  %16 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.iter_qstate*, %struct.iter_qstate** %5, align 8
  %20 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.iter_qstate*, %struct.iter_qstate** %5, align 8
  %24 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dname_count_labels(i32 %26)
  %28 = load %struct.iter_qstate*, %struct.iter_qstate** %5, align 8
  %29 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32* @name_tree_lookup(i32 %14, i32 %18, i32 %22, i32 %27, i32 %31)
  %33 = icmp ne i32* %32, null
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %11, %10
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32* @name_tree_lookup(i32, i32, i32, i32, i32) #1

declare dso_local i32 @dname_count_labels(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
