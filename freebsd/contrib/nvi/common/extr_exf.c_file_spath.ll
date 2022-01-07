; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_exf.c_file_spath.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_exf.c_file_spath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }
%struct.stat = type { i32 }

@O_PATH = common dso_local global i32 0, align 4
@M_SYSERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*, %struct.stat*, i32*)* @file_spath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_spath(i32* %0, %struct.TYPE_3__* %1, %struct.stat* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca %struct.stat*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store %struct.stat* %2, %struct.stat** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %13, align 8
  %20 = load i8*, i8** %13, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32*, i32** %9, align 8
  store i32 0, i32* %23, align 4
  store i32 0, i32* %5, align 4
  br label %153

24:                                               ; preds = %4
  %25 = load i8*, i8** %13, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 47
  br i1 %29, label %54, label %30

30:                                               ; preds = %24
  %31 = load i8*, i8** %13, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 46
  br i1 %35, label %36, label %62

36:                                               ; preds = %30
  %37 = load i8*, i8** %13, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 47
  br i1 %41, label %54, label %42

42:                                               ; preds = %36
  %43 = load i8*, i8** %13, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 46
  br i1 %47, label %48, label %62

48:                                               ; preds = %42
  %49 = load i8*, i8** %13, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 2
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 47
  br i1 %53, label %54, label %62

54:                                               ; preds = %48, %36, %24
  %55 = load i8*, i8** %13, align 8
  %56 = load %struct.stat*, %struct.stat** %8, align 8
  %57 = call i32 @stat(i8* %55, %struct.stat* %56)
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = load i32*, i32** %9, align 8
  store i32 %60, i32* %61, align 4
  store i32 0, i32* %5, align 4
  br label %153

62:                                               ; preds = %48, %42, %30
  %63 = load i8*, i8** %13, align 8
  %64 = load %struct.stat*, %struct.stat** %8, align 8
  %65 = call i32 @stat(i8* %63, %struct.stat* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %62
  %68 = load i32*, i32** %9, align 8
  store i32 1, i32* %68, align 4
  store i32 0, i32* %5, align 4
  br label %153

69:                                               ; preds = %62
  store i32 0, i32* %12, align 4
  %70 = load i32*, i32** %6, align 8
  %71 = load i32, i32* @O_PATH, align 4
  %72 = call i8* @O_STR(i32* %70, i32 %71)
  store i8* %72, i8** %15, align 8
  store i8* %72, i8** %14, align 8
  br label %73

73:                                               ; preds = %136, %69
  %74 = load i8*, i8** %14, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 58
  br i1 %77, label %83, label %78

78:                                               ; preds = %73
  %79 = load i8*, i8** %14, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %135

83:                                               ; preds = %78, %73
  %84 = load i8*, i8** %15, align 8
  %85 = load i8*, i8** %14, align 8
  %86 = icmp ult i8* %84, %85
  br i1 %86, label %87, label %126

87:                                               ; preds = %83
  %88 = load i8*, i8** %14, align 8
  %89 = load i8*, i8** %15, align 8
  %90 = ptrtoint i8* %88 to i64
  %91 = ptrtoint i8* %89 to i64
  %92 = sub i64 %90, %91
  %93 = icmp ne i64 %92, 1
  br i1 %93, label %99, label %94

94:                                               ; preds = %87
  %95 = load i8*, i8** %15, align 8
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp ne i32 %97, 46
  br i1 %98, label %99, label %126

99:                                               ; preds = %94, %87
  %100 = load i8*, i8** %14, align 8
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  store i32 %102, i32* %10, align 4
  %103 = load i8*, i8** %14, align 8
  store i8 0, i8* %103, align 1
  %104 = load i8*, i8** %15, align 8
  %105 = load i8*, i8** %13, align 8
  %106 = call i8* @join(i8* %104, i8* %105)
  store i8* %106, i8** %16, align 8
  %107 = icmp eq i8* %106, null
  br i1 %107, label %108, label %112

108:                                              ; preds = %99
  %109 = load i32*, i32** %6, align 8
  %110 = load i32, i32* @M_SYSERR, align 4
  %111 = call i32 @msgq(i32* %109, i32 %110, i32* null)
  br label %139

112:                                              ; preds = %99
  %113 = load i8*, i8** %16, align 8
  %114 = call i64 @strlen(i8* %113)
  store i64 %114, i64* %11, align 8
  %115 = load i32, i32* %10, align 4
  %116 = trunc i32 %115 to i8
  %117 = load i8*, i8** %14, align 8
  store i8 %116, i8* %117, align 1
  %118 = load i8*, i8** %16, align 8
  %119 = load %struct.stat*, %struct.stat** %8, align 8
  %120 = call i32 @stat(i8* %118, %struct.stat* %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %112
  store i32 1, i32* %12, align 4
  br label %139

123:                                              ; preds = %112
  %124 = load i8*, i8** %16, align 8
  %125 = call i32 @free(i8* %124)
  br label %126

126:                                              ; preds = %123, %94, %83
  %127 = load i8*, i8** %14, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 1
  store i8* %128, i8** %15, align 8
  %129 = load i8*, i8** %14, align 8
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %126
  br label %139

134:                                              ; preds = %126
  br label %135

135:                                              ; preds = %134, %78
  br label %136

136:                                              ; preds = %135
  %137 = load i8*, i8** %14, align 8
  %138 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %138, i8** %14, align 8
  br label %73

139:                                              ; preds = %133, %122, %108
  %140 = load i32, i32* %12, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %150

142:                                              ; preds = %139
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  %146 = call i32 @free(i8* %145)
  %147 = load i8*, i8** %16, align 8
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 0
  store i8* %147, i8** %149, align 8
  br label %150

150:                                              ; preds = %142, %139
  %151 = load i32, i32* %12, align 4
  %152 = load i32*, i32** %9, align 8
  store i32 %151, i32* %152, align 4
  store i32 0, i32* %5, align 4
  br label %153

153:                                              ; preds = %150, %67, %54, %22
  %154 = load i32, i32* %5, align 4
  ret i32 %154
}

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i8* @O_STR(i32*, i32) #1

declare dso_local i8* @join(i8*, i8*) #1

declare dso_local i32 @msgq(i32*, i32, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
