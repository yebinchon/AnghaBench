; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libiconv_modules/ISO2022/extr_citrus_iso2022.c_seqmatch.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libiconv_modules/ISO2022/extr_citrus_iso2022.c_seqmatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seqtable = type { i32*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"@AB\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"()*+\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c",-./\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.seqtable*)* @seqmatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seqmatch(i8* noalias %0, i64 %1, %struct.seqtable* noalias %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.seqtable*, align 8
  %7 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.seqtable* %2, %struct.seqtable** %6, align 8
  %8 = load %struct.seqtable*, %struct.seqtable** %6, align 8
  %9 = getelementptr inbounds %struct.seqtable, %struct.seqtable* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %7, align 8
  br label %11

11:                                               ; preds = %100, %3
  %12 = load i32*, i32** %7, align 8
  %13 = load %struct.seqtable*, %struct.seqtable** %6, align 8
  %14 = getelementptr inbounds %struct.seqtable, %struct.seqtable* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = ptrtoint i32* %12 to i64
  %17 = ptrtoint i32* %15 to i64
  %18 = sub i64 %16, %17
  %19 = sdiv exact i64 %18, 4
  %20 = load i64, i64* %5, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %11
  %23 = load i32*, i32** %7, align 8
  %24 = load %struct.seqtable*, %struct.seqtable** %6, align 8
  %25 = getelementptr inbounds %struct.seqtable, %struct.seqtable* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = ptrtoint i32* %23 to i64
  %28 = ptrtoint i32* %26 to i64
  %29 = sub i64 %27, %28
  %30 = sdiv exact i64 %29, 4
  %31 = load %struct.seqtable*, %struct.seqtable** %6, align 8
  %32 = getelementptr inbounds %struct.seqtable, %struct.seqtable* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = icmp slt i64 %30, %34
  br label %36

36:                                               ; preds = %22, %11
  %37 = phi i1 [ false, %11 ], [ %35, %22 ]
  br i1 %37, label %38, label %105

38:                                               ; preds = %36
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %91 [
    i32 130, label %41
    i32 128, label %48
    i32 129, label %60
    i32 132, label %67
    i32 131, label %79
  ]

41:                                               ; preds = %38
  %42 = load i8*, i8** %4, align 8
  %43 = load i8, i8* %42, align 1
  %44 = call i32 @isecma(i8 signext %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  br label %106

47:                                               ; preds = %41
  br label %100

48:                                               ; preds = %38
  %49 = load i8*, i8** %4, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load i8*, i8** %4, align 8
  %55 = load i8, i8* %54, align 1
  %56 = call i32 @strchr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8 signext %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %100

59:                                               ; preds = %53, %48
  br label %106

60:                                               ; preds = %38
  %61 = load i8*, i8** %4, align 8
  %62 = load i8, i8* %61, align 1
  %63 = call i32 @isinterm(i8 signext %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %60
  br label %106

66:                                               ; preds = %60
  br label %100

67:                                               ; preds = %38
  %68 = load i8*, i8** %4, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load i8*, i8** %4, align 8
  %74 = load i8, i8* %73, align 1
  %75 = call i32 @strchr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8 signext %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %100

78:                                               ; preds = %72, %67
  br label %106

79:                                               ; preds = %38
  %80 = load i8*, i8** %4, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load i8*, i8** %4, align 8
  %86 = load i8, i8* %85, align 1
  %87 = call i32 @strchr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8 signext %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  br label %100

90:                                               ; preds = %84, %79
  br label %106

91:                                               ; preds = %38
  %92 = load i8*, i8** %4, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = load i32*, i32** %7, align 8
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %94, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %91
  br label %106

99:                                               ; preds = %91
  br label %100

100:                                              ; preds = %99, %89, %77, %66, %58, %47
  %101 = load i32*, i32** %7, align 8
  %102 = getelementptr inbounds i32, i32* %101, i32 1
  store i32* %102, i32** %7, align 8
  %103 = load i8*, i8** %4, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %4, align 8
  br label %11

105:                                              ; preds = %36
  br label %106

106:                                              ; preds = %105, %98, %90, %78, %65, %59, %46
  %107 = load i32*, i32** %7, align 8
  %108 = load %struct.seqtable*, %struct.seqtable** %6, align 8
  %109 = getelementptr inbounds %struct.seqtable, %struct.seqtable* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = ptrtoint i32* %107 to i64
  %112 = ptrtoint i32* %110 to i64
  %113 = sub i64 %111, %112
  %114 = sdiv exact i64 %113, 4
  %115 = trunc i64 %114 to i32
  ret i32 %115
}

declare dso_local i32 @isecma(i8 signext) #1

declare dso_local i32 @strchr(i8*, i8 signext) #1

declare dso_local i32 @isinterm(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
