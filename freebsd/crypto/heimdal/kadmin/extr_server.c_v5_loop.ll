; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_server.c_v5_loop.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_server.c_v5_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@doing_useful_work = common dso_local global i32 0, align 4
@term_flag = common dso_local global i64 0, align 8
@HEIM_ERR_EOF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"krb5_read_priv_message\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"krb5_write_priv_message\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i8*, i32)* @v5_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @v5_loop(i32 %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  br label %14

14:                                               ; preds = %49, %5
  store i32 0, i32* @doing_useful_work, align 4
  %15 = load i64, i64* @term_flag, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = call i32 @exit(i32 0) #3
  unreachable

19:                                               ; preds = %14
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i64 @krb5_read_priv_message(i32 %20, i32 %21, i32* %10, i32* %12)
  store i64 %22, i64* %11, align 8
  %23 = load i64, i64* %11, align 8
  %24 = load i64, i64* @HEIM_ERR_EOF, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = call i32 @exit(i32 0) #3
  unreachable

28:                                               ; preds = %19
  %29 = load i64, i64* %11, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i32, i32* %6, align 4
  %33 = load i64, i64* %11, align 8
  %34 = call i32 @krb5_err(i32 %32, i32 1, i64 %33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %31, %28
  store i32 1, i32* @doing_useful_work, align 4
  %36 = load i8*, i8** %9, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @kadmind_dispatch(i8* %36, i32 %37, i32* %12, i32* %13)
  %39 = call i32 @krb5_data_free(i32* %12)
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i64 @krb5_write_priv_message(i32 %40, i32 %41, i32* %10, i32* %13)
  store i64 %42, i64* %11, align 8
  %43 = load i64, i64* %11, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %35
  %46 = load i32, i32* %6, align 4
  %47 = load i64, i64* %11, align 8
  %48 = call i32 @krb5_err(i32 %46, i32 1, i64 %47, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %49

49:                                               ; preds = %45, %35
  br label %14
}

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #1

declare dso_local i64 @krb5_read_priv_message(i32, i32, i32*, i32*) #2

declare dso_local i32 @krb5_err(i32, i32, i64, i8*) #2

declare dso_local i32 @kadmind_dispatch(i8*, i32, i32*, i32*) #2

declare dso_local i32 @krb5_data_free(i32*) #2

declare dso_local i64 @krb5_write_priv_message(i32, i32, i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
