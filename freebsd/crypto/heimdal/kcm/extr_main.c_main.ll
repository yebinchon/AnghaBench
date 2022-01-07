; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kcm_context = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"krb5_init_context failed: %d\00", align 1
@SIGINT = common dso_local global i32 0, align 4
@sigterm = common dso_local global i8* null, align 8
@SIGTERM = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@sigusr1 = common dso_local global i8* null, align 8
@SIGUSR2 = common dso_local global i32 0, align 4
@sigusr2 = common dso_local global i8* null, align 8
@SIGPIPE = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i8* null, align 8
@launchd_flag = common dso_local global i64 0, align 8
@service_name = common dso_local global i32 0, align 4
@kcm_service = common dso_local global i32 0, align 4
@detach_from_console = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i8**, i8*** %5, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 0
  %11 = load i8*, i8** %10, align 8
  %12 = call i32 @setprogname(i8* %11)
  %13 = call i32 @krb5_init_context(i32* @kcm_context)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @errx(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %3, align 4
  br label %54

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = load i8**, i8*** %5, align 8
  %23 = call i32 @kcm_configure(i32 %21, i8** %22)
  %24 = load i32, i32* @SIGINT, align 4
  %25 = load i8*, i8** @sigterm, align 8
  %26 = call i32 @signal(i32 %24, i8* %25)
  %27 = load i32, i32* @SIGTERM, align 4
  %28 = load i8*, i8** @sigterm, align 8
  %29 = call i32 @signal(i32 %27, i8* %28)
  %30 = load i32, i32* @SIGUSR1, align 4
  %31 = load i8*, i8** @sigusr1, align 8
  %32 = call i32 @signal(i32 %30, i8* %31)
  %33 = load i32, i32* @SIGUSR2, align 4
  %34 = load i8*, i8** @sigusr2, align 8
  %35 = call i32 @signal(i32 %33, i8* %34)
  %36 = load i32, i32* @SIGPIPE, align 4
  %37 = load i8*, i8** @SIG_IGN, align 8
  %38 = call i32 @signal(i32 %36, i8* %37)
  %39 = call i32 @pidfile(i32* null)
  %40 = load i64, i64* @launchd_flag, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %20
  %43 = load i32, i32* @service_name, align 4
  %44 = load i32, i32* @kcm_service, align 4
  %45 = call i32 @heim_sipc_launchd_mach_init(i32 %43, i32 %44, i32* null, i32* %7)
  br label %50

46:                                               ; preds = %20
  %47 = load i32, i32* @service_name, align 4
  %48 = load i32, i32* @kcm_service, align 4
  %49 = call i32 @heim_sipc_service_unix(i32 %47, i32 %48, i32* null, i32* %8)
  br label %50

50:                                               ; preds = %46, %42
  %51 = call i32 (...) @heim_ipc_main()
  %52 = load i32, i32* @kcm_context, align 4
  %53 = call i32 @krb5_free_context(i32 %52)
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %50, %16
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @setprogname(i8*) #1

declare dso_local i32 @krb5_init_context(i32*) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i32 @kcm_configure(i32, i8**) #1

declare dso_local i32 @signal(i32, i8*) #1

declare dso_local i32 @pidfile(i32*) #1

declare dso_local i32 @heim_sipc_launchd_mach_init(i32, i32, i32*, i32*) #1

declare dso_local i32 @heim_sipc_service_unix(i32, i32, i32*, i32*) #1

declare dso_local i32 @heim_ipc_main(...) #1

declare dso_local i32 @krb5_free_context(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
