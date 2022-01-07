; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_utils.c_reply_get_NS_rrset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_utils.c_reply_get_NS_rrset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_packed_rrset_key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.reply_info = type { i64, %struct.ub_packed_rrset_key** }

@LDNS_RR_TYPE_NS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ub_packed_rrset_key* (%struct.reply_info*)* @reply_get_NS_rrset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ub_packed_rrset_key* @reply_get_NS_rrset(%struct.reply_info* %0) #0 {
  %2 = alloca %struct.ub_packed_rrset_key*, align 8
  %3 = alloca %struct.reply_info*, align 8
  %4 = alloca i64, align 8
  store %struct.reply_info* %0, %struct.reply_info** %3, align 8
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %32, %1
  %6 = load i64, i64* %4, align 8
  %7 = load %struct.reply_info*, %struct.reply_info** %3, align 8
  %8 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ult i64 %6, %9
  br i1 %10, label %11, label %35

11:                                               ; preds = %5
  %12 = load %struct.reply_info*, %struct.reply_info** %3, align 8
  %13 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %12, i32 0, i32 1
  %14 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %13, align 8
  %15 = load i64, i64* %4, align 8
  %16 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %14, i64 %15
  %17 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %16, align 8
  %18 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* @LDNS_RR_TYPE_NS, align 4
  %22 = call i64 @htons(i32 %21)
  %23 = icmp eq i64 %20, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %11
  %25 = load %struct.reply_info*, %struct.reply_info** %3, align 8
  %26 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %25, i32 0, i32 1
  %27 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %26, align 8
  %28 = load i64, i64* %4, align 8
  %29 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %27, i64 %28
  %30 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %29, align 8
  store %struct.ub_packed_rrset_key* %30, %struct.ub_packed_rrset_key** %2, align 8
  br label %36

31:                                               ; preds = %11
  br label %32

32:                                               ; preds = %31
  %33 = load i64, i64* %4, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %4, align 8
  br label %5

35:                                               ; preds = %5
  store %struct.ub_packed_rrset_key* null, %struct.ub_packed_rrset_key** %2, align 8
  br label %36

36:                                               ; preds = %35, %24
  %37 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %2, align 8
  ret %struct.ub_packed_rrset_key* %37
}

declare dso_local i64 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
