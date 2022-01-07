; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_test_keytab.c_test_empty_keytab.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_test_keytab.c_test_empty_keytab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"krb5_kt_resolve\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"supposed to be empty keytab isn't\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"krb5_kt_close\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @test_empty_keytab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_empty_keytab(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = call i64 @krb5_kt_resolve(i32 %8, i8* %9, i32* %6)
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32, i32* %3, align 4
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @krb5_err(i32 %14, i32 1, i64 %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %13, %2
  %18 = call i32 @memset(i32* %7, i32 0, i32 4)
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @krb5_kt_remove_entry(i32 %19, i32 %20, i32* %7)
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i64 @krb5_kt_have_content(i32 %22, i32 %23)
  store i64 %24, i64* %5, align 8
  %25 = load i64, i64* %5, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %17
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @krb5_errx(i32 %28, i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %17
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i64 @krb5_kt_close(i32 %31, i32 %32)
  store i64 %33, i64* %5, align 8
  %34 = load i64, i64* %5, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load i32, i32* %3, align 4
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @krb5_err(i32 %37, i32 1, i64 %38, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %40

40:                                               ; preds = %36, %30
  ret void
}

declare dso_local i64 @krb5_kt_resolve(i32, i8*, i32*) #1

declare dso_local i32 @krb5_err(i32, i32, i64, i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @krb5_kt_remove_entry(i32, i32, i32*) #1

declare dso_local i64 @krb5_kt_have_content(i32, i32) #1

declare dso_local i32 @krb5_errx(i32, i32, i8*) #1

declare dso_local i64 @krb5_kt_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
