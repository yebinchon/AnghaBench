; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_entropy.c_seed_rng.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_entropy.c_seed_rng.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RANDOM_SEED_SIZE = common dso_local global i32 0, align 4
@OPENSSL_VERSION_NUMBER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [58 x i8] c"OpenSSL version mismatch. Built against %lx, you have %lx\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"RNG is ready, skipping seeding\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Could not obtain seed from PRNGd\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"PRNG is not seeded\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @seed_rng() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @RANDOM_SEED_SIZE, align 4
  %5 = zext i32 %4 to i64
  %6 = call i8* @llvm.stacksave()
  store i8* %6, i8** %1, align 8
  %7 = alloca i8, i64 %5, align 16
  store i64 %5, i64* %2, align 8
  %8 = load i64, i64* @OPENSSL_VERSION_NUMBER, align 8
  %9 = call i32 (...) @SSLeay()
  %10 = call i32 @ssh_compatible_openssl(i64 %8, i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %0
  %13 = load i64, i64* @OPENSSL_VERSION_NUMBER, align 8
  %14 = trunc i64 %13 to i32
  %15 = call i32 (...) @SSLeay()
  %16 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15)
  br label %17

17:                                               ; preds = %12, %0
  %18 = call i32 (...) @RAND_status()
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = call i32 @debug3(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %39

22:                                               ; preds = %17
  %23 = trunc i64 %5 to i32
  %24 = call i32 @seed_from_prngd(i8* %7, i32 %23)
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %22
  %29 = trunc i64 %5 to i32
  %30 = trunc i64 %5 to i32
  %31 = call i32 @RAND_add(i8* %7, i32 %29, i32 %30)
  %32 = trunc i64 %5 to i32
  %33 = call i32 @memset(i8* %7, i8 signext 0, i32 %32)
  %34 = call i32 (...) @RAND_status()
  %35 = icmp ne i32 %34, 1
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %28
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %20
  %40 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %40)
  %41 = load i32, i32* %3, align 4
  switch i32 %41, label %43 [
    i32 0, label %42
    i32 1, label %42
  ]

42:                                               ; preds = %39, %39
  ret void

43:                                               ; preds = %39
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ssh_compatible_openssl(i64, i32) #2

declare dso_local i32 @SSLeay(...) #2

declare dso_local i32 @fatal(i8*, ...) #2

declare dso_local i32 @RAND_status(...) #2

declare dso_local i32 @debug3(i8*) #2

declare dso_local i32 @seed_from_prngd(i8*, i32) #2

declare dso_local i32 @RAND_add(i8*, i32, i32) #2

declare dso_local i32 @memset(i8*, i8 signext, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
