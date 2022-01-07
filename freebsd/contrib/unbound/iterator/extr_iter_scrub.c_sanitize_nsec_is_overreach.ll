; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_scrub.c_sanitize_nsec_is_overreach.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_scrub.c_sanitize_nsec_is_overreach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrset_parse = type { i64, %struct.rr_parse* }
%struct.rr_parse = type { i32*, %struct.rr_parse* }

@LDNS_RR_TYPE_NSEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rrset_parse*, i32*)* @sanitize_nsec_is_overreach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sanitize_nsec_is_overreach(%struct.rrset_parse* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rrset_parse*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.rr_parse*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store %struct.rrset_parse* %0, %struct.rrset_parse** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.rrset_parse*, %struct.rrset_parse** %4, align 8
  %10 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @LDNS_RR_TYPE_NSEC, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @log_assert(i32 %14)
  %16 = load %struct.rrset_parse*, %struct.rrset_parse** %4, align 8
  %17 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %16, i32 0, i32 1
  %18 = load %struct.rr_parse*, %struct.rr_parse** %17, align 8
  store %struct.rr_parse* %18, %struct.rr_parse** %6, align 8
  br label %19

19:                                               ; preds = %45, %2
  %20 = load %struct.rr_parse*, %struct.rr_parse** %6, align 8
  %21 = icmp ne %struct.rr_parse* %20, null
  br i1 %21, label %22, label %49

22:                                               ; preds = %19
  %23 = load %struct.rr_parse*, %struct.rr_parse** %6, align 8
  %24 = getelementptr inbounds %struct.rr_parse, %struct.rr_parse* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 4
  %27 = getelementptr inbounds i32, i32* %26, i64 2
  store i32* %27, i32** %7, align 8
  %28 = load %struct.rr_parse*, %struct.rr_parse** %6, align 8
  %29 = getelementptr inbounds %struct.rr_parse, %struct.rr_parse* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 4
  %32 = call i64 @sldns_read_uint16(i32* %31)
  store i64 %32, i64* %8, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @dname_valid(i32* %33, i64 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %22
  store i32 1, i32* %3, align 4
  br label %50

38:                                               ; preds = %22
  %39 = load i32*, i32** %7, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @dname_subdomain_c(i32* %39, i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  store i32 1, i32* %3, align 4
  br label %50

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %44
  %46 = load %struct.rr_parse*, %struct.rr_parse** %6, align 8
  %47 = getelementptr inbounds %struct.rr_parse, %struct.rr_parse* %46, i32 0, i32 1
  %48 = load %struct.rr_parse*, %struct.rr_parse** %47, align 8
  store %struct.rr_parse* %48, %struct.rr_parse** %6, align 8
  br label %19

49:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %43, %37
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @log_assert(i32) #1

declare dso_local i64 @sldns_read_uint16(i32*) #1

declare dso_local i32 @dname_valid(i32*, i64) #1

declare dso_local i32 @dname_subdomain_c(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
