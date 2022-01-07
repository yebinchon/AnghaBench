; ModuleID = '/home/carl/AnghaBench/freebsd/stand/ficl/extr_vm.c_vmGetWord0.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/ficl/extr_vm.c_vmGetWord0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmGetWord0(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call i8* @vmGetInBuf(i32* %8)
  store i8* %9, i8** %3, align 8
  %10 = load i32*, i32** %2, align 8
  %11 = call i8* @vmGetInBufEnd(i32* %10)
  store i8* %11, i8** %4, align 8
  store i64 0, i64* %6, align 8
  store i8 0, i8* %7, align 1
  %12 = load i8*, i8** %3, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i8* @skipSpace(i8* %12, i8* %13)
  store i8* %14, i8** %3, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @SI_SETPTR(i32 %15, i8* %16)
  br label %18

18:                                               ; preds = %30, %1
  %19 = load i8*, i8** %4, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = icmp eq i8* %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %35

23:                                               ; preds = %18
  %24 = load i8*, i8** %3, align 8
  %25 = load i8, i8* %24, align 1
  store i8 %25, i8* %7, align 1
  %26 = load i8, i8* %7, align 1
  %27 = call i64 @isspace(i8 signext %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %35

30:                                               ; preds = %23
  %31 = load i64, i64* %6, align 8
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* %6, align 8
  %33 = load i8*, i8** %3, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %3, align 8
  br label %18

35:                                               ; preds = %29, %22
  %36 = load i32, i32* %5, align 4
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @SI_SETLEN(i32 %36, i64 %37)
  %39 = load i8*, i8** %4, align 8
  %40 = load i8*, i8** %3, align 8
  %41 = icmp ne i8* %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %35
  %43 = load i8, i8* %7, align 1
  %44 = call i64 @isspace(i8 signext %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i8*, i8** %3, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %3, align 8
  br label %49

49:                                               ; preds = %46, %42, %35
  %50 = load i32*, i32** %2, align 8
  %51 = load i8*, i8** %3, align 8
  %52 = call i32 @vmUpdateTib(i32* %50, i8* %51)
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i8* @vmGetInBuf(i32*) #1

declare dso_local i8* @vmGetInBufEnd(i32*) #1

declare dso_local i8* @skipSpace(i8*, i8*) #1

declare dso_local i32 @SI_SETPTR(i32, i8*) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @SI_SETLEN(i32, i64) #1

declare dso_local i32 @vmUpdateTib(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
