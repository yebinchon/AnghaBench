; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_debug.c_res_nametoclass.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_debug.c_res_nametoclass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__p_class_syms = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"CLASS\00", align 1
@errno = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @res_nametoclass(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32, i32* @__p_class_syms, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = call i64 @sym_ston(i32 %8, i8* %9, i32* %7)
  store i64 %10, i64* %5, align 8
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %41

14:                                               ; preds = %2
  %15 = load i8*, i8** %3, align 8
  %16 = call i64 @strncasecmp(i8* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %14
  %19 = load i8*, i8** %3, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 5
  %21 = load i8, i8* %20, align 1
  %22 = call i32 @isdigit(i8 zeroext %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %18, %14
  br label %41

25:                                               ; preds = %18
  store i64 0, i64* @errno, align 8
  %26 = load i8*, i8** %3, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 5
  %28 = call i64 @strtoul(i8* %27, i8** %6, i32 10)
  store i64 %28, i64* %5, align 8
  %29 = load i64, i64* @errno, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %25
  %32 = load i8*, i8** %6, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i64, i64* %5, align 8
  %38 = icmp ule i64 %37, 65535
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 1, i32* %7, align 4
  br label %40

40:                                               ; preds = %39, %36, %31, %25
  br label %41

41:                                               ; preds = %40, %24, %13
  %42 = load i32*, i32** %4, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32, i32* %7, align 4
  %46 = load i32*, i32** %4, align 8
  store i32 %45, i32* %46, align 4
  br label %47

47:                                               ; preds = %44, %41
  %48 = load i64, i64* %5, align 8
  ret i64 %48
}

declare dso_local i64 @sym_ston(i32, i8*, i32*) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @isdigit(i8 zeroext) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
