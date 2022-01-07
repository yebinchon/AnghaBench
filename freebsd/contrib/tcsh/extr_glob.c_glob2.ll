; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_glob.c_glob2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_glob.c_glob2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64*, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.stat = type { i32 }

@EOS = common dso_local global i64 0, align 8
@GLOB_MARK = common dso_local global i32 0, align 4
@SEP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.strbuf*, i64*, %struct.TYPE_5__*, i32)* @glob2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @glob2(%struct.strbuf* %0, i64* %1, %struct.TYPE_5__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.strbuf*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.stat, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  store %struct.strbuf* %0, %struct.strbuf** %6, align 8
  store i64* %1, i64** %7, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %128, %4
  %15 = load i64*, i64** %7, align 8
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @EOS, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %69

19:                                               ; preds = %14
  %20 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %21 = call i32 @strbuf_terminate(%struct.strbuf* %20)
  %22 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %23 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = call i64 @Lstat(i64* %24, %struct.stat* %10)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %129

28:                                               ; preds = %19
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @GLOB_MARK, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %59

35:                                               ; preds = %28
  %36 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %37 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %40 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %38, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @SEP, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %35
  %49 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @S_ISDIR(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %55 = load i64, i64* @SEP, align 8
  %56 = call i32 @strbuf_append1(%struct.strbuf* %54, i64 %55)
  %57 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %58 = call i32 @strbuf_terminate(%struct.strbuf* %57)
  br label %59

59:                                               ; preds = %53, %48, %35, %28
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  %64 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %65 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %64, i32 0, i32 0
  %66 = load i64*, i64** %65, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %68 = call i32 @globextend(i64* %66, %struct.TYPE_5__* %67)
  store i32 0, i32* %5, align 4
  br label %129

69:                                               ; preds = %14
  %70 = load i64*, i64** %7, align 8
  store i64* %70, i64** %12, align 8
  %71 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %72 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  store i64 %74, i64* %13, align 8
  br label %75

75:                                               ; preds = %93, %69
  %76 = load i64*, i64** %12, align 8
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @EOS, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = load i64*, i64** %12, align 8
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @SEP, align 8
  %84 = icmp ne i64 %82, %83
  br label %85

85:                                               ; preds = %80, %75
  %86 = phi i1 [ false, %75 ], [ %84, %80 ]
  br i1 %86, label %87, label %99

87:                                               ; preds = %85
  %88 = load i64*, i64** %12, align 8
  %89 = load i64, i64* %88, align 8
  %90 = call i64 @ismeta(i64 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  store i32 1, i32* %11, align 4
  br label %93

93:                                               ; preds = %92, %87
  %94 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %95 = load i64*, i64** %12, align 8
  %96 = getelementptr inbounds i64, i64* %95, i32 1
  store i64* %96, i64** %12, align 8
  %97 = load i64, i64* %95, align 8
  %98 = call i32 @strbuf_append1(%struct.strbuf* %94, i64 %97)
  br label %75

99:                                               ; preds = %85
  %100 = load i32, i32* %11, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %116, label %102

102:                                              ; preds = %99
  %103 = load i64*, i64** %12, align 8
  store i64* %103, i64** %7, align 8
  br label %104

104:                                              ; preds = %109, %102
  %105 = load i64*, i64** %7, align 8
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @SEP, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %104
  %110 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %111 = load i64*, i64** %7, align 8
  %112 = getelementptr inbounds i64, i64* %111, i32 1
  store i64* %112, i64** %7, align 8
  %113 = load i64, i64* %111, align 8
  %114 = call i32 @strbuf_append1(%struct.strbuf* %110, i64 %113)
  br label %104

115:                                              ; preds = %104
  br label %128

116:                                              ; preds = %99
  %117 = load i64, i64* %13, align 8
  %118 = trunc i64 %117 to i32
  %119 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %120 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 8
  %121 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %122 = load i64*, i64** %7, align 8
  %123 = load i64*, i64** %12, align 8
  %124 = load i64*, i64** %7, align 8
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %126 = load i32, i32* %9, align 4
  %127 = call i32 @glob3(%struct.strbuf* %121, i64* %122, i64* %123, i64* %124, %struct.TYPE_5__* %125, i32 %126)
  store i32 %127, i32* %5, align 4
  br label %129

128:                                              ; preds = %115
  br label %14

129:                                              ; preds = %116, %59, %27
  %130 = load i32, i32* %5, align 4
  ret i32 %130
}

declare dso_local i32 @strbuf_terminate(%struct.strbuf*) #1

declare dso_local i64 @Lstat(i64*, %struct.stat*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @strbuf_append1(%struct.strbuf*, i64) #1

declare dso_local i32 @globextend(i64*, %struct.TYPE_5__*) #1

declare dso_local i64 @ismeta(i64) #1

declare dso_local i32 @glob3(%struct.strbuf*, i64*, i64*, i64*, %struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
