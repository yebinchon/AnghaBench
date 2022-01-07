; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_txt.c_txt_ai_resolve.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_txt.c_txt_ai_resolve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i8*, i64 }

@O_TABSTOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*, i32*)* @txt_ai_resolve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @txt_ai_resolve(i32* %0, %struct.TYPE_3__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i32* %2, i32** %6, align 8
  %18 = load i32*, i32** %6, align 8
  store i32 0, i32* %18, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %3
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28, %23, %3
  br label %190

34:                                               ; preds = %28
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ule i64 %37, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %34
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  store i64 0, i64* %46, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  store i64 0, i64* %48, align 8
  br label %190

49:                                               ; preds = %34
  %50 = load i32*, i32** %4, align 8
  %51 = load i32, i32* @O_TABSTOP, align 4
  %52 = call i64 @O_VAL(i32* %50, i32 %51)
  store i64 %52, i64* %7, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 3
  %55 = load i8*, i8** %54, align 8
  store i8* %55, i8** %17, align 8
  store i64 0, i64* %13, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %10, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %14, align 8
  br label %59

59:                                               ; preds = %91, %49
  %60 = load i64, i64* %10, align 8
  %61 = add i64 %60, -1
  store i64 %61, i64* %10, align 8
  %62 = icmp ne i64 %60, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = load i8*, i8** %17, align 8
  %65 = load i8, i8* %64, align 1
  %66 = call i64 @isblank(i8 signext %65)
  %67 = icmp ne i64 %66, 0
  br label %68

68:                                               ; preds = %63, %59
  %69 = phi i1 [ false, %59 ], [ %67, %63 ]
  br i1 %69, label %70, label %94

70:                                               ; preds = %68
  %71 = load i8*, i8** %17, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 9
  br i1 %74, label %75, label %85

75:                                               ; preds = %70
  %76 = load i64, i64* %14, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  store i64 1, i64* %15, align 8
  br label %79

79:                                               ; preds = %78, %75
  %80 = load i64, i64* %13, align 8
  %81 = load i64, i64* %7, align 8
  %82 = call i64 @COL_OFF(i64 %80, i64 %81)
  %83 = load i64, i64* %13, align 8
  %84 = add i64 %83, %82
  store i64 %84, i64* %13, align 8
  br label %90

85:                                               ; preds = %70
  %86 = load i64, i64* %14, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %14, align 8
  %88 = load i64, i64* %13, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %13, align 8
  br label %90

90:                                               ; preds = %85, %79
  br label %91

91:                                               ; preds = %90
  %92 = load i8*, i8** %17, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %17, align 8
  br label %59

94:                                               ; preds = %68
  %95 = load i64, i64* %14, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %94
  %98 = load i64, i64* %15, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %97
  %101 = load i64, i64* %14, align 8
  %102 = load i64, i64* %7, align 8
  %103 = icmp ult i64 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %100, %94
  br label %190

105:                                              ; preds = %100, %97
  store i64 0, i64* %9, align 8
  store i64 0, i64* %16, align 8
  br label %106

106:                                              ; preds = %120, %105
  %107 = load i64, i64* %9, align 8
  %108 = load i64, i64* %9, align 8
  %109 = load i64, i64* %7, align 8
  %110 = call i64 @COL_OFF(i64 %108, i64 %109)
  %111 = add i64 %107, %110
  %112 = load i64, i64* %13, align 8
  %113 = icmp ule i64 %111, %112
  br i1 %113, label %114, label %123

114:                                              ; preds = %106
  %115 = load i64, i64* %9, align 8
  %116 = load i64, i64* %7, align 8
  %117 = call i64 @COL_OFF(i64 %115, i64 %116)
  %118 = load i64, i64* %9, align 8
  %119 = add i64 %118, %117
  store i64 %119, i64* %9, align 8
  br label %120

120:                                              ; preds = %114
  %121 = load i64, i64* %16, align 8
  %122 = add i64 %121, 1
  store i64 %122, i64* %16, align 8
  br label %106

123:                                              ; preds = %106
  %124 = load i64, i64* %13, align 8
  %125 = load i64, i64* %9, align 8
  %126 = sub i64 %124, %125
  store i64 %126, i64* %14, align 8
  %127 = load i8*, i8** %17, align 8
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 3
  %130 = load i8*, i8** %129, align 8
  %131 = ptrtoint i8* %127 to i64
  %132 = ptrtoint i8* %130 to i64
  %133 = sub i64 %131, %132
  store i64 %133, i64* %12, align 8
  %134 = load i64, i64* %14, align 8
  %135 = load i64, i64* %16, align 8
  %136 = add i64 %134, %135
  store i64 %136, i64* %11, align 8
  %137 = load i64, i64* %12, align 8
  %138 = load i64, i64* %11, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %123
  br label %190

141:                                              ; preds = %123
  %142 = load i64, i64* %12, align 8
  %143 = load i64, i64* %11, align 8
  %144 = sub i64 %142, %143
  %145 = trunc i64 %144 to i32
  store i32 %145, i32* %8, align 4
  %146 = load i8*, i8** %17, align 8
  %147 = load i32, i32* %8, align 4
  %148 = sext i32 %147 to i64
  %149 = sub i64 0, %148
  %150 = getelementptr inbounds i8, i8* %146, i64 %149
  %151 = load i8*, i8** %17, align 8
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* %12, align 8
  %156 = sub i64 %154, %155
  %157 = call i32 @MEMMOVE(i8* %150, i8* %151, i64 %156)
  %158 = load i32, i32* %8, align 4
  %159 = sext i32 %158 to i64
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = sub i64 %162, %159
  store i64 %163, i64* %161, align 8
  %164 = load i32, i32* %8, align 4
  %165 = sext i32 %164 to i64
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 2
  %168 = load i64, i64* %167, align 8
  %169 = sub i64 %168, %165
  store i64 %169, i64* %167, align 8
  %170 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 3
  %172 = load i8*, i8** %171, align 8
  store i8* %172, i8** %17, align 8
  br label %173

173:                                              ; preds = %177, %141
  %174 = load i64, i64* %16, align 8
  %175 = add i64 %174, -1
  store i64 %175, i64* %16, align 8
  %176 = icmp ne i64 %174, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %173
  %178 = load i8*, i8** %17, align 8
  %179 = getelementptr inbounds i8, i8* %178, i32 1
  store i8* %179, i8** %17, align 8
  store i8 9, i8* %178, align 1
  br label %173

180:                                              ; preds = %173
  br label %181

181:                                              ; preds = %185, %180
  %182 = load i64, i64* %14, align 8
  %183 = add i64 %182, -1
  store i64 %183, i64* %14, align 8
  %184 = icmp ne i64 %182, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %181
  %186 = load i8*, i8** %17, align 8
  %187 = getelementptr inbounds i8, i8* %186, i32 1
  store i8* %187, i8** %17, align 8
  store i8 32, i8* %186, align 1
  br label %181

188:                                              ; preds = %181
  %189 = load i32*, i32** %6, align 8
  store i32 1, i32* %189, align 4
  br label %190

190:                                              ; preds = %188, %140, %104, %42, %33
  ret void
}

declare dso_local i64 @O_VAL(i32*, i32) #1

declare dso_local i64 @isblank(i8 signext) #1

declare dso_local i64 @COL_OFF(i64, i64) #1

declare dso_local i32 @MEMMOVE(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
