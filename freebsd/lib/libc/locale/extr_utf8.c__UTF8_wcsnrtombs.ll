; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_utf8.c__UTF8_wcsnrtombs.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_utf8.c__UTF8_wcsnrtombs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@MB_LEN_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@MB_CUR_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32**, i64, i64, i32*)* @_UTF8_wcsnrtombs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_UTF8_wcsnrtombs(i8* noalias %0, i32** noalias %1, i64 %2, i64 %3, i32* noalias %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_2__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32** %1, i32*** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %19 = load i32, i32* @MB_LEN_MAX, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %13, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %14, align 8
  %23 = load i32*, i32** %11, align 8
  %24 = bitcast i32* %23 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %24, %struct.TYPE_2__** %12, align 8
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %5
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* @errno, align 4
  store i64 -1, i64* %6, align 8
  store i32 1, i32* %18, align 4
  br label %160

31:                                               ; preds = %5
  %32 = load i32**, i32*** %8, align 8
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %15, align 8
  store i64 0, i64* %16, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %75

36:                                               ; preds = %31
  br label %37

37:                                               ; preds = %67, %36
  %38 = load i64, i64* %9, align 8
  %39 = add i64 %38, -1
  store i64 %39, i64* %9, align 8
  %40 = icmp ugt i64 %38, 0
  br i1 %40, label %41, label %73

41:                                               ; preds = %37
  %42 = load i32*, i32** %15, align 8
  %43 = load i32, i32* %42, align 4
  %44 = icmp sle i32 0, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load i32*, i32** %15, align 8
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %47, 128
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i64 1, i64* %17, align 8
  br label %58

50:                                               ; preds = %45, %41
  %51 = load i32*, i32** %15, align 8
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %11, align 8
  %54 = call i64 @_UTF8_wcrtomb(i8* %22, i32 %52, i32* %53)
  store i64 %54, i64* %17, align 8
  %55 = icmp eq i64 %54, -1
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  store i64 -1, i64* %6, align 8
  store i32 1, i32* %18, align 4
  br label %160

57:                                               ; preds = %50
  br label %58

58:                                               ; preds = %57, %49
  %59 = load i32*, i32** %15, align 8
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = load i64, i64* %16, align 8
  %64 = load i64, i64* %17, align 8
  %65 = add i64 %63, %64
  %66 = sub i64 %65, 1
  store i64 %66, i64* %6, align 8
  store i32 1, i32* %18, align 4
  br label %160

67:                                               ; preds = %58
  %68 = load i32*, i32** %15, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %69, i32** %15, align 8
  %70 = load i64, i64* %17, align 8
  %71 = load i64, i64* %16, align 8
  %72 = add i64 %71, %70
  store i64 %72, i64* %16, align 8
  br label %37

73:                                               ; preds = %37
  %74 = load i64, i64* %16, align 8
  store i64 %74, i64* %6, align 8
  store i32 1, i32* %18, align 4
  br label %160

75:                                               ; preds = %31
  br label %76

76:                                               ; preds = %144, %75
  %77 = load i64, i64* %10, align 8
  %78 = icmp ugt i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load i64, i64* %9, align 8
  %81 = add i64 %80, -1
  store i64 %81, i64* %9, align 8
  %82 = icmp ugt i64 %80, 0
  br label %83

83:                                               ; preds = %79, %76
  %84 = phi i1 [ false, %76 ], [ %82, %79 ]
  br i1 %84, label %85, label %156

85:                                               ; preds = %83
  %86 = load i32*, i32** %15, align 8
  %87 = load i32, i32* %86, align 4
  %88 = icmp sle i32 0, %87
  br i1 %88, label %89, label %98

89:                                               ; preds = %85
  %90 = load i32*, i32** %15, align 8
  %91 = load i32, i32* %90, align 4
  %92 = icmp slt i32 %91, 128
  br i1 %92, label %93, label %98

93:                                               ; preds = %89
  store i64 1, i64* %17, align 8
  %94 = load i32*, i32** %15, align 8
  %95 = load i32, i32* %94, align 4
  %96 = trunc i32 %95 to i8
  %97 = load i8*, i8** %7, align 8
  store i8 %96, i8* %97, align 1
  br label %134

98:                                               ; preds = %89, %85
  %99 = load i64, i64* %10, align 8
  %100 = load i64, i64* @MB_CUR_MAX, align 8
  %101 = icmp ugt i64 %99, %100
  br i1 %101, label %102, label %113

102:                                              ; preds = %98
  %103 = load i8*, i8** %7, align 8
  %104 = load i32*, i32** %15, align 8
  %105 = load i32, i32* %104, align 4
  %106 = load i32*, i32** %11, align 8
  %107 = call i64 @_UTF8_wcrtomb(i8* %103, i32 %105, i32* %106)
  store i64 %107, i64* %17, align 8
  %108 = icmp eq i64 %107, -1
  br i1 %108, label %109, label %112

109:                                              ; preds = %102
  %110 = load i32*, i32** %15, align 8
  %111 = load i32**, i32*** %8, align 8
  store i32* %110, i32** %111, align 8
  store i64 -1, i64* %6, align 8
  store i32 1, i32* %18, align 4
  br label %160

112:                                              ; preds = %102
  br label %133

113:                                              ; preds = %98
  %114 = load i32*, i32** %15, align 8
  %115 = load i32, i32* %114, align 4
  %116 = load i32*, i32** %11, align 8
  %117 = call i64 @_UTF8_wcrtomb(i8* %22, i32 %115, i32* %116)
  store i64 %117, i64* %17, align 8
  %118 = icmp eq i64 %117, -1
  br i1 %118, label %119, label %122

119:                                              ; preds = %113
  %120 = load i32*, i32** %15, align 8
  %121 = load i32**, i32*** %8, align 8
  store i32* %120, i32** %121, align 8
  store i64 -1, i64* %6, align 8
  store i32 1, i32* %18, align 4
  br label %160

122:                                              ; preds = %113
  %123 = load i64, i64* %17, align 8
  %124 = load i64, i64* %10, align 8
  %125 = trunc i64 %124 to i32
  %126 = sext i32 %125 to i64
  %127 = icmp ugt i64 %123, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %122
  br label %156

129:                                              ; preds = %122
  %130 = load i8*, i8** %7, align 8
  %131 = load i64, i64* %17, align 8
  %132 = call i32 @memcpy(i8* %130, i8* %22, i64 %131)
  br label %133

133:                                              ; preds = %129, %112
  br label %134

134:                                              ; preds = %133, %93
  %135 = load i32*, i32** %15, align 8
  %136 = load i32, i32* %135, align 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %134
  %139 = load i32**, i32*** %8, align 8
  store i32* null, i32** %139, align 8
  %140 = load i64, i64* %16, align 8
  %141 = load i64, i64* %17, align 8
  %142 = add i64 %140, %141
  %143 = sub i64 %142, 1
  store i64 %143, i64* %6, align 8
  store i32 1, i32* %18, align 4
  br label %160

144:                                              ; preds = %134
  %145 = load i32*, i32** %15, align 8
  %146 = getelementptr inbounds i32, i32* %145, i32 1
  store i32* %146, i32** %15, align 8
  %147 = load i64, i64* %17, align 8
  %148 = load i8*, i8** %7, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 %147
  store i8* %149, i8** %7, align 8
  %150 = load i64, i64* %17, align 8
  %151 = load i64, i64* %10, align 8
  %152 = sub i64 %151, %150
  store i64 %152, i64* %10, align 8
  %153 = load i64, i64* %17, align 8
  %154 = load i64, i64* %16, align 8
  %155 = add i64 %154, %153
  store i64 %155, i64* %16, align 8
  br label %76

156:                                              ; preds = %128, %83
  %157 = load i32*, i32** %15, align 8
  %158 = load i32**, i32*** %8, align 8
  store i32* %157, i32** %158, align 8
  %159 = load i64, i64* %16, align 8
  store i64 %159, i64* %6, align 8
  store i32 1, i32* %18, align 4
  br label %160

160:                                              ; preds = %156, %138, %119, %109, %73, %62, %56, %29
  %161 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %161)
  %162 = load i64, i64* %6, align 8
  ret i64 %162
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @_UTF8_wcrtomb(i8*, i32, i32*) #2

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
