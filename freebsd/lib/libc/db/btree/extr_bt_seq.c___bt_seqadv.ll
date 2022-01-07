; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/db/btree/extr_bt_seq.c___bt_seqadv.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/db/btree/extr_bt_seq.c___bt_seqadv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32 }

@CURS_ACQUIRE = common dso_local global i32 0, align 4
@RET_ERROR = common dso_local global i32 0, align 4
@CURS_AFTER = common dso_local global i32 0, align 4
@P_INVALID = common dso_local global i32 0, align 4
@RET_SPECIAL = common dso_local global i32 0, align 4
@CURS_BEFORE = common dso_local global i32 0, align 4
@RET_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.TYPE_17__*, i32)* @__bt_seqadv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__bt_seqadv(%struct.TYPE_19__* %0, %struct.TYPE_17__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 1
  store %struct.TYPE_18__* %14, %struct.TYPE_18__** %8, align 8
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %16 = load i32, i32* @CURS_ACQUIRE, align 4
  %17 = call i64 @F_ISSET(%struct.TYPE_18__* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %24 = call i32 @__bt_first(%struct.TYPE_19__* %20, i32* %22, %struct.TYPE_17__* %23, i32* %12)
  store i32 %24, i32* %4, align 4
  br label %148

25:                                               ; preds = %3
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.TYPE_16__* @mpool_get(i32 %28, i32 %32, i32 0)
  store %struct.TYPE_16__* %33, %struct.TYPE_16__** %9, align 8
  %34 = icmp eq %struct.TYPE_16__* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %25
  %36 = load i32, i32* @RET_ERROR, align 4
  store i32 %36, i32* %4, align 4
  br label %148

37:                                               ; preds = %25
  %38 = load i32, i32* %7, align 4
  switch i32 %38, label %140 [
    i32 129, label %39
    i32 128, label %80
  ]

39:                                               ; preds = %37
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %41 = load i32, i32* @CURS_AFTER, align 4
  %42 = call i64 @F_ISSET(%struct.TYPE_18__* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %86

45:                                               ; preds = %39
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %10, align 4
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %53 = call i32 @NEXTINDEX(%struct.TYPE_16__* %52)
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %79

55:                                               ; preds = %45
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %11, align 4
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %63 = call i32 @mpool_put(i32 %61, %struct.TYPE_16__* %62, i32 0)
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* @P_INVALID, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %55
  %68 = load i32, i32* @RET_SPECIAL, align 4
  store i32 %68, i32* %4, align 4
  br label %148

69:                                               ; preds = %55
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %11, align 4
  %74 = call %struct.TYPE_16__* @mpool_get(i32 %72, i32 %73, i32 0)
  store %struct.TYPE_16__* %74, %struct.TYPE_16__** %9, align 8
  %75 = icmp eq %struct.TYPE_16__* %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = load i32, i32* @RET_ERROR, align 4
  store i32 %77, i32* %4, align 4
  br label %148

78:                                               ; preds = %69
  store i32 0, i32* %10, align 4
  br label %79

79:                                               ; preds = %78, %45
  br label %140

80:                                               ; preds = %37
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %82 = load i32, i32* @CURS_BEFORE, align 4
  %83 = call i64 @F_ISSET(%struct.TYPE_18__* %81, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %102

85:                                               ; preds = %80
  br label %86

86:                                               ; preds = %85, %44
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %88 = load i32, i32* @CURS_AFTER, align 4
  %89 = load i32, i32* @CURS_BEFORE, align 4
  %90 = or i32 %88, %89
  %91 = call i32 @F_CLR(%struct.TYPE_18__* %87, i32 %90)
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 1
  store %struct.TYPE_16__* %92, %struct.TYPE_16__** %94, align 8
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load i32, i32* @RET_SUCCESS, align 4
  store i32 %101, i32* %4, align 4
  br label %148

102:                                              ; preds = %80
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* %10, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %136

109:                                              ; preds = %102
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %11, align 4
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %117 = call i32 @mpool_put(i32 %115, %struct.TYPE_16__* %116, i32 0)
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* @P_INVALID, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %109
  %122 = load i32, i32* @RET_SPECIAL, align 4
  store i32 %122, i32* %4, align 4
  br label %148

123:                                              ; preds = %109
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %11, align 4
  %128 = call %struct.TYPE_16__* @mpool_get(i32 %126, i32 %127, i32 0)
  store %struct.TYPE_16__* %128, %struct.TYPE_16__** %9, align 8
  %129 = icmp eq %struct.TYPE_16__* %128, null
  br i1 %129, label %130, label %132

130:                                              ; preds = %123
  %131 = load i32, i32* @RET_ERROR, align 4
  store i32 %131, i32* %4, align 4
  br label %148

132:                                              ; preds = %123
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %134 = call i32 @NEXTINDEX(%struct.TYPE_16__* %133)
  %135 = sub nsw i32 %134, 1
  store i32 %135, i32* %10, align 4
  br label %139

136:                                              ; preds = %102
  %137 = load i32, i32* %10, align 4
  %138 = add nsw i32 %137, -1
  store i32 %138, i32* %10, align 4
  br label %139

139:                                              ; preds = %136, %132
  br label %140

140:                                              ; preds = %37, %139, %79
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 1
  store %struct.TYPE_16__* %141, %struct.TYPE_16__** %143, align 8
  %144 = load i32, i32* %10, align 4
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 8
  %147 = load i32, i32* @RET_SUCCESS, align 4
  store i32 %147, i32* %4, align 4
  br label %148

148:                                              ; preds = %140, %130, %121, %86, %76, %67, %35, %19
  %149 = load i32, i32* %4, align 4
  ret i32 %149
}

declare dso_local i64 @F_ISSET(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @__bt_first(%struct.TYPE_19__*, i32*, %struct.TYPE_17__*, i32*) #1

declare dso_local %struct.TYPE_16__* @mpool_get(i32, i32, i32) #1

declare dso_local i32 @NEXTINDEX(%struct.TYPE_16__*) #1

declare dso_local i32 @mpool_put(i32, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @F_CLR(%struct.TYPE_18__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
