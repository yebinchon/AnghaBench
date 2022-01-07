; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.set.c_getn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.set.c_getn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERR_NAME = common dso_local global i32 0, align 4
@ERR_BADNUM = common dso_local global i32 0, align 4
@STRparseoctal = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getn(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @ERR_NAME, align 4
  %10 = load i32, i32* @ERR_BADNUM, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @stderror(i32 %11)
  br label %13

13:                                               ; preds = %8, %1
  store i32 0, i32* %4, align 4
  %14 = load i8*, i8** %2, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 43
  br i1 %18, label %19, label %28

19:                                               ; preds = %13
  %20 = load i8*, i8** %2, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i8*, i8** %2, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %2, align 8
  br label %28

28:                                               ; preds = %25, %19, %13
  %29 = load i8*, i8** %2, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 45
  br i1 %32, label %33, label %48

33:                                               ; preds = %28
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  %36 = load i8*, i8** %2, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %2, align 8
  %38 = load i8*, i8** %2, align 8
  %39 = load i8, i8* %38, align 1
  %40 = call i64 @Isdigit(i8 signext %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %33
  %43 = load i32, i32* @ERR_NAME, align 4
  %44 = load i32, i32* @ERR_BADNUM, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @stderror(i32 %45)
  br label %47

47:                                               ; preds = %42, %33
  br label %48

48:                                               ; preds = %47, %28
  %49 = load i8*, i8** %2, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 48
  br i1 %53, label %54, label %65

54:                                               ; preds = %48
  %55 = load i8*, i8** %2, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %54
  %61 = load i32, i32* @STRparseoctal, align 4
  %62 = call i64 @is_set(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  store i32 8, i32* %5, align 4
  br label %66

65:                                               ; preds = %60, %54, %48
  store i32 10, i32* %5, align 4
  br label %66

66:                                               ; preds = %65, %64
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %85, %66
  %68 = load i8*, i8** %2, align 8
  %69 = load i8, i8* %68, align 1
  %70 = call i64 @Isdigit(i8 signext %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %95

72:                                               ; preds = %67
  %73 = load i32, i32* %5, align 4
  %74 = icmp eq i32 %73, 8
  br i1 %74, label %75, label %85

75:                                               ; preds = %72
  %76 = load i8*, i8** %2, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp sge i32 %78, 56
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = load i32, i32* @ERR_NAME, align 4
  %82 = load i32, i32* @ERR_BADNUM, align 4
  %83 = or i32 %81, %82
  %84 = call i32 @stderror(i32 %83)
  br label %85

85:                                               ; preds = %80, %75, %72
  %86 = load i32, i32* %3, align 4
  %87 = load i32, i32* %5, align 4
  %88 = mul nsw i32 %86, %87
  %89 = load i8*, i8** %2, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %2, align 8
  %91 = load i8, i8* %89, align 1
  %92 = sext i8 %91 to i32
  %93 = add nsw i32 %88, %92
  %94 = sub nsw i32 %93, 48
  store i32 %94, i32* %3, align 4
  br label %67

95:                                               ; preds = %67
  %96 = load i8*, i8** %2, align 8
  %97 = load i8, i8* %96, align 1
  %98 = icmp ne i8 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %95
  %100 = load i32, i32* @ERR_NAME, align 4
  %101 = load i32, i32* @ERR_BADNUM, align 4
  %102 = or i32 %100, %101
  %103 = call i32 @stderror(i32 %102)
  br label %104

104:                                              ; preds = %99, %95
  %105 = load i32, i32* %4, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load i32, i32* %3, align 4
  %109 = sub nsw i32 0, %108
  br label %112

110:                                              ; preds = %104
  %111 = load i32, i32* %3, align 4
  br label %112

112:                                              ; preds = %110, %107
  %113 = phi i32 [ %109, %107 ], [ %111, %110 ]
  ret i32 %113
}

declare dso_local i32 @stderror(i32) #1

declare dso_local i64 @Isdigit(i8 signext) #1

declare dso_local i64 @is_set(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
