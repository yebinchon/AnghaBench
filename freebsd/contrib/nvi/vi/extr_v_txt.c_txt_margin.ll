; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_txt.c_txt_margin.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_txt.c_txt_margin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i64, i32, i32, i32, i32* }

@TXT_APPENDEOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_4__*, %struct.TYPE_4__*, i32*, i32)* @txt_margin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @txt_margin(i32* %0, %struct.TYPE_4__* %1, %struct.TYPE_4__* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %8, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sub nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %14, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 6
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* %14, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  store i32* %26, i32** %15, align 8
  store i64 0, i64* %13, align 8
  br label %27

27:                                               ; preds = %50, %5
  %28 = load i32*, i32** %15, align 8
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @isblank(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32*, i32** %15, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  store i32* %34, i32** %16, align 8
  br label %57

35:                                               ; preds = %27
  %36 = load i64, i64* %14, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %36, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %35
  %42 = load i64, i64* %14, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %42, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %41, %35
  %48 = load i32*, i32** %10, align 8
  store i32 0, i32* %48, align 4
  store i32 0, i32* %6, align 4
  br label %177

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49
  %51 = load i64, i64* %14, align 8
  %52 = add i64 %51, -1
  store i64 %52, i64* %14, align 8
  %53 = load i32*, i32** %15, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 -1
  store i32* %54, i32** %15, align 8
  %55 = load i64, i64* %13, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %13, align 8
  br label %27

57:                                               ; preds = %32
  %58 = load i32*, i32** %7, align 8
  %59 = call i32* @VIP(i32* %58)
  store i32* %59, i32** %12, align 8
  %60 = load i32*, i32** %15, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 6
  store i32* %61, i32** %63, align 8
  %64 = load i64, i64* %13, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  store i64 %64, i64* %66, align 8
  %67 = load i32, i32* @TXT_APPENDEOL, align 4
  %68 = call i64 @LF_ISSET(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %57
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = sub nsw i32 %73, 1
  br label %79

75:                                               ; preds = %57
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  br label %79

79:                                               ; preds = %75, %70
  %80 = phi i32 [ %74, %70 ], [ %78, %75 ]
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 8
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 4
  store i32 %85, i32* %87, align 4
  %88 = load i64, i64* %13, align 8
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = sub i64 %92, %88
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %90, align 8
  %95 = load i32, i32* @TXT_APPENDEOL, align 4
  %96 = call i64 @LF_ISSET(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %119

98:                                               ; preds = %79
  %99 = load i64, i64* %13, align 8
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = add i64 %99, %103
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = sub nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = add i64 %104, %109
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 8
  %114 = sext i32 %113 to i64
  %115 = sub i64 %114, %110
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %112, align 8
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 3
  store i32 1, i32* %118, align 8
  br label %139

119:                                              ; preds = %79
  %120 = load i64, i64* %13, align 8
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 4
  %124 = sext i32 %123 to i64
  %125 = add i64 %120, %124
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = sext i32 %128 to i64
  %130 = add i64 %125, %129
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 8
  %134 = sext i32 %133 to i64
  %135 = sub i64 %134, %130
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %132, align 8
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 3
  store i32 0, i32* %138, align 8
  br label %139

139:                                              ; preds = %119, %98
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 4
  store i32 0, i32* %141, align 4
  br label %142

142:                                              ; preds = %170, %139
  %143 = load i32*, i32** %15, align 8
  %144 = load i32, i32* %143, align 4
  %145 = call i64 @isblank(i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %142
  br label %175

148:                                              ; preds = %142
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = add nsw i32 %151, -1
  store i32 %152, i32* %150, align 8
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 5
  %155 = load i32, i32* %154, align 8
  %156 = add nsw i32 %155, -1
  store i32 %156, i32* %154, align 8
  %157 = load i64, i64* %14, align 8
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = icmp eq i64 %157, %160
  br i1 %161, label %168, label %162

162:                                              ; preds = %148
  %163 = load i64, i64* %14, align 8
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = icmp eq i64 %163, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %162, %148
  br label %175

169:                                              ; preds = %162
  br label %170

170:                                              ; preds = %169
  %171 = load i32*, i32** %15, align 8
  %172 = getelementptr inbounds i32, i32* %171, i32 -1
  store i32* %172, i32** %15, align 8
  %173 = load i64, i64* %14, align 8
  %174 = add i64 %173, -1
  store i64 %174, i64* %14, align 8
  br label %142

175:                                              ; preds = %168, %147
  %176 = load i32*, i32** %10, align 8
  store i32 1, i32* %176, align 4
  store i32 0, i32* %6, align 4
  br label %177

177:                                              ; preds = %175, %47
  %178 = load i32, i32* %6, align 4
  ret i32 %178
}

declare dso_local i64 @isblank(i32) #1

declare dso_local i32* @VIP(i32*) #1

declare dso_local i64 @LF_ISSET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
