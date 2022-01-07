; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/regression/extr_data.c_cat3.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/regression/extr_data.c_cat3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i8*)* @cat3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @cat3(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i64 @strlen(i8* %13)
  store i64 %14, i64* %8, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i64 @strlen(i8* %15)
  store i64 %16, i64* %9, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %23

20:                                               ; preds = %3
  %21 = load i8*, i8** %7, align 8
  %22 = call i64 @strlen(i8* %21)
  br label %23

23:                                               ; preds = %20, %19
  %24 = phi i64 [ 0, %19 ], [ %22, %20 ]
  store i64 %24, i64* %10, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* %9, align 8
  %27 = add i64 %25, %26
  %28 = load i64, i64* %10, align 8
  %29 = add i64 %27, %28
  %30 = add i64 %29, 1
  store i64 %30, i64* %11, align 8
  %31 = load i64, i64* %11, align 8
  %32 = call i64 @malloc(i64 %31)
  %33 = inttoptr i64 %32 to i8*
  store i8* %33, i8** %12, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %23
  store i8* null, i8** %4, align 8
  br label %68

37:                                               ; preds = %23
  %38 = load i8*, i8** %12, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @strcpy(i8* %38, i8* %39)
  %41 = load i8*, i8** %12, align 8
  %42 = load i64, i64* %8, align 8
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @strcpy(i8* %43, i8* %44)
  %46 = load i8*, i8** %7, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %56

48:                                               ; preds = %37
  %49 = load i8*, i8** %12, align 8
  %50 = load i64, i64* %8, align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  %52 = load i64, i64* %9, align 8
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 @strcpy(i8* %53, i8* %54)
  br label %56

56:                                               ; preds = %48, %37
  %57 = load i8*, i8** %12, align 8
  %58 = call i64 @strlen(i8* %57)
  %59 = load i64, i64* %8, align 8
  %60 = load i64, i64* %9, align 8
  %61 = add i64 %59, %60
  %62 = load i64, i64* %10, align 8
  %63 = add i64 %61, %62
  %64 = icmp eq i64 %58, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 @assert(i32 %65)
  %67 = load i8*, i8** %12, align 8
  store i8* %67, i8** %4, align 8
  br label %68

68:                                               ; preds = %56, %36
  %69 = load i8*, i8** %4, align 8
  ret i8* %69
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
