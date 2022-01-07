; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libutil/extr_login_cap.c_arrayize.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libutil/extr_login_cap.c_arrayize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** (i8*, i8*, i32*)* @arrayize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @arrayize(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  store i8** null, i8*** %10, align 8
  store i32 0, i32* %7, align 4
  %13 = load i8*, i8** %4, align 8
  store i8* %13, i8** %9, align 8
  br label %14

14:                                               ; preds = %33, %3
  %15 = load i8*, i8** %9, align 8
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %14
  %19 = load i8*, i8** %9, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @strcspn(i8* %19, i8* %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i8*, i8** %9, align 8
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  store i8* %25, i8** %9, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = load i8, i8* %26, align 1
  %28 = icmp ne i8 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %18
  %30 = load i8*, i8** %9, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %9, align 8
  br label %32

32:                                               ; preds = %29, %18
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %7, align 4
  br label %14

36:                                               ; preds = %14
  %37 = load i8*, i8** %4, align 8
  %38 = call i8* @allocstr(i8* %37)
  store i8* %38, i8** %8, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %82

40:                                               ; preds = %36
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  %43 = call i8** @allocarray(i32 %42)
  store i8** %43, i8*** %10, align 8
  %44 = icmp eq i8** %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load i8*, i8** %4, align 8
  %47 = ptrtoint i8* %46 to i64
  %48 = inttoptr i64 %47 to i8*
  %49 = call i32 @free(i8* %48)
  br label %81

50:                                               ; preds = %40
  store i32 0, i32* %7, align 4
  br label %51

51:                                               ; preds = %75, %50
  %52 = load i8*, i8** %8, align 8
  %53 = load i8, i8* %52, align 1
  %54 = icmp ne i8 %53, 0
  br i1 %54, label %55, label %76

55:                                               ; preds = %51
  %56 = load i8*, i8** %8, align 8
  %57 = load i8*, i8** %5, align 8
  %58 = call i32 @strcspn(i8* %56, i8* %57)
  store i32 %58, i32* %12, align 4
  %59 = load i8*, i8** %8, align 8
  %60 = load i8**, i8*** %10, align 8
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i8*, i8** %60, i64 %63
  store i8* %59, i8** %64, align 8
  %65 = load i32, i32* %12, align 4
  %66 = load i8*, i8** %8, align 8
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  store i8* %68, i8** %8, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = load i8, i8* %69, align 1
  %71 = icmp ne i8 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %55
  %73 = load i8*, i8** %8, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %8, align 8
  store i8 0, i8* %73, align 1
  br label %75

75:                                               ; preds = %72, %55
  br label %51

76:                                               ; preds = %51
  %77 = load i8**, i8*** %10, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8*, i8** %77, i64 %79
  store i8* null, i8** %80, align 8
  br label %81

81:                                               ; preds = %76, %45
  br label %82

82:                                               ; preds = %81, %36
  %83 = load i32*, i32** %6, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load i32, i32* %7, align 4
  %87 = load i32*, i32** %6, align 8
  store i32 %86, i32* %87, align 4
  br label %88

88:                                               ; preds = %85, %82
  %89 = load i8**, i8*** %10, align 8
  ret i8** %89
}

declare dso_local i32 @strcspn(i8*, i8*) #1

declare dso_local i8* @allocstr(i8*) #1

declare dso_local i8** @allocarray(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
