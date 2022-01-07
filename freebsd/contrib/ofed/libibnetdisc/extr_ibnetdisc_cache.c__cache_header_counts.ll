; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibnetdisc/extr_ibnetdisc_cache.c__cache_header_counts.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibnetdisc/extr_ibnetdisc_cache.c__cache_header_counts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IBND_FABRIC_CACHE_BUFLEN = common dso_local global i32 0, align 4
@IBND_FABRIC_CACHE_COUNT_OFFSET = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"lseek: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @_cache_header_counts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_cache_header_counts(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @IBND_FABRIC_CACHE_BUFLEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %16 = load i64, i64* %10, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %6, align 4
  %19 = call i64 @_marshall32(i32* %17, i32 %18)
  %20 = load i64, i64* %10, align 8
  %21 = add i64 %20, %19
  store i64 %21, i64* %10, align 8
  %22 = load i64, i64* %10, align 8
  %23 = getelementptr inbounds i32, i32* %15, i64 %22
  %24 = load i32, i32* %7, align 4
  %25 = call i64 @_marshall32(i32* %23, i32 %24)
  %26 = load i64, i64* %10, align 8
  %27 = add i64 %26, %25
  store i64 %27, i64* %10, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @IBND_FABRIC_CACHE_COUNT_OFFSET, align 4
  %30 = load i32, i32* @SEEK_SET, align 4
  %31 = call i64 @lseek(i32 %28, i32 %29, i32 %30)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %3
  %34 = load i32, i32* @errno, align 4
  %35 = call i32 @strerror(i32 %34)
  %36 = call i32 @IBND_DEBUG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %35)
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %44

37:                                               ; preds = %3
  %38 = load i32, i32* %5, align 4
  %39 = load i64, i64* %10, align 8
  %40 = call i64 @ibnd_write(i32 %38, i32* %15, i64 %39)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %44

43:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %44

44:                                               ; preds = %43, %42, %33
  %45 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %45)
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @_marshall32(i32*, i32) #2

declare dso_local i64 @lseek(i32, i32, i32) #2

declare dso_local i32 @IBND_DEBUG(i8*, i32) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i64 @ibnd_write(i32, i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
