; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_right.c_v_dollar.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_right.c_v_dollar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__, %struct.TYPE_8__, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i64, i32 }

@VC_C1SET = common dso_local global i32 0, align 4
@VM_LMODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v_dollar(i32* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %9 = load i32, i32* @VC_C1SET, align 4
  %10 = call i64 @F_ISSET(%struct.TYPE_9__* %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  br label %17

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %16, %12
  %18 = phi i32 [ %15, %12 ], [ 1, %16 ]
  %19 = icmp ne i32 %18, 1
  br i1 %19, label %20, label %64

20:                                               ; preds = %17
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = call i64 @nonblank(i32* %24, i32 %28, i64* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %20
  store i32 1, i32* %3, align 4
  br label %122

35:                                               ; preds = %20
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %37 = call i64 @ISMOTION(%struct.TYPE_9__* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %35
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ule i64 %43, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %39
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %51 = load i32, i32* @VM_LMODE, align 4
  %52 = call i32 @F_SET(%struct.TYPE_9__* %50, i32 %51)
  br label %53

53:                                               ; preds = %49, %39, %35
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %55, align 8
  %58 = load i32*, i32** %4, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %60 = call i64 @v_down(i32* %58, %struct.TYPE_9__* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  store i32 1, i32* %3, align 4
  br label %122

63:                                               ; preds = %53
  br label %64

64:                                               ; preds = %63, %17
  %65 = load i32*, i32** %4, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @db_eget(i32* %65, i32 %69, i32* null, i64* %6, i32* %7)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %64
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %72
  store i32 1, i32* %3, align 4
  br label %122

76:                                               ; preds = %72
  store i64 0, i64* %6, align 8
  br label %77

77:                                               ; preds = %76, %64
  %78 = load i64, i64* %6, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %94

80:                                               ; preds = %77
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %82 = call i64 @ISMOTION(%struct.TYPE_9__* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %80
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @ISCMD(i32 %87, i8 signext 99)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %84
  %91 = load i32*, i32** %4, align 8
  %92 = call i32 @v_eol(i32* %91, i32* null)
  store i32 1, i32* %3, align 4
  br label %122

93:                                               ; preds = %84, %80
  store i32 0, i32* %3, align 4
  br label %122

94:                                               ; preds = %77
  %95 = load i64, i64* %6, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i64, i64* %6, align 8
  %99 = sub i64 %98, 1
  br label %101

100:                                              ; preds = %94
  br label %101

101:                                              ; preds = %100, %97
  %102 = phi i64 [ %99, %97 ], [ 0, %100 ]
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  store i64 %102, i64* %105, align 8
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 3
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %109 = call i64 @ISMOTION(%struct.TYPE_9__* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %101
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 2
  %114 = bitcast %struct.TYPE_8__* %107 to i8*
  %115 = bitcast %struct.TYPE_8__* %113 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %114, i8* align 8 %115, i64 16, i1 false)
  br label %121

116:                                              ; preds = %101
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 1
  %119 = bitcast %struct.TYPE_8__* %107 to i8*
  %120 = bitcast %struct.TYPE_8__* %118 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %119, i8* align 8 %120, i64 16, i1 false)
  br label %121

121:                                              ; preds = %116, %111
  store i32 0, i32* %3, align 4
  br label %122

122:                                              ; preds = %121, %93, %90, %75, %62, %34
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i64 @F_ISSET(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @nonblank(i32*, i32, i64*) #1

declare dso_local i64 @ISMOTION(%struct.TYPE_9__*) #1

declare dso_local i32 @F_SET(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @v_down(i32*, %struct.TYPE_9__*) #1

declare dso_local i64 @db_eget(i32*, i32, i32*, i64*, i32*) #1

declare dso_local i32 @ISCMD(i32, i8 signext) #1

declare dso_local i32 @v_eol(i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
