; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_scrub.c_synth_cname.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_scrub.c_synth_cname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrset_parse = type { i64 }

@LDNS_MAX_DOMAINLEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, %struct.rrset_parse*, i32*, i64*, i32*)* @synth_cname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @synth_cname(i32* %0, i64 %1, %struct.rrset_parse* %2, i32* %3, i64* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.rrset_parse*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i64 %1, i64* %9, align 8
  store %struct.rrset_parse* %2, %struct.rrset_parse** %10, align 8
  store i32* %3, i32** %11, align 8
  store i64* %4, i64** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* null, i32** %14, align 8
  %16 = load %struct.rrset_parse*, %struct.rrset_parse** %10, align 8
  %17 = call i32 @parse_get_cname_target(%struct.rrset_parse* %16, i32** %14, i64* %15)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %56

20:                                               ; preds = %6
  %21 = load i64, i64* %9, align 8
  %22 = load %struct.rrset_parse*, %struct.rrset_parse** %10, align 8
  %23 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ugt i64 %21, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @log_assert(i32 %26)
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* %15, align 8
  %30 = add i64 %28, %29
  %31 = load %struct.rrset_parse*, %struct.rrset_parse** %10, align 8
  %32 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = sub i64 %30, %33
  %35 = load i64*, i64** %12, align 8
  store i64 %34, i64* %35, align 8
  %36 = load i64*, i64** %12, align 8
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @LDNS_MAX_DOMAINLEN, align 8
  %39 = icmp ugt i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %20
  store i32 0, i32* %7, align 4
  br label %56

41:                                               ; preds = %20
  %42 = load i32*, i32** %13, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 @dname_pkt_copy(i32* %42, i32* %43, i32* %44)
  %46 = load i32*, i32** %13, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = load i64, i64* %9, align 8
  %49 = load %struct.rrset_parse*, %struct.rrset_parse** %10, align 8
  %50 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = sub i64 %48, %51
  %53 = getelementptr inbounds i32, i32* %47, i64 %52
  %54 = load i32*, i32** %14, align 8
  %55 = call i32 @dname_pkt_copy(i32* %46, i32* %53, i32* %54)
  store i32 1, i32* %7, align 4
  br label %56

56:                                               ; preds = %41, %40, %19
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

declare dso_local i32 @parse_get_cname_target(%struct.rrset_parse*, i32**, i64*) #1

declare dso_local i32 @log_assert(i32) #1

declare dso_local i32 @dname_pkt_copy(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
