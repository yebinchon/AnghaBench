; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_getnetpath.c__get_next_token.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_getnetpath.c__get_next_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @_get_next_token(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = trunc i32 %10 to i8
  %12 = call i8* @strchr(i8* %9, i8 signext %11)
  store i8* %12, i8** %6, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %69

15:                                               ; preds = %2
  %16 = load i8*, i8** %6, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = icmp ugt i8* %16, %17
  br i1 %18, label %19, label %45

19:                                               ; preds = %15
  %20 = load i8*, i8** %6, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 -1
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 92
  br i1 %24, label %25, label %45

25:                                               ; preds = %19
  %26 = load i8*, i8** %6, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  %29 = icmp ugt i8* %26, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %25
  %31 = load i8*, i8** %6, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 -2
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 92
  br i1 %35, label %36, label %44

36:                                               ; preds = %30
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 -1
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @strcpy(i8* %38, i8* %39)
  %41 = load i8*, i8** %6, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i8* @_get_next_token(i8* %41, i32 %42)
  store i8* %43, i8** %3, align 8
  br label %69

44:                                               ; preds = %30, %25
  br label %45

45:                                               ; preds = %44, %19, %15
  %46 = load i8*, i8** %6, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %6, align 8
  store i8 0, i8* %46, align 1
  %48 = load i8*, i8** %4, align 8
  store i8* %48, i8** %8, align 8
  br label %49

49:                                               ; preds = %62, %45
  %50 = load i8*, i8** %8, align 8
  %51 = call i8* @strchr(i8* %50, i8 signext 92)
  store i8* %51, i8** %7, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %67

53:                                               ; preds = %49
  %54 = load i8*, i8** %7, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 92
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load i8*, i8** %7, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %7, align 8
  br label %62

62:                                               ; preds = %59, %53
  %63 = load i8*, i8** %7, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  store i8* %65, i8** %8, align 8
  %66 = call i32 @strcpy(i8* %63, i8* %65)
  br label %49

67:                                               ; preds = %49
  %68 = load i8*, i8** %6, align 8
  store i8* %68, i8** %3, align 8
  br label %69

69:                                               ; preds = %67, %36, %14
  %70 = load i8*, i8** %3, align 8
  ret i8* %70
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
