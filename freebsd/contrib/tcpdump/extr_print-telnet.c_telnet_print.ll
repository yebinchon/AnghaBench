; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-telnet.c_telnet_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-telnet.c_telnet_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64 }

@IAC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"\0ATelnet:\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"\0A\09\09\09\09\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%*s\09\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c" [telnet \00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@tstr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @telnet_print(%struct.TYPE_6__* %0, i64* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 1, i32* %7, align 4
  %10 = load i64*, i64** %5, align 8
  store i64* %10, i64** %8, align 8
  %11 = load i64*, i64** %5, align 8
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @ND_TCHECK(i64 %12)
  br label %14

14:                                               ; preds = %80, %3
  %15 = load i64, i64* %6, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load i64*, i64** %5, align 8
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @IAC, align 8
  %21 = icmp eq i64 %19, %20
  br label %22

22:                                               ; preds = %17, %14
  %23 = phi i1 [ false, %14 ], [ %21, %17 ]
  br i1 %23, label %24, label %96

24:                                               ; preds = %22
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %26 = load i64*, i64** %5, align 8
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @telnet_parse(%struct.TYPE_6__* %25, i64* %26, i64 %27, i32 0)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %96

32:                                               ; preds = %24
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %72

37:                                               ; preds = %32
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 2, %40
  br i1 %41, label %42, label %72

42:                                               ; preds = %37
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %47 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([9 x i8]* @.str to %struct.TYPE_6__*))
  br label %48

48:                                               ; preds = %45, %42
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %50 = load i64*, i64** %5, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i64*, i64** %5, align 8
  %53 = load i64*, i64** %8, align 8
  %54 = ptrtoint i64* %52 to i64
  %55 = ptrtoint i64* %53 to i64
  %56 = sub i64 %54, %55
  %57 = sdiv exact i64 %56, 8
  %58 = trunc i64 %57 to i32
  %59 = call i32 @hex_print_with_offset(%struct.TYPE_6__* %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64* %50, i32 %51, i32 %58)
  %60 = load i32, i32* %9, align 4
  %61 = icmp sgt i32 %60, 8
  br i1 %61, label %62, label %65

62:                                               ; preds = %48
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %64 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([6 x i8]* @.str.2 to %struct.TYPE_6__*))
  br label %71

65:                                               ; preds = %48
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sub nsw i32 8, %67
  %69 = mul nsw i32 %68, 3
  %70 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([1 x i8]* @.str.4 to %struct.TYPE_6__*))
  br label %71

71:                                               ; preds = %65, %62
  br label %80

72:                                               ; preds = %37, %32
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)
  %78 = bitcast i8* %77 to %struct.TYPE_6__*
  %79 = call i32 @ND_PRINT(%struct.TYPE_6__* %78)
  br label %80

80:                                               ; preds = %72, %71
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %82 = load i64*, i64** %5, align 8
  %83 = load i64, i64* %6, align 8
  %84 = call i32 @telnet_parse(%struct.TYPE_6__* %81, i64* %82, i64 %83, i32 1)
  store i32 0, i32* %7, align 4
  %85 = load i32, i32* %9, align 4
  %86 = load i64*, i64** %5, align 8
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i64, i64* %86, i64 %87
  store i64* %88, i64** %5, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = load i64, i64* %6, align 8
  %92 = sub nsw i64 %91, %90
  store i64 %92, i64* %6, align 8
  %93 = load i64*, i64** %5, align 8
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @ND_TCHECK(i64 %94)
  br label %14

96:                                               ; preds = %31, %22
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %116, label %99

99:                                               ; preds = %96
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %99
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp slt i32 2, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %111 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([2 x i8]* @.str.1 to %struct.TYPE_6__*))
  br label %115

112:                                              ; preds = %104, %99
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %114 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([2 x i8]* @.str.8 to %struct.TYPE_6__*))
  br label %115

115:                                              ; preds = %112, %109
  br label %116

116:                                              ; preds = %115, %96
  br label %123

117:                                              ; No predecessors!
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %119 = load i32, i32* @tstr, align 4
  %120 = sext i32 %119 to i64
  %121 = inttoptr i64 %120 to %struct.TYPE_6__*
  %122 = call i32 @ND_PRINT(%struct.TYPE_6__* %121)
  br label %123

123:                                              ; preds = %117, %116
  ret void
}

declare dso_local i32 @ND_TCHECK(i64) #1

declare dso_local i32 @telnet_parse(%struct.TYPE_6__*, i64*, i64, i32) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_6__*) #1

declare dso_local i32 @hex_print_with_offset(%struct.TYPE_6__*, i8*, i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
