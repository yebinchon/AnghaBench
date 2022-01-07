; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_cmds.c_docase.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_cmds.c_docase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64, i8*)* @docase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @docase(i8* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 1, i32* %8, align 4
  store i64 0, i64* %7, align 8
  br label %9

9:                                                ; preds = %39, %3
  %10 = load i8*, i8** %6, align 8
  %11 = load i64, i64* %7, align 8
  %12 = getelementptr inbounds i8, i8* %10, i64 %11
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %9
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %5, align 8
  %19 = sub i64 %18, 1
  %20 = icmp ult i64 %17, %19
  br label %21

21:                                               ; preds = %16, %9
  %22 = phi i1 [ false, %9 ], [ %20, %16 ]
  br i1 %22, label %23, label %42

23:                                               ; preds = %21
  %24 = load i8*, i8** %6, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = load i8*, i8** %4, align 8
  %29 = load i64, i64* %7, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  store i8 %27, i8* %30, align 1
  %31 = load i8*, i8** %4, align 8
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = call i64 @islower(i8 zeroext %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %23
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %37, %23
  br label %39

39:                                               ; preds = %38
  %40 = load i64, i64* %7, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %7, align 8
  br label %9

42:                                               ; preds = %21
  %43 = load i8*, i8** %4, align 8
  %44 = load i64, i64* %7, align 8
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  store i8 0, i8* %45, align 1
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %77

48:                                               ; preds = %42
  store i64 0, i64* %7, align 8
  br label %49

49:                                               ; preds = %73, %48
  %50 = load i8*, i8** %4, align 8
  %51 = load i64, i64* %7, align 8
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %76

56:                                               ; preds = %49
  %57 = load i8*, i8** %4, align 8
  %58 = load i64, i64* %7, align 8
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = call i64 @isupper(i8 zeroext %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %56
  %64 = load i8*, i8** %4, align 8
  %65 = load i64, i64* %7, align 8
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = call signext i8 @tolower(i8 zeroext %67)
  %69 = load i8*, i8** %4, align 8
  %70 = load i64, i64* %7, align 8
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  store i8 %68, i8* %71, align 1
  br label %72

72:                                               ; preds = %63, %56
  br label %73

73:                                               ; preds = %72
  %74 = load i64, i64* %7, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %7, align 8
  br label %49

76:                                               ; preds = %49
  br label %77

77:                                               ; preds = %76, %42
  %78 = load i8*, i8** %4, align 8
  ret i8* %78
}

declare dso_local i64 @islower(i8 zeroext) #1

declare dso_local i64 @isupper(i8 zeroext) #1

declare dso_local signext i8 @tolower(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
