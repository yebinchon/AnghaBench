; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dump/extr_main.c_obsolete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dump/extr_main.c_obsolete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [34 x i8] c"option requires an argument -- %c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8***)* @obsolete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @obsolete(i32* %0, i8*** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8***, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8*** %1, i8**** %4, align 8
  %12 = load i8***, i8**** %4, align 8
  %13 = load i8**, i8*** %12, align 8
  store i8** %13, i8*** %8, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = load i8**, i8*** %8, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 1
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %7, align 8
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %31, label %21

21:                                               ; preds = %2
  %22 = load i8*, i8** %7, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 45
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load i8*, i8** %7, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 47
  br i1 %30, label %31, label %32

31:                                               ; preds = %26, %21, %2
  br label %154

32:                                               ; preds = %26
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 8
  %37 = trunc i64 %36 to i32
  %38 = call i8* @malloc(i32 %37)
  %39 = bitcast i8* %38 to i8**
  store i8** %39, i8*** %10, align 8
  %40 = load i8***, i8**** %4, align 8
  store i8** %39, i8*** %40, align 8
  %41 = icmp eq i8** %39, null
  br i1 %41, label %48, label %42

42:                                               ; preds = %32
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 @strlen(i8* %43)
  %45 = add nsw i32 %44, 2
  %46 = call i8* @malloc(i32 %45)
  store i8* %46, i8** %9, align 8
  store i8* %46, i8** %11, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %42, %32
  %49 = call i32 @err(i32 1, i32* null)
  br label %50

50:                                               ; preds = %48, %42
  %51 = load i8**, i8*** %8, align 8
  %52 = load i8*, i8** %51, align 8
  %53 = load i8**, i8*** %10, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i32 1
  store i8** %54, i8*** %10, align 8
  store i8* %52, i8** %53, align 8
  %55 = load i8**, i8*** %8, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 2
  store i8** %56, i8*** %8, align 8
  store i32 0, i32* %6, align 4
  br label %57

57:                                               ; preds = %120, %50
  %58 = load i8*, i8** %7, align 8
  %59 = load i8, i8* %58, align 1
  %60 = icmp ne i8 %59, 0
  br i1 %60, label %61, label %123

61:                                               ; preds = %57
  %62 = load i8*, i8** %7, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  switch i32 %64, label %108 [
    i32 66, label %65
    i32 98, label %65
    i32 100, label %65
    i32 102, label %65
    i32 68, label %65
    i32 67, label %65
    i32 104, label %65
    i32 115, label %65
    i32 84, label %65
  ]

65:                                               ; preds = %61, %61, %61, %61, %61, %61, %61, %61, %61
  %66 = load i8**, i8*** %8, align 8
  %67 = load i8*, i8** %66, align 8
  %68 = icmp eq i8* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = load i8*, i8** %7, align 8
  %71 = load i8, i8* %70, align 1
  %72 = call i32 @warnx(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8 signext %71)
  %73 = call i32 (...) @usage()
  br label %74

74:                                               ; preds = %69, %65
  %75 = load i8**, i8*** %8, align 8
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @strlen(i8* %76)
  %78 = add nsw i32 %77, 2
  %79 = add nsw i32 %78, 1
  %80 = call i8* @malloc(i32 %79)
  %81 = load i8**, i8*** %10, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 0
  store i8* %80, i8** %82, align 8
  %83 = icmp eq i8* %80, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %74
  %85 = call i32 @err(i32 1, i32* null)
  br label %86

86:                                               ; preds = %84, %74
  %87 = load i8**, i8*** %10, align 8
  %88 = getelementptr inbounds i8*, i8** %87, i64 0
  %89 = load i8*, i8** %88, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 0
  store i8 45, i8* %90, align 1
  %91 = load i8*, i8** %7, align 8
  %92 = load i8, i8* %91, align 1
  %93 = load i8**, i8*** %10, align 8
  %94 = getelementptr inbounds i8*, i8** %93, i64 0
  %95 = load i8*, i8** %94, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 1
  store i8 %92, i8* %96, align 1
  %97 = load i8**, i8*** %10, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i64 0
  %99 = load i8*, i8** %98, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 2
  %101 = load i8**, i8*** %8, align 8
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @strcpy(i8* %100, i8* %102)
  %104 = load i8**, i8*** %8, align 8
  %105 = getelementptr inbounds i8*, i8** %104, i32 1
  store i8** %105, i8*** %8, align 8
  %106 = load i8**, i8*** %10, align 8
  %107 = getelementptr inbounds i8*, i8** %106, i32 1
  store i8** %107, i8*** %10, align 8
  br label %119

108:                                              ; preds = %61
  %109 = load i32, i32* %6, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %108
  %112 = load i8*, i8** %11, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %11, align 8
  store i8 45, i8* %112, align 1
  store i32 1, i32* %6, align 4
  br label %114

114:                                              ; preds = %111, %108
  %115 = load i8*, i8** %7, align 8
  %116 = load i8, i8* %115, align 1
  %117 = load i8*, i8** %11, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %11, align 8
  store i8 %116, i8* %117, align 1
  br label %119

119:                                              ; preds = %114, %86
  br label %120

120:                                              ; preds = %119
  %121 = load i8*, i8** %7, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %7, align 8
  br label %57

123:                                              ; preds = %57
  %124 = load i32, i32* %6, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %123
  %127 = load i8*, i8** %11, align 8
  store i8 0, i8* %127, align 1
  %128 = load i8*, i8** %9, align 8
  %129 = load i8**, i8*** %10, align 8
  %130 = getelementptr inbounds i8*, i8** %129, i32 1
  store i8** %130, i8*** %10, align 8
  store i8* %128, i8** %129, align 8
  br label %134

131:                                              ; preds = %123
  %132 = load i8*, i8** %9, align 8
  %133 = call i32 @free(i8* %132)
  br label %134

134:                                              ; preds = %131, %126
  br label %135

135:                                              ; preds = %142, %134
  %136 = load i8**, i8*** %8, align 8
  %137 = getelementptr inbounds i8*, i8** %136, i32 1
  store i8** %137, i8*** %8, align 8
  %138 = load i8*, i8** %136, align 8
  %139 = load i8**, i8*** %10, align 8
  %140 = getelementptr inbounds i8*, i8** %139, i32 1
  store i8** %140, i8*** %10, align 8
  store i8* %138, i8** %139, align 8
  %141 = icmp ne i8* %138, null
  br i1 %141, label %142, label %143

142:                                              ; preds = %135
  br label %135

143:                                              ; preds = %135
  %144 = load i8**, i8*** %10, align 8
  %145 = load i8***, i8**** %4, align 8
  %146 = load i8**, i8*** %145, align 8
  %147 = ptrtoint i8** %144 to i64
  %148 = ptrtoint i8** %146 to i64
  %149 = sub i64 %147, %148
  %150 = sdiv exact i64 %149, 8
  %151 = sub nsw i64 %150, 1
  %152 = trunc i64 %151 to i32
  %153 = load i32*, i32** %3, align 8
  store i32 %152, i32* %153, align 4
  br label %154

154:                                              ; preds = %143, %31
  ret void
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @err(i32, i32*) #1

declare dso_local i32 @warnx(i8*, i8 signext) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
