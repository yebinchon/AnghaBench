; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.glob.c_globequal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.glob.c_globequal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@STRowd = common dso_local global i32 0, align 4
@dcwd = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @globequal(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 1
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 45
  br i1 %12, label %13, label %57

13:                                               ; preds = %1
  %14 = load i8*, i8** %3, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 2
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = load i8*, i8** %3, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 2
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 47
  br i1 %24, label %25, label %57

25:                                               ; preds = %19, %13
  %26 = load i32, i32* @STRowd, align 4
  %27 = call i8* @varval(i32 %26)
  store i8* %27, i8** %7, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %54

30:                                               ; preds = %25
  %31 = load i8*, i8** %7, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %54

35:                                               ; preds = %30
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dcwd, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %54, label %42

42:                                               ; preds = %35
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dcwd, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %42
  %50 = load i8*, i8** %7, align 8
  %51 = load i8*, i8** %3, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 2
  %53 = call i8* @Strspl(i8* %50, i8* %52)
  store i8* %53, i8** %2, align 8
  br label %113

54:                                               ; preds = %42, %35, %30, %25
  store i32 -1, i32* %4, align 4
  %55 = load i8*, i8** %3, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 2
  store i8* %56, i8** %6, align 8
  br label %103

57:                                               ; preds = %19, %1
  %58 = load i8*, i8** %3, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  %60 = load i8, i8* %59, align 1
  %61 = call i64 @Isdigit(i8 signext %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %100

63:                                               ; preds = %57
  %64 = load i8*, i8** %3, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = sub nsw i32 %67, 48
  store i32 %68, i32* %4, align 4
  %69 = load i8*, i8** %3, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 2
  store i8* %70, i8** %6, align 8
  br label %71

71:                                               ; preds = %84, %63
  %72 = load i8*, i8** %6, align 8
  %73 = load i8, i8* %72, align 1
  %74 = call i64 @Isdigit(i8 signext %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %71
  %77 = load i32, i32* %4, align 4
  %78 = mul nsw i32 %77, 10
  %79 = load i8*, i8** %6, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = sub nsw i32 %81, 48
  %83 = add nsw i32 %78, %82
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %76
  %85 = load i8*, i8** %6, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %6, align 8
  br label %71

87:                                               ; preds = %71
  %88 = load i8*, i8** %6, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %87
  %93 = load i8*, i8** %6, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp ne i32 %95, 47
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = load i8*, i8** %3, align 8
  store i8* %98, i8** %2, align 8
  br label %113

99:                                               ; preds = %92, %87
  br label %102

100:                                              ; preds = %57
  %101 = load i8*, i8** %3, align 8
  store i8* %101, i8** %2, align 8
  br label %113

102:                                              ; preds = %99
  br label %103

103:                                              ; preds = %102, %54
  %104 = load i32, i32* %4, align 4
  %105 = call i8* @getstakd(i32 %104)
  store i8* %105, i8** %5, align 8
  %106 = load i8*, i8** %5, align 8
  %107 = icmp eq i8* %106, null
  br i1 %107, label %108, label %109

108:                                              ; preds = %103
  store i8* null, i8** %2, align 8
  br label %113

109:                                              ; preds = %103
  %110 = load i8*, i8** %5, align 8
  %111 = load i8*, i8** %6, align 8
  %112 = call i8* @Strspl(i8* %110, i8* %111)
  store i8* %112, i8** %2, align 8
  br label %113

113:                                              ; preds = %109, %108, %100, %97, %49
  %114 = load i8*, i8** %2, align 8
  ret i8* %114
}

declare dso_local i8* @varval(i32) #1

declare dso_local i8* @Strspl(i8*, i8*) #1

declare dso_local i64 @Isdigit(i8 signext) #1

declare dso_local i8* @getstakd(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
