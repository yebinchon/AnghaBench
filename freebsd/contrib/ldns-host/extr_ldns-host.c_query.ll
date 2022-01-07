; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns-host/extr_ldns-host.c_query.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns-host/extr_ldns-host.c_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@o_verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"Trying \22\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\22\0A\00", align 1
@o_rrtype = common dso_local global i32 0, align 4
@o_rrclass = common dso_local global i32 0, align 4
@o_recursive = common dso_local global i64 0, align 8
@LDNS_RD = common dso_local global i32 0, align 4
@o_ixfr_serial = common dso_local global i32 0, align 4
@LDNS_STATUS_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c";; Truncated, retrying in TCP mode.\0A\00", align 1
@o_ignore_servfail = common dso_local global i64 0, align 8
@LDNS_RCODE_SERVFAIL = common dso_local global i64 0, align 8
@LDNS_RCODE_NOERROR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [54 x i8] c";; connection timed out; no servers could be reached\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32**, i32)* @query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query(i32* %0, i32* %1, i32** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i64, i64* @o_verbose, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %4
  %17 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @print_rdf_nodot(i32* %18)
  %20 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %16, %4
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @ldns_resolver_nameserver_count(i32* %22)
  store i32 %23, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %24

24:                                               ; preds = %109, %21
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* %13, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %112

28:                                               ; preds = %24
  %29 = load i32**, i32*** %8, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* @o_rrtype, align 4
  %33 = load i32, i32* @o_rrclass, align 4
  %34 = load i64, i64* @o_recursive, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* @LDNS_RD, align 4
  br label %39

38:                                               ; preds = %28
  br label %39

39:                                               ; preds = %38, %36
  %40 = phi i32 [ %37, %36 ], [ 0, %38 ]
  %41 = load i32, i32* @o_ixfr_serial, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i64 @ldns_resolver_send_to(i32** %29, i32* %30, i32* %31, i32 %32, i32 %33, i32 %40, i32 %41, i32 %42, i32 %43)
  store i64 %44, i64* %10, align 8
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* @LDNS_STATUS_OK, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %39
  %49 = load i32**, i32*** %8, align 8
  store i32* null, i32** %49, align 8
  br label %109

50:                                               ; preds = %39
  %51 = load i32**, i32*** %8, align 8
  %52 = load i32*, i32** %51, align 8
  %53 = call i64 @ldns_pkt_tc(i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %90

55:                                               ; preds = %50
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @ldns_resolver_usevc(i32* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %90, label %59

59:                                               ; preds = %55
  %60 = load i64, i64* @o_verbose, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %59
  %65 = load i32*, i32** %6, align 8
  %66 = call i32 @ldns_resolver_set_usevc(i32* %65, i32 1)
  %67 = load i32**, i32*** %8, align 8
  %68 = load i32*, i32** %6, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = load i32, i32* @o_rrtype, align 4
  %71 = load i32, i32* @o_rrclass, align 4
  %72 = load i64, i64* @o_recursive, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %64
  %75 = load i32, i32* @LDNS_RD, align 4
  br label %77

76:                                               ; preds = %64
  br label %77

77:                                               ; preds = %76, %74
  %78 = phi i32 [ %75, %74 ], [ 0, %76 ]
  %79 = load i32, i32* @o_ixfr_serial, align 4
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %9, align 4
  %82 = call i64 @ldns_resolver_send_to(i32** %67, i32* %68, i32* %69, i32 %70, i32 %71, i32 %78, i32 %79, i32 %80, i32 %81)
  store i64 %82, i64* %10, align 8
  %83 = load i32*, i32** %6, align 8
  %84 = call i32 @ldns_resolver_set_usevc(i32* %83, i32 0)
  %85 = load i64, i64* %10, align 8
  %86 = load i64, i64* @LDNS_STATUS_OK, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %77
  br label %109

89:                                               ; preds = %77
  br label %90

90:                                               ; preds = %89, %55, %50
  %91 = load i32**, i32*** %8, align 8
  %92 = load i32*, i32** %91, align 8
  %93 = call i64 @ldns_pkt_get_rcode(i32* %92)
  store i64 %93, i64* %11, align 8
  %94 = load i64, i64* @o_ignore_servfail, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %90
  %97 = load i64, i64* %11, align 8
  %98 = load i64, i64* @LDNS_RCODE_SERVFAIL, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %96
  %101 = load i32, i32* %13, align 4
  %102 = icmp sgt i32 %101, 1
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  br label %109

104:                                              ; preds = %100, %96, %90
  %105 = load i64, i64* %11, align 8
  %106 = load i64, i64* @LDNS_RCODE_NOERROR, align 8
  %107 = icmp eq i64 %105, %106
  %108 = zext i1 %107 to i32
  store i32 %108, i32* %5, align 4
  br label %120

109:                                              ; preds = %103, %88, %48
  %110 = load i32, i32* %12, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %12, align 4
  br label %24

112:                                              ; preds = %24
  %113 = load i32**, i32*** %8, align 8
  %114 = load i32*, i32** %113, align 8
  %115 = icmp eq i32* %114, null
  br i1 %115, label %116, label %119

116:                                              ; preds = %112
  %117 = call i32 @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0))
  %118 = call i32 @exit(i32 1) #3
  unreachable

119:                                              ; preds = %112
  store i32 0, i32* %5, align 4
  br label %120

120:                                              ; preds = %119, %104
  %121 = load i32, i32* %5, align 4
  ret i32 %121
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @print_rdf_nodot(i32*) #1

declare dso_local i32 @ldns_resolver_nameserver_count(i32*) #1

declare dso_local i64 @ldns_resolver_send_to(i32**, i32*, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @ldns_pkt_tc(i32*) #1

declare dso_local i32 @ldns_resolver_usevc(i32*) #1

declare dso_local i32 @ldns_resolver_set_usevc(i32*, i32) #1

declare dso_local i64 @ldns_pkt_get_rcode(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
