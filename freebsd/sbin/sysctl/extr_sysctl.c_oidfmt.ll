; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/sysctl/extr_sysctl.c_oidfmt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/sysctl/extr_sysctl.c_oidfmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CTL_MAXNAME = common dso_local global i32 0, align 4
@BUFSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"sysctl fmt %d %zu %d\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i32*)* @oidfmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oidfmt(i32* %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %14 = load i32, i32* @CTL_MAXNAME, align 4
  %15 = add nsw i32 %14, 2
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %9, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %10, align 8
  %19 = load i32, i32* @BUFSIZ, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %11, align 8
  %22 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 0, i32* %22, align 16
  %23 = getelementptr inbounds i32, i32* %18, i64 1
  store i32 4, i32* %23, align 4
  %24 = getelementptr inbounds i32, i32* %18, i64 2
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 4
  %29 = trunc i64 %28 to i32
  %30 = call i32 @memcpy(i32* %24, i32* %25, i32 %29)
  %31 = mul nuw i64 4, %20
  store i64 %31, i64* %13, align 8
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 2
  %34 = call i32 @sysctl(i32* %18, i32 %33, i32* %21, i64* %13, i32 0, i32 0)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %4
  %38 = load i32, i32* %12, align 4
  %39 = load i64, i64* %13, align 8
  %40 = load i32, i32* @errno, align 4
  %41 = call i32 @err(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %38, i64 %39, i32 %40)
  br label %42

42:                                               ; preds = %37, %4
  %43 = load i32*, i32** %8, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* %21, align 16
  %47 = load i32*, i32** %8, align 8
  store i32 %46, i32* %47, align 4
  br label %48

48:                                               ; preds = %45, %42
  %49 = load i8*, i8** %7, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load i8*, i8** %7, align 8
  %53 = getelementptr inbounds i32, i32* %21, i64 4
  %54 = bitcast i32* %53 to i8*
  %55 = call i32 @strcpy(i8* %52, i8* %54)
  br label %56

56:                                               ; preds = %51, %48
  %57 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %57)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @sysctl(i32*, i32, i32*, i64*, i32, i32) #2

declare dso_local i32 @err(i32, i8*, i32, i64, i32) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
