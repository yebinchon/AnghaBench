; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_scrub.c_soa_in_auth.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_scrub.c_soa_in_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msg_parse = type { %struct.rrset_parse* }
%struct.rrset_parse = type { i64, i64, %struct.rrset_parse* }

@LDNS_RR_TYPE_SOA = common dso_local global i64 0, align 8
@LDNS_SECTION_AUTHORITY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msg_parse*)* @soa_in_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soa_in_auth(%struct.msg_parse* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.msg_parse*, align 8
  %4 = alloca %struct.rrset_parse*, align 8
  store %struct.msg_parse* %0, %struct.msg_parse** %3, align 8
  %5 = load %struct.msg_parse*, %struct.msg_parse** %3, align 8
  %6 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %5, i32 0, i32 0
  %7 = load %struct.rrset_parse*, %struct.rrset_parse** %6, align 8
  store %struct.rrset_parse* %7, %struct.rrset_parse** %4, align 8
  br label %8

8:                                                ; preds = %25, %1
  %9 = load %struct.rrset_parse*, %struct.rrset_parse** %4, align 8
  %10 = icmp ne %struct.rrset_parse* %9, null
  br i1 %10, label %11, label %29

11:                                               ; preds = %8
  %12 = load %struct.rrset_parse*, %struct.rrset_parse** %4, align 8
  %13 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @LDNS_RR_TYPE_SOA, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %11
  %18 = load %struct.rrset_parse*, %struct.rrset_parse** %4, align 8
  %19 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @LDNS_SECTION_AUTHORITY, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 1, i32* %2, align 4
  br label %30

24:                                               ; preds = %17, %11
  br label %25

25:                                               ; preds = %24
  %26 = load %struct.rrset_parse*, %struct.rrset_parse** %4, align 8
  %27 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %26, i32 0, i32 2
  %28 = load %struct.rrset_parse*, %struct.rrset_parse** %27, align 8
  store %struct.rrset_parse* %28, %struct.rrset_parse** %4, align 8
  br label %8

29:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %23
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
