; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_apps.c_ctx_set_verify_locations.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_apps.c_ctx_set_verify_locations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctx_set_verify_locations(i32* %0, i8* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %12 = load i8*, i8** %8, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %34

14:                                               ; preds = %5
  %15 = load i8*, i8** %9, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %34

17:                                               ; preds = %14
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %17
  %21 = load i32*, i32** %7, align 8
  %22 = call i64 @SSL_CTX_set_default_verify_file(i32* %21)
  %23 = icmp sle i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 0, i32* %6, align 4
  br label %39

25:                                               ; preds = %20, %17
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %25
  %29 = load i32*, i32** %7, align 8
  %30 = call i64 @SSL_CTX_set_default_verify_dir(i32* %29)
  %31 = icmp sle i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 0, i32* %6, align 4
  br label %39

33:                                               ; preds = %28, %25
  store i32 1, i32* %6, align 4
  br label %39

34:                                               ; preds = %14, %5
  %35 = load i32*, i32** %7, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = call i32 @SSL_CTX_load_verify_locations(i32* %35, i8* %36, i8* %37)
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %34, %33, %32, %24
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

declare dso_local i64 @SSL_CTX_set_default_verify_file(i32*) #1

declare dso_local i64 @SSL_CTX_set_default_verify_dir(i32*) #1

declare dso_local i32 @SSL_CTX_load_verify_locations(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
