; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_txt.c_txt_emark.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_txt.c_txt_emark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i64, i32, i64, i32, i32 }

@CH_ENDMARK = common dso_local global i8 0, align 1
@LINE_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*, i64)* @txt_emark to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @txt_emark(i32* %0, %struct.TYPE_3__* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load i8, i8* @CH_ENDMARK, align 1
  store i8 %13, i8* %7, align 1
  %14 = load i32*, i32** %4, align 8
  %15 = load i8, i8* %7, align 1
  %16 = call i64 @KEY_COL(i32* %14, i8 signext %15)
  store i64 %16, i64* %10, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = load i64, i64* %6, align 8
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 9
  br i1 %24, label %25, label %34

25:                                               ; preds = %3
  %26 = load i32*, i32** %4, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @vs_columns(i32* %26, i8* %29, i32 %32, i64* %6, i64* %11)
  br label %43

34:                                               ; preds = %3
  %35 = load i32*, i32** %4, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load i64, i64* %6, align 8
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = call i64 @KEY_COL(i32* %35, i8 signext %41)
  store i64 %42, i64* %11, align 8
  br label %43

43:                                               ; preds = %34, %25
  %44 = load i64, i64* %11, align 8
  %45 = load i64, i64* %10, align 8
  %46 = icmp ugt i64 %44, %45
  br i1 %46, label %47, label %159

47:                                               ; preds = %43
  %48 = load i32*, i32** %4, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %11, align 8
  %59 = add i64 %57, %58
  %60 = call i32 @BINC_RETW(i32* %48, i8* %51, i32 %54, i64 %59)
  %61 = load i64, i64* %11, align 8
  %62 = load i64, i64* %10, align 8
  %63 = sub i64 %61, %62
  store i64 %63, i64* %9, align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %87

68:                                               ; preds = %47
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = load i64, i64* %6, align 8
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  %74 = getelementptr inbounds i8, i8* %73, i64 1
  %75 = load i64, i64* %9, align 8
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = load i64, i64* %6, align 8
  %81 = getelementptr inbounds i8, i8* %79, i64 %80
  %82 = getelementptr inbounds i8, i8* %81, i64 1
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @MEMMOVE(i8* %76, i8* %82, i32 %85)
  br label %87

87:                                               ; preds = %68, %47
  %88 = load i64, i64* %9, align 8
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = add i64 %91, %88
  store i64 %92, i64* %90, align 8
  %93 = load i64, i64* %9, align 8
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = add i64 %96, %93
  store i64 %97, i64* %95, align 8
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = load i64, i64* %6, align 8
  %102 = getelementptr inbounds i8, i8* %100, i64 %101
  store i8* %102, i8** %12, align 8
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = load i64, i64* %6, align 8
  %107 = getelementptr inbounds i8, i8* %105, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 9
  br i1 %110, label %121, label %111

111:                                              ; preds = %87
  %112 = load i32*, i32** %4, align 8
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = load i64, i64* %6, align 8
  %117 = getelementptr inbounds i8, i8* %115, i64 %116
  %118 = load i8, i8* %117, align 1
  %119 = call i64 @KEY_NEEDSWIDE(i32* %112, i8 signext %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %133

121:                                              ; preds = %111, %87
  %122 = load i64, i64* %9, align 8
  %123 = load i64, i64* %6, align 8
  %124 = add i64 %123, %122
  store i64 %124, i64* %6, align 8
  br label %125

125:                                              ; preds = %129, %121
  %126 = load i64, i64* %9, align 8
  %127 = add i64 %126, -1
  store i64 %127, i64* %9, align 8
  %128 = icmp ne i64 %126, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %125
  %130 = load i8*, i8** %12, align 8
  %131 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %131, i8** %12, align 8
  store i8 32, i8* %130, align 1
  br label %125

132:                                              ; preds = %125
  br label %158

133:                                              ; preds = %111
  %134 = load i32*, i32** %4, align 8
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = load i64, i64* %6, align 8
  %139 = getelementptr inbounds i8, i8* %137, i64 %138
  %140 = load i8, i8* %139, align 1
  %141 = call i64 @KEY_NAME(i32* %134, i8 signext %140)
  %142 = inttoptr i64 %141 to i32*
  store i32* %142, i32** %8, align 8
  %143 = load i64, i64* %9, align 8
  %144 = load i64, i64* %6, align 8
  %145 = add i64 %144, %143
  store i64 %145, i64* %6, align 8
  br label %146

146:                                              ; preds = %150, %133
  %147 = load i64, i64* %9, align 8
  %148 = add i64 %147, -1
  store i64 %148, i64* %9, align 8
  %149 = icmp ne i64 %147, 0
  br i1 %149, label %150, label %157

150:                                              ; preds = %146
  %151 = load i32*, i32** %8, align 8
  %152 = getelementptr inbounds i32, i32* %151, i32 1
  store i32* %152, i32** %8, align 8
  %153 = load i32, i32* %151, align 4
  %154 = trunc i32 %153 to i8
  %155 = load i8*, i8** %12, align 8
  %156 = getelementptr inbounds i8, i8* %155, i32 1
  store i8* %156, i8** %12, align 8
  store i8 %154, i8* %155, align 1
  br label %146

157:                                              ; preds = %146
  br label %158

158:                                              ; preds = %157, %132
  br label %159

159:                                              ; preds = %158, %43
  %160 = load i8, i8* %7, align 1
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 0
  %163 = load i8*, i8** %162, align 8
  %164 = load i64, i64* %6, align 8
  %165 = getelementptr inbounds i8, i8* %163, i64 %164
  store i8 %160, i8* %165, align 1
  %166 = load i32*, i32** %4, align 8
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @LINE_RESET, align 4
  %171 = call i32 @vs_change(i32* %166, i32 %169, i32 %170)
  ret i32 %171
}

declare dso_local i64 @KEY_COL(i32*, i8 signext) #1

declare dso_local i32 @vs_columns(i32*, i8*, i32, i64*, i64*) #1

declare dso_local i32 @BINC_RETW(i32*, i8*, i32, i64) #1

declare dso_local i32 @MEMMOVE(i8*, i8*, i32) #1

declare dso_local i64 @KEY_NEEDSWIDE(i32*, i8 signext) #1

declare dso_local i64 @KEY_NAME(i32*, i8 signext) #1

declare dso_local i32 @vs_change(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
