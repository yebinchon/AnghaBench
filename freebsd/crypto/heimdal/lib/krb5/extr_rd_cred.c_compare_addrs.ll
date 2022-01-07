; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_rd_cred.c_compare_addrs.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_rd_cred.c_compare_addrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KRB5KRB_AP_ERR_BADADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"%s: %s != %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*, i8*)* @compare_addrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_addrs(i32 %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [64 x i8], align 16
  %11 = alloca [64 x i8], align 16
  %12 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = call i64 @krb5_address_compare(i32 %13, i32* %14, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %33

19:                                               ; preds = %4
  %20 = load i32*, i32** %7, align 8
  %21 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %22 = call i32 @krb5_print_address(i32* %20, i8* %21, i32 64, i64* %12)
  %23 = load i32*, i32** %8, align 8
  %24 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %25 = call i32 @krb5_print_address(i32* %23, i8* %24, i32 64, i64* %12)
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @KRB5KRB_AP_ERR_BADADDR, align 4
  %28 = load i8*, i8** %9, align 8
  %29 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %30 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %31 = call i32 @krb5_set_error_message(i32 %26, i32 %27, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %28, i8* %29, i8* %30)
  %32 = load i32, i32* @KRB5KRB_AP_ERR_BADADDR, align 4
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %19, %18
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i64 @krb5_address_compare(i32, i32*, i32*) #1

declare dso_local i32 @krb5_print_address(i32*, i8*, i32, i64*) #1

declare dso_local i32 @krb5_set_error_message(i32, i32, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
