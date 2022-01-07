; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/drill/extr_drill_util.c_print_dnskey_abbr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/drill/extr_drill_util.c_print_dnskey_abbr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_RR_TYPE_DNSKEY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c" ;{id = %u (zsk), size = %db}\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c" ;{id = %u (ksk), size = %db}\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c" ;{id = %u, size = %db}\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_dnskey_abbr(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = load i32*, i32** %4, align 8
  %9 = call i64 @ldns_rr_get_type(i32* %8)
  %10 = load i64, i64* @LDNS_RR_TYPE_DNSKEY, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %7, %2
  br label %78

13:                                               ; preds = %7
  %14 = load i32*, i32** %3, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @ldns_rr_owner(i32* %15)
  %17 = call i32 @ldns_rdf_print(i32* %14, i32 %16)
  %18 = load i32*, i32** %3, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = call i64 @ldns_rr_ttl(i32* %19)
  %21 = trunc i64 %20 to i32
  %22 = call i32 (i32*, i8*, ...) @fprintf(i32* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32*, i32** %3, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @print_class_type(i32* %23, i32* %24)
  %26 = load i32*, i32** %3, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @ldns_rr_rdf(i32* %27, i32 0)
  %29 = call i32 @ldns_rdf_print(i32* %26, i32 %28)
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 (i32*, i8*, ...) @fprintf(i32* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32*, i32** %3, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @ldns_rr_rdf(i32* %33, i32 1)
  %35 = call i32 @ldns_rdf_print(i32* %32, i32 %34)
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 (i32*, i8*, ...) @fprintf(i32* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32*, i32** %3, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @ldns_rr_rdf(i32* %39, i32 2)
  %41 = call i32 @ldns_rdf_print(i32* %38, i32 %40)
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @ldns_rr_rdf(i32* %42, i32 0)
  %44 = call i32 @ldns_rdf2native_int16(i32 %43)
  %45 = icmp eq i32 %44, 256
  br i1 %45, label %46, label %55

46:                                               ; preds = %13
  %47 = load i32*, i32** %3, align 8
  %48 = load i32*, i32** %4, align 8
  %49 = call i64 @ldns_calc_keytag(i32* %48)
  %50 = trunc i64 %49 to i32
  %51 = load i32*, i32** %4, align 8
  %52 = call i64 @ldns_rr_dnskey_key_size(i32* %51)
  %53 = trunc i64 %52 to i32
  %54 = call i32 (i32*, i8*, ...) @fprintf(i32* %47, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %50, i32 %53)
  br label %78

55:                                               ; preds = %13
  %56 = load i32*, i32** %4, align 8
  %57 = call i32 @ldns_rr_rdf(i32* %56, i32 0)
  %58 = call i32 @ldns_rdf2native_int16(i32 %57)
  %59 = icmp eq i32 %58, 257
  br i1 %59, label %60, label %69

60:                                               ; preds = %55
  %61 = load i32*, i32** %3, align 8
  %62 = load i32*, i32** %4, align 8
  %63 = call i64 @ldns_calc_keytag(i32* %62)
  %64 = trunc i64 %63 to i32
  %65 = load i32*, i32** %4, align 8
  %66 = call i64 @ldns_rr_dnskey_key_size(i32* %65)
  %67 = trunc i64 %66 to i32
  %68 = call i32 (i32*, i8*, ...) @fprintf(i32* %61, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %64, i32 %67)
  br label %78

69:                                               ; preds = %55
  %70 = load i32*, i32** %3, align 8
  %71 = load i32*, i32** %4, align 8
  %72 = call i64 @ldns_calc_keytag(i32* %71)
  %73 = trunc i64 %72 to i32
  %74 = load i32*, i32** %4, align 8
  %75 = call i64 @ldns_rr_dnskey_key_size(i32* %74)
  %76 = trunc i64 %75 to i32
  %77 = call i32 (i32*, i8*, ...) @fprintf(i32* %70, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %73, i32 %76)
  br label %78

78:                                               ; preds = %69, %60, %46, %12
  ret void
}

declare dso_local i64 @ldns_rr_get_type(i32*) #1

declare dso_local i32 @ldns_rdf_print(i32*, i32) #1

declare dso_local i32 @ldns_rr_owner(i32*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i64 @ldns_rr_ttl(i32*) #1

declare dso_local i32 @print_class_type(i32*, i32*) #1

declare dso_local i32 @ldns_rr_rdf(i32*, i32) #1

declare dso_local i32 @ldns_rdf2native_int16(i32) #1

declare dso_local i64 @ldns_calc_keytag(i32*) #1

declare dso_local i64 @ldns_rr_dnskey_key_size(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
