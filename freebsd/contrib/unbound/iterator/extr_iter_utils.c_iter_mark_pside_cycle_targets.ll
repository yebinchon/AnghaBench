; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_utils.c_iter_mark_pside_cycle_targets.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_utils.c_iter_mark_pside_cycle_targets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_qstate = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.delegpt = type { %struct.delegpt_ns* }
%struct.delegpt_ns = type { i32, i32, i32, i32, %struct.delegpt_ns* }

@LDNS_RR_TYPE_A = common dso_local global i32 0, align 4
@VERB_QUERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"skipping target due to dependency cycle\00", align 1
@LDNS_RR_TYPE_AAAA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iter_mark_pside_cycle_targets(%struct.module_qstate* %0, %struct.delegpt* %1) #0 {
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

9:                                                ; preds = %80, %2
  %10 = load %struct.delegpt_ns*, %struct.delegpt_ns** %5, align 8
  %11 = icmp ne %struct.delegpt_ns* %10, null
  br i1 %11, label %12, label %84

12:                                               ; preds = %9
  %13 = load %struct.delegpt_ns*, %struct.delegpt_ns** %5, align 8
  %14 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = load %struct.delegpt_ns*, %struct.delegpt_ns** %5, align 8
  %19 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %80

23:                                               ; preds = %17, %12
  %24 = load %struct.module_qstate*, %struct.module_qstate** %3, align 8
  %25 = load %struct.delegpt_ns*, %struct.delegpt_ns** %5, align 8
  %26 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.delegpt_ns*, %struct.delegpt_ns** %5, align 8
  %29 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @LDNS_RR_TYPE_A, align 4
  %32 = load %struct.module_qstate*, %struct.module_qstate** %3, align 8
  %33 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @causes_cycle(%struct.module_qstate* %24, i32 %27, i32 %30, i32 %31, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %23
  %39 = load i32, i32* @VERB_QUERY, align 4
  %40 = load %struct.delegpt_ns*, %struct.delegpt_ns** %5, align 8
  %41 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @LDNS_RR_TYPE_A, align 4
  %44 = load %struct.module_qstate*, %struct.module_qstate** %3, align 8
  %45 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @log_nametypeclass(i32 %39, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43, i32 %47)
  %49 = load %struct.delegpt_ns*, %struct.delegpt_ns** %5, align 8
  %50 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  br label %51

51:                                               ; preds = %38, %23
  %52 = load %struct.module_qstate*, %struct.module_qstate** %3, align 8
  %53 = load %struct.delegpt_ns*, %struct.delegpt_ns** %5, align 8
  %54 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.delegpt_ns*, %struct.delegpt_ns** %5, align 8
  %57 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @LDNS_RR_TYPE_AAAA, align 4
  %60 = load %struct.module_qstate*, %struct.module_qstate** %3, align 8
  %61 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @causes_cycle(%struct.module_qstate* %52, i32 %55, i32 %58, i32 %59, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %51
  %67 = load i32, i32* @VERB_QUERY, align 4
  %68 = load %struct.delegpt_ns*, %struct.delegpt_ns** %5, align 8
  %69 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @LDNS_RR_TYPE_AAAA, align 4
  %72 = load %struct.module_qstate*, %struct.module_qstate** %3, align 8
  %73 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @log_nametypeclass(i32 %67, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %70, i32 %71, i32 %75)
  %77 = load %struct.delegpt_ns*, %struct.delegpt_ns** %5, align 8
  %78 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %77, i32 0, i32 1
  store i32 1, i32* %78, align 4
  br label %79

79:                                               ; preds = %66, %51
  br label %80

80:                                               ; preds = %79, %22
  %81 = load %struct.delegpt_ns*, %struct.delegpt_ns** %5, align 8
  %82 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %81, i32 0, i32 4
  %83 = load %struct.delegpt_ns*, %struct.delegpt_ns** %82, align 8
  store %struct.delegpt_ns* %83, %struct.delegpt_ns** %5, align 8
  br label %9

84:                                               ; preds = %9
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
