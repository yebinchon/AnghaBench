; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ocsp/extr_ocsp_ht.c_OCSP_sendreq_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ocsp/extr_ocsp_ht.c_OCSP_sendreq_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"POST\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @OCSP_sendreq_new(i32* %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* null, i32** %10, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* %9, align 4
  %13 = call i32* @OCSP_REQ_CTX_new(i32* %11, i32 %12)
  store i32* %13, i32** %10, align 8
  %14 = load i32*, i32** %10, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32* null, i32** %5, align 8
  br label %37

17:                                               ; preds = %4
  %18 = load i32*, i32** %10, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @OCSP_REQ_CTX_http(i32* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  br label %34

23:                                               ; preds = %17
  %24 = load i32*, i32** %8, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load i32*, i32** %10, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = call i32 @OCSP_REQ_CTX_set1_req(i32* %27, i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  br label %34

32:                                               ; preds = %26, %23
  %33 = load i32*, i32** %10, align 8
  store i32* %33, i32** %5, align 8
  br label %37

34:                                               ; preds = %31, %22
  %35 = load i32*, i32** %10, align 8
  %36 = call i32 @OCSP_REQ_CTX_free(i32* %35)
  store i32* null, i32** %5, align 8
  br label %37

37:                                               ; preds = %34, %32, %16
  %38 = load i32*, i32** %5, align 8
  ret i32* %38
}

declare dso_local i32* @OCSP_REQ_CTX_new(i32*, i32) #1

declare dso_local i32 @OCSP_REQ_CTX_http(i32*, i8*, i8*) #1

declare dso_local i32 @OCSP_REQ_CTX_set1_req(i32*, i32*) #1

declare dso_local i32 @OCSP_REQ_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
