; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_isSelfJoinView.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_isSelfJoinView.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.SrcList_item* }
%struct.SrcList_item = type { i64, %struct.TYPE_9__*, %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i64, i32, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.SrcList_item* (%struct.TYPE_8__*, %struct.SrcList_item*)* @isSelfJoinView to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.SrcList_item* @isSelfJoinView(%struct.TYPE_8__* %0, %struct.SrcList_item* %1) #0 {
  %3 = alloca %struct.SrcList_item*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.SrcList_item*, align 8
  %6 = alloca %struct.SrcList_item*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.SrcList_item* %1, %struct.SrcList_item** %5, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load %struct.SrcList_item*, %struct.SrcList_item** %9, align 8
  store %struct.SrcList_item* %10, %struct.SrcList_item** %6, align 8
  br label %11

11:                                               ; preds = %115, %2
  %12 = load %struct.SrcList_item*, %struct.SrcList_item** %6, align 8
  %13 = load %struct.SrcList_item*, %struct.SrcList_item** %5, align 8
  %14 = icmp ult %struct.SrcList_item* %12, %13
  br i1 %14, label %15, label %118

15:                                               ; preds = %11
  %16 = load %struct.SrcList_item*, %struct.SrcList_item** %6, align 8
  %17 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %16, i32 0, i32 1
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = icmp eq %struct.TYPE_9__* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %115

21:                                               ; preds = %15
  %22 = load %struct.SrcList_item*, %struct.SrcList_item** %6, align 8
  %23 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %115

28:                                               ; preds = %21
  %29 = load %struct.SrcList_item*, %struct.SrcList_item** %6, align 8
  %30 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %115

34:                                               ; preds = %28
  %35 = load %struct.SrcList_item*, %struct.SrcList_item** %6, align 8
  %36 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %35, i32 0, i32 2
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = icmp ne %struct.TYPE_7__* %37, null
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load %struct.SrcList_item*, %struct.SrcList_item** %5, align 8
  %42 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %41, i32 0, i32 2
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = icmp ne %struct.TYPE_7__* %43, null
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load %struct.SrcList_item*, %struct.SrcList_item** %6, align 8
  %48 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %47, i32 0, i32 2
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.SrcList_item*, %struct.SrcList_item** %5, align 8
  %53 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %52, i32 0, i32 2
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %51, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %34
  br label %115

59:                                               ; preds = %34
  %60 = load %struct.SrcList_item*, %struct.SrcList_item** %6, align 8
  %61 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.SrcList_item*, %struct.SrcList_item** %5, align 8
  %64 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i64 @sqlite3_stricmp(i64 %62, i64 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  br label %115

69:                                               ; preds = %59
  %70 = load %struct.SrcList_item*, %struct.SrcList_item** %6, align 8
  %71 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %70, i32 0, i32 1
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  store %struct.TYPE_9__* %72, %struct.TYPE_9__** %7, align 8
  %73 = load %struct.SrcList_item*, %struct.SrcList_item** %6, align 8
  %74 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %73, i32 0, i32 2
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %69
  %80 = load %struct.SrcList_item*, %struct.SrcList_item** %5, align 8
  %81 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %80, i32 0, i32 1
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %84, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %79
  br label %115

90:                                               ; preds = %79, %69
  %91 = load %struct.SrcList_item*, %struct.SrcList_item** %5, align 8
  %92 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %91, i32 0, i32 1
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @sqlite3ExprCompare(i32 0, i32 %95, i32 %98, i32 -1)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %112, label %101

101:                                              ; preds = %90
  %102 = load %struct.SrcList_item*, %struct.SrcList_item** %5, align 8
  %103 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %102, i32 0, i32 1
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i64 @sqlite3ExprCompare(i32 0, i32 %106, i32 %109, i32 -1)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %101, %90
  br label %115

113:                                              ; preds = %101
  %114 = load %struct.SrcList_item*, %struct.SrcList_item** %6, align 8
  store %struct.SrcList_item* %114, %struct.SrcList_item** %3, align 8
  br label %119

115:                                              ; preds = %112, %89, %68, %58, %33, %27, %20
  %116 = load %struct.SrcList_item*, %struct.SrcList_item** %6, align 8
  %117 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %116, i32 1
  store %struct.SrcList_item* %117, %struct.SrcList_item** %6, align 8
  br label %11

118:                                              ; preds = %11
  store %struct.SrcList_item* null, %struct.SrcList_item** %3, align 8
  br label %119

119:                                              ; preds = %118, %113
  %120 = load %struct.SrcList_item*, %struct.SrcList_item** %3, align 8
  ret %struct.SrcList_item* %120
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3_stricmp(i64, i64) #1

declare dso_local i64 @sqlite3ExprCompare(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
