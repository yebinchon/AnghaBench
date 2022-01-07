; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_tsig.c_ldns_digest_function.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_tsig.c_ldns_digest_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"hmac-sha512.\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"hmac-shac384.\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"hmac-sha256.\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"hmac-sha1.\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"hmac-md5.sig-alg.reg.int.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @ldns_digest_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ldns_digest_function(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i64 @strcasecmp(i8* %4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32* null, i32** %2, align 8
  br label %31

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = call i64 @strcasecmp(i8* %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i32* null, i32** %2, align 8
  br label %31

13:                                               ; preds = %8
  %14 = load i8*, i8** %3, align 8
  %15 = call i64 @strcasecmp(i8* %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32* null, i32** %2, align 8
  br label %31

18:                                               ; preds = %13
  %19 = load i8*, i8** %3, align 8
  %20 = call i64 @strcasecmp(i8* %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = call i32* (...) @EVP_sha1()
  store i32* %23, i32** %2, align 8
  br label %31

24:                                               ; preds = %18
  %25 = load i8*, i8** %3, align 8
  %26 = call i64 @strcasecmp(i8* %25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = call i32* (...) @EVP_md5()
  store i32* %29, i32** %2, align 8
  br label %31

30:                                               ; preds = %24
  store i32* null, i32** %2, align 8
  br label %31

31:                                               ; preds = %30, %28, %22, %17, %12, %7
  %32 = load i32*, i32** %2, align 8
  ret i32* %32
}

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32* @EVP_sha1(...) #1

declare dso_local i32* @EVP_md5(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
