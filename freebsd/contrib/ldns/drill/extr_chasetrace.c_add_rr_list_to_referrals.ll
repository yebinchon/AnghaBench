; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/drill/extr_chasetrace.c_add_rr_list_to_referrals.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/drill/extr_chasetrace.c_add_rr_list_to_referrals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_5__* }

@LDNS_RR_TYPE_NS = common dso_local global i64 0, align 8
@verbosity = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @add_rr_list_to_referrals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_rr_list_to_referrals(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i64 0, i64* %5, align 8
  br label %9

9:                                                ; preds = %67, %2
  %10 = load i64, i64* %5, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i64 @ldns_rr_list_rr_count(i32* %11)
  %13 = icmp ult i64 %10, %12
  br i1 %13, label %14, label %70

14:                                               ; preds = %9
  %15 = load i32*, i32** %4, align 8
  %16 = load i64, i64* %5, align 8
  %17 = call i32* @ldns_rr_list_rr(i32* %15, i64 %16)
  store i32* %17, i32** %6, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @ldns_rr_owner(i32* %19)
  %21 = load i32*, i32** %6, align 8
  %22 = call i64 @ldns_rr_get_type(i32* %21)
  %23 = call %struct.TYPE_4__* @ldns_dnssec_zone_find_rrset(i32* %18, i32 %20, i64 %22)
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** %7, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %25 = icmp ne %struct.TYPE_4__* %24, null
  br i1 %25, label %26, label %51

26:                                               ; preds = %14
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  store %struct.TYPE_5__* %29, %struct.TYPE_5__** %8, align 8
  br label %30

30:                                               ; preds = %42, %26
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %32 = icmp ne %struct.TYPE_5__* %31, null
  br i1 %32, label %33, label %46

33:                                               ; preds = %30
  %34 = load i32*, i32** %6, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @ldns_rr_compare(i32* %34, i32 %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %46

41:                                               ; preds = %33
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  store %struct.TYPE_5__* %45, %struct.TYPE_5__** %8, align 8
  br label %30

46:                                               ; preds = %40, %30
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %48 = icmp ne %struct.TYPE_5__* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  br label %67

50:                                               ; preds = %46
  br label %51

51:                                               ; preds = %50, %14
  %52 = load i32*, i32** %6, align 8
  %53 = call i64 @ldns_rr_get_type(i32* %52)
  %54 = load i64, i64* @LDNS_RR_TYPE_NS, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load i32, i32* @verbosity, align 4
  %58 = icmp ne i32 %57, -1
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load i32, i32* @stdout, align 4
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @ldns_rr_print(i32 %60, i32* %61)
  br label %63

63:                                               ; preds = %59, %56, %51
  %64 = load i32*, i32** %3, align 8
  %65 = load i32*, i32** %6, align 8
  %66 = call i32 @ldns_dnssec_zone_add_rr(i32* %64, i32* %65)
  br label %67

67:                                               ; preds = %63, %49
  %68 = load i64, i64* %5, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %5, align 8
  br label %9

70:                                               ; preds = %9
  ret void
}

declare dso_local i64 @ldns_rr_list_rr_count(i32*) #1

declare dso_local i32* @ldns_rr_list_rr(i32*, i64) #1

declare dso_local %struct.TYPE_4__* @ldns_dnssec_zone_find_rrset(i32*, i32, i64) #1

declare dso_local i32 @ldns_rr_owner(i32*) #1

declare dso_local i64 @ldns_rr_get_type(i32*) #1

declare dso_local i64 @ldns_rr_compare(i32*, i32) #1

declare dso_local i32 @ldns_rr_print(i32, i32*) #1

declare dso_local i32 @ldns_dnssec_zone_add_rr(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
