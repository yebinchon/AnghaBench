; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/drill/extr_root.c_init_root.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/drill/extr_root.c_init_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@global_dns_root = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"A.ROOT-SERVERS.NET.      3600000      A     198.41.0.4\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"A.ROOT-SERVERS.NET.      3600000      AAAA  2001:503:BA3E::2:30\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"B.ROOT-SERVERS.NET.      3600000      A     192.228.79.201\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"C.ROOT-SERVERS.NET.      3600000      A     192.33.4.12\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"D.ROOT-SERVERS.NET.      3600000      A     128.8.10.90\00", align 1
@.str.5 = private unnamed_addr constant [59 x i8] c"E.ROOT-SERVERS.NET.      3600000      A     192.203.230.10\00", align 1
@.str.6 = private unnamed_addr constant [56 x i8] c"F.ROOT-SERVERS.NET.      3600000      A     192.5.5.241\00", align 1
@.str.7 = private unnamed_addr constant [59 x i8] c"F.ROOT-SERVERS.NET.      3600000      AAAA  2001:500:2F::F\00", align 1
@.str.8 = private unnamed_addr constant [57 x i8] c"G.ROOT-SERVERS.NET.      3600000      A     192.112.36.4\00", align 1
@.str.9 = private unnamed_addr constant [56 x i8] c"H.ROOT-SERVERS.NET.      3600000      A     128.63.2.53\00", align 1
@.str.10 = private unnamed_addr constant [65 x i8] c"H.ROOT-SERVERS.NET.      3600000      AAAA  2001:500:1::803F:235\00", align 1
@.str.11 = private unnamed_addr constant [58 x i8] c"I.ROOT-SERVERS.NET.      3600000      A     192.36.148.17\00", align 1
@.str.12 = private unnamed_addr constant [58 x i8] c"J.ROOT-SERVERS.NET.      3600000      A     192.58.128.30\00", align 1
@.str.13 = private unnamed_addr constant [63 x i8] c"J.ROOT-SERVERS.NET.      3600000      AAAA  2001:503:C27::2:30\00", align 1
@.str.14 = private unnamed_addr constant [58 x i8] c"K.ROOT-SERVERS.NET.      3600000      A     193.0.14.129 \00", align 1
@.str.15 = private unnamed_addr constant [56 x i8] c"K.ROOT-SERVERS.NET.      3600000      AAAA  2001:7FD::1\00", align 1
@.str.16 = private unnamed_addr constant [56 x i8] c"L.ROOT-SERVERS.NET.      3600000      A     199.7.83.42\00", align 1
@.str.17 = private unnamed_addr constant [62 x i8] c"L.ROOT-SERVERS.NET.      3600000      AAAA  2001:500:3::42   \00", align 1
@.str.18 = private unnamed_addr constant [57 x i8] c"M.ROOT-SERVERS.NET.      3600000      A     202.12.27.33\00", align 1
@.str.19 = private unnamed_addr constant [57 x i8] c"M.ROOT-SERVERS.NET.      3600000      AAAA  2001:DC3::35\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_root() #0 {
  %1 = alloca i32*, align 8
  %2 = call i32 (...) @ldns_rr_list_new()
  store i32 %2, i32* @global_dns_root, align 4
  %3 = call i32 @ldns_rr_new_frm_str(i32** %1, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 0, i32* null, i32* null)
  %4 = load i32, i32* @global_dns_root, align 4
  %5 = load i32*, i32** %1, align 8
  %6 = call i32 @ldns_rr_list_push_rr(i32 %4, i32* %5)
  %7 = call i32 @ldns_rr_new_frm_str(i32** %1, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 0, i32* null, i32* null)
  %8 = load i32, i32* @global_dns_root, align 4
  %9 = load i32*, i32** %1, align 8
  %10 = call i32 @ldns_rr_list_push_rr(i32 %8, i32* %9)
  %11 = call i32 @ldns_rr_new_frm_str(i32** %1, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32 0, i32* null, i32* null)
  %12 = load i32, i32* @global_dns_root, align 4
  %13 = load i32*, i32** %1, align 8
  %14 = call i32 @ldns_rr_list_push_rr(i32 %12, i32* %13)
  %15 = call i32 @ldns_rr_new_frm_str(i32** %1, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 0, i32* null, i32* null)
  %16 = load i32, i32* @global_dns_root, align 4
  %17 = load i32*, i32** %1, align 8
  %18 = call i32 @ldns_rr_list_push_rr(i32 %16, i32* %17)
  %19 = call i32 @ldns_rr_new_frm_str(i32** %1, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0), i32 0, i32* null, i32* null)
  %20 = load i32, i32* @global_dns_root, align 4
  %21 = load i32*, i32** %1, align 8
  %22 = call i32 @ldns_rr_list_push_rr(i32 %20, i32* %21)
  %23 = call i32 @ldns_rr_new_frm_str(i32** %1, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0), i32 0, i32* null, i32* null)
  %24 = load i32, i32* @global_dns_root, align 4
  %25 = load i32*, i32** %1, align 8
  %26 = call i32 @ldns_rr_list_push_rr(i32 %24, i32* %25)
  %27 = call i32 @ldns_rr_new_frm_str(i32** %1, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0), i32 0, i32* null, i32* null)
  %28 = load i32, i32* @global_dns_root, align 4
  %29 = load i32*, i32** %1, align 8
  %30 = call i32 @ldns_rr_list_push_rr(i32 %28, i32* %29)
  %31 = call i32 @ldns_rr_new_frm_str(i32** %1, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.7, i64 0, i64 0), i32 0, i32* null, i32* null)
  %32 = load i32, i32* @global_dns_root, align 4
  %33 = load i32*, i32** %1, align 8
  %34 = call i32 @ldns_rr_list_push_rr(i32 %32, i32* %33)
  %35 = call i32 @ldns_rr_new_frm_str(i32** %1, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.8, i64 0, i64 0), i32 0, i32* null, i32* null)
  %36 = load i32, i32* @global_dns_root, align 4
  %37 = load i32*, i32** %1, align 8
  %38 = call i32 @ldns_rr_list_push_rr(i32 %36, i32* %37)
  %39 = call i32 @ldns_rr_new_frm_str(i32** %1, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.9, i64 0, i64 0), i32 0, i32* null, i32* null)
  %40 = load i32, i32* @global_dns_root, align 4
  %41 = load i32*, i32** %1, align 8
  %42 = call i32 @ldns_rr_list_push_rr(i32 %40, i32* %41)
  %43 = call i32 @ldns_rr_new_frm_str(i32** %1, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.10, i64 0, i64 0), i32 0, i32* null, i32* null)
  %44 = load i32, i32* @global_dns_root, align 4
  %45 = load i32*, i32** %1, align 8
  %46 = call i32 @ldns_rr_list_push_rr(i32 %44, i32* %45)
  %47 = call i32 @ldns_rr_new_frm_str(i32** %1, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.11, i64 0, i64 0), i32 0, i32* null, i32* null)
  %48 = load i32, i32* @global_dns_root, align 4
  %49 = load i32*, i32** %1, align 8
  %50 = call i32 @ldns_rr_list_push_rr(i32 %48, i32* %49)
  %51 = call i32 @ldns_rr_new_frm_str(i32** %1, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.12, i64 0, i64 0), i32 0, i32* null, i32* null)
  %52 = load i32, i32* @global_dns_root, align 4
  %53 = load i32*, i32** %1, align 8
  %54 = call i32 @ldns_rr_list_push_rr(i32 %52, i32* %53)
  %55 = call i32 @ldns_rr_new_frm_str(i32** %1, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.13, i64 0, i64 0), i32 0, i32* null, i32* null)
  %56 = load i32, i32* @global_dns_root, align 4
  %57 = load i32*, i32** %1, align 8
  %58 = call i32 @ldns_rr_list_push_rr(i32 %56, i32* %57)
  %59 = call i32 @ldns_rr_new_frm_str(i32** %1, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.14, i64 0, i64 0), i32 0, i32* null, i32* null)
  %60 = load i32, i32* @global_dns_root, align 4
  %61 = load i32*, i32** %1, align 8
  %62 = call i32 @ldns_rr_list_push_rr(i32 %60, i32* %61)
  %63 = call i32 @ldns_rr_new_frm_str(i32** %1, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.15, i64 0, i64 0), i32 0, i32* null, i32* null)
  %64 = load i32, i32* @global_dns_root, align 4
  %65 = load i32*, i32** %1, align 8
  %66 = call i32 @ldns_rr_list_push_rr(i32 %64, i32* %65)
  %67 = call i32 @ldns_rr_new_frm_str(i32** %1, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.16, i64 0, i64 0), i32 0, i32* null, i32* null)
  %68 = load i32, i32* @global_dns_root, align 4
  %69 = load i32*, i32** %1, align 8
  %70 = call i32 @ldns_rr_list_push_rr(i32 %68, i32* %69)
  %71 = call i32 @ldns_rr_new_frm_str(i32** %1, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.17, i64 0, i64 0), i32 0, i32* null, i32* null)
  %72 = load i32, i32* @global_dns_root, align 4
  %73 = load i32*, i32** %1, align 8
  %74 = call i32 @ldns_rr_list_push_rr(i32 %72, i32* %73)
  %75 = call i32 @ldns_rr_new_frm_str(i32** %1, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.18, i64 0, i64 0), i32 0, i32* null, i32* null)
  %76 = load i32, i32* @global_dns_root, align 4
  %77 = load i32*, i32** %1, align 8
  %78 = call i32 @ldns_rr_list_push_rr(i32 %76, i32* %77)
  %79 = call i32 @ldns_rr_new_frm_str(i32** %1, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.19, i64 0, i64 0), i32 0, i32* null, i32* null)
  %80 = load i32, i32* @global_dns_root, align 4
  %81 = load i32*, i32** %1, align 8
  %82 = call i32 @ldns_rr_list_push_rr(i32 %80, i32* %81)
  ret void
}

declare dso_local i32 @ldns_rr_list_new(...) #1

declare dso_local i32 @ldns_rr_new_frm_str(i32**, i8*, i32, i32*, i32*) #1

declare dso_local i32 @ldns_rr_list_push_rr(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
