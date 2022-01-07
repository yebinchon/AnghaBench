; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_gb18030.c__GB18030_wcrtomb.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_gb18030.c__GB18030_wcrtomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32, i32*)* @_GB18030_wcrtomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_GB18030_wcrtomb(i8* noalias %0, i32 %1, i32* noalias %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = bitcast i32* %11 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %12, %struct.TYPE_2__** %8, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* @errno, align 4
  store i64 -1, i64* %4, align 8
  br label %146

19:                                               ; preds = %3
  %20 = load i8*, i8** %5, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i64 1, i64* %4, align 8
  br label %146

23:                                               ; preds = %19
  %24 = load i32, i32* %6, align 4
  %25 = and i32 %24, -2147483648
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %144

28:                                               ; preds = %23
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, 2130706432
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %90

32:                                               ; preds = %28
  %33 = load i32, i32* %6, align 4
  %34 = or i32 %33, -2147483648
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = ashr i32 %35, 24
  %37 = and i32 %36, 255
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp slt i32 %38, 129
  br i1 %39, label %43, label %40

40:                                               ; preds = %32
  %41 = load i32, i32* %10, align 4
  %42 = icmp sgt i32 %41, 254
  br i1 %42, label %43, label %44

43:                                               ; preds = %40, %32
  br label %144

44:                                               ; preds = %40
  %45 = load i32, i32* %10, align 4
  %46 = trunc i32 %45 to i8
  %47 = load i8*, i8** %5, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %5, align 8
  store i8 %46, i8* %47, align 1
  %49 = load i32, i32* %6, align 4
  %50 = ashr i32 %49, 16
  %51 = and i32 %50, 255
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp slt i32 %52, 48
  br i1 %53, label %57, label %54

54:                                               ; preds = %44
  %55 = load i32, i32* %10, align 4
  %56 = icmp sgt i32 %55, 57
  br i1 %56, label %57, label %58

57:                                               ; preds = %54, %44
  br label %144

58:                                               ; preds = %54
  %59 = load i32, i32* %10, align 4
  %60 = trunc i32 %59 to i8
  %61 = load i8*, i8** %5, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %5, align 8
  store i8 %60, i8* %61, align 1
  %63 = load i32, i32* %6, align 4
  %64 = ashr i32 %63, 8
  %65 = and i32 %64, 255
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp slt i32 %66, 129
  br i1 %67, label %71, label %68

68:                                               ; preds = %58
  %69 = load i32, i32* %10, align 4
  %70 = icmp sgt i32 %69, 254
  br i1 %70, label %71, label %72

71:                                               ; preds = %68, %58
  br label %144

72:                                               ; preds = %68
  %73 = load i32, i32* %10, align 4
  %74 = trunc i32 %73 to i8
  %75 = load i8*, i8** %5, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %5, align 8
  store i8 %74, i8* %75, align 1
  %77 = load i32, i32* %6, align 4
  %78 = and i32 %77, 255
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp slt i32 %79, 48
  br i1 %80, label %84, label %81

81:                                               ; preds = %72
  %82 = load i32, i32* %10, align 4
  %83 = icmp sgt i32 %82, 57
  br i1 %83, label %84, label %85

84:                                               ; preds = %81, %72
  br label %144

85:                                               ; preds = %81
  %86 = load i32, i32* %10, align 4
  %87 = trunc i32 %86 to i8
  %88 = load i8*, i8** %5, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %5, align 8
  store i8 %87, i8* %88, align 1
  store i64 4, i64* %9, align 8
  br label %142

90:                                               ; preds = %28
  %91 = load i32, i32* %6, align 4
  %92 = and i32 %91, 16711680
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  br label %144

95:                                               ; preds = %90
  %96 = load i32, i32* %6, align 4
  %97 = and i32 %96, 65280
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %130

99:                                               ; preds = %95
  %100 = load i32, i32* %6, align 4
  %101 = ashr i32 %100, 8
  %102 = and i32 %101, 255
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* %10, align 4
  %104 = icmp slt i32 %103, 129
  br i1 %104, label %108, label %105

105:                                              ; preds = %99
  %106 = load i32, i32* %10, align 4
  %107 = icmp sgt i32 %106, 254
  br i1 %107, label %108, label %109

108:                                              ; preds = %105, %99
  br label %144

109:                                              ; preds = %105
  %110 = load i32, i32* %10, align 4
  %111 = trunc i32 %110 to i8
  %112 = load i8*, i8** %5, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %5, align 8
  store i8 %111, i8* %112, align 1
  %114 = load i32, i32* %6, align 4
  %115 = and i32 %114, 255
  store i32 %115, i32* %10, align 4
  %116 = load i32, i32* %10, align 4
  %117 = icmp slt i32 %116, 64
  br i1 %117, label %124, label %118

118:                                              ; preds = %109
  %119 = load i32, i32* %10, align 4
  %120 = icmp eq i32 %119, 127
  br i1 %120, label %124, label %121

121:                                              ; preds = %118
  %122 = load i32, i32* %10, align 4
  %123 = icmp eq i32 %122, 255
  br i1 %123, label %124, label %125

124:                                              ; preds = %121, %118, %109
  br label %144

125:                                              ; preds = %121
  %126 = load i32, i32* %10, align 4
  %127 = trunc i32 %126 to i8
  %128 = load i8*, i8** %5, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** %5, align 8
  store i8 %127, i8* %128, align 1
  store i64 2, i64* %9, align 8
  br label %140

130:                                              ; preds = %95
  %131 = load i32, i32* %6, align 4
  %132 = icmp sle i32 %131, 127
  br i1 %132, label %133, label %138

133:                                              ; preds = %130
  %134 = load i32, i32* %6, align 4
  %135 = trunc i32 %134 to i8
  %136 = load i8*, i8** %5, align 8
  %137 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %137, i8** %5, align 8
  store i8 %135, i8* %136, align 1
  store i64 1, i64* %9, align 8
  br label %139

138:                                              ; preds = %130
  br label %144

139:                                              ; preds = %133
  br label %140

140:                                              ; preds = %139, %125
  br label %141

141:                                              ; preds = %140
  br label %142

142:                                              ; preds = %141, %85
  %143 = load i64, i64* %9, align 8
  store i64 %143, i64* %4, align 8
  br label %146

144:                                              ; preds = %138, %124, %108, %94, %84, %71, %57, %43, %27
  %145 = load i32, i32* @EILSEQ, align 4
  store i32 %145, i32* @errno, align 4
  store i64 -1, i64* %4, align 8
  br label %146

146:                                              ; preds = %144, %142, %22, %17
  %147 = load i64, i64* %4, align 8
  ret i64 %147
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
