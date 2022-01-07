; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libutil/extr_gr_util.c_gr_equal.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libutil/extr_gr_util.c_gr_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.group = type { i64, i32**, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gr_equal(%struct.group* %0, %struct.group* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.group*, align 8
  %5 = alloca %struct.group*, align 8
  %6 = alloca i32, align 4
  store %struct.group* %0, %struct.group** %4, align 8
  store %struct.group* %1, %struct.group** %5, align 8
  %7 = load %struct.group*, %struct.group** %4, align 8
  %8 = getelementptr inbounds %struct.group, %struct.group* %7, i32 0, i32 3
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = load %struct.group*, %struct.group** %5, align 8
  %13 = getelementptr inbounds %struct.group, %struct.group* %12, i32 0, i32 3
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %26

16:                                               ; preds = %11, %2
  %17 = load %struct.group*, %struct.group** %4, align 8
  %18 = getelementptr inbounds %struct.group, %struct.group* %17, i32 0, i32 3
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.group*, %struct.group** %5, align 8
  %21 = getelementptr inbounds %struct.group, %struct.group* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %179

25:                                               ; preds = %16
  br label %37

26:                                               ; preds = %11
  %27 = load %struct.group*, %struct.group** %4, align 8
  %28 = getelementptr inbounds %struct.group, %struct.group* %27, i32 0, i32 3
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.group*, %struct.group** %5, align 8
  %31 = getelementptr inbounds %struct.group, %struct.group* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = call i64 @strcmp(i32* %29, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %179

36:                                               ; preds = %26
  br label %37

37:                                               ; preds = %36, %25
  %38 = load %struct.group*, %struct.group** %4, align 8
  %39 = getelementptr inbounds %struct.group, %struct.group* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load %struct.group*, %struct.group** %5, align 8
  %44 = getelementptr inbounds %struct.group, %struct.group* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %57

47:                                               ; preds = %42, %37
  %48 = load %struct.group*, %struct.group** %4, align 8
  %49 = getelementptr inbounds %struct.group, %struct.group* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.group*, %struct.group** %5, align 8
  %52 = getelementptr inbounds %struct.group, %struct.group* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %50, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %179

56:                                               ; preds = %47
  br label %68

57:                                               ; preds = %42
  %58 = load %struct.group*, %struct.group** %4, align 8
  %59 = getelementptr inbounds %struct.group, %struct.group* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.group*, %struct.group** %5, align 8
  %62 = getelementptr inbounds %struct.group, %struct.group* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = call i64 @strcmp(i32* %60, i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  br label %179

67:                                               ; preds = %57
  br label %68

68:                                               ; preds = %67, %56
  %69 = load %struct.group*, %struct.group** %4, align 8
  %70 = getelementptr inbounds %struct.group, %struct.group* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.group*, %struct.group** %5, align 8
  %73 = getelementptr inbounds %struct.group, %struct.group* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %71, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  store i32 0, i32* %3, align 4
  br label %179

77:                                               ; preds = %68
  %78 = load %struct.group*, %struct.group** %4, align 8
  %79 = getelementptr inbounds %struct.group, %struct.group* %78, i32 0, i32 1
  %80 = load i32**, i32*** %79, align 8
  %81 = icmp ne i32** %80, null
  br i1 %81, label %82, label %150

82:                                               ; preds = %77
  %83 = load %struct.group*, %struct.group** %5, align 8
  %84 = getelementptr inbounds %struct.group, %struct.group* %83, i32 0, i32 1
  %85 = load i32**, i32*** %84, align 8
  %86 = icmp ne i32** %85, null
  br i1 %86, label %87, label %150

87:                                               ; preds = %82
  store i32 0, i32* %6, align 4
  br label %88

88:                                               ; preds = %127, %87
  %89 = load %struct.group*, %struct.group** %4, align 8
  %90 = getelementptr inbounds %struct.group, %struct.group* %89, i32 0, i32 1
  %91 = load i32**, i32*** %90, align 8
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32*, i32** %91, i64 %93
  %95 = load i32*, i32** %94, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %106

97:                                               ; preds = %88
  %98 = load %struct.group*, %struct.group** %5, align 8
  %99 = getelementptr inbounds %struct.group, %struct.group* %98, i32 0, i32 1
  %100 = load i32**, i32*** %99, align 8
  %101 = load i32, i32* %6, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32*, i32** %100, i64 %102
  %104 = load i32*, i32** %103, align 8
  %105 = icmp ne i32* %104, null
  br label %106

106:                                              ; preds = %97, %88
  %107 = phi i1 [ false, %88 ], [ %105, %97 ]
  br i1 %107, label %108, label %130

108:                                              ; preds = %106
  %109 = load %struct.group*, %struct.group** %4, align 8
  %110 = getelementptr inbounds %struct.group, %struct.group* %109, i32 0, i32 1
  %111 = load i32**, i32*** %110, align 8
  %112 = load i32, i32* %6, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32*, i32** %111, i64 %113
  %115 = load i32*, i32** %114, align 8
  %116 = load %struct.group*, %struct.group** %5, align 8
  %117 = getelementptr inbounds %struct.group, %struct.group* %116, i32 0, i32 1
  %118 = load i32**, i32*** %117, align 8
  %119 = load i32, i32* %6, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32*, i32** %118, i64 %120
  %122 = load i32*, i32** %121, align 8
  %123 = call i64 @strcmp(i32* %115, i32* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %108
  store i32 0, i32* %3, align 4
  br label %179

126:                                              ; preds = %108
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %6, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %6, align 4
  br label %88

130:                                              ; preds = %106
  %131 = load %struct.group*, %struct.group** %4, align 8
  %132 = getelementptr inbounds %struct.group, %struct.group* %131, i32 0, i32 1
  %133 = load i32**, i32*** %132, align 8
  %134 = load i32, i32* %6, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32*, i32** %133, i64 %135
  %137 = load i32*, i32** %136, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %148, label %139

139:                                              ; preds = %130
  %140 = load %struct.group*, %struct.group** %5, align 8
  %141 = getelementptr inbounds %struct.group, %struct.group* %140, i32 0, i32 1
  %142 = load i32**, i32*** %141, align 8
  %143 = load i32, i32* %6, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32*, i32** %142, i64 %144
  %146 = load i32*, i32** %145, align 8
  %147 = icmp ne i32* %146, null
  br i1 %147, label %148, label %149

148:                                              ; preds = %139, %130
  store i32 0, i32* %3, align 4
  br label %179

149:                                              ; preds = %139
  br label %178

150:                                              ; preds = %82, %77
  %151 = load %struct.group*, %struct.group** %4, align 8
  %152 = getelementptr inbounds %struct.group, %struct.group* %151, i32 0, i32 1
  %153 = load i32**, i32*** %152, align 8
  %154 = icmp ne i32** %153, null
  br i1 %154, label %155, label %163

155:                                              ; preds = %150
  %156 = load %struct.group*, %struct.group** %4, align 8
  %157 = getelementptr inbounds %struct.group, %struct.group* %156, i32 0, i32 1
  %158 = load i32**, i32*** %157, align 8
  %159 = getelementptr inbounds i32*, i32** %158, i64 0
  %160 = load i32*, i32** %159, align 8
  %161 = icmp ne i32* %160, null
  br i1 %161, label %162, label %163

162:                                              ; preds = %155
  store i32 0, i32* %3, align 4
  br label %179

163:                                              ; preds = %155, %150
  %164 = load %struct.group*, %struct.group** %5, align 8
  %165 = getelementptr inbounds %struct.group, %struct.group* %164, i32 0, i32 1
  %166 = load i32**, i32*** %165, align 8
  %167 = icmp ne i32** %166, null
  br i1 %167, label %168, label %176

168:                                              ; preds = %163
  %169 = load %struct.group*, %struct.group** %5, align 8
  %170 = getelementptr inbounds %struct.group, %struct.group* %169, i32 0, i32 1
  %171 = load i32**, i32*** %170, align 8
  %172 = getelementptr inbounds i32*, i32** %171, i64 0
  %173 = load i32*, i32** %172, align 8
  %174 = icmp ne i32* %173, null
  br i1 %174, label %175, label %176

175:                                              ; preds = %168
  store i32 0, i32* %3, align 4
  br label %179

176:                                              ; preds = %168, %163
  br label %177

177:                                              ; preds = %176
  br label %178

178:                                              ; preds = %177, %149
  store i32 1, i32* %3, align 4
  br label %179

179:                                              ; preds = %178, %175, %162, %148, %125, %76, %66, %55, %35, %24
  %180 = load i32, i32* %3, align 4
  ret i32 %180
}

declare dso_local i64 @strcmp(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
