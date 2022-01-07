; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zio.c_zbookmark_compare.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zio.c_zbookmark_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64 }

@DMU_META_DNODE_OBJECT = common dso_local global i64 0, align 8
@SPA_MINBLOCKSHIFT = common dso_local global i64 0, align 8
@DNODE_SHIFT = common dso_local global i64 0, align 8
@COMPARE_META_LEVEL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zbookmark_compare(i64 %0, i32 %1, i64 %2, i32 %3, %struct.TYPE_4__* %4, %struct.TYPE_4__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store i64 %0, i64* %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.TYPE_4__* %4, %struct.TYPE_4__** %12, align 8
  store %struct.TYPE_4__* %5, %struct.TYPE_4__** %13, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %22, %25
  br i1 %26, label %27, label %44

27:                                               ; preds = %6
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %27
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %38, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  store i32 0, i32* %7, align 4
  br label %147

44:                                               ; preds = %35, %27, %6
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i64 @BP_SPANB(i32 %48, i64 %51)
  %53 = mul nsw i64 %47, %52
  store i64 %53, i64* %16, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = call i64 @BP_SPANB(i32 %57, i64 %60)
  %62 = mul nsw i64 %56, %61
  store i64 %62, i64* %17, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @DMU_META_DNODE_OBJECT, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %81

68:                                               ; preds = %44
  %69 = load i64, i64* %16, align 8
  %70 = load i64, i64* %8, align 8
  %71 = load i64, i64* @SPA_MINBLOCKSHIFT, align 8
  %72 = load i64, i64* @DNODE_SHIFT, align 8
  %73 = sub nsw i64 %71, %72
  %74 = shl i64 %70, %73
  %75 = mul nsw i64 %69, %74
  store i64 %75, i64* %14, align 8
  store i64 0, i64* %16, align 8
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @COMPARE_META_LEVEL, align 8
  %80 = add nsw i64 %78, %79
  store i64 %80, i64* %18, align 8
  br label %88

81:                                               ; preds = %44
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %14, align 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %18, align 8
  br label %88

88:                                               ; preds = %81, %68
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @DMU_META_DNODE_OBJECT, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %107

94:                                               ; preds = %88
  %95 = load i64, i64* %17, align 8
  %96 = load i64, i64* %10, align 8
  %97 = load i64, i64* @SPA_MINBLOCKSHIFT, align 8
  %98 = load i64, i64* @DNODE_SHIFT, align 8
  %99 = sub nsw i64 %97, %98
  %100 = shl i64 %96, %99
  %101 = mul nsw i64 %95, %100
  store i64 %101, i64* %15, align 8
  store i64 0, i64* %17, align 8
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @COMPARE_META_LEVEL, align 8
  %106 = add nsw i64 %104, %105
  store i64 %106, i64* %19, align 8
  br label %114

107:                                              ; preds = %88
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  store i64 %110, i64* %15, align 8
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  store i64 %113, i64* %19, align 8
  br label %114

114:                                              ; preds = %107, %94
  %115 = load i64, i64* %14, align 8
  %116 = load i64, i64* %15, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %124

118:                                              ; preds = %114
  %119 = load i64, i64* %14, align 8
  %120 = load i64, i64* %15, align 8
  %121 = icmp slt i64 %119, %120
  %122 = zext i1 %121 to i64
  %123 = select i1 %121, i32 -1, i32 1
  store i32 %123, i32* %7, align 4
  br label %147

124:                                              ; preds = %114
  %125 = load i64, i64* %16, align 8
  %126 = load i64, i64* %17, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %128, label %134

128:                                              ; preds = %124
  %129 = load i64, i64* %16, align 8
  %130 = load i64, i64* %17, align 8
  %131 = icmp slt i64 %129, %130
  %132 = zext i1 %131 to i64
  %133 = select i1 %131, i32 -1, i32 1
  store i32 %133, i32* %7, align 4
  br label %147

134:                                              ; preds = %124
  %135 = load i64, i64* %18, align 8
  %136 = load i64, i64* %19, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %144

138:                                              ; preds = %134
  %139 = load i64, i64* %18, align 8
  %140 = load i64, i64* %19, align 8
  %141 = icmp sgt i64 %139, %140
  %142 = zext i1 %141 to i64
  %143 = select i1 %141, i32 -1, i32 1
  store i32 %143, i32* %7, align 4
  br label %147

144:                                              ; preds = %134
  br label %145

145:                                              ; preds = %144
  br label %146

146:                                              ; preds = %145
  store i32 0, i32* %7, align 4
  br label %147

147:                                              ; preds = %146, %138, %128, %118, %43
  %148 = load i32, i32* %7, align 4
  ret i32 %148
}

declare dso_local i64 @BP_SPANB(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
