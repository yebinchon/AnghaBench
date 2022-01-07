; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_optimize.c_opt_blks.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_optimize.c_opt_blks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.block** }
%struct.block = type { %struct.block*, i32, i32 }
%struct.icode = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_10__*, %struct.icode*, i32)* @opt_blks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opt_blks(i32* %0, %struct.TYPE_10__* %1, %struct.icode* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.icode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.block*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store %struct.icode* %2, %struct.icode** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %13 = call i32 @init_val(%struct.TYPE_10__* %12)
  %14 = load %struct.icode*, %struct.icode** %7, align 8
  %15 = getelementptr inbounds %struct.icode, %struct.icode* %14, i32 0, i32 0
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %20 = load %struct.icode*, %struct.icode** %7, align 8
  %21 = getelementptr inbounds %struct.icode, %struct.icode* %20, i32 0, i32 0
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %23 = call i32 @find_inedges(%struct.TYPE_10__* %19, %struct.TYPE_11__* %22)
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %9, align 4
  br label %25

25:                                               ; preds = %50, %4
  %26 = load i32, i32* %9, align 4
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %53

28:                                               ; preds = %25
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load %struct.block**, %struct.block*** %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.block*, %struct.block** %31, i64 %33
  %35 = load %struct.block*, %struct.block** %34, align 8
  store %struct.block* %35, %struct.block** %11, align 8
  br label %36

36:                                               ; preds = %45, %28
  %37 = load %struct.block*, %struct.block** %11, align 8
  %38 = icmp ne %struct.block* %37, null
  br i1 %38, label %39, label %49

39:                                               ; preds = %36
  %40 = load i32*, i32** %5, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %42 = load %struct.block*, %struct.block** %11, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @opt_blk(i32* %40, %struct.TYPE_10__* %41, %struct.block* %42, i32 %43)
  br label %45

45:                                               ; preds = %39
  %46 = load %struct.block*, %struct.block** %11, align 8
  %47 = getelementptr inbounds %struct.block, %struct.block* %46, i32 0, i32 0
  %48 = load %struct.block*, %struct.block** %47, align 8
  store %struct.block* %48, %struct.block** %11, align 8
  br label %36

49:                                               ; preds = %36
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %9, align 4
  br label %25

53:                                               ; preds = %25
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  br label %126

57:                                               ; preds = %53
  store i32 1, i32* %9, align 4
  br label %58

58:                                               ; preds = %87, %57
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp sle i32 %59, %60
  br i1 %61, label %62, label %90

62:                                               ; preds = %58
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load %struct.block**, %struct.block*** %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.block*, %struct.block** %65, i64 %67
  %69 = load %struct.block*, %struct.block** %68, align 8
  store %struct.block* %69, %struct.block** %11, align 8
  br label %70

70:                                               ; preds = %82, %62
  %71 = load %struct.block*, %struct.block** %11, align 8
  %72 = icmp ne %struct.block* %71, null
  br i1 %72, label %73, label %86

73:                                               ; preds = %70
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %75 = load %struct.block*, %struct.block** %11, align 8
  %76 = getelementptr inbounds %struct.block, %struct.block* %75, i32 0, i32 2
  %77 = call i32 @opt_j(%struct.TYPE_10__* %74, i32* %76)
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %79 = load %struct.block*, %struct.block** %11, align 8
  %80 = getelementptr inbounds %struct.block, %struct.block* %79, i32 0, i32 1
  %81 = call i32 @opt_j(%struct.TYPE_10__* %78, i32* %80)
  br label %82

82:                                               ; preds = %73
  %83 = load %struct.block*, %struct.block** %11, align 8
  %84 = getelementptr inbounds %struct.block, %struct.block* %83, i32 0, i32 0
  %85 = load %struct.block*, %struct.block** %84, align 8
  store %struct.block* %85, %struct.block** %11, align 8
  br label %70

86:                                               ; preds = %70
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %9, align 4
  br label %58

90:                                               ; preds = %58
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %92 = load %struct.icode*, %struct.icode** %7, align 8
  %93 = getelementptr inbounds %struct.icode, %struct.icode* %92, i32 0, i32 0
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %93, align 8
  %95 = call i32 @find_inedges(%struct.TYPE_10__* %91, %struct.TYPE_11__* %94)
  store i32 1, i32* %9, align 4
  br label %96

96:                                               ; preds = %123, %90
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %10, align 4
  %99 = icmp sle i32 %97, %98
  br i1 %99, label %100, label %126

100:                                              ; preds = %96
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load %struct.block**, %struct.block*** %102, align 8
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.block*, %struct.block** %103, i64 %105
  %107 = load %struct.block*, %struct.block** %106, align 8
  store %struct.block* %107, %struct.block** %11, align 8
  br label %108

108:                                              ; preds = %118, %100
  %109 = load %struct.block*, %struct.block** %11, align 8
  %110 = icmp ne %struct.block* %109, null
  br i1 %110, label %111, label %122

111:                                              ; preds = %108
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %113 = load %struct.block*, %struct.block** %11, align 8
  %114 = call i32 @or_pullup(%struct.TYPE_10__* %112, %struct.block* %113)
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %116 = load %struct.block*, %struct.block** %11, align 8
  %117 = call i32 @and_pullup(%struct.TYPE_10__* %115, %struct.block* %116)
  br label %118

118:                                              ; preds = %111
  %119 = load %struct.block*, %struct.block** %11, align 8
  %120 = getelementptr inbounds %struct.block, %struct.block* %119, i32 0, i32 0
  %121 = load %struct.block*, %struct.block** %120, align 8
  store %struct.block* %121, %struct.block** %11, align 8
  br label %108

122:                                              ; preds = %108
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %9, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %9, align 4
  br label %96

126:                                              ; preds = %56, %96
  ret void
}

declare dso_local i32 @init_val(%struct.TYPE_10__*) #1

declare dso_local i32 @find_inedges(%struct.TYPE_10__*, %struct.TYPE_11__*) #1

declare dso_local i32 @opt_blk(i32*, %struct.TYPE_10__*, %struct.block*, i32) #1

declare dso_local i32 @opt_j(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @or_pullup(%struct.TYPE_10__*, %struct.block*) #1

declare dso_local i32 @and_pullup(%struct.TYPE_10__*, %struct.block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
