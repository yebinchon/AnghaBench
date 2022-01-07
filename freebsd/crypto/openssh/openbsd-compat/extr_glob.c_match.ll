; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_glob.c_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_glob.c_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32)* }

@GLOB_NOSPACE = common dso_local global i32 0, align 4
@M_MASK = common dso_local global i32 0, align 4
@EOS = common dso_local global i32 0, align 4
@M_NOT = common dso_local global i32 0, align 4
@M_END = common dso_local global i32 0, align 4
@M_CLASS = common dso_local global i32 0, align 4
@NCCLASSES = common dso_local global i32 0, align 4
@cclasses = common dso_local global %struct.TYPE_2__* null, align 8
@M_RNG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32)* @match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %9, align 4
  %17 = icmp eq i32 %15, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @GLOB_NOSPACE, align 4
  store i32 %19, i32* %5, align 4
  br label %184

20:                                               ; preds = %4
  br label %21

21:                                               ; preds = %177, %20
  %22 = load i32*, i32** %7, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = icmp ult i32* %22, %23
  br i1 %24, label %25, label %178

25:                                               ; preds = %21
  %26 = load i32*, i32** %7, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %7, align 8
  %28 = load i32, i32* %26, align 4
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* @M_MASK, align 4
  %31 = and i32 %29, %30
  switch i32 %31, label %169 [
    i32 130, label %32
    i32 129, label %70
    i32 128, label %78
  ]

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %45, %32
  %34 = load i32*, i32** %7, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = icmp ult i32* %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @M_MASK, align 4
  %41 = and i32 %39, %40
  %42 = icmp eq i32 %41, 130
  br label %43

43:                                               ; preds = %37, %33
  %44 = phi i1 [ false, %33 ], [ %42, %37 ]
  br i1 %44, label %45, label %48

45:                                               ; preds = %43
  %46 = load i32*, i32** %7, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %47, i32** %7, align 8
  br label %33

48:                                               ; preds = %43
  %49 = load i32*, i32** %7, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = icmp eq i32* %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i32 1, i32* %5, align 4
  br label %184

53:                                               ; preds = %48
  br label %54

54:                                               ; preds = %63, %53
  %55 = load i32*, i32** %6, align 8
  %56 = load i32*, i32** %7, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @match(i32* %55, i32* %56, i32* %57, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  store i32 1, i32* %5, align 4
  br label %184

62:                                               ; preds = %54
  br label %63

63:                                               ; preds = %62
  %64 = load i32*, i32** %6, align 8
  %65 = getelementptr inbounds i32, i32* %64, i32 1
  store i32* %65, i32** %6, align 8
  %66 = load i32, i32* %64, align 4
  %67 = load i32, i32* @EOS, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %54, label %69

69:                                               ; preds = %63
  store i32 0, i32* %5, align 4
  br label %184

70:                                               ; preds = %25
  %71 = load i32*, i32** %6, align 8
  %72 = getelementptr inbounds i32, i32* %71, i32 1
  store i32* %72, i32** %6, align 8
  %73 = load i32, i32* %71, align 4
  %74 = load i32, i32* @EOS, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  store i32 0, i32* %5, align 4
  br label %184

77:                                               ; preds = %70
  br label %177

78:                                               ; preds = %25
  store i32 0, i32* %10, align 4
  %79 = load i32*, i32** %6, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %6, align 8
  %81 = load i32, i32* %79, align 4
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* @EOS, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  store i32 0, i32* %5, align 4
  br label %184

85:                                               ; preds = %78
  %86 = load i32*, i32** %7, align 8
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @M_MASK, align 4
  %89 = and i32 %87, %88
  %90 = load i32, i32* @M_NOT, align 4
  %91 = icmp eq i32 %89, %90
  %92 = zext i1 %91 to i32
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* @EOS, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %85
  %96 = load i32*, i32** %7, align 8
  %97 = getelementptr inbounds i32, i32* %96, i32 1
  store i32* %97, i32** %7, align 8
  br label %98

98:                                               ; preds = %95, %85
  br label %99

99:                                               ; preds = %162, %98
  %100 = load i32*, i32** %7, align 8
  %101 = getelementptr inbounds i32, i32* %100, i32 1
  store i32* %101, i32** %7, align 8
  %102 = load i32, i32* %100, align 4
  store i32 %102, i32* %12, align 4
  %103 = load i32, i32* @M_MASK, align 4
  %104 = and i32 %102, %103
  %105 = load i32, i32* @M_END, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %163

107:                                              ; preds = %99
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* @M_MASK, align 4
  %110 = and i32 %108, %109
  %111 = load i32, i32* @M_CLASS, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %135

113:                                              ; preds = %107
  %114 = load i32*, i32** %7, align 8
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @M_MASK, align 4
  %117 = and i32 %115, %116
  store i32 %117, i32* %14, align 4
  %118 = load i32, i32* %14, align 4
  %119 = load i32, i32* @NCCLASSES, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %132

121:                                              ; preds = %113
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cclasses, align 8
  %123 = load i32, i32* %14, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load i32 (i32)*, i32 (i32)** %126, align 8
  %128 = load i32, i32* %13, align 4
  %129 = call i32 %127(i32 %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %121
  store i32 1, i32* %10, align 4
  br label %132

132:                                              ; preds = %131, %121, %113
  %133 = load i32*, i32** %7, align 8
  %134 = getelementptr inbounds i32, i32* %133, i32 1
  store i32* %134, i32** %7, align 8
  br label %135

135:                                              ; preds = %132, %107
  %136 = load i32*, i32** %7, align 8
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @M_MASK, align 4
  %139 = and i32 %137, %138
  %140 = load i32, i32* @M_RNG, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %156

142:                                              ; preds = %135
  %143 = load i32, i32* %12, align 4
  %144 = load i32, i32* %13, align 4
  %145 = icmp sle i32 %143, %144
  br i1 %145, label %146, label %153

146:                                              ; preds = %142
  %147 = load i32, i32* %13, align 4
  %148 = load i32*, i32** %7, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 1
  %150 = load i32, i32* %149, align 4
  %151 = icmp sle i32 %147, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %146
  store i32 1, i32* %10, align 4
  br label %153

153:                                              ; preds = %152, %146, %142
  %154 = load i32*, i32** %7, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 2
  store i32* %155, i32** %7, align 8
  br label %162

156:                                              ; preds = %135
  %157 = load i32, i32* %12, align 4
  %158 = load i32, i32* %13, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %156
  store i32 1, i32* %10, align 4
  br label %161

161:                                              ; preds = %160, %156
  br label %162

162:                                              ; preds = %161, %153
  br label %99

163:                                              ; preds = %99
  %164 = load i32, i32* %10, align 4
  %165 = load i32, i32* %11, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %163
  store i32 0, i32* %5, align 4
  br label %184

168:                                              ; preds = %163
  br label %177

169:                                              ; preds = %25
  %170 = load i32*, i32** %6, align 8
  %171 = getelementptr inbounds i32, i32* %170, i32 1
  store i32* %171, i32** %6, align 8
  %172 = load i32, i32* %170, align 4
  %173 = load i32, i32* %12, align 4
  %174 = icmp ne i32 %172, %173
  br i1 %174, label %175, label %176

175:                                              ; preds = %169
  store i32 0, i32* %5, align 4
  br label %184

176:                                              ; preds = %169
  br label %177

177:                                              ; preds = %176, %168, %77
  br label %21

178:                                              ; preds = %21
  %179 = load i32*, i32** %6, align 8
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @EOS, align 4
  %182 = icmp eq i32 %180, %181
  %183 = zext i1 %182 to i32
  store i32 %183, i32* %5, align 4
  br label %184

184:                                              ; preds = %178, %175, %167, %84, %76, %69, %61, %52, %18
  %185 = load i32, i32* %5, align 4
  ret i32 %185
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
