; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_dns.c_dns_read_rdata.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_dns.c_dns_read_rdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSHFP_KEY_RESERVED = common dso_local global i32 0, align 4
@SSHFP_HASH_RESERVED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32**, i64*, i32*, i32)* @dns_read_rdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dns_read_rdata(i32* %0, i32* %1, i32** %2, i64* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32** %2, i32*** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* @SSHFP_KEY_RESERVED, align 4
  %15 = load i32*, i32** %7, align 8
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @SSHFP_HASH_RESERVED, align 4
  %17 = load i32*, i32** %8, align 8
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* %12, align 4
  %19 = icmp sge i32 %18, 2
  br i1 %19, label %20, label %53

20:                                               ; preds = %6
  %21 = load i32*, i32** %11, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %7, align 8
  store i32 %23, i32* %24, align 4
  %25 = load i32*, i32** %11, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %8, align 8
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* %12, align 4
  %30 = sub nsw i32 %29, 2
  %31 = sext i32 %30 to i64
  %32 = load i64*, i64** %10, align 8
  store i64 %31, i64* %32, align 8
  %33 = load i64*, i64** %10, align 8
  %34 = load i64, i64* %33, align 8
  %35 = icmp ugt i64 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %20
  %37 = load i64*, i64** %10, align 8
  %38 = load i64, i64* %37, align 8
  %39 = call i32* @xmalloc(i64 %38)
  %40 = load i32**, i32*** %9, align 8
  store i32* %39, i32** %40, align 8
  %41 = load i32**, i32*** %9, align 8
  %42 = load i32*, i32** %41, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  %45 = load i64*, i64** %10, align 8
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @memcpy(i32* %42, i32* %44, i64 %46)
  br label %52

48:                                               ; preds = %20
  %49 = call i64 @xstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %50 = inttoptr i64 %49 to i32*
  %51 = load i32**, i32*** %9, align 8
  store i32* %50, i32** %51, align 8
  br label %52

52:                                               ; preds = %48, %36
  store i32 1, i32* %13, align 4
  br label %53

53:                                               ; preds = %52, %6
  %54 = load i32, i32* %13, align 4
  ret i32 %54
}

declare dso_local i32* @xmalloc(i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i64 @xstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
