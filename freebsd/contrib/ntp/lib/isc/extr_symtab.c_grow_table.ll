; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_symtab.c_grow_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_symtab.c_grow_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32*, i32, i32 }
%struct.TYPE_10__ = type { i32 }

@link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @grow_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @grow_table(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %11 = icmp ne %struct.TYPE_9__* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @REQUIRE(i32 %12)
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = mul nsw i32 %16, 2
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = mul i32 %18, 3
  %20 = udiv i32 %19, 4
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ugt i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i32, i32* %6, align 4
  %25 = icmp ugt i32 %24, 0
  br label %26

26:                                               ; preds = %23, %1
  %27 = phi i1 [ false, %1 ], [ %25, %23 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @INSIST(i32 %28)
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = zext i32 %33 to i64
  %35 = mul i64 %34, 4
  %36 = trunc i64 %35 to i32
  %37 = call i32* @isc_mem_get(i32 %32, i32 %36)
  store i32* %37, i32** %3, align 8
  %38 = load i32*, i32** %3, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %26
  br label %135

41:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %53, %41
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %42
  %47 = load i32*, i32** %3, align 8
  %48 = load i32, i32* %4, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @INIT_LIST(i32 %51)
  br label %53

53:                                               ; preds = %46
  %54 = load i32, i32* %4, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %4, align 4
  br label %42

56:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %109, %56
  %58 = load i32, i32* %4, align 4
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ult i32 %58, %61
  br i1 %62, label %63, label %112

63:                                               ; preds = %57
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %4, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call %struct.TYPE_10__* @HEAD(i32 %70)
  store %struct.TYPE_10__* %71, %struct.TYPE_10__** %7, align 8
  br label %72

72:                                               ; preds = %106, %63
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %74 = icmp ne %struct.TYPE_10__* %73, null
  br i1 %74, label %75, label %108

75:                                               ; preds = %72
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %77 = load i32, i32* @link, align 4
  %78 = call %struct.TYPE_10__* @NEXT(%struct.TYPE_10__* %76, i32 %77)
  store %struct.TYPE_10__* %78, %struct.TYPE_10__** %8, align 8
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %4, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %87 = load i32, i32* @link, align 4
  %88 = call i32 @UNLINK(i32 %85, %struct.TYPE_10__* %86, i32 %87)
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @hash(i32 %91, i32 %94)
  store i32 %95, i32* %9, align 4
  %96 = load i32*, i32** %3, align 8
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %5, align 4
  %99 = urem i32 %97, %98
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %96, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %104 = load i32, i32* @link, align 4
  %105 = call i32 @APPEND(i32 %102, %struct.TYPE_10__* %103, i32 %104)
  br label %106

106:                                              ; preds = %75
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_10__* %107, %struct.TYPE_10__** %7, align 8
  br label %72

108:                                              ; preds = %72
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %4, align 4
  %111 = add i32 %110, 1
  store i32 %111, i32* %4, align 4
  br label %57

112:                                              ; preds = %57
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 2
  %118 = load i32*, i32** %117, align 8
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = sext i32 %121 to i64
  %123 = mul i64 %122, 4
  %124 = trunc i64 %123 to i32
  %125 = call i32 @isc_mem_put(i32 %115, i32* %118, i32 %124)
  %126 = load i32*, i32** %3, align 8
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 2
  store i32* %126, i32** %128, align 8
  %129 = load i32, i32* %5, align 4
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 8
  %132 = load i32, i32* %6, align 4
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 4
  br label %135

135:                                              ; preds = %112, %40
  ret void
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i32 @INSIST(i32) #1

declare dso_local i32* @isc_mem_get(i32, i32) #1

declare dso_local i32 @INIT_LIST(i32) #1

declare dso_local %struct.TYPE_10__* @HEAD(i32) #1

declare dso_local %struct.TYPE_10__* @NEXT(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @UNLINK(i32, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @hash(i32, i32) #1

declare dso_local i32 @APPEND(i32, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @isc_mem_put(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
