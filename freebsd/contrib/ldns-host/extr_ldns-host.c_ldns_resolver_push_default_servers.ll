; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns-host/extr_ldns-host.c_ldns_resolver_push_default_servers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns-host/extr_ldns-host.c_ldns_resolver_push_default_servers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@LDNS_STATUS_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"::1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ldns_resolver_push_default_servers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ldns_resolver_push_default_servers(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %6 = call i32 @ldns_str2rdf_a(i32** %5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* @LDNS_STATUS_OK, align 4
  %8 = icmp ne i32 %6, %7
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @ldns_resolver_push_nameserver(i32* %10, i32* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @LDNS_STATUS_OK, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %9, %1
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @ldns_rdf_deep_free(i32* %16)
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %39

19:                                               ; preds = %9
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @ldns_rdf_deep_free(i32* %20)
  %22 = call i32 @ldns_str2rdf_aaaa(i32** %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* @LDNS_STATUS_OK, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load i32*, i32** %3, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @ldns_resolver_push_nameserver(i32* %26, i32* %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* @LDNS_STATUS_OK, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %25, %19
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @ldns_rdf_deep_free(i32* %32)
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %39

35:                                               ; preds = %25
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @ldns_rdf_deep_free(i32* %36)
  %38 = load i32, i32* @LDNS_STATUS_OK, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %35, %31, %15
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @ldns_str2rdf_a(i32**, i8*) #1

declare dso_local i32 @ldns_resolver_push_nameserver(i32*, i32*) #1

declare dso_local i32 @ldns_rdf_deep_free(i32*) #1

declare dso_local i32 @ldns_str2rdf_aaaa(i32**, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
