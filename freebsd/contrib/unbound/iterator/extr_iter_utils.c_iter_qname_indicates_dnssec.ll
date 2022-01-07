; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_utils.c_iter_qname_indicates_dnssec.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_utils.c_iter_qname_indicates_dnssec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_env = type { i32 }
%struct.query_info = type { i32, i32, i32 }
%struct.trust_anchor = type { i64, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iter_qname_indicates_dnssec(%struct.module_env* %0, %struct.query_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.module_env*, align 8
  %5 = alloca %struct.query_info*, align 8
  %6 = alloca %struct.trust_anchor*, align 8
  store %struct.module_env* %0, %struct.module_env** %4, align 8
  store %struct.query_info* %1, %struct.query_info** %5, align 8
  %7 = load %struct.module_env*, %struct.module_env** %4, align 8
  %8 = icmp ne %struct.module_env* %7, null
  br i1 %8, label %9, label %22

9:                                                ; preds = %2
  %10 = load %struct.module_env*, %struct.module_env** %4, align 8
  %11 = getelementptr inbounds %struct.module_env, %struct.module_env* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %9
  %15 = load %struct.query_info*, %struct.query_info** %5, align 8
  %16 = icmp ne %struct.query_info* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load %struct.query_info*, %struct.query_info** %5, align 8
  %19 = getelementptr inbounds %struct.query_info, %struct.query_info* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17, %14, %9, %2
  store i32 0, i32* %3, align 4
  br label %57

23:                                               ; preds = %17
  %24 = load %struct.module_env*, %struct.module_env** %4, align 8
  %25 = getelementptr inbounds %struct.module_env, %struct.module_env* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.query_info*, %struct.query_info** %5, align 8
  %28 = getelementptr inbounds %struct.query_info, %struct.query_info* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.query_info*, %struct.query_info** %5, align 8
  %31 = getelementptr inbounds %struct.query_info, %struct.query_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.query_info*, %struct.query_info** %5, align 8
  %34 = getelementptr inbounds %struct.query_info, %struct.query_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.trust_anchor* @anchors_lookup(i32 %26, i32 %29, i32 %32, i32 %35)
  store %struct.trust_anchor* %36, %struct.trust_anchor** %6, align 8
  %37 = icmp ne %struct.trust_anchor* %36, null
  br i1 %37, label %38, label %56

38:                                               ; preds = %23
  %39 = load %struct.trust_anchor*, %struct.trust_anchor** %6, align 8
  %40 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %38
  %44 = load %struct.trust_anchor*, %struct.trust_anchor** %6, align 8
  %45 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load %struct.trust_anchor*, %struct.trust_anchor** %6, align 8
  %50 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %49, i32 0, i32 2
  %51 = call i32 @lock_basic_unlock(i32* %50)
  store i32 0, i32* %3, align 4
  br label %57

52:                                               ; preds = %43, %38
  %53 = load %struct.trust_anchor*, %struct.trust_anchor** %6, align 8
  %54 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %53, i32 0, i32 2
  %55 = call i32 @lock_basic_unlock(i32* %54)
  store i32 1, i32* %3, align 4
  br label %57

56:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %52, %48, %22
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.trust_anchor* @anchors_lookup(i32, i32, i32, i32) #1

declare dso_local i32 @lock_basic_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
