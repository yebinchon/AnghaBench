; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tw.parse.c_tw_suffix.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tw.parse.c_tw_suffix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Strbuf = type { i32 }
%struct.varent = type { i8** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i32, %struct.Strbuf*, i8*, i8*)* @tw_suffix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @tw_suffix(i32 %0, %struct.Strbuf* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca %struct.Strbuf*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.varent*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.Strbuf* %1, %struct.Strbuf** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = call i32 @strip(i8* %13)
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %93 [
    i32 135, label %16
    i32 130, label %17
    i32 141, label %83
    i32 143, label %84
    i32 139, label %84
    i32 145, label %92
    i32 129, label %92
    i32 128, label %92
    i32 134, label %92
    i32 140, label %92
    i32 131, label %92
    i32 144, label %92
    i32 136, label %92
    i32 133, label %92
    i32 137, label %92
    i32 142, label %92
    i32 132, label %92
    i32 138, label %92
  ]

16:                                               ; preds = %4
  store i8 47, i8* %5, align 1
  br label %94

17:                                               ; preds = %4
  %18 = load i8*, i8** %9, align 8
  %19 = call %struct.varent* @adrof(i8* %18)
  store %struct.varent* %19, %struct.varent** %12, align 8
  %20 = icmp ne %struct.varent* %19, null
  br i1 %20, label %21, label %47

21:                                               ; preds = %17
  %22 = load %struct.varent*, %struct.varent** %12, align 8
  %23 = getelementptr inbounds %struct.varent, %struct.varent* %22, i32 0, i32 0
  %24 = load i8**, i8*** %23, align 8
  %25 = icmp ne i8** %24, null
  br i1 %25, label %26, label %47

26:                                               ; preds = %21
  %27 = load %struct.varent*, %struct.varent** %12, align 8
  %28 = getelementptr inbounds %struct.varent, %struct.varent* %27, i32 0, i32 0
  %29 = load i8**, i8*** %28, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 0
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %10, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %45, label %33

33:                                               ; preds = %26
  %34 = load i8*, i8** %10, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %33
  %39 = load %struct.varent*, %struct.varent** %12, align 8
  %40 = getelementptr inbounds %struct.varent, %struct.varent* %39, i32 0, i32 0
  %41 = load i8**, i8*** %40, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 1
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %38, %33, %26
  store i8 32, i8* %5, align 1
  br label %94

46:                                               ; preds = %38
  br label %58

47:                                               ; preds = %21, %17
  %48 = load i8*, i8** %9, align 8
  %49 = call i8* @tgetenv(i8* %48)
  store i8* %49, i8** %10, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %56, label %51

51:                                               ; preds = %47
  %52 = load i8*, i8** %10, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51, %47
  store i8 32, i8* %5, align 1
  br label %94

57:                                               ; preds = %51
  br label %58

58:                                               ; preds = %57, %46
  %59 = load %struct.Strbuf*, %struct.Strbuf** %7, align 8
  %60 = getelementptr inbounds %struct.Strbuf, %struct.Strbuf* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @Strrchr(i32 %61, i8 signext 36)
  store i8* %62, i8** %11, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %75

64:                                               ; preds = %58
  %65 = load i8*, i8** %11, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 1
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 123
  br i1 %69, label %70, label %75

70:                                               ; preds = %64
  %71 = load i8*, i8** %11, align 8
  %72 = call i32* @Strchr(i8* %71, i8 signext 125)
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  store i8 125, i8* %5, align 1
  br label %94

75:                                               ; preds = %70, %64, %58
  %76 = load i8*, i8** %8, align 8
  %77 = load i8*, i8** %10, align 8
  %78 = call i32 @isadirectory(i8* %76, i8* %77)
  %79 = icmp ne i32 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i32 47, i32 32
  %82 = trunc i32 %81 to i8
  store i8 %82, i8* %5, align 1
  br label %94

83:                                               ; preds = %4
  store i8 47, i8* %5, align 1
  br label %94

84:                                               ; preds = %4, %4
  %85 = load i8*, i8** %8, align 8
  %86 = load i8*, i8** %9, align 8
  %87 = call i32 @isadirectory(i8* %85, i8* %86)
  %88 = icmp ne i32 %87, 0
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i32 47, i32 32
  %91 = trunc i32 %90 to i8
  store i8 %91, i8* %5, align 1
  br label %94

92:                                               ; preds = %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4
  store i8 32, i8* %5, align 1
  br label %94

93:                                               ; preds = %4
  store i8 0, i8* %5, align 1
  br label %94

94:                                               ; preds = %93, %92, %84, %83, %75, %74, %56, %45, %16
  %95 = load i8, i8* %5, align 1
  ret i8 %95
}

declare dso_local i32 @strip(i8*) #1

declare dso_local %struct.varent* @adrof(i8*) #1

declare dso_local i8* @tgetenv(i8*) #1

declare dso_local i8* @Strrchr(i32, i8 signext) #1

declare dso_local i32* @Strchr(i8*, i8 signext) #1

declare dso_local i32 @isadirectory(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
