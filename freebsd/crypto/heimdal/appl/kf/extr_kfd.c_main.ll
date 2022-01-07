; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/kf/extr_kfd.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/kf/extr_kfd.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOG_ODELAY = common dso_local global i32 0, align 4
@LOG_PID = common dso_local global i32 0, align 4
@LOG_AUTH = common dso_local global i32 0, align 4
@context = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"kfd\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"krb5_openlog\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"krb5_set_warn_dest\00", align 1
@service = common dso_local global i32 0, align 4
@regpag_str = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"regpag\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-t\00", align 1
@krb5_tkfile = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"-r\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i8**, i8*** %5, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 0
  %11 = load i8*, i8** %10, align 8
  %12 = call i32 @setprogname(i8* %11)
  %13 = load i8**, i8*** %5, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 0
  %15 = load i8*, i8** %14, align 8
  %16 = load i32, i32* @LOG_ODELAY, align 4
  %17 = load i32, i32* @LOG_PID, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @LOG_AUTH, align 4
  %20 = call i32 @roken_openlog(i8* %15, i32 %18, i32 %19)
  %21 = load i32, i32* %4, align 4
  %22 = load i8**, i8*** %5, align 8
  %23 = call i32 @server_setup(i32* @context, i32 %21, i8** %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* @context, align 4
  %25 = call i32 @krb5_openlog(i32 %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32** %8)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = load i32, i32* @context, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @krb5_err(i32 %29, i32 1, i32 %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %28, %2
  %33 = load i32, i32* @context, align 4
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @krb5_set_warn_dest(i32 %33, i32* %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load i32, i32* @context, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @krb5_err(i32 %39, i32 1, i32 %40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %42

42:                                               ; preds = %38, %32
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @service, align 4
  %45 = call i32 @doit(i32 %43, i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = call i32 (...) @closelog()
  %47 = load i32, i32* %7, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %42
  %50 = load i32*, i32** @regpag_str, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load i32*, i32** @regpag_str, align 8
  %54 = load i32, i32* @krb5_tkfile, align 4
  %55 = call i32 @execl(i32* %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32* null)
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %52, %49, %42
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

declare dso_local i32 @setprogname(i8*) #1

declare dso_local i32 @roken_openlog(i8*, i32, i32) #1

declare dso_local i32 @server_setup(i32*, i32, i8**) #1

declare dso_local i32 @krb5_openlog(i32, i8*, i32**) #1

declare dso_local i32 @krb5_err(i32, i32, i32, i8*) #1

declare dso_local i32 @krb5_set_warn_dest(i32, i32*) #1

declare dso_local i32 @doit(i32, i32) #1

declare dso_local i32 @closelog(...) #1

declare dso_local i32 @execl(i32*, i8*, i8*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
