; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_test_pw_quality.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_test_pw_quality.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@args = common dso_local global i32 0, align 4
@num_args = common dso_local global i32 0, align 4
@help_flag = common dso_local global i64 0, align 8
@version_flag = common dso_local global i64 0, align 8
@principal = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"no principal given\00", align 1
@password = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"no password given\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"krb5_parse_name: %s\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"kadm5_add_passwd_quality_verifier\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"kadm5_check_password_quality:\0A%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_3__, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = load i32, i32* @args, align 4
  %14 = load i32, i32* @num_args, align 4
  %15 = call i32 @krb5_program_setup(i32* %7, i32 %11, i8** %12, i32 %13, i32 %14, i32* null)
  %16 = load i64, i64* @help_flag, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* @args, align 4
  %20 = load i32, i32* @num_args, align 4
  %21 = call i32 @krb5_std_usage(i32 0, i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %18, %2
  %23 = load i64, i64* @version_flag, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = call i32 @print_version(i32* null)
  %27 = call i32 @exit(i32 0) #3
  unreachable

28:                                               ; preds = %22
  %29 = load i8*, i8** @principal, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* %7, align 4
  %33 = call i32 (i32, i32, i8*, ...) @krb5_errx(i32 %32, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i32*, i32** @password, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* %7, align 4
  %39 = call i32 (i32, i32, i8*, ...) @krb5_errx(i32 %38, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %34
  %41 = load i32, i32* %7, align 4
  %42 = load i8*, i8** @principal, align 8
  %43 = call i64 @krb5_parse_name(i32 %41, i8* %42, i32* %8)
  store i64 %43, i64* %6, align 8
  %44 = load i64, i64* %6, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load i32, i32* %7, align 4
  %48 = load i8*, i8** @principal, align 8
  %49 = call i32 (i32, i32, i8*, ...) @krb5_errx(i32 %47, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %48)
  br label %50

50:                                               ; preds = %46, %40
  %51 = load i32*, i32** @password, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  store i32* %51, i32** %52, align 8
  %53 = load i32*, i32** @password, align 8
  %54 = call i32 @strlen(i32* %53)
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store i32 %54, i32* %55, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @kadm5_setup_passwd_quality_check(i32 %56, i32* null, i32* null)
  %58 = load i32, i32* %7, align 4
  %59 = call i64 @kadm5_add_passwd_quality_verifier(i32 %58, i32* null)
  store i64 %59, i64* %6, align 8
  %60 = load i64, i64* %6, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %50
  %63 = load i32, i32* %7, align 4
  %64 = call i32 (i32, i32, i8*, ...) @krb5_errx(i32 %63, i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %65

65:                                               ; preds = %62, %50
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call i8* @kadm5_check_password_quality(i32 %66, i32 %67, %struct.TYPE_3__* %10)
  store i8* %68, i8** %9, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = load i32, i32* %7, align 4
  %73 = load i8*, i8** %9, align 8
  %74 = call i32 (i32, i32, i8*, ...) @krb5_errx(i32 %72, i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* %73)
  br label %75

75:                                               ; preds = %71, %65
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @krb5_free_principal(i32 %76, i32 %77)
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @krb5_free_context(i32 %79)
  ret i32 0
}

declare dso_local i32 @krb5_program_setup(i32*, i32, i8**, i32, i32, i32*) #1

declare dso_local i32 @krb5_std_usage(i32, i32, i32) #1

declare dso_local i32 @print_version(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @krb5_errx(i32, i32, i8*, ...) #1

declare dso_local i64 @krb5_parse_name(i32, i8*, i32*) #1

declare dso_local i32 @strlen(i32*) #1

declare dso_local i32 @kadm5_setup_passwd_quality_check(i32, i32*, i32*) #1

declare dso_local i64 @kadm5_add_passwd_quality_verifier(i32, i32*) #1

declare dso_local i8* @kadm5_check_password_quality(i32, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @krb5_free_principal(i32, i32) #1

declare dso_local i32 @krb5_free_context(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
