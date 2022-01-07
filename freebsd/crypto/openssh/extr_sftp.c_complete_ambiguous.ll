; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sftp.c_complete_ambiguous.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sftp.c_complete_ambiguous.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8**, i64)* @complete_ambiguous to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @complete_ambiguous(i8* %0, i8** %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %79

15:                                               ; preds = %3
  %16 = load i64, i64* %7, align 8
  %17 = icmp ugt i64 %16, 0
  br i1 %17, label %18, label %76

18:                                               ; preds = %15
  %19 = load i8**, i8*** %6, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i64 @strlen(i8* %21)
  store i64 %22, i64* %9, align 8
  store i64 1, i64* %8, align 8
  br label %23

23:                                               ; preds = %58, %18
  %24 = load i8**, i8*** %6, align 8
  %25 = load i64, i64* %8, align 8
  %26 = getelementptr inbounds i8*, i8** %24, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %61

29:                                               ; preds = %23
  store i64 0, i64* %10, align 8
  br label %30

30:                                               ; preds = %53, %29
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* %9, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %56

34:                                               ; preds = %30
  %35 = load i8**, i8*** %6, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 0
  %37 = load i8*, i8** %36, align 8
  %38 = load i64, i64* %10, align 8
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = load i8**, i8*** %6, align 8
  %43 = load i64, i64* %8, align 8
  %44 = getelementptr inbounds i8*, i8** %42, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = load i64, i64* %10, align 8
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %41, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %34
  br label %56

52:                                               ; preds = %34
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* %10, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %10, align 8
  br label %30

56:                                               ; preds = %51, %30
  %57 = load i64, i64* %10, align 8
  store i64 %57, i64* %9, align 8
  br label %58

58:                                               ; preds = %56
  %59 = load i64, i64* %8, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %8, align 8
  br label %23

61:                                               ; preds = %23
  %62 = load i64, i64* %9, align 8
  %63 = load i8*, i8** %5, align 8
  %64 = call i64 @strlen(i8* %63)
  %65 = icmp ugt i64 %62, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %61
  %67 = load i8**, i8*** %6, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 0
  %69 = load i8*, i8** %68, align 8
  %70 = call i8* @xstrdup(i8* %69)
  store i8* %70, i8** %11, align 8
  %71 = load i8*, i8** %11, align 8
  %72 = load i64, i64* %9, align 8
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  store i8 0, i8* %73, align 1
  %74 = load i8*, i8** %11, align 8
  store i8* %74, i8** %4, align 8
  br label %79

75:                                               ; preds = %61
  br label %76

76:                                               ; preds = %75, %15
  %77 = load i8*, i8** %5, align 8
  %78 = call i8* @xstrdup(i8* %77)
  store i8* %78, i8** %4, align 8
  br label %79

79:                                               ; preds = %76, %66, %14
  %80 = load i8*, i8** %4, align 8
  ret i8* %80
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @xstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
