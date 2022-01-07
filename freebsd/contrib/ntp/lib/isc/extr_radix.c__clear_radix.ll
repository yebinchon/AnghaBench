; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_radix.c__clear_radix.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_radix.c__clear_radix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32**, i32*, %struct.TYPE_6__*, %struct.TYPE_6__* }

@RADIX_MAXBITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32 (i32**)*)* @_clear_radix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_clear_radix(%struct.TYPE_5__* %0, i32 (i32**)* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32 (i32**)*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_6__**, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 (i32**)* %1, i32 (i32**)** %4, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %12 = icmp ne %struct.TYPE_5__* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @REQUIRE(i32 %13)
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = icmp ne %struct.TYPE_6__* %17, null
  br i1 %18, label %19, label %130

19:                                               ; preds = %2
  %20 = load i32, i32* @RADIX_MAXBITS, align 4
  %21 = add nsw i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %5, align 8
  %24 = alloca %struct.TYPE_6__*, i64 %22, align 16
  store i64 %22, i64* %6, align 8
  store %struct.TYPE_6__** %24, %struct.TYPE_6__*** %7, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** %8, align 8
  br label %28

28:                                               ; preds = %127, %19
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %30 = icmp ne %struct.TYPE_6__* %29, null
  br i1 %30, label %31, label %128

31:                                               ; preds = %28
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 3
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  store %struct.TYPE_6__* %34, %struct.TYPE_6__** %9, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  store %struct.TYPE_6__* %37, %struct.TYPE_6__** %10, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %73

42:                                               ; preds = %31
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @_deref_prefix(i32 %45, i32* %48)
  %50 = load i32 (i32**)*, i32 (i32**)** %4, align 8
  %51 = icmp ne i32 (i32**)* %50, null
  br i1 %51, label %52, label %72

52:                                               ; preds = %42
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32**, i32*** %54, align 8
  %56 = getelementptr inbounds i32*, i32** %55, i64 0
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %66, label %59

59:                                               ; preds = %52
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32**, i32*** %61, align 8
  %63 = getelementptr inbounds i32*, i32** %62, i64 1
  %64 = load i32*, i32** %63, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %72

66:                                               ; preds = %59, %52
  %67 = load i32 (i32**)*, i32 (i32**)** %4, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32**, i32*** %69, align 8
  %71 = call i32 %67(i32** %70)
  br label %72

72:                                               ; preds = %66, %59, %42
  br label %91

73:                                               ; preds = %31
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32**, i32*** %75, align 8
  %77 = getelementptr inbounds i32*, i32** %76, i64 0
  %78 = load i32*, i32** %77, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %87

80:                                               ; preds = %73
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32**, i32*** %82, align 8
  %84 = getelementptr inbounds i32*, i32** %83, i64 1
  %85 = load i32*, i32** %84, align 8
  %86 = icmp eq i32* %85, null
  br label %87

87:                                               ; preds = %80, %73
  %88 = phi i1 [ false, %73 ], [ %86, %80 ]
  %89 = zext i1 %88 to i32
  %90 = call i32 @INSIST(i32 %89)
  br label %91

91:                                               ; preds = %87, %72
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %96 = call i32 @isc_mem_put(i32 %94, %struct.TYPE_6__* %95, i32 32)
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %99, -1
  store i64 %100, i64* %98, align 8
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %102 = icmp ne %struct.TYPE_6__* %101, null
  br i1 %102, label %103, label %112

103:                                              ; preds = %91
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %105 = icmp ne %struct.TYPE_6__* %104, null
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %108 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %108, i32 1
  store %struct.TYPE_6__** %109, %struct.TYPE_6__*** %7, align 8
  store %struct.TYPE_6__* %107, %struct.TYPE_6__** %108, align 8
  br label %110

110:                                              ; preds = %106, %103
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  store %struct.TYPE_6__* %111, %struct.TYPE_6__** %8, align 8
  br label %127

112:                                              ; preds = %91
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %114 = icmp ne %struct.TYPE_6__* %113, null
  br i1 %114, label %115, label %117

115:                                              ; preds = %112
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  store %struct.TYPE_6__* %116, %struct.TYPE_6__** %8, align 8
  br label %126

117:                                              ; preds = %112
  %118 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %119 = icmp ne %struct.TYPE_6__** %118, %24
  br i1 %119, label %120, label %124

120:                                              ; preds = %117
  %121 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %121, i32 -1
  store %struct.TYPE_6__** %122, %struct.TYPE_6__*** %7, align 8
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  store %struct.TYPE_6__* %123, %struct.TYPE_6__** %8, align 8
  br label %125

124:                                              ; preds = %117
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %8, align 8
  br label %125

125:                                              ; preds = %124, %120
  br label %126

126:                                              ; preds = %125, %115
  br label %127

127:                                              ; preds = %126, %110
  br label %28

128:                                              ; preds = %28
  %129 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %129)
  br label %130

130:                                              ; preds = %128, %2
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp eq i64 %133, 0
  %135 = zext i1 %134 to i32
  %136 = call i32 @RUNTIME_CHECK(i32 %135)
  ret void
}

declare dso_local i32 @REQUIRE(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @_deref_prefix(i32, i32*) #1

declare dso_local i32 @INSIST(i32) #1

declare dso_local i32 @isc_mem_put(i32, %struct.TYPE_6__*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @RUNTIME_CHECK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
