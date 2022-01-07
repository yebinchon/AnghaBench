; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_asn_mime.c_strip_end.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_asn_mime.c_strip_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @strip_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @strip_end(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i8* null, i8** %2, align 8
  br label %48

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 @strlen(i8* %11)
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %10, i64 %13
  %15 = getelementptr inbounds i8, i8* %14, i64 -1
  store i8* %15, i8** %4, align 8
  br label %16

16:                                               ; preds = %44, %9
  %17 = load i8*, i8** %4, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = icmp uge i8* %17, %18
  br i1 %19, label %20, label %47

20:                                               ; preds = %16
  %21 = load i8*, i8** %4, align 8
  %22 = load i8, i8* %21, align 1
  store i8 %22, i8* %5, align 1
  %23 = load i8, i8* %5, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 34
  br i1 %25, label %26, label %35

26:                                               ; preds = %20
  %27 = load i8*, i8** %4, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 -1
  %29 = load i8*, i8** %3, align 8
  %30 = icmp eq i8* %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i8* null, i8** %2, align 8
  br label %48

32:                                               ; preds = %26
  %33 = load i8*, i8** %4, align 8
  store i8 0, i8* %33, align 1
  %34 = load i8*, i8** %3, align 8
  store i8* %34, i8** %2, align 8
  br label %48

35:                                               ; preds = %20
  %36 = load i8, i8* %5, align 1
  %37 = call i64 @ossl_isspace(i8 signext %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i8*, i8** %4, align 8
  store i8 0, i8* %40, align 1
  br label %43

41:                                               ; preds = %35
  %42 = load i8*, i8** %3, align 8
  store i8* %42, i8** %2, align 8
  br label %48

43:                                               ; preds = %39
  br label %44

44:                                               ; preds = %43
  %45 = load i8*, i8** %4, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 -1
  store i8* %46, i8** %4, align 8
  br label %16

47:                                               ; preds = %16
  store i8* null, i8** %2, align 8
  br label %48

48:                                               ; preds = %47, %41, %32, %31, %8
  %49 = load i8*, i8** %2, align 8
  ret i8* %49
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @ossl_isspace(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
