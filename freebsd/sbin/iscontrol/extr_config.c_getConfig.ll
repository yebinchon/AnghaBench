; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/iscontrol/extr_config.c_getConfig.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/iscontrol/extr_config.c_getConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8**, i32*)* @getConfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getConfig(i32* %0, i8* %1, i8** %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i32* %3, i32** %8, align 8
  %15 = load i8**, i8*** %7, align 8
  store i8** %15, i8*** %11, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @strlen(i8* %19)
  store i32 %20, i32* %13, align 4
  br label %22

21:                                               ; preds = %4
  store i32 0, i32* %13, align 4
  br label %22

22:                                               ; preds = %21, %18
  store i32 0, i32* %12, align 4
  br label %23

23:                                               ; preds = %126, %89, %81, %22
  %24 = load i32*, i32** %5, align 8
  %25 = call i8* @get_line(i32* %24)
  store i8* %25, i8** %9, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %127

27:                                               ; preds = %23
  br label %28

28:                                               ; preds = %34, %27
  %29 = load i8*, i8** %9, align 8
  %30 = load i8, i8* %29, align 1
  %31 = call i64 @isspace(i8 zeroext %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  br label %34

34:                                               ; preds = %33
  %35 = load i8*, i8** %9, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %9, align 8
  br label %28

37:                                               ; preds = %28
  %38 = load i32, i32* %12, align 4
  switch i32 %38, label %97 [
    i32 0, label %39
    i32 1, label %83
    i32 2, label %90
  ]

39:                                               ; preds = %37
  %40 = load i8*, i8** %9, align 8
  %41 = call i8* @strchr(i8* %40, i8 signext 123)
  store i8* %41, i8** %10, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %82

43:                                               ; preds = %39
  br label %44

44:                                               ; preds = %61, %43
  %45 = load i8*, i8** %10, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 -1
  store i8* %46, i8** %10, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = icmp ugt i8* %46, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %44
  %50 = load i8*, i8** %10, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load i8*, i8** %10, align 8
  %56 = load i8, i8* %55, align 1
  %57 = call i64 @isspace(i8 zeroext %56)
  %58 = icmp ne i64 %57, 0
  br label %59

59:                                               ; preds = %54, %49, %44
  %60 = phi i1 [ false, %49 ], [ false, %44 ], [ %58, %54 ]
  br i1 %60, label %61, label %62

61:                                               ; preds = %59
  br label %44

62:                                               ; preds = %59
  %63 = load i8*, i8** %10, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = ptrtoint i8* %63 to i64
  %66 = ptrtoint i8* %64 to i64
  %67 = sub i64 %65, %66
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %13, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %62
  %72 = load i8*, i8** %9, align 8
  %73 = load i8*, i8** %6, align 8
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* %13, align 4
  %76 = call i32 @MAX(i32 %74, i32 %75)
  %77 = call i32 @strncmp(i8* %72, i8* %73, i32 %76)
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  store i32 2, i32* %12, align 4
  br label %81

80:                                               ; preds = %71, %62
  store i32 1, i32* %12, align 4
  br label %81

81:                                               ; preds = %80, %79
  br label %23

82:                                               ; preds = %39
  br label %97

83:                                               ; preds = %37
  %84 = load i8*, i8** %9, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 125
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  store i32 0, i32* %12, align 4
  br label %89

89:                                               ; preds = %88, %83
  br label %23

90:                                               ; preds = %37
  %91 = load i8*, i8** %9, align 8
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 125
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  br label %128

96:                                               ; preds = %90
  br label %97

97:                                               ; preds = %37, %96, %82
  %98 = load i8*, i8** %9, align 8
  %99 = load i8*, i8** %9, align 8
  %100 = call i32 @strlen(i8* %99)
  %101 = sub nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %98, i64 %102
  store i8* %103, i8** %10, align 8
  br label %104

104:                                              ; preds = %111, %97
  %105 = load i8*, i8** %10, align 8
  %106 = load i8, i8* %105, align 1
  %107 = call i64 @isspace(i8 zeroext %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %104
  %110 = load i8*, i8** %10, align 8
  store i8 0, i8* %110, align 1
  br label %111

111:                                              ; preds = %109
  %112 = load i8*, i8** %10, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 -1
  store i8* %113, i8** %10, align 8
  br label %104

114:                                              ; preds = %104
  %115 = load i32*, i32** %8, align 8
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, -1
  store i32 %117, i32* %115, align 4
  %118 = icmp sgt i32 %116, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %114
  %120 = load i8*, i8** %9, align 8
  %121 = call i32 @strdup(i8* %120)
  %122 = sext i32 %121 to i64
  %123 = inttoptr i64 %122 to i8*
  %124 = load i8**, i8*** %11, align 8
  %125 = getelementptr inbounds i8*, i8** %124, i32 1
  store i8** %125, i8*** %11, align 8
  store i8* %123, i8** %124, align 8
  br label %126

126:                                              ; preds = %119, %114
  br label %23

127:                                              ; preds = %23
  br label %128

128:                                              ; preds = %127, %95
  %129 = load i32*, i32** %8, align 8
  %130 = load i32, i32* %129, align 4
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %128
  %133 = load i8**, i8*** %11, align 8
  store i8* null, i8** %133, align 8
  br label %134

134:                                              ; preds = %132, %128
  %135 = load i8**, i8*** %11, align 8
  %136 = load i8**, i8*** %7, align 8
  %137 = ptrtoint i8** %135 to i64
  %138 = ptrtoint i8** %136 to i64
  %139 = sub i64 %137, %138
  %140 = sdiv exact i64 %139, 8
  %141 = trunc i64 %140 to i32
  %142 = load i32*, i32** %8, align 8
  store i32 %141, i32* %142, align 4
  %143 = load i8**, i8*** %11, align 8
  %144 = load i8**, i8*** %7, align 8
  %145 = ptrtoint i8** %143 to i64
  %146 = ptrtoint i8** %144 to i64
  %147 = sub i64 %145, %146
  %148 = sdiv exact i64 %147, 8
  %149 = trunc i64 %148 to i32
  ret i32 %149
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @get_line(i32*) #1

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
