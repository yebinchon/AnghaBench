; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgparse.c_rrset_has_sigover.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgparse.c_rrset_has_sigover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrset_parse = type { i64, %struct.rr_parse* }
%struct.rr_parse = type { %struct.rr_parse*, i32 }

@LDNS_RR_TYPE_RRSIG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.rrset_parse*, i32, i32*)* @rrset_has_sigover to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rrset_has_sigover(i32* %0, %struct.rrset_parse* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.rrset_parse*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.rr_parse*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.rrset_parse* %1, %struct.rrset_parse** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.rrset_parse*, %struct.rrset_parse** %6, align 8
  %12 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %11, i32 0, i32 1
  %13 = load %struct.rr_parse*, %struct.rr_parse** %12, align 8
  store %struct.rr_parse* %13, %struct.rr_parse** %10, align 8
  %14 = load %struct.rrset_parse*, %struct.rrset_parse** %6, align 8
  %15 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @LDNS_RR_TYPE_RRSIG, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @log_assert(i32 %19)
  br label %21

21:                                               ; preds = %35, %4
  %22 = load %struct.rr_parse*, %struct.rr_parse** %10, align 8
  %23 = icmp ne %struct.rr_parse* %22, null
  br i1 %23, label %24, label %39

24:                                               ; preds = %21
  %25 = load i32*, i32** %5, align 8
  %26 = load %struct.rr_parse*, %struct.rr_parse** %10, align 8
  %27 = getelementptr inbounds %struct.rr_parse, %struct.rr_parse* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i64 @pkt_rrsig_covered_equals(i32* %25, i32 %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  store i32 1, i32* %9, align 4
  br label %35

33:                                               ; preds = %24
  %34 = load i32*, i32** %8, align 8
  store i32 1, i32* %34, align 4
  br label %35

35:                                               ; preds = %33, %32
  %36 = load %struct.rr_parse*, %struct.rr_parse** %10, align 8
  %37 = getelementptr inbounds %struct.rr_parse, %struct.rr_parse* %36, i32 0, i32 0
  %38 = load %struct.rr_parse*, %struct.rr_parse** %37, align 8
  store %struct.rr_parse* %38, %struct.rr_parse** %10, align 8
  br label %21

39:                                               ; preds = %21
  %40 = load i32, i32* %9, align 4
  ret i32 %40
}

declare dso_local i32 @log_assert(i32) #1

declare dso_local i64 @pkt_rrsig_covered_equals(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
