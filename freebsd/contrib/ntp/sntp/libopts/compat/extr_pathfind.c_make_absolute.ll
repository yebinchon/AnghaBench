; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/compat/extr_pathfind.c_make_absolute.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/compat/extr_pathfind.c_make_absolute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*)* @make_absolute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @make_absolute(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load i8*, i8** %4, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 47
  br i1 %14, label %15, label %22

15:                                               ; preds = %10, %2
  %16 = load i8*, i8** %4, align 8
  %17 = call i8* @strdup(i8* %16)
  store i8* %17, i8** %6, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i8* null, i8** %3, align 8
  br label %92

21:                                               ; preds = %15
  br label %90

22:                                               ; preds = %10
  %23 = load i8*, i8** %5, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %68

25:                                               ; preds = %22
  %26 = load i8*, i8** %5, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %68

31:                                               ; preds = %25
  %32 = load i8*, i8** %5, align 8
  %33 = call i64 @strlen(i8* %32)
  %34 = add nsw i64 2, %33
  %35 = load i8*, i8** %4, align 8
  %36 = call i64 @strlen(i8* %35)
  %37 = add nsw i64 %34, %36
  %38 = call i8* @malloc(i64 %37)
  store i8* %38, i8** %6, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  store i8* null, i8** %3, align 8
  br label %92

42:                                               ; preds = %31
  %43 = load i8*, i8** %6, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 @strcpy(i8* %43, i8* %44)
  %46 = load i8*, i8** %6, align 8
  %47 = call i64 @strlen(i8* %46)
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %7, align 4
  %49 = load i8*, i8** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sub nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %49, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %55, 47
  br i1 %56, label %57, label %67

57:                                               ; preds = %42
  %58 = load i8*, i8** %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i8, i8* %58, i64 %61
  store i8 47, i8* %62, align 1
  %63 = load i8*, i8** %6, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  store i8 0, i8* %66, align 1
  br label %67

67:                                               ; preds = %57, %42
  br label %83

68:                                               ; preds = %25, %22
  %69 = load i8*, i8** %4, align 8
  %70 = call i64 @strlen(i8* %69)
  %71 = add nsw i64 3, %70
  %72 = call i8* @malloc(i64 %71)
  store i8* %72, i8** %6, align 8
  %73 = load i8*, i8** %6, align 8
  %74 = icmp eq i8* %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  store i8* null, i8** %3, align 8
  br label %92

76:                                               ; preds = %68
  %77 = load i8*, i8** %6, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 0
  store i8 46, i8* %78, align 1
  %79 = load i8*, i8** %6, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 1
  store i8 47, i8* %80, align 1
  %81 = load i8*, i8** %6, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 2
  store i8 0, i8* %82, align 1
  store i32 2, i32* %7, align 4
  br label %83

83:                                               ; preds = %76, %67
  %84 = load i8*, i8** %6, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = load i8*, i8** %4, align 8
  %89 = call i32 @strcpy(i8* %87, i8* %88)
  br label %90

90:                                               ; preds = %83, %21
  %91 = load i8*, i8** %6, align 8
  store i8* %91, i8** %3, align 8
  br label %92

92:                                               ; preds = %90, %75, %41, %20
  %93 = load i8*, i8** %3, align 8
  ret i8* %93
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
