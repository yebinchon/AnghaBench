; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-anchor.c_write_ssl_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-anchor.c_write_ssl_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@verb = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"line too long\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"SSL_write: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"could not SSL_write %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*)* @write_ssl_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_ssl_line(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [1024 x i8], align 16
  %9 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %14 = load i8*, i8** %6, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @snprintf(i8* %13, i32 1024, i8* %14, i8* %15)
  br label %21

17:                                               ; preds = %3
  %18 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @snprintf(i8* %18, i32 1024, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %19)
  br label %21

21:                                               ; preds = %17, %12
  %22 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %23 = call i64 @strlen(i8* %22)
  store i64 %23, i64* %9, align 8
  %24 = load i64, i64* %9, align 8
  %25 = add i64 %24, 2
  %26 = icmp uge i64 %25, 1024
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load i32, i32* @verb, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %27
  store i32 0, i32* %4, align 4
  br label %63

33:                                               ; preds = %21
  %34 = load i32, i32* @verb, align 4
  %35 = icmp sge i32 %34, 2
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %37)
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i64, i64* %9, align 8
  %41 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 %40
  store i8 13, i8* %41, align 1
  %42 = load i64, i64* %9, align 8
  %43 = add i64 %42, 1
  %44 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 %43
  store i8 10, i8* %44, align 1
  %45 = load i64, i64* %9, align 8
  %46 = add i64 %45, 2
  %47 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 %46
  store i8 0, i8* %47, align 1
  %48 = load i32*, i32** %5, align 8
  %49 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %50 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %51 = call i64 @strlen(i8* %50)
  %52 = trunc i64 %51 to i32
  %53 = call i64 @SSL_write(i32* %48, i8* %49, i32 %52)
  %54 = icmp sle i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %39
  %56 = load i32, i32* @verb, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %59)
  br label %61

61:                                               ; preds = %58, %55
  store i32 0, i32* %4, align 4
  br label %63

62:                                               ; preds = %39
  store i32 1, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %61, %32
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @SSL_write(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
