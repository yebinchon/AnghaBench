; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_cachedump.c_print_dp_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_cachedump.c_print_dp_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delegpt = type { i64 }
%struct.dns_msg = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, %struct.ub_packed_rrset_key** }
%struct.ub_packed_rrset_key = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.packed_rrset_data = type { i64 }

@sec_status_bogus = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"Address is BOGUS:\0A\00", align 1
@.str.1 = private unnamed_addr constant [114 x i8] c"Delegation with %d names, of which %d can be examined to query further addresses.\0A%sIt provides %d IP addresses.\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"It is BOGUS. \00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.delegpt*, %struct.dns_msg*)* @print_dp_main to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_dp_main(i32* %0, %struct.delegpt* %1, %struct.dns_msg* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.delegpt*, align 8
  %6 = alloca %struct.dns_msg*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.ub_packed_rrset_key*, align 8
  %14 = alloca %struct.packed_rrset_data*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.delegpt* %1, %struct.delegpt** %5, align 8
  store %struct.dns_msg* %2, %struct.dns_msg** %6, align 8
  %15 = load %struct.dns_msg*, %struct.dns_msg** %6, align 8
  %16 = icmp ne %struct.dns_msg* %15, null
  br i1 %16, label %17, label %63

17:                                               ; preds = %3
  store i64 0, i64* %7, align 8
  br label %18

18:                                               ; preds = %59, %17
  %19 = load i64, i64* %7, align 8
  %20 = load %struct.dns_msg*, %struct.dns_msg** %6, align 8
  %21 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ult i64 %19, %24
  br i1 %25, label %26, label %62

26:                                               ; preds = %18
  %27 = load %struct.dns_msg*, %struct.dns_msg** %6, align 8
  %28 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %31, i64 %32
  %34 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %33, align 8
  store %struct.ub_packed_rrset_key* %34, %struct.ub_packed_rrset_key** %13, align 8
  %35 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  %36 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %39, %struct.packed_rrset_data** %14, align 8
  %40 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %14, align 8
  %41 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @sec_status_bogus, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %26
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 (i32*, i8*, ...) @ssl_printf(i32* %46, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  br label %84

50:                                               ; preds = %45
  br label %51

51:                                               ; preds = %50, %26
  %52 = load i32*, i32** %4, align 8
  %53 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  %54 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %14, align 8
  %55 = call i32 @dump_rrset(i32* %52, %struct.ub_packed_rrset_key* %53, %struct.packed_rrset_data* %54, i32 0)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %51
  br label %84

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %58
  %60 = load i64, i64* %7, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %7, align 8
  br label %18

62:                                               ; preds = %18
  br label %63

63:                                               ; preds = %62, %3
  %64 = load %struct.delegpt*, %struct.delegpt** %5, align 8
  %65 = call i32 @delegpt_count_ns(%struct.delegpt* %64, i64* %8, i64* %9)
  %66 = load %struct.delegpt*, %struct.delegpt** %5, align 8
  %67 = call i32 @delegpt_count_addr(%struct.delegpt* %66, i64* %10, i64* %11, i64* %12)
  %68 = load i32*, i32** %4, align 8
  %69 = load i64, i64* %8, align 8
  %70 = trunc i64 %69 to i32
  %71 = load i64, i64* %9, align 8
  %72 = trunc i64 %71 to i32
  %73 = load %struct.delegpt*, %struct.delegpt** %5, align 8
  %74 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %79 = load i64, i64* %10, align 8
  %80 = trunc i64 %79 to i32
  %81 = call i32 (i32*, i8*, ...) @ssl_printf(i32* %68, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.1, i64 0, i64 0), i32 %70, i32 %72, i8* %78, i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %63
  br label %84

84:                                               ; preds = %49, %57, %83, %63
  ret void
}

declare dso_local i32 @ssl_printf(i32*, i8*, ...) #1

declare dso_local i32 @dump_rrset(i32*, %struct.ub_packed_rrset_key*, %struct.packed_rrset_data*, i32) #1

declare dso_local i32 @delegpt_count_ns(%struct.delegpt*, i64*, i64*) #1

declare dso_local i32 @delegpt_count_addr(%struct.delegpt*, i64*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
