; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_wcsnrtombs.c___wcsnrtombs_std.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_wcsnrtombs.c___wcsnrtombs_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MB_LEN_MAX = common dso_local global i32 0, align 4
@MB_CUR_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @__wcsnrtombs_std(i8* noalias %0, i32** noalias %1, i64 %2, i64 %3, i32* noalias %4, i64 (i8*, i32, i32*)* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64 (i8*, i32, i32*)*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32** %1, i32*** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i64 (i8*, i32, i32*)* %5, i64 (i8*, i32, i32*)** %13, align 8
  %21 = load i32, i32* @MB_LEN_MAX, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %15, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %16, align 8
  %25 = load i32**, i32*** %9, align 8
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %17, align 8
  store i64 0, i64* %18, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %60

29:                                               ; preds = %6
  br label %30

30:                                               ; preds = %52, %29
  %31 = load i64, i64* %10, align 8
  %32 = add i64 %31, -1
  store i64 %32, i64* %10, align 8
  %33 = icmp ugt i64 %31, 0
  br i1 %33, label %34, label %58

34:                                               ; preds = %30
  %35 = load i64 (i8*, i32, i32*)*, i64 (i8*, i32, i32*)** %13, align 8
  %36 = load i32*, i32** %17, align 8
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %12, align 8
  %39 = call i64 %35(i8* %24, i32 %37, i32* %38)
  store i64 %39, i64* %19, align 8
  %40 = icmp eq i64 %39, -1
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  store i64 -1, i64* %7, align 8
  store i32 1, i32* %20, align 4
  br label %137

42:                                               ; preds = %34
  %43 = load i32*, i32** %17, align 8
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load i64, i64* %18, align 8
  %48 = load i64, i64* %19, align 8
  %49 = add i64 %47, %48
  %50 = sub i64 %49, 1
  store i64 %50, i64* %7, align 8
  store i32 1, i32* %20, align 4
  br label %137

51:                                               ; preds = %42
  br label %52

52:                                               ; preds = %51
  %53 = load i32*, i32** %17, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %17, align 8
  %55 = load i64, i64* %19, align 8
  %56 = load i64, i64* %18, align 8
  %57 = add i64 %56, %55
  store i64 %57, i64* %18, align 8
  br label %30

58:                                               ; preds = %30
  %59 = load i64, i64* %18, align 8
  store i64 %59, i64* %7, align 8
  store i32 1, i32* %20, align 4
  br label %137

60:                                               ; preds = %6
  br label %61

61:                                               ; preds = %121, %60
  %62 = load i64, i64* %11, align 8
  %63 = icmp ugt i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load i64, i64* %10, align 8
  %66 = add i64 %65, -1
  store i64 %66, i64* %10, align 8
  %67 = icmp ugt i64 %65, 0
  br label %68

68:                                               ; preds = %64, %61
  %69 = phi i1 [ false, %61 ], [ %67, %64 ]
  br i1 %69, label %70, label %133

70:                                               ; preds = %68
  %71 = load i64, i64* %11, align 8
  %72 = load i64, i64* @MB_CUR_MAX, align 8
  %73 = icmp ugt i64 %71, %72
  br i1 %73, label %74, label %86

74:                                               ; preds = %70
  %75 = load i64 (i8*, i32, i32*)*, i64 (i8*, i32, i32*)** %13, align 8
  %76 = load i8*, i8** %8, align 8
  %77 = load i32*, i32** %17, align 8
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %12, align 8
  %80 = call i64 %75(i8* %76, i32 %78, i32* %79)
  store i64 %80, i64* %19, align 8
  %81 = icmp eq i64 %80, -1
  br i1 %81, label %82, label %85

82:                                               ; preds = %74
  %83 = load i32*, i32** %17, align 8
  %84 = load i32**, i32*** %9, align 8
  store i32* %83, i32** %84, align 8
  store i64 -1, i64* %7, align 8
  store i32 1, i32* %20, align 4
  br label %137

85:                                               ; preds = %74
  br label %111

86:                                               ; preds = %70
  %87 = load i32*, i32** %12, align 8
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %14, align 4
  %89 = load i64 (i8*, i32, i32*)*, i64 (i8*, i32, i32*)** %13, align 8
  %90 = load i32*, i32** %17, align 8
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %12, align 8
  %93 = call i64 %89(i8* %24, i32 %91, i32* %92)
  store i64 %93, i64* %19, align 8
  %94 = icmp eq i64 %93, -1
  br i1 %94, label %95, label %98

95:                                               ; preds = %86
  %96 = load i32*, i32** %17, align 8
  %97 = load i32**, i32*** %9, align 8
  store i32* %96, i32** %97, align 8
  store i64 -1, i64* %7, align 8
  store i32 1, i32* %20, align 4
  br label %137

98:                                               ; preds = %86
  %99 = load i64, i64* %19, align 8
  %100 = load i64, i64* %11, align 8
  %101 = trunc i64 %100 to i32
  %102 = sext i32 %101 to i64
  %103 = icmp ugt i64 %99, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %98
  %105 = load i32, i32* %14, align 4
  %106 = load i32*, i32** %12, align 8
  store i32 %105, i32* %106, align 4
  br label %133

107:                                              ; preds = %98
  %108 = load i8*, i8** %8, align 8
  %109 = load i64, i64* %19, align 8
  %110 = call i32 @memcpy(i8* %108, i8* %24, i64 %109)
  br label %111

111:                                              ; preds = %107, %85
  %112 = load i32*, i32** %17, align 8
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %111
  %116 = load i32**, i32*** %9, align 8
  store i32* null, i32** %116, align 8
  %117 = load i64, i64* %18, align 8
  %118 = load i64, i64* %19, align 8
  %119 = add i64 %117, %118
  %120 = sub i64 %119, 1
  store i64 %120, i64* %7, align 8
  store i32 1, i32* %20, align 4
  br label %137

121:                                              ; preds = %111
  %122 = load i32*, i32** %17, align 8
  %123 = getelementptr inbounds i32, i32* %122, i32 1
  store i32* %123, i32** %17, align 8
  %124 = load i64, i64* %19, align 8
  %125 = load i8*, i8** %8, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 %124
  store i8* %126, i8** %8, align 8
  %127 = load i64, i64* %19, align 8
  %128 = load i64, i64* %11, align 8
  %129 = sub i64 %128, %127
  store i64 %129, i64* %11, align 8
  %130 = load i64, i64* %19, align 8
  %131 = load i64, i64* %18, align 8
  %132 = add i64 %131, %130
  store i64 %132, i64* %18, align 8
  br label %61

133:                                              ; preds = %104, %68
  %134 = load i32*, i32** %17, align 8
  %135 = load i32**, i32*** %9, align 8
  store i32* %134, i32** %135, align 8
  %136 = load i64, i64* %18, align 8
  store i64 %136, i64* %7, align 8
  store i32 1, i32* %20, align 4
  br label %137

137:                                              ; preds = %133, %115, %95, %82, %58, %46, %41
  %138 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %138)
  %139 = load i64, i64* %7, align 8
  ret i64 %139
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
