; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/nameser/extr_ns_samedomain.c_ns_makecanon.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/nameser/extr_ns_samedomain.c_ns_makecanon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EMSGSIZE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ns_makecanon(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i64 @strlen(i8* %9)
  store i64 %10, i64* %8, align 8
  %11 = load i64, i64* %8, align 8
  %12 = add i64 %11, 2
  %13 = load i64, i64* %7, align 8
  %14 = icmp ugt i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @EMSGSIZE, align 4
  store i32 %16, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %71

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @strcpy(i8* %18, i8* %19)
  br label %21

21:                                               ; preds = %62, %17
  %22 = load i64, i64* %8, align 8
  %23 = icmp uge i64 %22, 1
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = load i8*, i8** %6, align 8
  %26 = load i64, i64* %8, align 8
  %27 = sub i64 %26, 1
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 46
  br label %32

32:                                               ; preds = %24, %21
  %33 = phi i1 [ false, %21 ], [ %31, %24 ]
  br i1 %33, label %34, label %63

34:                                               ; preds = %32
  %35 = load i64, i64* %8, align 8
  %36 = icmp uge i64 %35, 2
  br i1 %36, label %37, label %57

37:                                               ; preds = %34
  %38 = load i8*, i8** %6, align 8
  %39 = load i64, i64* %8, align 8
  %40 = sub i64 %39, 2
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 92
  br i1 %44, label %45, label %57

45:                                               ; preds = %37
  %46 = load i64, i64* %8, align 8
  %47 = icmp ult i64 %46, 3
  br i1 %47, label %56, label %48

48:                                               ; preds = %45
  %49 = load i8*, i8** %6, align 8
  %50 = load i64, i64* %8, align 8
  %51 = sub i64 %50, 3
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 92
  br i1 %55, label %56, label %57

56:                                               ; preds = %48, %45
  br label %63

57:                                               ; preds = %48, %37, %34
  %58 = load i8*, i8** %6, align 8
  %59 = load i64, i64* %8, align 8
  %60 = add i64 %59, -1
  store i64 %60, i64* %8, align 8
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  store i8 0, i8* %61, align 1
  br label %62

62:                                               ; preds = %57
  br label %21

63:                                               ; preds = %56, %32
  %64 = load i8*, i8** %6, align 8
  %65 = load i64, i64* %8, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %8, align 8
  %67 = getelementptr inbounds i8, i8* %64, i64 %65
  store i8 46, i8* %67, align 1
  %68 = load i8*, i8** %6, align 8
  %69 = load i64, i64* %8, align 8
  %70 = getelementptr inbounds i8, i8* %68, i64 %69
  store i8 0, i8* %70, align 1
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %63, %15
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
