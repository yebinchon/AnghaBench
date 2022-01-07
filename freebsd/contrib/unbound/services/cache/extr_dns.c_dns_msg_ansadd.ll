; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_dns.c_dns_msg_ansadd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_dns.c_dns_msg_ansadd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dns_msg = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32* }
%struct.regional = type { i32 }
%struct.ub_packed_rrset_key = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dns_msg_ansadd(%struct.dns_msg* %0, %struct.regional* %1, %struct.ub_packed_rrset_key* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dns_msg*, align 8
  %7 = alloca %struct.regional*, align 8
  %8 = alloca %struct.ub_packed_rrset_key*, align 8
  %9 = alloca i32, align 4
  store %struct.dns_msg* %0, %struct.dns_msg** %6, align 8
  store %struct.regional* %1, %struct.regional** %7, align 8
  store %struct.ub_packed_rrset_key* %2, %struct.ub_packed_rrset_key** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %11 = load %struct.regional*, %struct.regional** %7, align 8
  %12 = load i32, i32* %9, align 4
  %13 = call i32 @packed_rrset_copy_region(%struct.ub_packed_rrset_key* %10, %struct.regional* %11, i32 %12)
  %14 = load %struct.dns_msg*, %struct.dns_msg** %6, align 8
  %15 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.dns_msg*, %struct.dns_msg** %6, align 8
  %20 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds i32, i32* %18, i64 %25
  store i32 %13, i32* %26, align 4
  %27 = icmp ne i32 %13, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %36

29:                                               ; preds = %4
  %30 = load %struct.dns_msg*, %struct.dns_msg** %6, align 8
  %31 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 8
  store i32 1, i32* %5, align 4
  br label %36

36:                                               ; preds = %29, %28
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i32 @packed_rrset_copy_region(%struct.ub_packed_rrset_key*, %struct.regional*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
