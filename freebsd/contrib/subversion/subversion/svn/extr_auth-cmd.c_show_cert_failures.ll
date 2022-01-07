; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_auth-cmd.c_show_cert_failures.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_auth-cmd.c_show_cert_failures.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_AUTH_SSL_NOTYETVALID = common dso_local global i32 0, align 4
@SVN_AUTH_SSL_EXPIRED = common dso_local global i32 0, align 4
@SVN_AUTH_SSL_CNMISMATCH = common dso_local global i32 0, align 4
@SVN_AUTH_SSL_UNKNOWNCA = common dso_local global i32 0, align 4
@SVN_AUTH_SSL_OTHER = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [54 x i8] c"Automatic certificate validity check failed because:\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"  The certificate is not yet valid.\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"  The certificate has expired.\0A\00", align 1
@.str.3 = private unnamed_addr constant [80 x i8] c"  The certificate's Common Name (hostname) does not match the remote hostname.\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"  The certificate issuer is unknown.\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"  Unknown verification failure.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*)* @show_cert_failures to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @show_cert_failures(i8* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 @svn_cstring_atoui(i32* %6, i8* %7)
  %9 = call i32 @SVN_ERR(i32 %8)
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @SVN_AUTH_SSL_NOTYETVALID, align 4
  %12 = load i32, i32* @SVN_AUTH_SSL_EXPIRED, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @SVN_AUTH_SSL_CNMISMATCH, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @SVN_AUTH_SSL_UNKNOWNCA, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @SVN_AUTH_SSL_OTHER, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %10, %19
  %21 = icmp eq i32 0, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %23, i32** %3, align 8
  br label %80

24:                                               ; preds = %2
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %27 = call i32 @svn_cmdline_printf(i32* %25, i32 %26)
  %28 = call i32 @SVN_ERR(i32 %27)
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @SVN_AUTH_SSL_NOTYETVALID, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %24
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %36 = call i32 @svn_cmdline_printf(i32* %34, i32 %35)
  %37 = call i32 @SVN_ERR(i32 %36)
  br label %38

38:                                               ; preds = %33, %24
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @SVN_AUTH_SSL_EXPIRED, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %46 = call i32 @svn_cmdline_printf(i32* %44, i32 %45)
  %47 = call i32 @SVN_ERR(i32 %46)
  br label %48

48:                                               ; preds = %43, %38
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @SVN_AUTH_SSL_CNMISMATCH, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load i32*, i32** %5, align 8
  %55 = call i32 @_(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.3, i64 0, i64 0))
  %56 = call i32 @svn_cmdline_printf(i32* %54, i32 %55)
  %57 = call i32 @SVN_ERR(i32 %56)
  br label %58

58:                                               ; preds = %53, %48
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @SVN_AUTH_SSL_UNKNOWNCA, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load i32*, i32** %5, align 8
  %65 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %66 = call i32 @svn_cmdline_printf(i32* %64, i32 %65)
  %67 = call i32 @SVN_ERR(i32 %66)
  br label %68

68:                                               ; preds = %63, %58
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @SVN_AUTH_SSL_OTHER, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load i32*, i32** %5, align 8
  %75 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %76 = call i32 @svn_cmdline_printf(i32* %74, i32 %75)
  %77 = call i32 @SVN_ERR(i32 %76)
  br label %78

78:                                               ; preds = %73, %68
  %79 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %79, i32** %3, align 8
  br label %80

80:                                               ; preds = %78, %22
  %81 = load i32*, i32** %3, align 8
  ret i32* %81
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_cstring_atoui(i32*, i8*) #1

declare dso_local i32 @svn_cmdline_printf(i32*, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
