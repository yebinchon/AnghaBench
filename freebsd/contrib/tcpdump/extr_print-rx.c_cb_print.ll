; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-rx.c_cb_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-rx.c_cb_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@.str = private unnamed_addr constant [12 x i8] c" cb call %s\00", align 1
@cb_req = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"op#%d\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c" <none!>\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c" ver\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c" expires\00", align 1
@cb_types = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"type %d\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c" afsuuid\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c" [|cb]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32*, i32)* @cb_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cb_print(%struct.TYPE_4__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp sle i32 %11, 4
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %125

14:                                               ; preds = %3
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = ptrtoint i32* %17 to i64
  %20 = ptrtoint i32* %18 to i64
  %21 = sub i64 %19, %20
  %22 = sdiv exact i64 %21, 4
  %23 = add nsw i64 %22, 1
  %24 = icmp sle i64 %23, 8
  br i1 %24, label %25, label %26

25:                                               ; preds = %14
  br label %122

26:                                               ; preds = %14
  %27 = load i32*, i32** %5, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 4
  %29 = call i8* @EXTRACT_32BITS(i32* %28)
  %30 = ptrtoint i8* %29 to i32
  store i32 %30, i32* %7, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %32 = load i32, i32* @cb_req, align 4
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = call i32 @tok2str(i32 %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %34)
  %36 = sext i32 %35 to i64
  %37 = inttoptr i64 %36 to %struct.TYPE_4__*
  %38 = call i32 @ND_PRINT(%struct.TYPE_4__* %37)
  %39 = load i32*, i32** %5, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 8
  store i32* %40, i32** %5, align 8
  %41 = load i32, i32* %7, align 4
  switch i32 %41, label %120 [
    i32 204, label %42
    i32 214, label %116
  ]

42:                                               ; preds = %26
  %43 = load i32*, i32** %5, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ND_TCHECK2(i32 %45, i32 4)
  %47 = load i32*, i32** %5, align 8
  %48 = call i8* @EXTRACT_32BITS(i32* %47)
  %49 = ptrtoint i8* %48 to i64
  store i64 %49, i64* %9, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 4
  store i32* %51, i32** %5, align 8
  store i64 0, i64* %8, align 8
  br label %52

52:                                               ; preds = %66, %42
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* %9, align 8
  %55 = icmp ult i64 %53, %54
  br i1 %55, label %56, label %69

56:                                               ; preds = %52
  %57 = call i32 (...) @FIDOUT()
  %58 = load i64, i64* %8, align 8
  %59 = load i64, i64* %9, align 8
  %60 = sub i64 %59, 1
  %61 = icmp ne i64 %58, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %64 = call i32 @ND_PRINT(%struct.TYPE_4__* bitcast ([2 x i8]* @.str.2 to %struct.TYPE_4__*))
  br label %65

65:                                               ; preds = %62, %56
  br label %66

66:                                               ; preds = %65
  %67 = load i64, i64* %8, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %8, align 8
  br label %52

69:                                               ; preds = %52
  %70 = load i64, i64* %9, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %74 = call i32 @ND_PRINT(%struct.TYPE_4__* bitcast ([9 x i8]* @.str.3 to %struct.TYPE_4__*))
  br label %75

75:                                               ; preds = %72, %69
  %76 = load i32*, i32** %5, align 8
  %77 = call i32 @ND_TCHECK_32BITS(i32* %76)
  %78 = load i32*, i32** %5, align 8
  %79 = call i8* @EXTRACT_32BITS(i32* %78)
  %80 = ptrtoint i8* %79 to i64
  store i64 %80, i64* %9, align 8
  %81 = load i32*, i32** %5, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 4
  store i32* %82, i32** %5, align 8
  %83 = load i64, i64* %9, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %75
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %87 = call i32 @ND_PRINT(%struct.TYPE_4__* bitcast ([2 x i8]* @.str.4 to %struct.TYPE_4__*))
  br label %88

88:                                               ; preds = %85, %75
  store i64 0, i64* %8, align 8
  br label %89

89:                                               ; preds = %112, %88
  %90 = load i64, i64* %8, align 8
  %91 = load i64, i64* %9, align 8
  %92 = icmp ult i64 %90, %91
  br i1 %92, label %93, label %115

93:                                               ; preds = %89
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %95 = call i32 @ND_PRINT(%struct.TYPE_4__* bitcast ([5 x i8]* @.str.5 to %struct.TYPE_4__*))
  %96 = call i32 (...) @INTOUT()
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %98 = call i32 @ND_PRINT(%struct.TYPE_4__* bitcast ([9 x i8]* @.str.6 to %struct.TYPE_4__*))
  %99 = call i32 (...) @DATEOUT()
  %100 = load i32*, i32** %5, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @ND_TCHECK2(i32 %102, i32 4)
  %104 = load i32*, i32** %5, align 8
  %105 = call i8* @EXTRACT_32BITS(i32* %104)
  %106 = ptrtoint i8* %105 to i64
  store i64 %106, i64* %10, align 8
  %107 = load i32*, i32** %5, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 4
  store i32* %108, i32** %5, align 8
  %109 = load i32, i32* @cb_types, align 4
  %110 = load i64, i64* %10, align 8
  %111 = call i32 @tok2str(i32 %109, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i64 %110)
  br label %112

112:                                              ; preds = %93
  %113 = load i64, i64* %8, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %8, align 8
  br label %89

115:                                              ; preds = %89
  br label %116

116:                                              ; preds = %26, %115
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %118 = call i32 @ND_PRINT(%struct.TYPE_4__* bitcast ([9 x i8]* @.str.8 to %struct.TYPE_4__*))
  %119 = call i32 (...) @AFSUUIDOUT()
  br label %121

120:                                              ; preds = %26
  br label %121

121:                                              ; preds = %120, %116
  br label %125

122:                                              ; preds = %25
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %124 = call i32 @ND_PRINT(%struct.TYPE_4__* bitcast ([7 x i8]* @.str.9 to %struct.TYPE_4__*))
  br label %125

125:                                              ; preds = %122, %121, %13
  ret void
}

declare dso_local i8* @EXTRACT_32BITS(i32*) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_4__*) #1

declare dso_local i32 @tok2str(i32, i8*, i64) #1

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @FIDOUT(...) #1

declare dso_local i32 @ND_TCHECK_32BITS(i32*) #1

declare dso_local i32 @INTOUT(...) #1

declare dso_local i32 @DATEOUT(...) #1

declare dso_local i32 @AFSUUIDOUT(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
