; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_sysctlbyname.c_sysctlbyname.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_sysctlbyname.c_sysctlbyname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CTL_MAXNAME = common dso_local global i32 0, align 4
@SYSCTLBYNAME_OSREL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sysctlbyname(i8* %0, i8* %1, i64* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64* %2, i64** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load i32, i32* @CTL_MAXNAME, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %12, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %13, align 8
  %20 = call i64 (...) @__getosreldate()
  %21 = load i64, i64* @SYSCTLBYNAME_OSREL, align 8
  %22 = icmp sge i64 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %5
  %24 = load i8*, i8** %7, align 8
  %25 = call i64 @strlen(i8* %24)
  store i64 %25, i64* %14, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i64, i64* %14, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load i64*, i64** %9, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = load i64, i64* %11, align 8
  %32 = call i32 @__sysctlbyname(i8* %26, i64 %27, i8* %28, i64* %29, i8* %30, i64 %31)
  store i32 %32, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %46

33:                                               ; preds = %5
  %34 = call i64 @nitems(i32* %19)
  store i64 %34, i64* %14, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @sysctlnametomib(i8* %35, i32* %19, i64* %14)
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %46

39:                                               ; preds = %33
  %40 = load i64, i64* %14, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = load i64*, i64** %9, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = load i64, i64* %11, align 8
  %45 = call i32 @sysctl(i32* %19, i64 %40, i8* %41, i64* %42, i8* %43, i64 %44)
  store i32 %45, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %46

46:                                               ; preds = %39, %38, %23
  %47 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %47)
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @__getosreldate(...) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @__sysctlbyname(i8*, i64, i8*, i64*, i8*, i64) #2

declare dso_local i64 @nitems(i32*) #2

declare dso_local i32 @sysctlnametomib(i8*, i32*, i64*) #2

declare dso_local i32 @sysctl(i32*, i64, i8*, i64*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
