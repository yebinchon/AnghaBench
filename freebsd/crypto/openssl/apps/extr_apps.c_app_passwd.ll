; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_apps.c_app_passwd.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_apps.c_app_passwd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @app_passwd(i8* %0, i8* %1, i8** %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i8** %3, i8*** %9, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %4
  %14 = load i8*, i8** %6, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %13
  %17 = load i8*, i8** %6, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call i64 @strcmp(i8* %17, i8* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16, %13, %4
  store i32 0, i32* %10, align 4
  br label %23

22:                                               ; preds = %16
  store i32 1, i32* %10, align 4
  br label %23

23:                                               ; preds = %22, %21
  %24 = load i8*, i8** %6, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %23
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* %10, align 4
  %29 = call i8* @app_get_pass(i8* %27, i32 %28)
  %30 = load i8**, i8*** %8, align 8
  store i8* %29, i8** %30, align 8
  %31 = load i8**, i8*** %8, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %65

35:                                               ; preds = %26
  br label %42

36:                                               ; preds = %23
  %37 = load i8**, i8*** %8, align 8
  %38 = icmp ne i8** %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i8**, i8*** %8, align 8
  store i8* null, i8** %40, align 8
  br label %41

41:                                               ; preds = %39, %36
  br label %42

42:                                               ; preds = %41, %35
  %43 = load i8*, i8** %7, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %58

45:                                               ; preds = %42
  %46 = load i8*, i8** %7, align 8
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 2, i32 0
  %51 = call i8* @app_get_pass(i8* %46, i32 %50)
  %52 = load i8**, i8*** %9, align 8
  store i8* %51, i8** %52, align 8
  %53 = load i8**, i8*** %9, align 8
  %54 = load i8*, i8** %53, align 8
  %55 = icmp eq i8* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %45
  store i32 0, i32* %5, align 4
  br label %65

57:                                               ; preds = %45
  br label %64

58:                                               ; preds = %42
  %59 = load i8**, i8*** %9, align 8
  %60 = icmp ne i8** %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i8**, i8*** %9, align 8
  store i8* null, i8** %62, align 8
  br label %63

63:                                               ; preds = %61, %58
  br label %64

64:                                               ; preds = %63, %57
  store i32 1, i32* %5, align 4
  br label %65

65:                                               ; preds = %64, %56, %34
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @app_get_pass(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
