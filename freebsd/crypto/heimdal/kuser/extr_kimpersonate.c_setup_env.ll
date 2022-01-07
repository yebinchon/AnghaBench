; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kuser/extr_kimpersonate.c_setup_env.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kuser/extr_kimpersonate.c_setup_env.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@keytab_file = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"resolving keytab\00", align 1
@client_principal_str = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"missing client principal\00", align 1
@client_principal = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"resolvning client name\00", align 1
@server_principal_str = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"missing server principal\00", align 1
@server_principal = common dso_local global i32 0, align 4
@ticket_flags_str = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [23 x i8] c"bad ticket flags: `%s'\00", align 1
@stderr = common dso_local global i32 0, align 4
@ticket_flags = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @setup_env to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_env(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %7 = load i64, i64* @keytab_file, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = load i64, i64* @keytab_file, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i64 @krb5_kt_resolve(i32 %10, i64 %11, i32* %12)
  store i64 %13, i64* %5, align 8
  br label %18

14:                                               ; preds = %2
  %15 = load i32, i32* %3, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = call i64 @krb5_kt_default(i32 %15, i32* %16)
  store i64 %17, i64* %5, align 8
  br label %18

18:                                               ; preds = %14, %9
  %19 = load i64, i64* %5, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i32, i32* %3, align 4
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @krb5_err(i32 %22, i32 1, i64 %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %21, %18
  %26 = load i32*, i32** @client_principal_str, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @krb5_errx(i32 %29, i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %28, %25
  %32 = load i32, i32* %3, align 4
  %33 = load i32*, i32** @client_principal_str, align 8
  %34 = call i64 @krb5_parse_name(i32 %32, i32* %33, i32* @client_principal)
  store i64 %34, i64* %5, align 8
  %35 = load i64, i64* %5, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load i32, i32* %3, align 4
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @krb5_err(i32 %38, i32 1, i64 %39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %41

41:                                               ; preds = %37, %31
  %42 = load i32*, i32** @server_principal_str, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @krb5_errx(i32 %45, i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44, %41
  %48 = load i32, i32* %3, align 4
  %49 = load i32*, i32** @server_principal_str, align 8
  %50 = call i64 @krb5_parse_name(i32 %48, i32* %49, i32* @server_principal)
  store i64 %50, i64* %5, align 8
  %51 = load i64, i64* %5, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load i32, i32* %3, align 4
  %55 = load i64, i64* %5, align 8
  %56 = call i32 @krb5_err(i32 %54, i32 1, i64 %55, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %57

57:                                               ; preds = %53, %47
  %58 = load i64, i64* @ticket_flags_str, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %81

60:                                               ; preds = %57
  %61 = load i64, i64* @ticket_flags_str, align 8
  %62 = call i32 (...) @asn1_TicketFlags_units()
  %63 = call i32 @parse_flags(i64 %61, i32 %62, i32 0)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp sle i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %60
  %67 = load i32, i32* %3, align 4
  %68 = load i64, i64* @ticket_flags_str, align 8
  %69 = call i32 @krb5_warnx(i32 %67, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i64 %68)
  %70 = call i32 (...) @asn1_TicketFlags_units()
  %71 = load i32, i32* @stderr, align 4
  %72 = call i32 @print_flags_table(i32 %70, i32 %71)
  %73 = call i32 @exit(i32 1) #3
  unreachable

74:                                               ; preds = %60
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @int2TicketFlags(i32 %78)
  store i32 %79, i32* @ticket_flags, align 4
  br label %80

80:                                               ; preds = %77, %74
  br label %81

81:                                               ; preds = %80, %57
  ret void
}

declare dso_local i64 @krb5_kt_resolve(i32, i64, i32*) #1

declare dso_local i64 @krb5_kt_default(i32, i32*) #1

declare dso_local i32 @krb5_err(i32, i32, i64, i8*) #1

declare dso_local i32 @krb5_errx(i32, i32, i8*) #1

declare dso_local i64 @krb5_parse_name(i32, i32*, i32*) #1

declare dso_local i32 @parse_flags(i64, i32, i32) #1

declare dso_local i32 @asn1_TicketFlags_units(...) #1

declare dso_local i32 @krb5_warnx(i32, i8*, i64) #1

declare dso_local i32 @print_flags_table(i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @int2TicketFlags(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
