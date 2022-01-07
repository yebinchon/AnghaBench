; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_ipropd_slave.c_send_im_here.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_ipropd_slave.c_send_im_here.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"send_im_here\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"krb5_storage_from_data\00", align 1
@I_AM_HERE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"krb5_write_priv_message\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @send_im_here to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_im_here(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = call i32 @krb5_data_alloc(i32* %8, i32 4)
  store i32 %10, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @krb5_err(i32 %14, i32 1, i32 %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %13, %3
  %18 = call i32* @krb5_storage_from_data(i32* %8)
  store i32* %18, i32** %7, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @krb5_errx(i32 %22, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %17
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* @I_AM_HERE, align 4
  %27 = call i32 @krb5_store_int32(i32* %25, i32 %26)
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @krb5_storage_free(i32* %28)
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @krb5_write_priv_message(i32 %30, i32 %31, i32* %5, i32* %8)
  store i32 %32, i32* %9, align 4
  %33 = call i32 @krb5_data_free(i32* %8)
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %24
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @krb5_err(i32 %37, i32 1, i32 %38, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %40

40:                                               ; preds = %36, %24
  ret void
}

declare dso_local i32 @krb5_data_alloc(i32*, i32) #1

declare dso_local i32 @krb5_err(i32, i32, i32, i8*) #1

declare dso_local i32* @krb5_storage_from_data(i32*) #1

declare dso_local i32 @krb5_errx(i32, i32, i8*) #1

declare dso_local i32 @krb5_store_int32(i32*, i32) #1

declare dso_local i32 @krb5_storage_free(i32*) #1

declare dso_local i32 @krb5_write_priv_message(i32, i32, i32*, i32*) #1

declare dso_local i32 @krb5_data_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
