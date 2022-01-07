; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iterator.c_find_NS.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iterator.c_find_NS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_packed_rrset_key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.reply_info = type { %struct.ub_packed_rrset_key** }

@LDNS_RR_TYPE_NS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ub_packed_rrset_key* (%struct.reply_info*, i64, i64)* @find_NS to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ub_packed_rrset_key* @find_NS(%struct.reply_info* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.ub_packed_rrset_key*, align 8
  %5 = alloca %struct.reply_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.reply_info* %0, %struct.reply_info** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %6, align 8
  store i64 %9, i64* %8, align 8
  br label %10

10:                                               ; preds = %35, %3
  %11 = load i64, i64* %8, align 8
  %12 = load i64, i64* %7, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %38

14:                                               ; preds = %10
  %15 = load %struct.reply_info*, %struct.reply_info** %5, align 8
  %16 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %15, i32 0, i32 0
  %17 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %16, align 8
  %18 = load i64, i64* %8, align 8
  %19 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %17, i64 %18
  %20 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %19, align 8
  %21 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @ntohs(i32 %23)
  %25 = load i64, i64* @LDNS_RR_TYPE_NS, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %14
  %28 = load %struct.reply_info*, %struct.reply_info** %5, align 8
  %29 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %28, i32 0, i32 0
  %30 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %29, align 8
  %31 = load i64, i64* %8, align 8
  %32 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %30, i64 %31
  %33 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %32, align 8
  store %struct.ub_packed_rrset_key* %33, %struct.ub_packed_rrset_key** %4, align 8
  br label %39

34:                                               ; preds = %14
  br label %35

35:                                               ; preds = %34
  %36 = load i64, i64* %8, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %8, align 8
  br label %10

38:                                               ; preds = %10
  store %struct.ub_packed_rrset_key* null, %struct.ub_packed_rrset_key** %4, align 8
  br label %39

39:                                               ; preds = %38, %27
  %40 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %4, align 8
  ret %struct.ub_packed_rrset_key* %40
}

declare dso_local i64 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
