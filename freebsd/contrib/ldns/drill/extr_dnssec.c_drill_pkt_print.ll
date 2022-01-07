; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/drill/extr_dnssec.c_drill_pkt_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/drill/extr_dnssec.c_drill_pkt_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@verbosity = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_NS = common dso_local global i32 0, align 4
@LDNS_SECTION_ANSWER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c";; Received %d bytes from %s#%d(\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c") in %u ms\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drill_pkt_print(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i32, i32* @verbosity, align 4
  %11 = icmp slt i32 %10, 5
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %67

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @ldns_pkt_answerfrom(i32* %15)
  %17 = call i32* @ldns_get_rr_list_name_by_addr(i32* %14, i32 %16, i32 0, i32 0)
  store i32* %17, i32** %8, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* @LDNS_RR_TYPE_NS, align 4
  %20 = load i32, i32* @LDNS_SECTION_ANSWER, align 4
  %21 = call i32* @ldns_pkt_rr_list_by_type(i32* %18, i32 %19, i32 %20)
  store i32* %21, i32** %7, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @ldns_rr_list_print(i32* %22, i32* %23)
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @ldns_rr_list_deep_free(i32* %25)
  %27 = load i32*, i32** %4, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = call i64 @ldns_pkt_size(i32* %28)
  %30 = trunc i64 %29 to i32
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @ldns_pkt_answerfrom(i32* %31)
  %33 = call i8* @ldns_rdf2str(i32 %32)
  %34 = load i32*, i32** %5, align 8
  %35 = call i64 @ldns_resolver_port(i32* %34)
  %36 = trunc i64 %35 to i32
  %37 = call i32 (i32*, i8*, ...) @fprintf(i32* %27, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %30, i8* %33, i32 %36)
  %38 = load i32*, i32** %8, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %13
  %41 = load i32*, i32** %4, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = call i32 @ldns_rr_list_rr(i32* %42, i32 0)
  %44 = call i32 @ldns_rr_rdf(i32 %43, i32 0)
  %45 = call i32 @ldns_rdf_print(i32* %41, i32 %44)
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @ldns_rr_list_deep_free(i32* %46)
  br label %61

48:                                               ; preds = %13
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @ldns_pkt_answerfrom(i32* %49)
  %51 = call i8* @ldns_rdf2str(i32 %50)
  store i8* %51, i8** %9, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %48
  %55 = load i32*, i32** %4, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = call i32 (i32*, i8*, ...) @fprintf(i32* %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %56)
  %58 = load i8*, i8** %9, align 8
  %59 = call i32 @LDNS_FREE(i8* %58)
  br label %60

60:                                               ; preds = %54, %48
  br label %61

61:                                               ; preds = %60, %40
  %62 = load i32*, i32** %4, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = call i64 @ldns_pkt_querytime(i32* %63)
  %65 = trunc i64 %64 to i32
  %66 = call i32 (i32*, i8*, ...) @fprintf(i32* %62, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %61, %12
  ret void
}

declare dso_local i32* @ldns_get_rr_list_name_by_addr(i32*, i32, i32, i32) #1

declare dso_local i32 @ldns_pkt_answerfrom(i32*) #1

declare dso_local i32* @ldns_pkt_rr_list_by_type(i32*, i32, i32) #1

declare dso_local i32 @ldns_rr_list_print(i32*, i32*) #1

declare dso_local i32 @ldns_rr_list_deep_free(i32*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i64 @ldns_pkt_size(i32*) #1

declare dso_local i8* @ldns_rdf2str(i32) #1

declare dso_local i64 @ldns_resolver_port(i32*) #1

declare dso_local i32 @ldns_rdf_print(i32*, i32) #1

declare dso_local i32 @ldns_rr_rdf(i32, i32) #1

declare dso_local i32 @ldns_rr_list_rr(i32*, i32) #1

declare dso_local i32 @LDNS_FREE(i8*) #1

declare dso_local i64 @ldns_pkt_querytime(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
