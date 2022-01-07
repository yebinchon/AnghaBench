; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/db/hash/extr_hash_buf.c___get_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/db/hash/extr_hash_buf.c___get_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, i32, %struct.TYPE_16__*** }
%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_16__* }

@BUF_DISK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_16__* @__get_buf(%struct.TYPE_17__* %0, i32 %1, %struct.TYPE_16__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_16__**, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %16 = icmp ne %struct.TYPE_16__* %15, null
  br i1 %16, label %17, label %36

17:                                               ; preds = %4
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  store %struct.TYPE_16__* %20, %struct.TYPE_16__** %10, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %22 = icmp ne %struct.TYPE_16__* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23, %17
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %10, align 8
  br label %30

30:                                               ; preds = %29, %23
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* @BUF_DISK, align 4
  store i32 %34, i32* %12, align 4
  br label %35

35:                                               ; preds = %33, %30
  br label %77

36:                                               ; preds = %4
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sub nsw i32 %40, 1
  %42 = and i32 %37, %41
  store i32 %42, i32* %13, align 4
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 3
  %45 = load %struct.TYPE_16__***, %struct.TYPE_16__**** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = ashr i32 %46, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_16__**, %struct.TYPE_16__*** %45, i64 %51
  %53 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %52, align 8
  store %struct.TYPE_16__** %53, %struct.TYPE_16__*** %14, align 8
  %54 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %14, align 8
  %55 = load i32, i32* %13, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %54, i64 %56
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %57, align 8
  %59 = call %struct.TYPE_16__* @PTROF(%struct.TYPE_16__* %58)
  store %struct.TYPE_16__* %59, %struct.TYPE_16__** %10, align 8
  %60 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %14, align 8
  %61 = load i32, i32* %13, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %60, i64 %62
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %63, align 8
  %65 = call i32 @ISDISK(%struct.TYPE_16__* %64)
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %36
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  br label %74

74:                                               ; preds = %68, %36
  %75 = phi i1 [ true, %36 ], [ %73, %68 ]
  %76 = zext i1 %75 to i32
  store i32 %76, i32* %12, align 4
  br label %77

77:                                               ; preds = %74, %35
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %79 = icmp ne %struct.TYPE_16__* %78, null
  br i1 %79, label %116, label %80

80:                                               ; preds = %77
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %82 = load i32, i32* %7, align 4
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %84 = call %struct.TYPE_16__* @newbuf(%struct.TYPE_17__* %81, i32 %82, %struct.TYPE_16__* %83)
  store %struct.TYPE_16__* %84, %struct.TYPE_16__** %10, align 8
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %86 = icmp ne %struct.TYPE_16__* %85, null
  br i1 %86, label %87, label %100

87:                                               ; preds = %80
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %7, align 4
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %94 = icmp ne %struct.TYPE_16__* %93, null
  %95 = xor i1 %94, true
  %96 = zext i1 %95 to i32
  %97 = load i32, i32* %12, align 4
  %98 = call i64 @__get_page(%struct.TYPE_17__* %88, i32 %91, i32 %92, i32 %96, i32 %97, i32 0)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %87, %80
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %5, align 8
  br label %123

101:                                              ; preds = %87
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %103 = icmp ne %struct.TYPE_16__* %102, null
  br i1 %103, label %115, label %104

104:                                              ; preds = %101
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %106 = ptrtoint %struct.TYPE_16__* %105 to i64
  %107 = load i32, i32* %11, align 4
  %108 = sext i32 %107 to i64
  %109 = or i64 %106, %108
  %110 = inttoptr i64 %109 to %struct.TYPE_16__*
  %111 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %14, align 8
  %112 = load i32, i32* %13, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %111, i64 %113
  store %struct.TYPE_16__* %110, %struct.TYPE_16__** %114, align 8
  br label %115

115:                                              ; preds = %104, %101
  br label %121

116:                                              ; preds = %77
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %118 = call i32 @BUF_REMOVE(%struct.TYPE_16__* %117)
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %120 = call i32 @MRU_INSERT(%struct.TYPE_16__* %119)
  br label %121

121:                                              ; preds = %116, %115
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  store %struct.TYPE_16__* %122, %struct.TYPE_16__** %5, align 8
  br label %123

123:                                              ; preds = %121, %100
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  ret %struct.TYPE_16__* %124
}

declare dso_local %struct.TYPE_16__* @PTROF(%struct.TYPE_16__*) #1

declare dso_local i32 @ISDISK(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_16__* @newbuf(%struct.TYPE_17__*, i32, %struct.TYPE_16__*) #1

declare dso_local i64 @__get_page(%struct.TYPE_17__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @BUF_REMOVE(%struct.TYPE_16__*) #1

declare dso_local i32 @MRU_INSERT(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
