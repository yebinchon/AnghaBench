; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns-host/extr_ldns-host.c_report.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns-host/extr_ldns-host.c_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@o_print_pkt_server = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Using domain server:\0AName: %s\0AAddress: \00", align 1
@o_server = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"#%d\0AAliases: \0A\0A\00", align 1
@LDNS_RCODE_NOERROR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"Host \00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c" not found: %d(\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@o_verbose = common dso_local global i64 0, align 8
@o_print_rr_server = common dso_local global i32 0, align 4
@o_mode = common dso_local global i64 0, align 8
@M_SINGLE_Q = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [9 x i8] c" has no \00", align 1
@o_rrtype = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c" record\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*)* @report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @report(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32, i32* @o_print_pkt_server, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %3
  %11 = load i8*, i8** @o_server, align 8
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %11)
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @ldns_pkt_answerfrom(i32* %13)
  %15 = call i32 @print_rdf(i32 %14)
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @ldns_resolver_port(i32* %16)
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  store i32 0, i32* @o_print_pkt_server, align 4
  br label %19

19:                                               ; preds = %10, %3
  %20 = load i32*, i32** %6, align 8
  %21 = call i64 @ldns_pkt_get_rcode(i32* %20)
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* @LDNS_RCODE_NOERROR, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %19
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @print_rdf_nodot(i32* %27)
  %29 = load i64, i64* %7, align 8
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i64 %29)
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @print_rcode(i64 %31)
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %61

34:                                               ; preds = %19
  %35 = load i64, i64* @o_verbose, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @print_pkt_verbose(i32* %38)
  br label %60

40:                                               ; preds = %34
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* @o_print_rr_server, align 4
  %43 = call i32 @print_pkt_short(i32* %41, i32 %42)
  %44 = load i64, i64* @o_mode, align 8
  %45 = load i64, i64* @M_SINGLE_Q, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %40
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 @ldns_pkt_answer(i32* %48)
  %50 = call i64 @ldns_rr_list_rr_count(i32 %49)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load i32*, i32** %5, align 8
  %54 = call i32 @print_rdf_nodot(i32* %53)
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %56 = load i32, i32* @o_rrtype, align 4
  %57 = call i32 @print_rr_type(i32 %56)
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  br label %59

59:                                               ; preds = %52, %47, %40
  br label %60

60:                                               ; preds = %59, %37
  br label %61

61:                                               ; preds = %60, %25
  %62 = load i64, i64* @o_verbose, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load i32*, i32** %4, align 8
  %66 = load i32*, i32** %6, align 8
  %67 = call i32 @print_received_line(i32* %65, i32* %66)
  br label %68

68:                                               ; preds = %64, %61
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @print_rdf(i32) #1

declare dso_local i32 @ldns_pkt_answerfrom(i32*) #1

declare dso_local i32 @ldns_resolver_port(i32*) #1

declare dso_local i64 @ldns_pkt_get_rcode(i32*) #1

declare dso_local i32 @print_rdf_nodot(i32*) #1

declare dso_local i32 @print_rcode(i64) #1

declare dso_local i32 @print_pkt_verbose(i32*) #1

declare dso_local i32 @print_pkt_short(i32*, i32) #1

declare dso_local i64 @ldns_rr_list_rr_count(i32) #1

declare dso_local i32 @ldns_pkt_answer(i32*) #1

declare dso_local i32 @print_rr_type(i32) #1

declare dso_local i32 @print_received_line(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
