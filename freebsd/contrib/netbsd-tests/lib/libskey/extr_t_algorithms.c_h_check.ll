; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libskey/extr_t_algorithms.c_h_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libskey/extr_t_algorithms.c_h_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, i8*, i8*, i8*)* @h_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @h_check(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca [64 x i8], align 16
  %14 = alloca [16 x i8], align 16
  %15 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = call i32 @skey_set_algorithm(i8* %16)
  %18 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %19 = load i8*, i8** %8, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @keycrunch(i8* %18, i8* %19, i8* %20)
  %22 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %23 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %24 = call i32 @btoa8(i8* %22, i8* %23)
  %25 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %26 = load i8*, i8** %10, align 8
  %27 = call i32 @H_REQUIRE(i8* %25, i8* %26)
  %28 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %29 = call i32 @f(i8* %28)
  %30 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %31 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %32 = call i32 @btoa8(i8* %30, i8* %31)
  %33 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %34 = load i8*, i8** %11, align 8
  %35 = call i32 @H_REQUIRE(i8* %33, i8* %34)
  store i32 1, i32* %15, align 4
  br label %36

36:                                               ; preds = %42, %6
  %37 = load i32, i32* %15, align 4
  %38 = icmp slt i32 %37, 99
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %41 = call i32 @f(i8* %40)
  br label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %15, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %15, align 4
  br label %36

45:                                               ; preds = %36
  %46 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %47 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %48 = call i32 @btoa8(i8* %46, i8* %47)
  %49 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %50 = load i8*, i8** %12, align 8
  %51 = call i32 @H_REQUIRE(i8* %49, i8* %50)
  ret void
}

declare dso_local i32 @skey_set_algorithm(i8*) #1

declare dso_local i32 @keycrunch(i8*, i8*, i8*) #1

declare dso_local i32 @btoa8(i8*, i8*) #1

declare dso_local i32 @H_REQUIRE(i8*, i8*) #1

declare dso_local i32 @f(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
