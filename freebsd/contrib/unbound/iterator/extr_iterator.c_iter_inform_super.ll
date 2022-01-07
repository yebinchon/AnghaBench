; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iterator.c_iter_inform_super.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iterator.c_iter_inform_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_qstate = type { i64, i64, i64*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.iter_qstate = type { i64 }

@LDNS_RR_CLASS_ANY = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_DS = common dso_local global i64 0, align 8
@DSNS_FIND_STATE = common dso_local global i64 0, align 8
@LDNS_RCODE_NOERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iter_inform_super(%struct.module_qstate* %0, i32 %1, %struct.module_qstate* %2) #0 {
  %4 = alloca %struct.module_qstate*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.module_qstate*, align 8
  store %struct.module_qstate* %0, %struct.module_qstate** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.module_qstate* %2, %struct.module_qstate** %6, align 8
  %7 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %8 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %3
  %12 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %13 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @LDNS_RR_CLASS_ANY, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %11
  %19 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %22 = call i32 @processClassResponse(%struct.module_qstate* %19, i32 %20, %struct.module_qstate* %21)
  br label %77

23:                                               ; preds = %11, %3
  %24 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %25 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @LDNS_RR_TYPE_DS, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %48

30:                                               ; preds = %23
  %31 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %32 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %31, i32 0, i32 2
  %33 = load i64*, i64** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to %struct.iter_qstate*
  %39 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @DSNS_FIND_STATE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %30
  %44 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %47 = call i32 @processDSNSResponse(%struct.module_qstate* %44, i32 %45, %struct.module_qstate* %46)
  br label %76

48:                                               ; preds = %30, %23
  %49 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %50 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @LDNS_RCODE_NOERROR, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  %55 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %58 = call i32 @error_supers(%struct.module_qstate* %55, i32 %56, %struct.module_qstate* %57)
  br label %75

59:                                               ; preds = %48
  %60 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %61 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %68 = call i32 @prime_supers(%struct.module_qstate* %65, i32 %66, %struct.module_qstate* %67)
  br label %74

69:                                               ; preds = %59
  %70 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %73 = call i32 @processTargetResponse(%struct.module_qstate* %70, i32 %71, %struct.module_qstate* %72)
  br label %74

74:                                               ; preds = %69, %64
  br label %75

75:                                               ; preds = %74, %54
  br label %76

76:                                               ; preds = %75, %43
  br label %77

77:                                               ; preds = %76, %18
  ret void
}

declare dso_local i32 @processClassResponse(%struct.module_qstate*, i32, %struct.module_qstate*) #1

declare dso_local i32 @processDSNSResponse(%struct.module_qstate*, i32, %struct.module_qstate*) #1

declare dso_local i32 @error_supers(%struct.module_qstate*, i32, %struct.module_qstate*) #1

declare dso_local i32 @prime_supers(%struct.module_qstate*, i32, %struct.module_qstate*) #1

declare dso_local i32 @processTargetResponse(%struct.module_qstate*, i32, %struct.module_qstate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
