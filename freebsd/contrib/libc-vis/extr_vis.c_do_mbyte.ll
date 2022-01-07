; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libc-vis/extr_vis.c_do_mbyte.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libc-vis/extr_vis.c_do_mbyte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VIS_CSTYLE = common dso_local global i32 0, align 4
@VIS_OCTAL = common dso_local global i32 0, align 4
@VIS_NOSLASH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, i32, i32, i32)* @do_mbyte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @do_mbyte(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* @VIS_CSTYLE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %100

16:                                               ; preds = %5
  %17 = load i32, i32* %8, align 4
  switch i32 %17, label %82 [
    i32 10, label %18
    i32 13, label %24
    i32 8, label %30
    i32 128, label %36
    i32 11, label %42
    i32 9, label %48
    i32 12, label %54
    i32 32, label %60
    i32 0, label %66
    i32 110, label %81
    i32 114, label %81
    i32 98, label %81
    i32 97, label %81
    i32 118, label %81
    i32 116, label %81
    i32 102, label %81
    i32 115, label %81
    i32 48, label %81
    i32 77, label %81
    i32 94, label %81
    i32 36, label %81
  ]

18:                                               ; preds = %16
  %19 = load i32*, i32** %7, align 8
  %20 = getelementptr inbounds i32, i32* %19, i32 1
  store i32* %20, i32** %7, align 8
  store i32 92, i32* %19, align 4
  %21 = load i32*, i32** %7, align 8
  %22 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %22, i32** %7, align 8
  store i32 110, i32* %21, align 4
  %23 = load i32*, i32** %7, align 8
  store i32* %23, i32** %6, align 8
  br label %188

24:                                               ; preds = %16
  %25 = load i32*, i32** %7, align 8
  %26 = getelementptr inbounds i32, i32* %25, i32 1
  store i32* %26, i32** %7, align 8
  store i32 92, i32* %25, align 4
  %27 = load i32*, i32** %7, align 8
  %28 = getelementptr inbounds i32, i32* %27, i32 1
  store i32* %28, i32** %7, align 8
  store i32 114, i32* %27, align 4
  %29 = load i32*, i32** %7, align 8
  store i32* %29, i32** %6, align 8
  br label %188

30:                                               ; preds = %16
  %31 = load i32*, i32** %7, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %7, align 8
  store i32 92, i32* %31, align 4
  %33 = load i32*, i32** %7, align 8
  %34 = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %34, i32** %7, align 8
  store i32 98, i32* %33, align 4
  %35 = load i32*, i32** %7, align 8
  store i32* %35, i32** %6, align 8
  br label %188

36:                                               ; preds = %16
  %37 = load i32*, i32** %7, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %7, align 8
  store i32 92, i32* %37, align 4
  %39 = load i32*, i32** %7, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %7, align 8
  store i32 97, i32* %39, align 4
  %41 = load i32*, i32** %7, align 8
  store i32* %41, i32** %6, align 8
  br label %188

42:                                               ; preds = %16
  %43 = load i32*, i32** %7, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %7, align 8
  store i32 92, i32* %43, align 4
  %45 = load i32*, i32** %7, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %7, align 8
  store i32 118, i32* %45, align 4
  %47 = load i32*, i32** %7, align 8
  store i32* %47, i32** %6, align 8
  br label %188

48:                                               ; preds = %16
  %49 = load i32*, i32** %7, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %50, i32** %7, align 8
  store i32 92, i32* %49, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %7, align 8
  store i32 116, i32* %51, align 4
  %53 = load i32*, i32** %7, align 8
  store i32* %53, i32** %6, align 8
  br label %188

54:                                               ; preds = %16
  %55 = load i32*, i32** %7, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %7, align 8
  store i32 92, i32* %55, align 4
  %57 = load i32*, i32** %7, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %7, align 8
  store i32 102, i32* %57, align 4
  %59 = load i32*, i32** %7, align 8
  store i32* %59, i32** %6, align 8
  br label %188

60:                                               ; preds = %16
  %61 = load i32*, i32** %7, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %62, i32** %7, align 8
  store i32 92, i32* %61, align 4
  %63 = load i32*, i32** %7, align 8
  %64 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %64, i32** %7, align 8
  store i32 115, i32* %63, align 4
  %65 = load i32*, i32** %7, align 8
  store i32* %65, i32** %6, align 8
  br label %188

66:                                               ; preds = %16
  %67 = load i32*, i32** %7, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 1
  store i32* %68, i32** %7, align 8
  store i32 92, i32* %67, align 4
  %69 = load i32*, i32** %7, align 8
  %70 = getelementptr inbounds i32, i32* %69, i32 1
  store i32* %70, i32** %7, align 8
  store i32 48, i32* %69, align 4
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @iswoctal(i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %66
  %75 = load i32*, i32** %7, align 8
  %76 = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %76, i32** %7, align 8
  store i32 48, i32* %75, align 4
  %77 = load i32*, i32** %7, align 8
  %78 = getelementptr inbounds i32, i32* %77, i32 1
  store i32* %78, i32** %7, align 8
  store i32 48, i32* %77, align 4
  br label %79

79:                                               ; preds = %74, %66
  %80 = load i32*, i32** %7, align 8
  store i32* %80, i32** %6, align 8
  br label %188

81:                                               ; preds = %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16
  br label %99

82:                                               ; preds = %16
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @ISGRAPH(i32 %83, i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %82
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @iswoctal(i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %98, label %91

91:                                               ; preds = %87
  %92 = load i32*, i32** %7, align 8
  %93 = getelementptr inbounds i32, i32* %92, i32 1
  store i32* %93, i32** %7, align 8
  store i32 92, i32* %92, align 4
  %94 = load i32, i32* %8, align 4
  %95 = load i32*, i32** %7, align 8
  %96 = getelementptr inbounds i32, i32* %95, i32 1
  store i32* %96, i32** %7, align 8
  store i32 %94, i32* %95, align 4
  %97 = load i32*, i32** %7, align 8
  store i32* %97, i32** %6, align 8
  br label %188

98:                                               ; preds = %87, %82
  br label %99

99:                                               ; preds = %98, %81
  br label %100

100:                                              ; preds = %99, %5
  %101 = load i32, i32* %11, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %112, label %103

103:                                              ; preds = %100
  %104 = load i32, i32* %8, align 4
  %105 = and i32 %104, 127
  %106 = icmp eq i32 %105, 32
  br i1 %106, label %112, label %107

107:                                              ; preds = %103
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* @VIS_OCTAL, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %144

112:                                              ; preds = %107, %103, %100
  %113 = load i32*, i32** %7, align 8
  %114 = getelementptr inbounds i32, i32* %113, i32 1
  store i32* %114, i32** %7, align 8
  store i32 92, i32* %113, align 4
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = inttoptr i64 %116 to i8*
  %118 = ptrtoint i8* %117 to i32
  %119 = ashr i32 %118, 6
  %120 = and i32 %119, 3
  %121 = sext i32 %120 to i64
  %122 = inttoptr i64 %121 to i8*
  %123 = getelementptr i8, i8* %122, i64 48
  %124 = ptrtoint i8* %123 to i32
  %125 = load i32*, i32** %7, align 8
  %126 = getelementptr inbounds i32, i32* %125, i32 1
  store i32* %126, i32** %7, align 8
  store i32 %124, i32* %125, align 4
  %127 = load i32, i32* %8, align 4
  %128 = sext i32 %127 to i64
  %129 = inttoptr i64 %128 to i8*
  %130 = ptrtoint i8* %129 to i32
  %131 = ashr i32 %130, 3
  %132 = and i32 %131, 7
  %133 = sext i32 %132 to i64
  %134 = inttoptr i64 %133 to i8*
  %135 = getelementptr i8, i8* %134, i64 48
  %136 = ptrtoint i8* %135 to i32
  %137 = load i32*, i32** %7, align 8
  %138 = getelementptr inbounds i32, i32* %137, i32 1
  store i32* %138, i32** %7, align 8
  store i32 %136, i32* %137, align 4
  %139 = load i32, i32* %8, align 4
  %140 = and i32 %139, 7
  %141 = add nsw i32 %140, 48
  %142 = load i32*, i32** %7, align 8
  %143 = getelementptr inbounds i32, i32* %142, i32 1
  store i32* %143, i32** %7, align 8
  store i32 %141, i32* %142, align 4
  br label %186

144:                                              ; preds = %107
  %145 = load i32, i32* %9, align 4
  %146 = load i32, i32* @VIS_NOSLASH, align 4
  %147 = and i32 %145, %146
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %144
  %150 = load i32*, i32** %7, align 8
  %151 = getelementptr inbounds i32, i32* %150, i32 1
  store i32* %151, i32** %7, align 8
  store i32 92, i32* %150, align 4
  br label %152

152:                                              ; preds = %149, %144
  %153 = load i32, i32* %8, align 4
  %154 = and i32 %153, 128
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %152
  %157 = load i32, i32* %8, align 4
  %158 = and i32 %157, 127
  store i32 %158, i32* %8, align 4
  %159 = load i32*, i32** %7, align 8
  %160 = getelementptr inbounds i32, i32* %159, i32 1
  store i32* %160, i32** %7, align 8
  store i32 77, i32* %159, align 4
  br label %161

161:                                              ; preds = %156, %152
  %162 = load i32, i32* %8, align 4
  %163 = call i64 @iswcntrl(i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %179

165:                                              ; preds = %161
  %166 = load i32*, i32** %7, align 8
  %167 = getelementptr inbounds i32, i32* %166, i32 1
  store i32* %167, i32** %7, align 8
  store i32 94, i32* %166, align 4
  %168 = load i32, i32* %8, align 4
  %169 = icmp eq i32 %168, 127
  br i1 %169, label %170, label %173

170:                                              ; preds = %165
  %171 = load i32*, i32** %7, align 8
  %172 = getelementptr inbounds i32, i32* %171, i32 1
  store i32* %172, i32** %7, align 8
  store i32 63, i32* %171, align 4
  br label %178

173:                                              ; preds = %165
  %174 = load i32, i32* %8, align 4
  %175 = add nsw i32 %174, 64
  %176 = load i32*, i32** %7, align 8
  %177 = getelementptr inbounds i32, i32* %176, i32 1
  store i32* %177, i32** %7, align 8
  store i32 %175, i32* %176, align 4
  br label %178

178:                                              ; preds = %173, %170
  br label %185

179:                                              ; preds = %161
  %180 = load i32*, i32** %7, align 8
  %181 = getelementptr inbounds i32, i32* %180, i32 1
  store i32* %181, i32** %7, align 8
  store i32 45, i32* %180, align 4
  %182 = load i32, i32* %8, align 4
  %183 = load i32*, i32** %7, align 8
  %184 = getelementptr inbounds i32, i32* %183, i32 1
  store i32* %184, i32** %7, align 8
  store i32 %182, i32* %183, align 4
  br label %185

185:                                              ; preds = %179, %178
  br label %186

186:                                              ; preds = %185, %112
  %187 = load i32*, i32** %7, align 8
  store i32* %187, i32** %6, align 8
  br label %188

188:                                              ; preds = %186, %91, %79, %60, %54, %48, %42, %36, %30, %24, %18
  %189 = load i32*, i32** %6, align 8
  ret i32* %189
}

declare dso_local i32 @iswoctal(i32) #1

declare dso_local i32 @ISGRAPH(i32, i32) #1

declare dso_local i64 @iswcntrl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
