; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/drill/extr_drill_util.c_print_ds_of_keys.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/drill/extr_drill_util.c_print_ds_of_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_RR_TYPE_DNSKEY = common dso_local global i32 0, align 4
@LDNS_SECTION_ANSWER = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c";\0A; equivalent DS records for key %u:\0A\00", align 1
@LDNS_SHA1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"; sha1: \00", align 1
@LDNS_SHA256 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"; sha256: \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_ds_of_keys(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = load i32, i32* @LDNS_RR_TYPE_DNSKEY, align 4
  %8 = load i32, i32* @LDNS_SECTION_ANSWER, align 4
  %9 = call i32* @ldns_pkt_rr_list_by_type(i32* %6, i32 %7, i32 %8)
  store i32* %9, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %48

12:                                               ; preds = %1
  store i64 0, i64* %4, align 8
  br label %13

13:                                               ; preds = %42, %12
  %14 = load i64, i64* %4, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = call i64 @ldns_rr_list_rr_count(i32* %15)
  %17 = icmp slt i64 %14, %16
  br i1 %17, label %18, label %45

18:                                               ; preds = %13
  %19 = load i32, i32* @stdout, align 4
  %20 = load i32*, i32** %3, align 8
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @ldns_rr_list_rr(i32* %20, i64 %21)
  %23 = call i64 @ldns_calc_keytag(i32 %22)
  %24 = trunc i64 %23 to i32
  %25 = call i32 @fprintf(i32 %19, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32*, i32** %3, align 8
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @ldns_rr_list_rr(i32* %26, i64 %27)
  %29 = load i32, i32* @LDNS_SHA1, align 4
  %30 = call i32* @ldns_key_rr2ds(i32 %28, i32 %29)
  store i32* %30, i32** %5, align 8
  %31 = load i32, i32* @stdout, align 4
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @local_print_ds(i32 %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* %32)
  %34 = load i32*, i32** %3, align 8
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @ldns_rr_list_rr(i32* %34, i64 %35)
  %37 = load i32, i32* @LDNS_SHA256, align 4
  %38 = call i32* @ldns_key_rr2ds(i32 %36, i32 %37)
  store i32* %38, i32** %5, align 8
  %39 = load i32, i32* @stdout, align 4
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @local_print_ds(i32 %39, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32* %40)
  br label %42

42:                                               ; preds = %18
  %43 = load i64, i64* %4, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %4, align 8
  br label %13

45:                                               ; preds = %13
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @ldns_rr_list_deep_free(i32* %46)
  br label %48

48:                                               ; preds = %45, %1
  ret void
}

declare dso_local i32* @ldns_pkt_rr_list_by_type(i32*, i32, i32) #1

declare dso_local i64 @ldns_rr_list_rr_count(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i64 @ldns_calc_keytag(i32) #1

declare dso_local i32 @ldns_rr_list_rr(i32*, i64) #1

declare dso_local i32* @ldns_key_rr2ds(i32, i32) #1

declare dso_local i32 @local_print_ds(i32, i8*, i32*) #1

declare dso_local i32 @ldns_rr_list_deep_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
