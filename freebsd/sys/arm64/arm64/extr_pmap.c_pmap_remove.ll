; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.rwlock = type { i32 }
%struct.spglist = type { i32 }

@L0_SIZE = common dso_local global i32 0, align 4
@L0_OFFSET = common dso_local global i32 0, align 4
@L1_SIZE = common dso_local global i32 0, align 4
@L1_OFFSET = common dso_local global i32 0, align 4
@L2_SIZE = common dso_local global i32 0, align 4
@L2_OFFSET = common dso_local global i32 0, align 4
@ATTR_DESCR_MASK = common dso_local global i32 0, align 4
@L2_BLOCK = common dso_local global i32 0, align 4
@L2_TABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_remove(%struct.TYPE_11__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rwlock*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.spglist, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %161

20:                                               ; preds = %3
  %21 = call i32 @SLIST_INIT(%struct.spglist* %13)
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %23 = call i32 @PMAP_LOCK(%struct.TYPE_11__* %22)
  store %struct.rwlock* null, %struct.rwlock** %7, align 8
  br label %24

24:                                               ; preds = %149, %20
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %151

28:                                               ; preds = %24
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %151

35:                                               ; preds = %28
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32* @pmap_l0(%struct.TYPE_11__* %36, i32 %37)
  store i32* %38, i32** %9, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = call i32 @pmap_load(i32* %39)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %35
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @L0_SIZE, align 4
  %45 = add nsw i32 %43, %44
  %46 = load i32, i32* @L0_OFFSET, align 4
  %47 = xor i32 %46, -1
  %48 = and i32 %45, %47
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %42
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %52, %42
  br label %149

55:                                               ; preds = %35
  %56 = load i32*, i32** %9, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32* @pmap_l0_to_l1(i32* %56, i32 %57)
  store i32* %58, i32** %10, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = call i32 @pmap_load(i32* %59)
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %55
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @L1_SIZE, align 4
  %65 = add nsw i32 %63, %64
  %66 = load i32, i32* @L1_OFFSET, align 4
  %67 = xor i32 %66, -1
  %68 = and i32 %65, %67
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %62
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %72, %62
  br label %149

75:                                               ; preds = %55
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @L2_SIZE, align 4
  %78 = add nsw i32 %76, %77
  %79 = load i32, i32* @L2_OFFSET, align 4
  %80 = xor i32 %79, -1
  %81 = and i32 %78, %80
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %5, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %75
  %86 = load i32, i32* %6, align 4
  store i32 %86, i32* %8, align 4
  br label %87

87:                                               ; preds = %85, %75
  %88 = load i32*, i32** %10, align 8
  %89 = load i32, i32* %5, align 4
  %90 = call i32* @pmap_l1_to_l2(i32* %88, i32 %89)
  store i32* %90, i32** %11, align 8
  %91 = load i32*, i32** %11, align 8
  %92 = icmp eq i32* %91, null
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  br label %149

94:                                               ; preds = %87
  %95 = load i32*, i32** %11, align 8
  %96 = call i32 @pmap_load(i32* %95)
  store i32 %96, i32* %12, align 4
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* @ATTR_DESCR_MASK, align 4
  %99 = and i32 %97, %98
  %100 = load i32, i32* @L2_BLOCK, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %130

102:                                              ; preds = %94
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* @L2_SIZE, align 4
  %105 = add nsw i32 %103, %104
  %106 = load i32, i32* %8, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %119

108:                                              ; preds = %102
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* %8, align 4
  %111 = icmp sge i32 %109, %110
  br i1 %111, label %112, label %119

112:                                              ; preds = %108
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %114 = load i32*, i32** %11, align 8
  %115 = load i32, i32* %5, align 4
  %116 = load i32*, i32** %10, align 8
  %117 = call i32 @pmap_load(i32* %116)
  %118 = call i32 @pmap_remove_l2(%struct.TYPE_11__* %113, i32* %114, i32 %115, i32 %117, %struct.spglist* %13, %struct.rwlock** %7)
  br label %149

119:                                              ; preds = %108, %102
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %121 = load i32*, i32** %11, align 8
  %122 = load i32, i32* %5, align 4
  %123 = call i32* @pmap_demote_l2_locked(%struct.TYPE_11__* %120, i32* %121, i32 %122, %struct.rwlock** %7)
  %124 = icmp eq i32* %123, null
  br i1 %124, label %125, label %126

125:                                              ; preds = %119
  br label %149

126:                                              ; preds = %119
  br label %127

127:                                              ; preds = %126
  %128 = load i32*, i32** %11, align 8
  %129 = call i32 @pmap_load(i32* %128)
  store i32 %129, i32* %12, align 4
  br label %130

130:                                              ; preds = %127, %94
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* @ATTR_DESCR_MASK, align 4
  %133 = and i32 %131, %132
  %134 = load i32, i32* @L2_TABLE, align 4
  %135 = icmp ne i32 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %130
  br label %149

137:                                              ; preds = %130
  %138 = load i32, i32* %8, align 4
  %139 = load i32, i32* %6, align 4
  %140 = icmp sgt i32 %138, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %137
  %142 = load i32, i32* %6, align 4
  store i32 %142, i32* %8, align 4
  br label %143

143:                                              ; preds = %141, %137
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %145 = load i32, i32* %12, align 4
  %146 = load i32, i32* %5, align 4
  %147 = load i32, i32* %8, align 4
  %148 = call i32 @pmap_remove_l3_range(%struct.TYPE_11__* %144, i32 %145, i32 %146, i32 %147, %struct.spglist* %13, %struct.rwlock** %7)
  br label %149

149:                                              ; preds = %143, %136, %125, %112, %93, %74, %54
  %150 = load i32, i32* %8, align 4
  store i32 %150, i32* %5, align 4
  br label %24

151:                                              ; preds = %34, %24
  %152 = load %struct.rwlock*, %struct.rwlock** %7, align 8
  %153 = icmp ne %struct.rwlock* %152, null
  br i1 %153, label %154, label %157

154:                                              ; preds = %151
  %155 = load %struct.rwlock*, %struct.rwlock** %7, align 8
  %156 = call i32 @rw_wunlock(%struct.rwlock* %155)
  br label %157

157:                                              ; preds = %154, %151
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %159 = call i32 @PMAP_UNLOCK(%struct.TYPE_11__* %158)
  %160 = call i32 @vm_page_free_pages_toq(%struct.spglist* %13, i32 1)
  br label %161

161:                                              ; preds = %157, %19
  ret void
}

declare dso_local i32 @SLIST_INIT(%struct.spglist*) #1

declare dso_local i32 @PMAP_LOCK(%struct.TYPE_11__*) #1

declare dso_local i32* @pmap_l0(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @pmap_load(i32*) #1

declare dso_local i32* @pmap_l0_to_l1(i32*, i32) #1

declare dso_local i32* @pmap_l1_to_l2(i32*, i32) #1

declare dso_local i32 @pmap_remove_l2(%struct.TYPE_11__*, i32*, i32, i32, %struct.spglist*, %struct.rwlock**) #1

declare dso_local i32* @pmap_demote_l2_locked(%struct.TYPE_11__*, i32*, i32, %struct.rwlock**) #1

declare dso_local i32 @pmap_remove_l3_range(%struct.TYPE_11__*, i32, i32, i32, %struct.spglist*, %struct.rwlock**) #1

declare dso_local i32 @rw_wunlock(%struct.rwlock*) #1

declare dso_local i32 @PMAP_UNLOCK(%struct.TYPE_11__*) #1

declare dso_local i32 @vm_page_free_pages_toq(%struct.spglist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
