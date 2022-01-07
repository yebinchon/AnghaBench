; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_glob.c_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_glob.c_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlocale_collate = type { i32 }
%struct.TYPE_2__ = type { i64* }

@XLC_COLLATE = common dso_local global i64 0, align 8
@M_MASK = common dso_local global i32 0, align 4
@EOS = common dso_local global i32 0, align 4
@M_NOT = common dso_local global i32 0, align 4
@M_END = common dso_local global i32 0, align 4
@M_RNG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.xlocale_collate*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = call %struct.TYPE_2__* (...) @__get_locale()
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = load i64, i64* @XLC_COLLATE, align 8
  %19 = getelementptr inbounds i64, i64* %17, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.xlocale_collate*
  store %struct.xlocale_collate* %21, %struct.xlocale_collate** %14, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %12, align 8
  br label %22

22:                                               ; preds = %3, %166
  br label %23

23:                                               ; preds = %154, %22
  %24 = load i32*, i32** %6, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = icmp ult i32* %24, %25
  br i1 %26, label %27, label %155

27:                                               ; preds = %23
  %28 = load i32*, i32** %6, align 8
  %29 = getelementptr inbounds i32, i32* %28, i32 1
  store i32* %29, i32** %6, align 8
  %30 = load i32, i32* %28, align 4
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @M_MASK, align 4
  %33 = and i32 %31, %32
  switch i32 %33, label %146 [
    i32 130, label %34
    i32 129, label %50
    i32 128, label %58
  ]

34:                                               ; preds = %27
  %35 = load i32*, i32** %6, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = icmp eq i32* %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i32 1, i32* %4, align 4
  br label %170

39:                                               ; preds = %34
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @EOS, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %170

45:                                               ; preds = %39
  %46 = load i32*, i32** %5, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  store i32* %47, i32** %13, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 -1
  store i32* %49, i32** %12, align 8
  br label %154

50:                                               ; preds = %27
  %51 = load i32*, i32** %5, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %5, align 8
  %53 = load i32, i32* %51, align 4
  %54 = load i32, i32* @EOS, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %162

57:                                               ; preds = %50
  br label %154

58:                                               ; preds = %27
  store i32 0, i32* %8, align 4
  %59 = load i32*, i32** %5, align 8
  %60 = getelementptr inbounds i32, i32* %59, i32 1
  store i32* %60, i32** %5, align 8
  %61 = load i32, i32* %59, align 4
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* @EOS, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %162

65:                                               ; preds = %58
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @M_MASK, align 4
  %69 = and i32 %67, %68
  %70 = load i32, i32* @M_NOT, align 4
  %71 = icmp eq i32 %69, %70
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %65
  %76 = load i32*, i32** %6, align 8
  %77 = getelementptr inbounds i32, i32* %76, i32 1
  store i32* %77, i32** %6, align 8
  br label %78

78:                                               ; preds = %75, %65
  br label %79

79:                                               ; preds = %139, %78
  %80 = load i32*, i32** %6, align 8
  %81 = getelementptr inbounds i32, i32* %80, i32 1
  store i32* %81, i32** %6, align 8
  %82 = load i32, i32* %80, align 4
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* @M_MASK, align 4
  %84 = and i32 %82, %83
  %85 = load i32, i32* @M_END, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %140

87:                                               ; preds = %79
  %88 = load i32*, i32** %6, align 8
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @M_MASK, align 4
  %91 = and i32 %89, %90
  %92 = load i32, i32* @M_RNG, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %133

94:                                               ; preds = %87
  %95 = load %struct.xlocale_collate*, %struct.xlocale_collate** %14, align 8
  %96 = getelementptr inbounds %struct.xlocale_collate, %struct.xlocale_collate* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %113

99:                                               ; preds = %94
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @CHAR(i32 %100)
  %102 = load i32, i32* %11, align 4
  %103 = call i32 @CHAR(i32 %102)
  %104 = icmp sle i32 %101, %103
  br i1 %104, label %105, label %130

105:                                              ; preds = %99
  %106 = load i32, i32* %11, align 4
  %107 = call i32 @CHAR(i32 %106)
  %108 = load i32*, i32** %6, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @CHAR(i32 %110)
  %112 = icmp sle i32 %107, %111
  br i1 %112, label %129, label %130

113:                                              ; preds = %94
  %114 = load i32, i32* %10, align 4
  %115 = call i32 @CHAR(i32 %114)
  %116 = load i32, i32* %11, align 4
  %117 = call i32 @CHAR(i32 %116)
  %118 = call i32 @__wcollate_range_cmp(i32 %115, i32 %117)
  %119 = icmp sle i32 %118, 0
  br i1 %119, label %120, label %130

120:                                              ; preds = %113
  %121 = load i32, i32* %11, align 4
  %122 = call i32 @CHAR(i32 %121)
  %123 = load i32*, i32** %6, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @CHAR(i32 %125)
  %127 = call i32 @__wcollate_range_cmp(i32 %122, i32 %126)
  %128 = icmp sle i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %120, %105
  store i32 1, i32* %8, align 4
  br label %130

130:                                              ; preds = %129, %120, %113, %105, %99
  %131 = load i32*, i32** %6, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 2
  store i32* %132, i32** %6, align 8
  br label %139

133:                                              ; preds = %87
  %134 = load i32, i32* %10, align 4
  %135 = load i32, i32* %11, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %133
  store i32 1, i32* %8, align 4
  br label %138

138:                                              ; preds = %137, %133
  br label %139

139:                                              ; preds = %138, %130
  br label %79

140:                                              ; preds = %79
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* %9, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %140
  br label %162

145:                                              ; preds = %140
  br label %154

146:                                              ; preds = %27
  %147 = load i32*, i32** %5, align 8
  %148 = getelementptr inbounds i32, i32* %147, i32 1
  store i32* %148, i32** %5, align 8
  %149 = load i32, i32* %147, align 4
  %150 = load i32, i32* %10, align 4
  %151 = icmp ne i32 %149, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %146
  br label %162

153:                                              ; preds = %146
  br label %154

154:                                              ; preds = %153, %145, %57, %45
  br label %23

155:                                              ; preds = %23
  %156 = load i32*, i32** %5, align 8
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @EOS, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %155
  store i32 1, i32* %4, align 4
  br label %170

161:                                              ; preds = %155
  br label %162

162:                                              ; preds = %161, %152, %144, %64, %56
  %163 = load i32*, i32** %13, align 8
  %164 = icmp eq i32* %163, null
  br i1 %164, label %165, label %166

165:                                              ; preds = %162
  br label %169

166:                                              ; preds = %162
  %167 = load i32*, i32** %12, align 8
  store i32* %167, i32** %6, align 8
  %168 = load i32*, i32** %13, align 8
  store i32* %168, i32** %5, align 8
  br label %22

169:                                              ; preds = %165
  store i32 0, i32* %4, align 4
  br label %170

170:                                              ; preds = %169, %160, %44, %38
  %171 = load i32, i32* %4, align 4
  ret i32 %171
}

declare dso_local %struct.TYPE_2__* @__get_locale(...) #1

declare dso_local i32 @CHAR(i32) #1

declare dso_local i32 @__wcollate_range_cmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
