; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_str2host.c_ldns_str2rdf_period.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_str2host.c_ldns_str2rdf_period.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_STATUS_ERR = common dso_local global i32 0, align 4
@LDNS_RDF_TYPE_PERIOD = common dso_local global i32 0, align 4
@LDNS_STATUS_OK = common dso_local global i32 0, align 4
@LDNS_STATUS_MEM_ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ldns_str2rdf_period(i32** %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i32** %0, i32*** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i64 @ldns_str2period(i8* %8, i8** %7)
  store i64 %9, i64* %6, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @LDNS_STATUS_ERR, align 4
  store i32 %15, i32* %3, align 4
  br label %32

16:                                               ; preds = %2
  %17 = load i64, i64* %6, align 8
  %18 = call i64 @htonl(i64 %17)
  store i64 %18, i64* %6, align 8
  %19 = load i32, i32* @LDNS_RDF_TYPE_PERIOD, align 4
  %20 = call i32* @ldns_rdf_new_frm_data(i32 %19, i32 8, i64* %6)
  %21 = load i32**, i32*** %4, align 8
  store i32* %20, i32** %21, align 8
  br label %22

22:                                               ; preds = %16
  %23 = load i32**, i32*** %4, align 8
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @LDNS_STATUS_OK, align 4
  br label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @LDNS_STATUS_MEM_ERR, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %30, %14
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i64 @ldns_str2period(i8*, i8**) #1

declare dso_local i64 @htonl(i64) #1

declare dso_local i32* @ldns_rdf_new_frm_data(i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
