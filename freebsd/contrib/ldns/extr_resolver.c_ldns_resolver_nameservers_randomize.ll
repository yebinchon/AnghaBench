; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_resolver.c_ldns_resolver_nameservers_randomize.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_resolver.c_ldns_resolver_nameservers_randomize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ldns_resolver_nameservers_randomize(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = icmp ne i32* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load i32*, i32** %2, align 8
  %14 = call i32** @ldns_resolver_nameservers(i32* %13)
  store i32** %14, i32*** %5, align 8
  %15 = load i32*, i32** %2, align 8
  %16 = call i64* @ldns_resolver_rtt(i32* %15)
  store i64* %16, i64** %7, align 8
  store i64 0, i64* %3, align 8
  br label %17

17:                                               ; preds = %57, %1
  %18 = load i64, i64* %3, align 8
  %19 = load i32*, i32** %2, align 8
  %20 = call i64 @ldns_resolver_nameserver_count(i32* %19)
  %21 = icmp ult i64 %18, %20
  br i1 %21, label %22, label %60

22:                                               ; preds = %17
  %23 = call i64 (...) @ldns_get_random()
  %24 = load i32*, i32** %2, align 8
  %25 = call i64 @ldns_resolver_nameserver_count(i32* %24)
  %26 = urem i64 %23, %25
  store i64 %26, i64* %4, align 8
  %27 = load i32**, i32*** %5, align 8
  %28 = load i64, i64* %3, align 8
  %29 = getelementptr inbounds i32*, i32** %27, i64 %28
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %6, align 8
  %31 = load i32**, i32*** %5, align 8
  %32 = load i64, i64* %4, align 8
  %33 = getelementptr inbounds i32*, i32** %31, i64 %32
  %34 = load i32*, i32** %33, align 8
  %35 = load i32**, i32*** %5, align 8
  %36 = load i64, i64* %3, align 8
  %37 = getelementptr inbounds i32*, i32** %35, i64 %36
  store i32* %34, i32** %37, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = load i32**, i32*** %5, align 8
  %40 = load i64, i64* %4, align 8
  %41 = getelementptr inbounds i32*, i32** %39, i64 %40
  store i32* %38, i32** %41, align 8
  %42 = load i64*, i64** %7, align 8
  %43 = load i64, i64* %3, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %8, align 8
  %46 = load i64*, i64** %7, align 8
  %47 = load i64, i64* %4, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = load i64*, i64** %7, align 8
  %51 = load i64, i64* %3, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  store i64 %49, i64* %52, align 8
  %53 = load i64, i64* %8, align 8
  %54 = load i64*, i64** %7, align 8
  %55 = load i64, i64* %4, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  store i64 %53, i64* %56, align 8
  br label %57

57:                                               ; preds = %22
  %58 = load i64, i64* %3, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %3, align 8
  br label %17

60:                                               ; preds = %17
  %61 = load i32*, i32** %2, align 8
  %62 = load i32**, i32*** %5, align 8
  %63 = call i32 @ldns_resolver_set_nameservers(i32* %61, i32** %62)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32** @ldns_resolver_nameservers(i32*) #1

declare dso_local i64* @ldns_resolver_rtt(i32*) #1

declare dso_local i64 @ldns_resolver_nameserver_count(i32*) #1

declare dso_local i64 @ldns_get_random(...) #1

declare dso_local i32 @ldns_resolver_set_nameservers(i32*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
