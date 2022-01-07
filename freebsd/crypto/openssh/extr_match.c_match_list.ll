; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_match.c_match_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_match.c_match_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PROP = common dso_local global i32 0, align 4
@SEP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @match_list(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %20 = load i32, i32* @MAX_PROP, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %8, align 8
  %23 = alloca i8*, i64 %21, align 16
  store i64 %21, i64* %9, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = call i8* @xstrdup(i8* %24)
  store i8* %25, i8** %14, align 8
  store i8* %25, i8** %10, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = call i8* @xstrdup(i8* %26)
  store i8* %27, i8** %15, align 8
  store i8* %27, i8** %11, align 8
  %28 = load i32, i32* @SEP, align 4
  %29 = call i8* @strsep(i8** %15, i32 %28)
  store i8* %29, i8** %12, align 8
  store i32 0, i32* %16, align 4
  br label %30

30:                                               ; preds = %51, %3
  %31 = load i8*, i8** %12, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load i8*, i8** %12, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 0
  br label %38

38:                                               ; preds = %33, %30
  %39 = phi i1 [ false, %30 ], [ %37, %33 ]
  br i1 %39, label %40, label %56

40:                                               ; preds = %38
  %41 = load i32, i32* %16, align 4
  %42 = load i32, i32* @MAX_PROP, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load i8*, i8** %12, align 8
  %46 = load i32, i32* %16, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %23, i64 %47
  store i8* %45, i8** %48, align 8
  br label %50

49:                                               ; preds = %40
  br label %56

50:                                               ; preds = %44
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* @SEP, align 4
  %53 = call i8* @strsep(i8** %15, i32 %52)
  store i8* %53, i8** %12, align 8
  %54 = load i32, i32* %16, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %16, align 4
  br label %30

56:                                               ; preds = %49, %38
  %57 = load i32, i32* %16, align 4
  store i32 %57, i32* %18, align 4
  %58 = load i32, i32* @SEP, align 4
  %59 = call i8* @strsep(i8** %14, i32 %58)
  store i8* %59, i8** %12, align 8
  store i32 0, i32* %16, align 4
  br label %60

60:                                               ; preds = %115, %56
  %61 = load i8*, i8** %12, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load i8*, i8** %12, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp ne i32 %66, 0
  br label %68

68:                                               ; preds = %63, %60
  %69 = phi i1 [ false, %60 ], [ %67, %63 ]
  br i1 %69, label %70, label %120

70:                                               ; preds = %68
  store i32 0, i32* %17, align 4
  br label %71

71:                                               ; preds = %111, %70
  %72 = load i32, i32* %17, align 4
  %73 = load i32, i32* %18, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %114

75:                                               ; preds = %71
  %76 = load i8*, i8** %12, align 8
  %77 = load i32, i32* %17, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8*, i8** %23, i64 %78
  %80 = load i8*, i8** %79, align 8
  %81 = call i64 @strcmp(i8* %76, i8* %80)
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %110

83:                                               ; preds = %75
  %84 = load i8*, i8** %12, align 8
  %85 = call i8* @xstrdup(i8* %84)
  store i8* %85, i8** %13, align 8
  %86 = load i32*, i32** %7, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %104

88:                                               ; preds = %83
  %89 = load i8*, i8** %14, align 8
  %90 = icmp eq i8* %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load i8*, i8** %10, align 8
  %93 = call i32 @strlen(i8* %92)
  br label %101

94:                                               ; preds = %88
  %95 = load i8*, i8** %14, align 8
  %96 = load i8*, i8** %10, align 8
  %97 = ptrtoint i8* %95 to i64
  %98 = ptrtoint i8* %96 to i64
  %99 = sub i64 %97, %98
  %100 = trunc i64 %99 to i32
  br label %101

101:                                              ; preds = %94, %91
  %102 = phi i32 [ %93, %91 ], [ %100, %94 ]
  %103 = load i32*, i32** %7, align 8
  store i32 %102, i32* %103, align 4
  br label %104

104:                                              ; preds = %101, %83
  %105 = load i8*, i8** %10, align 8
  %106 = call i32 @free(i8* %105)
  %107 = load i8*, i8** %11, align 8
  %108 = call i32 @free(i8* %107)
  %109 = load i8*, i8** %13, align 8
  store i8* %109, i8** %4, align 8
  store i32 1, i32* %19, align 4
  br label %132

110:                                              ; preds = %75
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %17, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %17, align 4
  br label %71

114:                                              ; preds = %71
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* @SEP, align 4
  %117 = call i8* @strsep(i8** %14, i32 %116)
  store i8* %117, i8** %12, align 8
  %118 = load i32, i32* %16, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %16, align 4
  br label %60

120:                                              ; preds = %68
  %121 = load i32*, i32** %7, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %127

123:                                              ; preds = %120
  %124 = load i8*, i8** %10, align 8
  %125 = call i32 @strlen(i8* %124)
  %126 = load i32*, i32** %7, align 8
  store i32 %125, i32* %126, align 4
  br label %127

127:                                              ; preds = %123, %120
  %128 = load i8*, i8** %10, align 8
  %129 = call i32 @free(i8* %128)
  %130 = load i8*, i8** %11, align 8
  %131 = call i32 @free(i8* %130)
  store i8* null, i8** %4, align 8
  store i32 1, i32* %19, align 4
  br label %132

132:                                              ; preds = %127, %104
  %133 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %133)
  %134 = load i8*, i8** %4, align 8
  ret i8* %134
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @xstrdup(i8*) #2

declare dso_local i8* @strsep(i8**, i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
