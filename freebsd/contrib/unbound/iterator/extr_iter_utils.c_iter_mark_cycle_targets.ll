; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_utils.c_iter_mark_cycle_targets.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_utils.c_iter_mark_cycle_targets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_qstate = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.delegpt = type { %struct.delegpt_ns* }
%struct.delegpt_ns = type { i32, i32, i32, %struct.delegpt_ns* }

@LDNS_RR_TYPE_AAAA = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_A = common dso_local global i32 0, align 4
@VERB_QUERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [85 x i8] c"skipping target due to dependency cycle (harden-glue: no may fix some of the cycles)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iter_mark_cycle_targets(%struct.module_qstate* %0, %struct.delegpt* %1) #0 {
  %3 = alloca %struct.module_qstate*, align 8
  %4 = alloca %struct.delegpt*, align 8
  %5 = alloca %struct.delegpt_ns*, align 8
  store %struct.module_qstate* %0, %struct.module_qstate** %3, align 8
  store %struct.delegpt* %1, %struct.delegpt** %4, align 8
  %6 = load %struct.delegpt*, %struct.delegpt** %4, align 8
  %7 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %6, i32 0, i32 0
  %8 = load %struct.delegpt_ns*, %struct.delegpt_ns** %7, align 8
  store %struct.delegpt_ns* %8, %struct.delegpt_ns** %5, align 8
  br label %9

9:                                                ; preds = %62, %2
  %10 = load %struct.delegpt_ns*, %struct.delegpt_ns** %5, align 8
  %11 = icmp ne %struct.delegpt_ns* %10, null
  br i1 %11, label %12, label %66

12:                                               ; preds = %9
  %13 = load %struct.delegpt_ns*, %struct.delegpt_ns** %5, align 8
  %14 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %62

18:                                               ; preds = %12
  %19 = load %struct.module_qstate*, %struct.module_qstate** %3, align 8
  %20 = load %struct.delegpt_ns*, %struct.delegpt_ns** %5, align 8
  %21 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.delegpt_ns*, %struct.delegpt_ns** %5, align 8
  %24 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @LDNS_RR_TYPE_AAAA, align 4
  %27 = load %struct.module_qstate*, %struct.module_qstate** %3, align 8
  %28 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @causes_cycle(%struct.module_qstate* %19, i32 %22, i32 %25, i32 %26, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %48, label %33

33:                                               ; preds = %18
  %34 = load %struct.module_qstate*, %struct.module_qstate** %3, align 8
  %35 = load %struct.delegpt_ns*, %struct.delegpt_ns** %5, align 8
  %36 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.delegpt_ns*, %struct.delegpt_ns** %5, align 8
  %39 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @LDNS_RR_TYPE_A, align 4
  %42 = load %struct.module_qstate*, %struct.module_qstate** %3, align 8
  %43 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @causes_cycle(%struct.module_qstate* %34, i32 %37, i32 %40, i32 %41, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %33, %18
  %49 = load i32, i32* @VERB_QUERY, align 4
  %50 = load %struct.delegpt_ns*, %struct.delegpt_ns** %5, align 8
  %51 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @LDNS_RR_TYPE_A, align 4
  %54 = load %struct.module_qstate*, %struct.module_qstate** %3, align 8
  %55 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @log_nametypeclass(i32 %49, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %53, i32 %57)
  %59 = load %struct.delegpt_ns*, %struct.delegpt_ns** %5, align 8
  %60 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  br label %61

61:                                               ; preds = %48, %33
  br label %62

62:                                               ; preds = %61, %17
  %63 = load %struct.delegpt_ns*, %struct.delegpt_ns** %5, align 8
  %64 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %63, i32 0, i32 3
  %65 = load %struct.delegpt_ns*, %struct.delegpt_ns** %64, align 8
  store %struct.delegpt_ns* %65, %struct.delegpt_ns** %5, align 8
  br label %9

66:                                               ; preds = %9
  ret void
}

declare dso_local i64 @causes_cycle(%struct.module_qstate*, i32, i32, i32, i32) #1

declare dso_local i32 @log_nametypeclass(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
