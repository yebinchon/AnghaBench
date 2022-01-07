; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/restore/extr_main.c_obsolete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/restore/extr_main.c_obsolete.c"
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
  br i1 %20, label %26, label %21

21:                                               ; preds = %2
  %22 = load i8*, i8** %7, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 45
  br i1 %25, label %26, label %27

26:                                               ; preds = %21, %2
  br label %151

27:                                               ; preds = %21
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 8
  %32 = trunc i64 %31 to i32
  %33 = call i8* @malloc(i32 %32)
  %34 = bitcast i8* %33 to i8**
  store i8** %34, i8*** %10, align 8
  %35 = load i8***, i8**** %4, align 8
  store i8** %34, i8*** %35, align 8
  %36 = icmp eq i8** %34, null
  br i1 %36, label %43, label %37

37:                                               ; preds = %27
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @strlen(i8* %38)
  %40 = add nsw i32 %39, 2
  %41 = call i8* @malloc(i32 %40)
  store i8* %41, i8** %9, align 8
  store i8* %41, i8** %11, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %37, %27
  %44 = call i32 @err(i32 1, i32* null)
  br label %45

45:                                               ; preds = %43, %37
  %46 = load i8**, i8*** %8, align 8
  %47 = load i8*, i8** %46, align 8
  %48 = load i8**, i8*** %10, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i32 1
  store i8** %49, i8*** %10, align 8
  store i8* %47, i8** %48, align 8
  %50 = load i8**, i8*** %8, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 2
  store i8** %51, i8*** %8, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sub nsw i32 %52, 2
  store i32 %53, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %54

54:                                               ; preds = %117, %45
  %55 = load i8*, i8** %7, align 8
  %56 = load i8, i8* %55, align 1
  %57 = icmp ne i8 %56, 0
  br i1 %57, label %58, label %120

58:                                               ; preds = %54
  %59 = load i8*, i8** %7, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  switch i32 %61, label %105 [
    i32 98, label %62
    i32 102, label %62
    i32 115, label %62
  ]

62:                                               ; preds = %58, %58, %58
  %63 = load i8**, i8*** %8, align 8
  %64 = load i8*, i8** %63, align 8
  %65 = icmp eq i8* %64, null
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = load i8*, i8** %7, align 8
  %68 = load i8, i8* %67, align 1
  %69 = call i32 @warnx(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8 signext %68)
  %70 = call i32 (...) @usage()
  br label %71

71:                                               ; preds = %66, %62
  %72 = load i8**, i8*** %8, align 8
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @strlen(i8* %73)
  %75 = add nsw i32 %74, 2
  %76 = add nsw i32 %75, 1
  %77 = call i8* @malloc(i32 %76)
  %78 = load i8**, i8*** %10, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i64 0
  store i8* %77, i8** %79, align 8
  %80 = icmp eq i8* %77, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %71
  %82 = call i32 @err(i32 1, i32* null)
  br label %83

83:                                               ; preds = %81, %71
  %84 = load i8**, i8*** %10, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i64 0
  %86 = load i8*, i8** %85, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 0
  store i8 45, i8* %87, align 1
  %88 = load i8*, i8** %7, align 8
  %89 = load i8, i8* %88, align 1
  %90 = load i8**, i8*** %10, align 8
  %91 = getelementptr inbounds i8*, i8** %90, i64 0
  %92 = load i8*, i8** %91, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 1
  store i8 %89, i8* %93, align 1
  %94 = load i8**, i8*** %10, align 8
  %95 = getelementptr inbounds i8*, i8** %94, i64 0
  %96 = load i8*, i8** %95, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 2
  %98 = load i8**, i8*** %8, align 8
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 @strcpy(i8* %97, i8* %99)
  %101 = load i8**, i8*** %8, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i32 1
  store i8** %102, i8*** %8, align 8
  %103 = load i8**, i8*** %10, align 8
  %104 = getelementptr inbounds i8*, i8** %103, i32 1
  store i8** %104, i8*** %10, align 8
  br label %116

105:                                              ; preds = %58
  %106 = load i32, i32* %6, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %105
  %109 = load i8*, i8** %11, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %11, align 8
  store i8 45, i8* %109, align 1
  store i32 1, i32* %6, align 4
  br label %111

111:                                              ; preds = %108, %105
  %112 = load i8*, i8** %7, align 8
  %113 = load i8, i8* %112, align 1
  %114 = load i8*, i8** %11, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %11, align 8
  store i8 %113, i8* %114, align 1
  br label %116

116:                                              ; preds = %111, %83
  br label %117

117:                                              ; preds = %116
  %118 = load i8*, i8** %7, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %7, align 8
  br label %54

120:                                              ; preds = %54
  %121 = load i32, i32* %6, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %120
  %124 = load i8*, i8** %11, align 8
  store i8 0, i8* %124, align 1
  %125 = load i8*, i8** %9, align 8
  %126 = load i8**, i8*** %10, align 8
  %127 = getelementptr inbounds i8*, i8** %126, i32 1
  store i8** %127, i8*** %10, align 8
  store i8* %125, i8** %126, align 8
  br label %131

128:                                              ; preds = %120
  %129 = load i8*, i8** %9, align 8
  %130 = call i32 @free(i8* %129)
  br label %131

131:                                              ; preds = %128, %123
  br label %132

132:                                              ; preds = %139, %131
  %133 = load i8**, i8*** %8, align 8
  %134 = getelementptr inbounds i8*, i8** %133, i32 1
  store i8** %134, i8*** %8, align 8
  %135 = load i8*, i8** %133, align 8
  %136 = load i8**, i8*** %10, align 8
  %137 = getelementptr inbounds i8*, i8** %136, i32 1
  store i8** %137, i8*** %10, align 8
  store i8* %135, i8** %136, align 8
  %138 = icmp ne i8* %135, null
  br i1 %138, label %139, label %140

139:                                              ; preds = %132
  br label %132

140:                                              ; preds = %132
  %141 = load i8**, i8*** %10, align 8
  %142 = load i8***, i8**** %4, align 8
  %143 = load i8**, i8*** %142, align 8
  %144 = ptrtoint i8** %141 to i64
  %145 = ptrtoint i8** %143 to i64
  %146 = sub i64 %144, %145
  %147 = sdiv exact i64 %146, 8
  %148 = sub nsw i64 %147, 1
  %149 = trunc i64 %148 to i32
  %150 = load i32*, i32** %3, align 8
  store i32 %149, i32* %150, align 4
  br label %151

151:                                              ; preds = %140, %26
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
