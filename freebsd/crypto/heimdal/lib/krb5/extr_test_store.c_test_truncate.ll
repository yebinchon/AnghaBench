; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_test_store.c_test_truncate.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_test_store.c_test_truncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"hej\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"fstat\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"length not 2\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32)* @test_truncate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_truncate(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.stat, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32*, i32** %5, align 8
  %9 = call i32 @krb5_store_string(i32* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @krb5_storage_truncate(i32* %10, i32 2)
  %12 = load i32, i32* %6, align 4
  %13 = call i64 @fstat(i32 %12, %struct.stat* %7)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @errno, align 4
  %18 = call i32 @krb5_err(i32 %16, i32 1, i32 %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %19

19:                                               ; preds = %15, %3
  %20 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 2
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @krb5_errx(i32 %24, i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %26

26:                                               ; preds = %23, %19
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @krb5_storage_truncate(i32* %27, i32 1024)
  %29 = load i32, i32* %6, align 4
  %30 = call i64 @fstat(i32 %29, %struct.stat* %7)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @errno, align 4
  %35 = call i32 @krb5_err(i32 %33, i32 1, i32 %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %32, %26
  %37 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 1024
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @krb5_errx(i32 %41, i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %43

43:                                               ; preds = %40, %36
  ret void
}

declare dso_local i32 @krb5_store_string(i32*, i8*) #1

declare dso_local i32 @krb5_storage_truncate(i32*, i32) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @krb5_err(i32, i32, i32, i8*) #1

declare dso_local i32 @krb5_errx(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
