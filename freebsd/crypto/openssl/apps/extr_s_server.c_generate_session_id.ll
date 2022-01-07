; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_s_server.c_generate_session_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_s_server.c_generate_session_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@session_id_prefix = common dso_local global i32 0, align 4
@MAX_SESSION_ID_ATTEMPTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*)* @generate_session_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generate_session_id(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %45, %3
  %10 = load i8*, i8** %6, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @RAND_bytes(i8* %10, i32 %12)
  %14 = icmp sle i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  store i32 0, i32* %4, align 4
  br label %53

16:                                               ; preds = %9
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* @session_id_prefix, align 4
  %19 = load i32, i32* @session_id_prefix, align 4
  %20 = call i32 @strlen(i32 %19)
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* %21, align 4
  %23 = icmp ult i32 %20, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load i32, i32* @session_id_prefix, align 4
  %26 = call i32 @strlen(i32 %25)
  br label %30

27:                                               ; preds = %16
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %28, align 4
  br label %30

30:                                               ; preds = %27, %24
  %31 = phi i32 [ %26, %24 ], [ %29, %27 ]
  %32 = call i32 @memcpy(i8* %17, i32 %18, i32 %31)
  br label %33

33:                                               ; preds = %30
  %34 = load i32*, i32** %5, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @SSL_has_matching_session_id(i32* %34, i8* %35, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  %41 = load i32, i32* %8, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* @MAX_SESSION_ID_ATTEMPTS, align 4
  %44 = icmp ult i32 %42, %43
  br label %45

45:                                               ; preds = %40, %33
  %46 = phi i1 [ false, %33 ], [ %44, %40 ]
  br i1 %46, label %9, label %47

47:                                               ; preds = %45
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @MAX_SESSION_ID_ATTEMPTS, align 4
  %50 = icmp uge i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %53

52:                                               ; preds = %47
  store i32 1, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %51, %15
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i64 @RAND_bytes(i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i64 @SSL_has_matching_session_id(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
