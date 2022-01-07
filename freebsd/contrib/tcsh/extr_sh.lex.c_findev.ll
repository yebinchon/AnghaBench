; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.lex.c_findev.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.lex.c_findev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.Hist* }
%struct.Hist = type { i64, %struct.TYPE_3__, %struct.Hist* }
%struct.TYPE_3__ = type { %struct.wordent* }
%struct.wordent = type { i8*, %struct.wordent* }

@Histlist = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@quesarg = common dso_local global i32 0, align 4
@ERR_NOEVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.Hist* (i8*, i32)* @findev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Hist* @findev(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.Hist*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.Hist*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.wordent*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.Hist*, %struct.Hist** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Histlist, i32 0, i32 0), align 8
  store %struct.Hist* %12, %struct.Hist** %6, align 8
  br label %13

13:                                               ; preds = %110, %2
  %14 = load %struct.Hist*, %struct.Hist** %6, align 8
  %15 = icmp ne %struct.Hist* %14, null
  br i1 %15, label %16, label %114

16:                                               ; preds = %13
  %17 = load %struct.Hist*, %struct.Hist** %6, align 8
  %18 = getelementptr inbounds %struct.Hist, %struct.Hist* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.wordent*, %struct.wordent** %19, align 8
  store %struct.wordent* %20, %struct.wordent** %10, align 8
  store i32 0, i32* %11, align 4
  %21 = load %struct.Hist*, %struct.Hist** %6, align 8
  %22 = getelementptr inbounds %struct.Hist, %struct.Hist* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  br label %110

26:                                               ; preds = %16
  %27 = load %struct.wordent*, %struct.wordent** %10, align 8
  %28 = getelementptr inbounds %struct.wordent, %struct.wordent* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 10
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %110

35:                                               ; preds = %26
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %61, label %38

38:                                               ; preds = %35
  %39 = load i8*, i8** %4, align 8
  store i8* %39, i8** %8, align 8
  %40 = load %struct.wordent*, %struct.wordent** %10, align 8
  %41 = getelementptr inbounds %struct.wordent, %struct.wordent* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %9, align 8
  br label %43

43:                                               ; preds = %50, %38
  %44 = load i8*, i8** %8, align 8
  %45 = load i8, i8* %44, align 1
  %46 = icmp ne i8 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = load %struct.Hist*, %struct.Hist** %6, align 8
  store %struct.Hist* %48, %struct.Hist** %3, align 8
  br label %119

49:                                               ; preds = %43
  br label %50

50:                                               ; preds = %49
  %51 = load i8*, i8** %8, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %8, align 8
  %53 = load i8, i8* %51, align 1
  %54 = sext i8 %53 to i32
  %55 = load i8*, i8** %9, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %9, align 8
  %57 = load i8, i8* %55, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %54, %58
  br i1 %59, label %43, label %60

60:                                               ; preds = %50
  br label %110

61:                                               ; preds = %35
  br label %62

62:                                               ; preds = %101, %61
  %63 = load %struct.wordent*, %struct.wordent** %10, align 8
  %64 = getelementptr inbounds %struct.wordent, %struct.wordent* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  store i8* %65, i8** %7, align 8
  br label %66

66:                                               ; preds = %92, %62
  %67 = load i8*, i8** %7, align 8
  %68 = load i8, i8* %67, align 1
  %69 = icmp ne i8 %68, 0
  br i1 %69, label %70, label %95

70:                                               ; preds = %66
  %71 = load i8*, i8** %4, align 8
  store i8* %71, i8** %8, align 8
  %72 = load i8*, i8** %7, align 8
  store i8* %72, i8** %9, align 8
  br label %73

73:                                               ; preds = %81, %70
  %74 = load i8*, i8** %8, align 8
  %75 = load i8, i8* %74, align 1
  %76 = icmp ne i8 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %73
  %78 = load i32, i32* %11, align 4
  store i32 %78, i32* @quesarg, align 4
  %79 = load %struct.Hist*, %struct.Hist** %6, align 8
  store %struct.Hist* %79, %struct.Hist** %3, align 8
  br label %119

80:                                               ; preds = %73
  br label %81

81:                                               ; preds = %80
  %82 = load i8*, i8** %8, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %8, align 8
  %84 = load i8, i8* %82, align 1
  %85 = sext i8 %84 to i32
  %86 = load i8*, i8** %9, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %9, align 8
  %88 = load i8, i8* %86, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %85, %89
  br i1 %90, label %73, label %91

91:                                               ; preds = %81
  br label %92

92:                                               ; preds = %91
  %93 = load i8*, i8** %7, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %7, align 8
  br label %66

95:                                               ; preds = %66
  %96 = load %struct.wordent*, %struct.wordent** %10, align 8
  %97 = getelementptr inbounds %struct.wordent, %struct.wordent* %96, i32 0, i32 1
  %98 = load %struct.wordent*, %struct.wordent** %97, align 8
  store %struct.wordent* %98, %struct.wordent** %10, align 8
  %99 = load i32, i32* %11, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %11, align 4
  br label %101

101:                                              ; preds = %95
  %102 = load %struct.wordent*, %struct.wordent** %10, align 8
  %103 = getelementptr inbounds %struct.wordent, %struct.wordent* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 0
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp ne i32 %107, 10
  br i1 %108, label %62, label %109

109:                                              ; preds = %101
  br label %110

110:                                              ; preds = %109, %60, %34, %25
  %111 = load %struct.Hist*, %struct.Hist** %6, align 8
  %112 = getelementptr inbounds %struct.Hist, %struct.Hist* %111, i32 0, i32 2
  %113 = load %struct.Hist*, %struct.Hist** %112, align 8
  store %struct.Hist* %113, %struct.Hist** %6, align 8
  br label %13

114:                                              ; preds = %13
  %115 = load i32, i32* @ERR_NOEVENT, align 4
  %116 = load i8*, i8** %4, align 8
  %117 = call i32 @short2str(i8* %116)
  %118 = call i32 @seterror(i32 %115, i32 %117)
  store %struct.Hist* null, %struct.Hist** %3, align 8
  br label %119

119:                                              ; preds = %114, %77, %47
  %120 = load %struct.Hist*, %struct.Hist** %3, align 8
  ret %struct.Hist* %120
}

declare dso_local i32 @seterror(i32, i32) #1

declare dso_local i32 @short2str(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
