; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/drill/extr_dnssec.c_drill_pkt_print_footer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/drill/extr_dnssec.c_drill_pkt_print_footer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@verbosity = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c";; Received %d bytes from %s#%d(\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c") in %u ms\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drill_pkt_print_footer(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i32, i32* @verbosity, align 4
  %10 = icmp slt i32 %9, 5
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %57

12:                                               ; preds = %3
  %13 = load i32*, i32** %5, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @ldns_pkt_answerfrom(i32* %14)
  %16 = call i32* @ldns_get_rr_list_name_by_addr(i32* %13, i32 %15, i32 0, i32 0)
  store i32* %16, i32** %7, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call i64 @ldns_pkt_size(i32* %18)
  %20 = trunc i64 %19 to i32
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @ldns_pkt_answerfrom(i32* %21)
  %23 = call i8* @ldns_rdf2str(i32 %22)
  %24 = load i32*, i32** %5, align 8
  %25 = call i64 @ldns_resolver_port(i32* %24)
  %26 = trunc i64 %25 to i32
  %27 = call i32 (i32*, i8*, ...) @fprintf(i32* %17, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %20, i8* %23, i32 %26)
  %28 = load i32*, i32** %7, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %12
  %31 = load i32*, i32** %4, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @ldns_rr_list_rr(i32* %32, i32 0)
  %34 = call i32 @ldns_rr_rdf(i32 %33, i32 0)
  %35 = call i32 @ldns_rdf_print(i32* %31, i32 %34)
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @ldns_rr_list_deep_free(i32* %36)
  br label %51

38:                                               ; preds = %12
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @ldns_pkt_answerfrom(i32* %39)
  %41 = call i8* @ldns_rdf2str(i32 %40)
  store i8* %41, i8** %8, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load i32*, i32** %4, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 (i32*, i8*, ...) @fprintf(i32* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %46)
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 @LDNS_FREE(i8* %48)
  br label %50

50:                                               ; preds = %44, %38
  br label %51

51:                                               ; preds = %50, %30
  %52 = load i32*, i32** %4, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = call i64 @ldns_pkt_querytime(i32* %53)
  %55 = trunc i64 %54 to i32
  %56 = call i32 (i32*, i8*, ...) @fprintf(i32* %52, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %51, %11
  ret void
}

declare dso_local i32* @ldns_get_rr_list_name_by_addr(i32*, i32, i32, i32) #1

declare dso_local i32 @ldns_pkt_answerfrom(i32*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i64 @ldns_pkt_size(i32*) #1

declare dso_local i8* @ldns_rdf2str(i32) #1

declare dso_local i64 @ldns_resolver_port(i32*) #1

declare dso_local i32 @ldns_rdf_print(i32*, i32) #1

declare dso_local i32 @ldns_rr_rdf(i32, i32) #1

declare dso_local i32 @ldns_rr_list_rr(i32*, i32) #1

declare dso_local i32 @ldns_rr_list_deep_free(i32*) #1

declare dso_local i32 @LDNS_FREE(i8*) #1

declare dso_local i64 @ldns_pkt_querytime(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
