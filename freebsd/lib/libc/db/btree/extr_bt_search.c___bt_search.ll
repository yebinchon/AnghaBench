; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/db/btree/extr_bt_search.c___bt_search.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/db/btree/extr_bt_search.c___bt_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, i64, i64, i32 }
%struct.TYPE_23__ = type { i32, %struct.TYPE_22__ }
%struct.TYPE_20__ = type { i32 }

@P_ROOT = common dso_local global i32 0, align 4
@P_BLEAF = common dso_local global i32 0, align 4
@B_NODUPS = common dso_local global i32 0, align 4
@P_INVALID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_22__* @__bt_search(%struct.TYPE_23__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %15 = call i32 @BT_CLR(%struct.TYPE_23__* %14)
  %16 = load i32, i32* @P_ROOT, align 4
  store i32 %16, i32* %12, align 4
  br label %17

17:                                               ; preds = %144, %3
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %12, align 4
  %22 = call %struct.TYPE_21__* @mpool_get(i32 %20, i32 %21, i32 0)
  store %struct.TYPE_21__* %22, %struct.TYPE_21__** %8, align 8
  %23 = icmp eq %struct.TYPE_21__* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %4, align 8
  br label %161

25:                                               ; preds = %17
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 1
  store %struct.TYPE_21__* %26, %struct.TYPE_21__** %29, align 8
  store i32 0, i32* %9, align 4
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %31 = call i32 @NEXTINDEX(%struct.TYPE_21__* %30)
  store i32 %31, i32* %11, align 4
  br label %32

32:                                               ; preds = %70, %25
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %73

35:                                               ; preds = %32
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %11, align 4
  %38 = ashr i32 %37, 1
  %39 = add nsw i32 %36, %38
  store i32 %39, i32* %10, align 4
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 8
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 1
  %47 = call i32 @__bt_cmp(%struct.TYPE_23__* %43, i32* %44, %struct.TYPE_22__* %46)
  store i32 %47, i32* %13, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %35
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @P_BLEAF, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load i32*, i32** %7, align 8
  store i32 1, i32* %57, align 4
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 1
  store %struct.TYPE_22__* %59, %struct.TYPE_22__** %4, align 8
  br label %161

60:                                               ; preds = %49
  br label %144

61:                                               ; preds = %35
  %62 = load i32, i32* %13, align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %11, align 4
  br label %69

69:                                               ; preds = %64, %61
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %11, align 4
  %72 = ashr i32 %71, 1
  store i32 %72, i32* %11, align 4
  br label %32

73:                                               ; preds = %32
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @P_BLEAF, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %134

80:                                               ; preds = %73
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %82 = load i32, i32* @B_NODUPS, align 4
  %83 = call i32 @F_ISSET(%struct.TYPE_23__* %81, i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %126, label %85

85:                                               ; preds = %80
  %86 = load i32, i32* %9, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %104

88:                                               ; preds = %85
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @P_INVALID, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %104

94:                                               ; preds = %88
  %95 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %97 = load i32*, i32** %6, align 8
  %98 = load i32*, i32** %7, align 8
  %99 = call i64 @__bt_sprev(%struct.TYPE_23__* %95, %struct.TYPE_21__* %96, i32* %97, i32* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %94
  %102 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %102, i32 0, i32 1
  store %struct.TYPE_22__* %103, %struct.TYPE_22__** %4, align 8
  br label %161

104:                                              ; preds = %94, %88, %85
  %105 = load i32, i32* %9, align 4
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %107 = call i32 @NEXTINDEX(%struct.TYPE_21__* %106)
  %108 = icmp eq i32 %105, %107
  br i1 %108, label %109, label %125

109:                                              ; preds = %104
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @P_INVALID, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %125

115:                                              ; preds = %109
  %116 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %118 = load i32*, i32** %6, align 8
  %119 = load i32*, i32** %7, align 8
  %120 = call i64 @__bt_snext(%struct.TYPE_23__* %116, %struct.TYPE_21__* %117, i32* %118, i32* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %115
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %123, i32 0, i32 1
  store %struct.TYPE_22__* %124, %struct.TYPE_22__** %4, align 8
  br label %161

125:                                              ; preds = %115, %109, %104
  br label %126

126:                                              ; preds = %125, %80
  %127 = load i32*, i32** %7, align 8
  store i32 0, i32* %127, align 4
  %128 = load i32, i32* %9, align 4
  %129 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i32 0, i32 0
  store i32 %128, i32* %131, align 8
  %132 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %132, i32 0, i32 1
  store %struct.TYPE_22__* %133, %struct.TYPE_22__** %4, align 8
  br label %161

134:                                              ; preds = %73
  %135 = load i32, i32* %9, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load i32, i32* %9, align 4
  %139 = sub nsw i32 %138, 1
  br label %142

140:                                              ; preds = %134
  %141 = load i32, i32* %9, align 4
  br label %142

142:                                              ; preds = %140, %137
  %143 = phi i32 [ %139, %137 ], [ %141, %140 ]
  store i32 %143, i32* %10, align 4
  br label %144

144:                                              ; preds = %142, %60
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %146 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* %10, align 4
  %150 = call i32 @BT_PUSH(%struct.TYPE_23__* %145, i32 %148, i32 %149)
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %152 = load i32, i32* %10, align 4
  %153 = call %struct.TYPE_20__* @GETBINTERNAL(%struct.TYPE_21__* %151, i32 %152)
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  store i32 %155, i32* %12, align 4
  %156 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %160 = call i32 @mpool_put(i32 %158, %struct.TYPE_21__* %159, i32 0)
  br label %17

161:                                              ; preds = %126, %122, %101, %56, %24
  %162 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  ret %struct.TYPE_22__* %162
}

declare dso_local i32 @BT_CLR(%struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_21__* @mpool_get(i32, i32, i32) #1

declare dso_local i32 @NEXTINDEX(%struct.TYPE_21__*) #1

declare dso_local i32 @__bt_cmp(%struct.TYPE_23__*, i32*, %struct.TYPE_22__*) #1

declare dso_local i32 @F_ISSET(%struct.TYPE_23__*, i32) #1

declare dso_local i64 @__bt_sprev(%struct.TYPE_23__*, %struct.TYPE_21__*, i32*, i32*) #1

declare dso_local i64 @__bt_snext(%struct.TYPE_23__*, %struct.TYPE_21__*, i32*, i32*) #1

declare dso_local i32 @BT_PUSH(%struct.TYPE_23__*, i32, i32) #1

declare dso_local %struct.TYPE_20__* @GETBINTERNAL(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @mpool_put(i32, %struct.TYPE_21__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
