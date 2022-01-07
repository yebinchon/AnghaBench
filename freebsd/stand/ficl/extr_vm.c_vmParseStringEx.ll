; ModuleID = '/home/carl/AnghaBench/freebsd/stand/ficl/extr_vm.c_vmParseStringEx.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/ficl/extr_vm.c_vmParseStringEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmParseStringEx(i32* %0, i8 signext %1, i8 signext %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  store i32* %0, i32** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8 %2, i8* %6, align 1
  %11 = load i32*, i32** %4, align 8
  %12 = call i8* @vmGetInBuf(i32* %11)
  store i8* %12, i8** %8, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i8* @vmGetInBufEnd(i32* %13)
  store i8* %14, i8** %9, align 8
  %15 = load i8, i8* %6, align 1
  %16 = icmp ne i8 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %3
  br label %18

18:                                               ; preds = %31, %17
  %19 = load i8*, i8** %8, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = icmp ne i8* %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = load i8*, i8** %8, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = load i8, i8* %5, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %25, %27
  br label %29

29:                                               ; preds = %22, %18
  %30 = phi i1 [ false, %18 ], [ %28, %22 ]
  br i1 %30, label %31, label %34

31:                                               ; preds = %29
  %32 = load i8*, i8** %8, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %8, align 8
  br label %18

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %34, %3
  %36 = load i32, i32* %7, align 4
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 @SI_SETPTR(i32 %36, i8* %37)
  %39 = load i8*, i8** %8, align 8
  %40 = load i8, i8* %39, align 1
  store i8 %40, i8* %10, align 1
  br label %41

41:                                               ; preds = %62, %35
  %42 = load i8*, i8** %8, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = icmp ne i8* %42, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %41
  %46 = load i8, i8* %10, align 1
  %47 = sext i8 %46 to i32
  %48 = load i8, i8* %5, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %47, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %45
  %52 = load i8, i8* %10, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 13
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i8, i8* %10, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 10
  br label %59

59:                                               ; preds = %55, %51, %45, %41
  %60 = phi i1 [ false, %51 ], [ false, %45 ], [ false, %41 ], [ %58, %55 ]
  br i1 %60, label %61, label %66

61:                                               ; preds = %59
  br label %62

62:                                               ; preds = %61
  %63 = load i8*, i8** %8, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %8, align 8
  %65 = load i8, i8* %64, align 1
  store i8 %65, i8* %10, align 1
  br label %41

66:                                               ; preds = %59
  %67 = load i32, i32* %7, align 4
  %68 = load i8*, i8** %8, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @SI_PTR(i32 %69)
  %71 = sext i32 %70 to i64
  %72 = sub i64 0, %71
  %73 = getelementptr inbounds i8, i8* %68, i64 %72
  %74 = call i32 @SI_SETLEN(i32 %67, i8* %73)
  %75 = load i8*, i8** %8, align 8
  %76 = load i8*, i8** %9, align 8
  %77 = icmp ne i8* %75, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %66
  %79 = load i8*, i8** %8, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = load i8, i8* %5, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %81, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %78
  %86 = load i8*, i8** %8, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %8, align 8
  br label %88

88:                                               ; preds = %85, %78, %66
  %89 = load i32*, i32** %4, align 8
  %90 = load i8*, i8** %8, align 8
  %91 = call i32 @vmUpdateTib(i32* %89, i8* %90)
  %92 = load i32, i32* %7, align 4
  ret i32 %92
}

declare dso_local i8* @vmGetInBuf(i32*) #1

declare dso_local i8* @vmGetInBufEnd(i32*) #1

declare dso_local i32 @SI_SETPTR(i32, i8*) #1

declare dso_local i32 @SI_SETLEN(i32, i8*) #1

declare dso_local i32 @SI_PTR(i32) #1

declare dso_local i32 @vmUpdateTib(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
