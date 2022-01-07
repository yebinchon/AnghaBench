; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_delegpt.c_delegpt_add_rrset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_delegpt.c_delegpt_add_rrset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delegpt = type { i32 }
%struct.regional = type { i32 }
%struct.ub_packed_rrset_key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@LDNS_RR_TYPE_NS = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_A = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_AAAA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Unknown rrset type added to delegpt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @delegpt_add_rrset(%struct.delegpt* %0, %struct.regional* %1, %struct.ub_packed_rrset_key* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.delegpt*, align 8
  %7 = alloca %struct.regional*, align 8
  %8 = alloca %struct.ub_packed_rrset_key*, align 8
  %9 = alloca i32, align 4
  store %struct.delegpt* %0, %struct.delegpt** %6, align 8
  store %struct.regional* %1, %struct.regional** %7, align 8
  store %struct.ub_packed_rrset_key* %2, %struct.ub_packed_rrset_key** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %11 = icmp ne %struct.ub_packed_rrset_key* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %59

13:                                               ; preds = %4
  %14 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %15 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @ntohs(i32 %17)
  %19 = load i64, i64* @LDNS_RR_TYPE_NS, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %13
  %22 = load %struct.delegpt*, %struct.delegpt** %6, align 8
  %23 = load %struct.regional*, %struct.regional** %7, align 8
  %24 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @delegpt_rrset_add_ns(%struct.delegpt* %22, %struct.regional* %23, %struct.ub_packed_rrset_key* %24, i32 %25)
  store i32 %26, i32* %5, align 4
  br label %59

27:                                               ; preds = %13
  %28 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %29 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @ntohs(i32 %31)
  %33 = load i64, i64* @LDNS_RR_TYPE_A, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %27
  %36 = load %struct.delegpt*, %struct.delegpt** %6, align 8
  %37 = load %struct.regional*, %struct.regional** %7, align 8
  %38 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @delegpt_add_rrset_A(%struct.delegpt* %36, %struct.regional* %37, %struct.ub_packed_rrset_key* %38, i32 %39)
  store i32 %40, i32* %5, align 4
  br label %59

41:                                               ; preds = %27
  %42 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %43 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @ntohs(i32 %45)
  %47 = load i64, i64* @LDNS_RR_TYPE_AAAA, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %41
  %50 = load %struct.delegpt*, %struct.delegpt** %6, align 8
  %51 = load %struct.regional*, %struct.regional** %7, align 8
  %52 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @delegpt_add_rrset_AAAA(%struct.delegpt* %50, %struct.regional* %51, %struct.ub_packed_rrset_key* %52, i32 %53)
  store i32 %54, i32* %5, align 4
  br label %59

55:                                               ; preds = %41
  br label %56

56:                                               ; preds = %55
  br label %57

57:                                               ; preds = %56
  %58 = call i32 @log_warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %59

59:                                               ; preds = %57, %49, %35, %21, %12
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @delegpt_rrset_add_ns(%struct.delegpt*, %struct.regional*, %struct.ub_packed_rrset_key*, i32) #1

declare dso_local i32 @delegpt_add_rrset_A(%struct.delegpt*, %struct.regional*, %struct.ub_packed_rrset_key*, i32) #1

declare dso_local i32 @delegpt_add_rrset_AAAA(%struct.delegpt*, %struct.regional*, %struct.ub_packed_rrset_key*, i32) #1

declare dso_local i32 @log_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
