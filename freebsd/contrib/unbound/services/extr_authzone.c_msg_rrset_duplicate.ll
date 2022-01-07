; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_msg_rrset_duplicate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_msg_rrset_duplicate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dns_msg = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.ub_packed_rrset_key** }
%struct.ub_packed_rrset_key = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dns_msg*, i32*, i64, i64, i64)* @msg_rrset_duplicate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msg_rrset_duplicate(%struct.dns_msg* %0, i32* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dns_msg*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.ub_packed_rrset_key*, align 8
  store %struct.dns_msg* %0, %struct.dns_msg** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 0, i64* %12, align 8
  br label %14

14:                                               ; preds = %63, %5
  %15 = load i64, i64* %12, align 8
  %16 = load %struct.dns_msg*, %struct.dns_msg** %7, align 8
  %17 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %15, %20
  br i1 %21, label %22, label %66

22:                                               ; preds = %14
  %23 = load %struct.dns_msg*, %struct.dns_msg** %7, align 8
  %24 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %26, align 8
  %28 = load i64, i64* %12, align 8
  %29 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %27, i64 %28
  %30 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %29, align 8
  store %struct.ub_packed_rrset_key* %30, %struct.ub_packed_rrset_key** %13, align 8
  %31 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  %32 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @ntohs(i32 %34)
  %36 = load i64, i64* %10, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %62

38:                                               ; preds = %22
  %39 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  %40 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %9, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %62

45:                                               ; preds = %38
  %46 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  %47 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @ntohs(i32 %49)
  %51 = load i64, i64* %11, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %45
  %54 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  %55 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = call i64 @query_dname_compare(i32 %57, i32* %58)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  store i32 1, i32* %6, align 4
  br label %67

62:                                               ; preds = %53, %45, %38, %22
  br label %63

63:                                               ; preds = %62
  %64 = load i64, i64* %12, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %12, align 8
  br label %14

66:                                               ; preds = %14
  store i32 0, i32* %6, align 4
  br label %67

67:                                               ; preds = %66, %61
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local i64 @ntohs(i32) #1

declare dso_local i64 @query_dname_compare(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
