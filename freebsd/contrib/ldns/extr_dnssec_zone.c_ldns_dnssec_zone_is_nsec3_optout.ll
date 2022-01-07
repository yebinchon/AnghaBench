; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_zone.c_ldns_dnssec_zone_is_nsec3_optout.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_zone.c_ldns_dnssec_zone_is_nsec3_optout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32* }

@LDNS_RR_TYPE_NSEC3PARAM = common dso_local global i32 0, align 4
@LDNS_RBTREE_NULL = common dso_local global %struct.TYPE_9__* null, align 8
@LDNS_RR_TYPE_NSEC3 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ldns_dnssec_zone_is_nsec3_optout(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @LDNS_RR_TYPE_NSEC3PARAM, align 4
  %10 = call i64 @ldns_dnssec_name_find_rrset(i32 %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %44

12:                                               ; preds = %1
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.TYPE_9__* @ldns_rbtree_first(i32 %15)
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %5, align 8
  br label %17

17:                                               ; preds = %40, %12
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** @LDNS_RBTREE_NULL, align 8
  %20 = icmp ne %struct.TYPE_9__* %18, %19
  br i1 %20, label %21, label %43

21:                                               ; preds = %17
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.TYPE_11__*
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %4, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %40

30:                                               ; preds = %21
  %31 = load i32*, i32** %4, align 8
  %32 = call i64 @ldns_rr_get_type(i32* %31)
  %33 = load i64, i64* @LDNS_RR_TYPE_NSEC3, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load i32*, i32** %4, align 8
  %37 = call i64 @ldns_nsec3_optout(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 1, i32* %2, align 4
  br label %45

40:                                               ; preds = %35, %30, %21
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %42 = call %struct.TYPE_9__* @ldns_rbtree_next(%struct.TYPE_9__* %41)
  store %struct.TYPE_9__* %42, %struct.TYPE_9__** %5, align 8
  br label %17

43:                                               ; preds = %17
  br label %44

44:                                               ; preds = %43, %1
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %39
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i64 @ldns_dnssec_name_find_rrset(i32, i32) #1

declare dso_local %struct.TYPE_9__* @ldns_rbtree_first(i32) #1

declare dso_local i64 @ldns_rr_get_type(i32*) #1

declare dso_local i64 @ldns_nsec3_optout(i32*) #1

declare dso_local %struct.TYPE_9__* @ldns_rbtree_next(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
