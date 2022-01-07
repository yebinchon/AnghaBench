; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/com_err/extr_parse.c_name2number.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/com_err/extr_parse.c_name2number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [64 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789_\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"table name too long\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"invalid character in table name\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*)* @name2number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @name2number(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i64 0, i64* %5, align 8
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i32 @strlen(i8* %8)
  %10 = icmp sgt i32 %9, 4
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 @yyerror(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* %2, align 8
  br label %53

13:                                               ; preds = %1
  %14 = load i8*, i8** %3, align 8
  store i8* %14, i8** %4, align 8
  br label %15

15:                                               ; preds = %38, %13
  %16 = load i8*, i8** %4, align 8
  %17 = load i8, i8* %16, align 1
  %18 = icmp ne i8 %17, 0
  br i1 %18, label %19, label %41

19:                                               ; preds = %15
  %20 = load i8*, i8** %6, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = load i8, i8* %21, align 1
  %23 = call i8* @strchr(i8* %20, i8 signext %22)
  store i8* %23, i8** %7, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = call i32 @yyerror(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  store i64 0, i64* %2, align 8
  br label %53

28:                                               ; preds = %19
  %29 = load i64, i64* %5, align 8
  %30 = shl i64 %29, 6
  %31 = load i8*, i8** %7, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = ptrtoint i8* %31 to i64
  %34 = ptrtoint i8* %32 to i64
  %35 = sub i64 %33, %34
  %36 = add nsw i64 %30, %35
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %5, align 8
  br label %38

38:                                               ; preds = %28
  %39 = load i8*, i8** %4, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %4, align 8
  br label %15

41:                                               ; preds = %15
  %42 = load i64, i64* %5, align 8
  %43 = shl i64 %42, 8
  store i64 %43, i64* %5, align 8
  %44 = load i64, i64* %5, align 8
  %45 = icmp sgt i64 %44, 2147483647
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load i64, i64* %5, align 8
  %48 = sub nsw i64 4294967295, %47
  %49 = add nsw i64 %48, 1
  %50 = sub nsw i64 0, %49
  store i64 %50, i64* %5, align 8
  br label %51

51:                                               ; preds = %46, %41
  %52 = load i64, i64* %5, align 8
  store i64 %52, i64* %2, align 8
  br label %53

53:                                               ; preds = %51, %26, %11
  %54 = load i64, i64* %2, align 8
  ret i64 %54
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @yyerror(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
