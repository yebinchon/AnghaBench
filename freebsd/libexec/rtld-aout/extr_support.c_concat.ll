; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rtld-aout/extr_support.c_concat.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rtld-aout/extr_support.c_concat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @concat(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 1, i32* %7, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %3
  %12 = load i8*, i8** %4, align 8
  %13 = call i64 @strlen(i8* %12)
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %15, %13
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %7, align 4
  br label %18

18:                                               ; preds = %11, %3
  %19 = load i8*, i8** %5, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load i8*, i8** %5, align 8
  %23 = call i64 @strlen(i8* %22)
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %25, %23
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %21, %18
  %29 = load i8*, i8** %6, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load i8*, i8** %6, align 8
  %33 = call i64 @strlen(i8* %32)
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %35, %33
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %31, %28
  %39 = load i32, i32* %7, align 4
  %40 = call i8* @xmalloc(i32 %39)
  store i8* %40, i8** %8, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  store i8 0, i8* %42, align 1
  %43 = load i8*, i8** %4, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load i8*, i8** %8, align 8
  %47 = load i8*, i8** %4, align 8
  %48 = call i32 @strcat(i8* %46, i8* %47)
  br label %49

49:                                               ; preds = %45, %38
  %50 = load i8*, i8** %5, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load i8*, i8** %8, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = call i32 @strcat(i8* %53, i8* %54)
  br label %56

56:                                               ; preds = %52, %49
  %57 = load i8*, i8** %6, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load i8*, i8** %8, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = call i32 @strcat(i8* %60, i8* %61)
  br label %63

63:                                               ; preds = %59, %56
  %64 = load i8*, i8** %8, align 8
  ret i8* %64
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
