; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_hostfile.c_match_maybe_hashed.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_hostfile.c_match_maybe_hashed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HASH_DELIM = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32*)* @match_maybe_hashed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_maybe_hashed(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = load i8, i8* @HASH_DELIM, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %13, %15
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %8, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = call i64 @strlen(i8* %18)
  store i64 %19, i64* %10, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* %8, align 4
  %24 = load i32*, i32** %7, align 8
  store i32 %23, i32* %24, align 4
  br label %25

25:                                               ; preds = %22, %3
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %49

28:                                               ; preds = %25
  %29 = load i8*, i8** %5, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = load i64, i64* %10, align 8
  %32 = call i8* @host_hash(i8* %29, i8* %30, i64 %31)
  store i8* %32, i8** %9, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 -1, i32* %4, align 4
  br label %55

35:                                               ; preds = %28
  %36 = load i64, i64* %10, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = call i64 @strlen(i8* %37)
  %39 = icmp eq i64 %36, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load i8*, i8** %9, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load i64, i64* %10, align 8
  %44 = call i64 @strncmp(i8* %41, i8* %42, i64 %43)
  %45 = icmp eq i64 %44, 0
  br label %46

46:                                               ; preds = %40, %35
  %47 = phi i1 [ false, %35 ], [ %45, %40 ]
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %4, align 4
  br label %55

49:                                               ; preds = %25
  %50 = load i8*, i8** %5, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @match_hostname(i8* %50, i8* %51)
  %53 = icmp eq i32 %52, 1
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %49, %46, %34
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @host_hash(i8*, i8*, i64) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i32 @match_hostname(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
