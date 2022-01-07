; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_get_default_principal.c__krb5_get_default_principal_local.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_get_default_principal.c__krb5_get_default_principal_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i8* }

@.str = private unnamed_addr constant [5 x i8] c"root\00", align 1
@ENOTTY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"unable to figure out current principal\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_krb5_get_default_principal_local(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.passwd*, align 8
  store i32 %0, i32* %4, align 4
  store i32** %1, i32*** %5, align 8
  %10 = load i32**, i32*** %5, align 8
  store i32* null, i32** %10, align 8
  %11 = call i64 (...) @getuid()
  store i64 %11, i64* %8, align 8
  %12 = load i64, i64* %8, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %37

14:                                               ; preds = %2
  %15 = call i8* (...) @getlogin()
  store i8* %15, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = call i8* (...) @get_env_user()
  store i8* %19, i8** %7, align 8
  br label %20

20:                                               ; preds = %18, %14
  %21 = load i8*, i8** %7, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %20
  %24 = load i8*, i8** %7, align 8
  %25 = call i64 @strcmp(i8* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load i32, i32* %4, align 4
  %29 = load i32**, i32*** %5, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 (i32, i32**, i32*, i8*, i8*, ...) @krb5_make_principal(i32 %28, i32** %29, i32* null, i8* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* null)
  store i32 %31, i32* %6, align 4
  br label %36

32:                                               ; preds = %23, %20
  %33 = load i32, i32* %4, align 4
  %34 = load i32**, i32*** %5, align 8
  %35 = call i32 (i32, i32**, i32*, i8*, i8*, ...) @krb5_make_principal(i32 %33, i32** %34, i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* null)
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %32, %27
  br label %67

37:                                               ; preds = %2
  %38 = load i64, i64* %8, align 8
  %39 = call %struct.passwd* @getpwuid(i64 %38)
  store %struct.passwd* %39, %struct.passwd** %9, align 8
  %40 = load %struct.passwd*, %struct.passwd** %9, align 8
  %41 = icmp ne %struct.passwd* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load %struct.passwd*, %struct.passwd** %9, align 8
  %44 = getelementptr inbounds %struct.passwd, %struct.passwd* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %7, align 8
  br label %53

46:                                               ; preds = %37
  %47 = call i8* (...) @get_env_user()
  store i8* %47, i8** %7, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = call i8* (...) @getlogin()
  store i8* %51, i8** %7, align 8
  br label %52

52:                                               ; preds = %50, %46
  br label %53

53:                                               ; preds = %52, %42
  %54 = load i8*, i8** %7, align 8
  %55 = icmp eq i8* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @ENOTTY, align 4
  %59 = call i32 @N_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %60 = call i32 @krb5_set_error_message(i32 %57, i32 %58, i32 %59)
  %61 = load i32, i32* @ENOTTY, align 4
  store i32 %61, i32* %3, align 4
  br label %69

62:                                               ; preds = %53
  %63 = load i32, i32* %4, align 4
  %64 = load i32**, i32*** %5, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = call i32 (i32, i32**, i32*, i8*, i8*, ...) @krb5_make_principal(i32 %63, i32** %64, i32* null, i8* %65, i8* null)
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %62, %36
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %67, %56
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i64 @getuid(...) #1

declare dso_local i8* @getlogin(...) #1

declare dso_local i8* @get_env_user(...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @krb5_make_principal(i32, i32**, i32*, i8*, i8*, ...) #1

declare dso_local %struct.passwd* @getpwuid(i64) #1

declare dso_local i32 @krb5_set_error_message(i32, i32, i32) #1

declare dso_local i32 @N_(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
