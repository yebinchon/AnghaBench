; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.hist.c_addWordToHash.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.hist.c_addWordToHash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashValue = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hashValue*, i32*)* @addWordToHash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addWordToHash(%struct.hashValue* %0, i32* %1) #0 {
  %3 = alloca %struct.hashValue*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hashValue* %0, %struct.hashValue** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.hashValue*, %struct.hashValue** %3, align 8
  %10 = getelementptr inbounds %struct.hashValue, %struct.hashValue* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  %12 = load %struct.hashValue*, %struct.hashValue** %3, align 8
  %13 = getelementptr inbounds %struct.hashValue, %struct.hashValue* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load %struct.hashValue*, %struct.hashValue** %3, align 8
  %16 = getelementptr inbounds %struct.hashValue, %struct.hashValue* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = call i32 @assert(i32 0)
  br label %19

19:                                               ; preds = %2, %132
  %20 = load i32*, i32** %4, align 8
  %21 = getelementptr inbounds i32, i32* %20, i32 1
  store i32* %21, i32** %4, align 8
  %22 = load i32, i32* %20, align 4
  store i32 %22, i32* %8, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %141

25:                                               ; preds = %19
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %5, align 4
  %28 = add i32 %27, %26
  store i32 %28, i32* %5, align 4
  %29 = load i32*, i32** %4, align 8
  %30 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %30, i32** %4, align 8
  %31 = load i32, i32* %29, align 4
  store i32 %31, i32* %8, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %141

34:                                               ; preds = %25
  %35 = load i32, i32* %8, align 4
  %36 = shl i32 %35, 8
  %37 = load i32, i32* %5, align 4
  %38 = add i32 %37, %36
  store i32 %38, i32* %5, align 4
  %39 = load i32*, i32** %4, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %4, align 8
  %41 = load i32, i32* %39, align 4
  store i32 %41, i32* %8, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %141

44:                                               ; preds = %34
  %45 = load i32, i32* %8, align 4
  %46 = shl i32 %45, 16
  %47 = load i32, i32* %5, align 4
  %48 = add i32 %47, %46
  store i32 %48, i32* %5, align 4
  %49 = load i32*, i32** %4, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %50, i32** %4, align 8
  %51 = load i32, i32* %49, align 4
  store i32 %51, i32* %8, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  br label %141

54:                                               ; preds = %44
  %55 = load i32, i32* %8, align 4
  %56 = shl i32 %55, 24
  %57 = load i32, i32* %5, align 4
  %58 = add i32 %57, %56
  store i32 %58, i32* %5, align 4
  %59 = load i32*, i32** %4, align 8
  %60 = getelementptr inbounds i32, i32* %59, i32 1
  store i32* %60, i32** %4, align 8
  %61 = load i32, i32* %59, align 4
  store i32 %61, i32* %8, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  br label %141

64:                                               ; preds = %54
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %6, align 4
  %67 = add i32 %66, %65
  store i32 %67, i32* %6, align 4
  %68 = load i32*, i32** %4, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %69, i32** %4, align 8
  %70 = load i32, i32* %68, align 4
  store i32 %70, i32* %8, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  br label %141

73:                                               ; preds = %64
  %74 = load i32, i32* %8, align 4
  %75 = shl i32 %74, 8
  %76 = load i32, i32* %6, align 4
  %77 = add i32 %76, %75
  store i32 %77, i32* %6, align 4
  %78 = load i32*, i32** %4, align 8
  %79 = getelementptr inbounds i32, i32* %78, i32 1
  store i32* %79, i32** %4, align 8
  %80 = load i32, i32* %78, align 4
  store i32 %80, i32* %8, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %73
  br label %141

83:                                               ; preds = %73
  %84 = load i32, i32* %8, align 4
  %85 = shl i32 %84, 16
  %86 = load i32, i32* %6, align 4
  %87 = add i32 %86, %85
  store i32 %87, i32* %6, align 4
  %88 = load i32*, i32** %4, align 8
  %89 = getelementptr inbounds i32, i32* %88, i32 1
  store i32* %89, i32** %4, align 8
  %90 = load i32, i32* %88, align 4
  store i32 %90, i32* %8, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %83
  br label %141

93:                                               ; preds = %83
  %94 = load i32, i32* %8, align 4
  %95 = shl i32 %94, 24
  %96 = load i32, i32* %6, align 4
  %97 = add i32 %96, %95
  store i32 %97, i32* %6, align 4
  %98 = load i32*, i32** %4, align 8
  %99 = getelementptr inbounds i32, i32* %98, i32 1
  store i32* %99, i32** %4, align 8
  %100 = load i32, i32* %98, align 4
  store i32 %100, i32* %8, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %93
  br label %141

103:                                              ; preds = %93
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* %7, align 4
  %106 = add i32 %105, %104
  store i32 %106, i32* %7, align 4
  %107 = load i32*, i32** %4, align 8
  %108 = getelementptr inbounds i32, i32* %107, i32 1
  store i32* %108, i32** %4, align 8
  %109 = load i32, i32* %107, align 4
  store i32 %109, i32* %8, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %103
  br label %141

112:                                              ; preds = %103
  %113 = load i32, i32* %8, align 4
  %114 = shl i32 %113, 8
  %115 = load i32, i32* %7, align 4
  %116 = add i32 %115, %114
  store i32 %116, i32* %7, align 4
  %117 = load i32*, i32** %4, align 8
  %118 = getelementptr inbounds i32, i32* %117, i32 1
  store i32* %118, i32** %4, align 8
  %119 = load i32, i32* %117, align 4
  store i32 %119, i32* %8, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %112
  br label %141

122:                                              ; preds = %112
  %123 = load i32, i32* %8, align 4
  %124 = shl i32 %123, 16
  %125 = load i32, i32* %7, align 4
  %126 = add i32 %125, %124
  store i32 %126, i32* %7, align 4
  %127 = load i32*, i32** %4, align 8
  %128 = getelementptr inbounds i32, i32* %127, i32 1
  store i32* %128, i32** %4, align 8
  %129 = load i32, i32* %127, align 4
  store i32 %129, i32* %8, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %122
  br label %141

132:                                              ; preds = %122
  %133 = load i32, i32* %8, align 4
  %134 = shl i32 %133, 24
  %135 = load i32, i32* %7, align 4
  %136 = add i32 %135, %134
  store i32 %136, i32* %7, align 4
  %137 = load i32, i32* %5, align 4
  %138 = load i32, i32* %6, align 4
  %139 = load i32, i32* %7, align 4
  %140 = call i32 @mix(i32 %137, i32 %138, i32 %139)
  br label %19

141:                                              ; preds = %131, %121, %111, %102, %92, %82, %72, %63, %53, %43, %33, %24
  %142 = load i32, i32* %5, align 4
  %143 = load %struct.hashValue*, %struct.hashValue** %3, align 8
  %144 = getelementptr inbounds %struct.hashValue, %struct.hashValue* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 4
  %145 = load i32, i32* %6, align 4
  %146 = load %struct.hashValue*, %struct.hashValue** %3, align 8
  %147 = getelementptr inbounds %struct.hashValue, %struct.hashValue* %146, i32 0, i32 1
  store i32 %145, i32* %147, align 4
  %148 = load i32, i32* %7, align 4
  %149 = load %struct.hashValue*, %struct.hashValue** %3, align 8
  %150 = getelementptr inbounds %struct.hashValue, %struct.hashValue* %149, i32 0, i32 2
  store i32 %148, i32* %150, align 4
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @mix(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
