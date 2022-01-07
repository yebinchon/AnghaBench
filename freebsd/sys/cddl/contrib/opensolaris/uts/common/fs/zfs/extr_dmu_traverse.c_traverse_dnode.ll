; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_traverse.c_traverse_dnode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_traverse.c_traverse_dnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 (i32, i32*, i32*, i32*, %struct.TYPE_13__*, i32)*, i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i32*, i64 }

@DMU_META_DNODE_OBJECT = common dso_local global i32 0, align 4
@TRAVERSE_PRE = common dso_local global i32 0, align 4
@ZB_DNODE_LEVEL = common dso_local global i64 0, align 8
@ZB_DNODE_BLKID = common dso_local global i32 0, align 4
@TRAVERSE_VISIT_NO_CHILDREN = common dso_local global i32 0, align 4
@DNODE_FLAG_SPILL_BLKPTR = common dso_local global i32 0, align 4
@DMU_SPILL_BLKID = common dso_local global i32 0, align 4
@TRAVERSE_POST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_13__*, i32, i32)* @traverse_dnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @traverse_dnode(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @DMU_META_DNODE_OBJECT, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %30

16:                                               ; preds = %4
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 4
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %20 = icmp ne %struct.TYPE_11__* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %16
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 4
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %22, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %155

30:                                               ; preds = %21, %16, %4
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @TRAVERSE_PRE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %64

37:                                               ; preds = %30
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i64, i64* @ZB_DNODE_LEVEL, align 8
  %41 = load i32, i32* @ZB_DNODE_BLKID, align 4
  %42 = call i32 @SET_BOOKMARK(i32* %12, i32 %38, i32 %39, i64 %40, i32 %41)
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 1
  %45 = load i32 (i32, i32*, i32*, i32*, %struct.TYPE_13__*, i32)*, i32 (i32, i32*, i32*, i32*, %struct.TYPE_13__*, i32)** %44, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 %45(i32 %48, i32* null, i32* null, i32* %12, %struct.TYPE_13__* %49, i32 %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @TRAVERSE_VISIT_NO_CHILDREN, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %37
  store i32 0, i32* %5, align 4
  br label %155

58:                                               ; preds = %37
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i32, i32* %11, align 4
  store i32 %62, i32* %5, align 4
  br label %155

63:                                               ; preds = %58
  br label %64

64:                                               ; preds = %63, %30
  store i32 0, i32* %10, align 4
  br label %65

65:                                               ; preds = %93, %64
  %66 = load i32, i32* %10, align 4
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %96

71:                                               ; preds = %65
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = sub nsw i64 %76, 1
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @SET_BOOKMARK(i32* %12, i32 %72, i32 %73, i64 %77, i32 %78)
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = call i32 @traverse_visitbp(%struct.TYPE_12__* %80, %struct.TYPE_13__* %81, i32* %87, i32* %12)
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %71
  br label %96

92:                                               ; preds = %71
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %10, align 4
  br label %65

96:                                               ; preds = %91, %65
  %97 = load i32, i32* %11, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %116

99:                                               ; preds = %96
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @DNODE_FLAG_SPILL_BLKPTR, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %116

106:                                              ; preds = %99
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* @DMU_SPILL_BLKID, align 4
  %110 = call i32 @SET_BOOKMARK(i32* %12, i32 %107, i32 %108, i64 0, i32 %109)
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %114 = call i32* @DN_SPILL_BLKPTR(%struct.TYPE_13__* %113)
  %115 = call i32 @traverse_visitbp(%struct.TYPE_12__* %111, %struct.TYPE_13__* %112, i32* %114, i32* %12)
  store i32 %115, i32* %11, align 4
  br label %116

116:                                              ; preds = %106, %99, %96
  %117 = load i32, i32* %11, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %153

119:                                              ; preds = %116
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @TRAVERSE_POST, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %153

126:                                              ; preds = %119
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* %9, align 4
  %129 = load i64, i64* @ZB_DNODE_LEVEL, align 8
  %130 = load i32, i32* @ZB_DNODE_BLKID, align 4
  %131 = call i32 @SET_BOOKMARK(i32* %12, i32 %127, i32 %128, i64 %129, i32 %130)
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 1
  %134 = load i32 (i32, i32*, i32*, i32*, %struct.TYPE_13__*, i32)*, i32 (i32, i32*, i32*, i32*, %struct.TYPE_13__*, i32)** %133, align 8
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = call i32 %134(i32 %137, i32* null, i32* null, i32* %12, %struct.TYPE_13__* %138, i32 %141)
  store i32 %142, i32* %11, align 4
  %143 = load i32, i32* %11, align 4
  %144 = load i32, i32* @TRAVERSE_VISIT_NO_CHILDREN, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %126
  store i32 0, i32* %5, align 4
  br label %155

147:                                              ; preds = %126
  %148 = load i32, i32* %11, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %147
  %151 = load i32, i32* %11, align 4
  store i32 %151, i32* %5, align 4
  br label %155

152:                                              ; preds = %147
  br label %153

153:                                              ; preds = %152, %119, %116
  %154 = load i32, i32* %11, align 4
  store i32 %154, i32* %5, align 4
  br label %155

155:                                              ; preds = %153, %150, %146, %61, %57, %29
  %156 = load i32, i32* %5, align 4
  ret i32 %156
}

declare dso_local i32 @SET_BOOKMARK(i32*, i32, i32, i64, i32) #1

declare dso_local i32 @traverse_visitbp(%struct.TYPE_12__*, %struct.TYPE_13__*, i32*, i32*) #1

declare dso_local i32* @DN_SPILL_BLKPTR(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
