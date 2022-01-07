; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_add-random-users.c_add_users.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_add-random-users.c_add_users.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"krb5_init_context failed: %d\00", align 1
@KADM5_ADMIN_SERVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"kadm5_init_with_password\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @add_users to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_users(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = call i64 @krb5_init_context(i32* %8)
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @errx(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %15)
  br label %17

17:                                               ; preds = %14, %2
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @KADM5_ADMIN_SERVICE, align 4
  %20 = load i32, i32* @KADM5_ADMIN_SERVICE, align 4
  %21 = call i64 @kadm5_s_init_with_password_ctx(i32 %18, i32 %19, i32* null, i32 %20, i32* null, i32 0, i32 0, i8** %7)
  store i64 %21, i64* %5, align 8
  %22 = load i64, i64* %5, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load i32, i32* %8, align 4
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @krb5_err(i32 %25, i32 1, i64 %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %24, %17
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 @read_words(i8* %29, i8*** %10)
  store i32 %30, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %41, %28
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %31
  %36 = load i32, i32* %8, align 4
  %37 = load i8*, i8** %7, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i8**, i8*** %10, align 8
  %40 = call i32 @add_user(i32 %36, i8* %37, i32 %38, i8** %39)
  br label %41

41:                                               ; preds = %35
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %31

44:                                               ; preds = %31
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @kadm5_destroy(i8* %45)
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @krb5_free_context(i32 %47)
  ret void
}

declare dso_local i64 @krb5_init_context(i32*) #1

declare dso_local i32 @errx(i32, i8*, i64) #1

declare dso_local i64 @kadm5_s_init_with_password_ctx(i32, i32, i32*, i32, i32*, i32, i32, i8**) #1

declare dso_local i32 @krb5_err(i32, i32, i64, i8*) #1

declare dso_local i32 @read_words(i8*, i8***) #1

declare dso_local i32 @add_user(i32, i8*, i32, i8**) #1

declare dso_local i32 @kadm5_destroy(i8*) #1

declare dso_local i32 @krb5_free_context(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
