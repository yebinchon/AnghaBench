; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_kerberos5.c__kdc_log_timestamp.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_kerberos5.c__kdc_log_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"unset\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"%s authtime: %s starttime: %s endtime: %s renew till: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_kdc_log_timestamp(i32 %0, i32* %1, i8* %2, i32 %3, i32* %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca [100 x i8], align 16
  %16 = alloca [100 x i8], align 16
  %17 = alloca [100 x i8], align 16
  %18 = alloca [100 x i8], align 16
  store i32 %0, i32* %8, align 4
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %11, align 4
  %21 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  %22 = load i32, i32* @TRUE, align 4
  %23 = call i32 @krb5_format_time(i32 %19, i32 %20, i8* %21, i32 100, i32 %22)
  %24 = load i32*, i32** %12, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %7
  %27 = load i32, i32* %8, align 4
  %28 = load i32*, i32** %12, align 8
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds [100 x i8], [100 x i8]* %16, i64 0, i64 0
  %31 = load i32, i32* @TRUE, align 4
  %32 = call i32 @krb5_format_time(i32 %27, i32 %29, i8* %30, i32 100, i32 %31)
  br label %36

33:                                               ; preds = %7
  %34 = getelementptr inbounds [100 x i8], [100 x i8]* %16, i64 0, i64 0
  %35 = call i32 @strlcpy(i8* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 100)
  br label %36

36:                                               ; preds = %33, %26
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %13, align 4
  %39 = getelementptr inbounds [100 x i8], [100 x i8]* %17, i64 0, i64 0
  %40 = load i32, i32* @TRUE, align 4
  %41 = call i32 @krb5_format_time(i32 %37, i32 %38, i8* %39, i32 100, i32 %40)
  %42 = load i32*, i32** %14, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %36
  %45 = load i32, i32* %8, align 4
  %46 = load i32*, i32** %14, align 8
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds [100 x i8], [100 x i8]* %18, i64 0, i64 0
  %49 = load i32, i32* @TRUE, align 4
  %50 = call i32 @krb5_format_time(i32 %45, i32 %47, i8* %48, i32 100, i32 %49)
  br label %54

51:                                               ; preds = %36
  %52 = getelementptr inbounds [100 x i8], [100 x i8]* %18, i64 0, i64 0
  %53 = call i32 @strlcpy(i8* %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 100)
  br label %54

54:                                               ; preds = %51, %44
  %55 = load i32, i32* %8, align 4
  %56 = load i32*, i32** %9, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  %59 = getelementptr inbounds [100 x i8], [100 x i8]* %16, i64 0, i64 0
  %60 = getelementptr inbounds [100 x i8], [100 x i8]* %17, i64 0, i64 0
  %61 = getelementptr inbounds [100 x i8], [100 x i8]* %18, i64 0, i64 0
  %62 = call i32 @kdc_log(i32 %55, i32* %56, i32 5, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i8* %57, i8* %58, i8* %59, i8* %60, i8* %61)
  ret void
}

declare dso_local i32 @krb5_format_time(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @kdc_log(i32, i32*, i32, i8*, i8*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
