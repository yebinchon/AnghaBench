; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_exprNodeIsConstant.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_exprNodeIsConstant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }

@EP_FromJoin = common dso_local global i32 0, align 4
@WRC_Abort = common dso_local global i32 0, align 4
@EP_ConstFunc = common dso_local global i32 0, align 4
@WRC_Continue = common dso_local global i32 0, align 4
@WRC_Prune = common dso_local global i32 0, align 4
@EP_FixedCol = common dso_local global i32 0, align 4
@TK_NULL = common dso_local global i32 0, align 4
@TK_SELECT = common dso_local global i32 0, align 4
@TK_EXISTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_10__*)* @exprNodeIsConstant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exprNodeIsConstant(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %12 = load i32, i32* @EP_FromJoin, align 4
  %13 = call i64 @ExprHasProperty(%struct.TYPE_10__* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  store i32 0, i32* %17, align 4
  %18 = load i32, i32* @WRC_Abort, align 4
  store i32 %18, i32* %3, align 4
  br label %151

19:                                               ; preds = %10, %2
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %135 [
    i32 132, label %23
    i32 131, label %39
    i32 133, label %46
    i32 134, label %46
    i32 135, label %46
    i32 130, label %99
    i32 129, label %99
    i32 128, label %115
  ]

23:                                               ; preds = %19
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp sge i32 %26, 4
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %30 = load i32, i32* @EP_ConstFunc, align 4
  %31 = call i64 @ExprHasProperty(%struct.TYPE_10__* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28, %23
  %34 = load i32, i32* @WRC_Continue, align 4
  store i32 %34, i32* %3, align 4
  br label %151

35:                                               ; preds = %28
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  store i32 0, i32* %37, align 4
  %38 = load i32, i32* @WRC_Abort, align 4
  store i32 %38, i32* %3, align 4
  br label %151

39:                                               ; preds = %19
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %41 = call i32 @sqlite3ExprIdToTrueFalse(%struct.TYPE_10__* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* @WRC_Prune, align 4
  store i32 %44, i32* %3, align 4
  br label %151

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %19, %19, %19, %45
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 131
  %51 = zext i1 %50 to i32
  %52 = call i32 @testcase(i32 %51)
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 133
  %57 = zext i1 %56 to i32
  %58 = call i32 @testcase(i32 %57)
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 134
  %63 = zext i1 %62 to i32
  %64 = call i32 @testcase(i32 %63)
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 135
  %69 = zext i1 %68 to i32
  %70 = call i32 @testcase(i32 %69)
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %72 = load i32, i32* @EP_FixedCol, align 4
  %73 = call i64 @ExprHasProperty(%struct.TYPE_10__* %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %46
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 2
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i32, i32* @WRC_Continue, align 4
  store i32 %81, i32* %3, align 4
  br label %151

82:                                               ; preds = %75, %46
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 3
  br i1 %86, label %87, label %98

87:                                               ; preds = %82
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %90, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %87
  %97 = load i32, i32* @WRC_Continue, align 4
  store i32 %97, i32* %3, align 4
  br label %151

98:                                               ; preds = %87, %82
  br label %99

99:                                               ; preds = %19, %19, %98
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp eq i32 %102, 129
  %104 = zext i1 %103 to i32
  %105 = call i32 @testcase(i32 %104)
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = icmp eq i32 %108, 130
  %110 = zext i1 %109 to i32
  %111 = call i32 @testcase(i32 %110)
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  store i32 0, i32* %113, align 4
  %114 = load i32, i32* @WRC_Abort, align 4
  store i32 %114, i32* %3, align 4
  br label %151

115:                                              ; preds = %19
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp eq i32 %118, 5
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = load i32, i32* @TK_NULL, align 4
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 4
  br label %134

124:                                              ; preds = %115
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = icmp eq i32 %127, 4
  br i1 %128, label %129, label %133

129:                                              ; preds = %124
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  store i32 0, i32* %131, align 4
  %132 = load i32, i32* @WRC_Abort, align 4
  store i32 %132, i32* %3, align 4
  br label %151

133:                                              ; preds = %124
  br label %134

134:                                              ; preds = %133, %120
  br label %135

135:                                              ; preds = %19, %134
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @TK_SELECT, align 4
  %140 = icmp eq i32 %138, %139
  %141 = zext i1 %140 to i32
  %142 = call i32 @testcase(i32 %141)
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @TK_EXISTS, align 4
  %147 = icmp eq i32 %145, %146
  %148 = zext i1 %147 to i32
  %149 = call i32 @testcase(i32 %148)
  %150 = load i32, i32* @WRC_Continue, align 4
  store i32 %150, i32* %3, align 4
  br label %151

151:                                              ; preds = %135, %129, %99, %96, %80, %43, %35, %33, %15
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i64 @ExprHasProperty(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @sqlite3ExprIdToTrueFalse(%struct.TYPE_10__*) #1

declare dso_local i32 @testcase(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
