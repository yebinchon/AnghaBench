; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_read.c_choose_parser.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_read.c_choose_parser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mparse = type { %struct.TYPE_8__*, %struct.TYPE_5__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32*, i32* }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i8*, i32 }

@MPARSE_MDOC = common dso_local global i32 0, align 4
@MPARSE_MAN = common dso_local global i32 0, align 4
@MACROSET_MDOC = common dso_local global i32 0, align 4
@MDOC_Dd = common dso_local global i32 0, align 4
@MDOC_MAX = common dso_local global i32 0, align 4
@MACROSET_MAN = common dso_local global i32 0, align 4
@MAN_TH = common dso_local global i32 0, align 4
@MAN_MAX = common dso_local global i32 0, align 4
@TOKEN_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mparse*)* @choose_parser to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @choose_parser(%struct.mparse* %0) #0 {
  %2 = alloca %struct.mparse*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.mparse* %0, %struct.mparse** %2, align 8
  %6 = load %struct.mparse*, %struct.mparse** %2, align 8
  %7 = getelementptr inbounds %struct.mparse, %struct.mparse* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @roff_getformat(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %86

11:                                               ; preds = %1
  %12 = load %struct.mparse*, %struct.mparse** %2, align 8
  %13 = getelementptr inbounds %struct.mparse, %struct.mparse* %12, i32 0, i32 1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %3, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = load %struct.mparse*, %struct.mparse** %2, align 8
  %19 = getelementptr inbounds %struct.mparse, %struct.mparse* %18, i32 0, i32 1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %17, i64 %23
  store i8* %24, i8** %4, align 8
  br label %25

25:                                               ; preds = %82, %11
  %26 = load i8*, i8** %3, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = icmp ult i8* %26, %27
  br i1 %28, label %29, label %85

29:                                               ; preds = %25
  %30 = load i8*, i8** %3, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 46
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load i8*, i8** %3, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 39
  br i1 %38, label %39, label %70

39:                                               ; preds = %34, %29
  %40 = load i8*, i8** %3, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %3, align 8
  %42 = load i8*, i8** %3, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 68
  br i1 %46, label %47, label %55

47:                                               ; preds = %39
  %48 = load i8*, i8** %3, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 100
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* @MPARSE_MDOC, align 4
  store i32 %54, i32* %5, align 4
  br label %85

55:                                               ; preds = %47, %39
  %56 = load i8*, i8** %3, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 84
  br i1 %60, label %61, label %69

61:                                               ; preds = %55
  %62 = load i8*, i8** %3, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 72
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load i32, i32* @MPARSE_MAN, align 4
  store i32 %68, i32* %5, align 4
  br label %85

69:                                               ; preds = %61, %55
  br label %70

70:                                               ; preds = %69, %34
  %71 = load i8*, i8** %3, align 8
  %72 = load i8*, i8** %4, align 8
  %73 = load i8*, i8** %3, align 8
  %74 = ptrtoint i8* %72 to i64
  %75 = ptrtoint i8* %73 to i64
  %76 = sub i64 %74, %75
  %77 = trunc i64 %76 to i32
  %78 = call i8* @memchr(i8* %71, i8 signext 10, i32 %77)
  store i8* %78, i8** %3, align 8
  %79 = load i8*, i8** %3, align 8
  %80 = icmp eq i8* %79, null
  br i1 %80, label %81, label %82

81:                                               ; preds = %70
  br label %85

82:                                               ; preds = %70
  %83 = load i8*, i8** %3, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %3, align 8
  br label %25

85:                                               ; preds = %81, %67, %53, %25
  br label %86

86:                                               ; preds = %85, %1
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* @MPARSE_MDOC, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %113

90:                                               ; preds = %86
  %91 = load i32, i32* @MACROSET_MDOC, align 4
  %92 = load %struct.mparse*, %struct.mparse** %2, align 8
  %93 = getelementptr inbounds %struct.mparse, %struct.mparse* %92, i32 0, i32 0
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  store i32 %91, i32* %96, align 8
  %97 = load %struct.mparse*, %struct.mparse** %2, align 8
  %98 = getelementptr inbounds %struct.mparse, %struct.mparse* %97, i32 0, i32 0
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = icmp eq i32* %101, null
  br i1 %102, label %103, label %112

103:                                              ; preds = %90
  %104 = load i32, i32* @MDOC_Dd, align 4
  %105 = load i32, i32* @MDOC_MAX, align 4
  %106 = call i8* @roffhash_alloc(i32 %104, i32 %105)
  %107 = bitcast i8* %106 to i32*
  %108 = load %struct.mparse*, %struct.mparse** %2, align 8
  %109 = getelementptr inbounds %struct.mparse, %struct.mparse* %108, i32 0, i32 0
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 2
  store i32* %107, i32** %111, align 8
  br label %112

112:                                              ; preds = %103, %90
  br label %136

113:                                              ; preds = %86
  %114 = load i32, i32* @MACROSET_MAN, align 4
  %115 = load %struct.mparse*, %struct.mparse** %2, align 8
  %116 = getelementptr inbounds %struct.mparse, %struct.mparse* %115, i32 0, i32 0
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  store i32 %114, i32* %119, align 8
  %120 = load %struct.mparse*, %struct.mparse** %2, align 8
  %121 = getelementptr inbounds %struct.mparse, %struct.mparse* %120, i32 0, i32 0
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = icmp eq i32* %124, null
  br i1 %125, label %126, label %135

126:                                              ; preds = %113
  %127 = load i32, i32* @MAN_TH, align 4
  %128 = load i32, i32* @MAN_MAX, align 4
  %129 = call i8* @roffhash_alloc(i32 %127, i32 %128)
  %130 = bitcast i8* %129 to i32*
  %131 = load %struct.mparse*, %struct.mparse** %2, align 8
  %132 = getelementptr inbounds %struct.mparse, %struct.mparse* %131, i32 0, i32 0
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 1
  store i32* %130, i32** %134, align 8
  br label %135

135:                                              ; preds = %126, %113
  br label %136

136:                                              ; preds = %135, %112
  %137 = load i32, i32* @TOKEN_NONE, align 4
  %138 = load %struct.mparse*, %struct.mparse** %2, align 8
  %139 = getelementptr inbounds %struct.mparse, %struct.mparse* %138, i32 0, i32 0
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  store i32 %137, i32* %144, align 4
  ret void
}

declare dso_local i32 @roff_getformat(i32) #1

declare dso_local i8* @memchr(i8*, i8 signext, i32) #1

declare dso_local i8* @roffhash_alloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
