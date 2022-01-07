; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_send.c_dump_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_send.c_dump_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i64, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.drr_free }
%struct.drr_free = type { i64, i64, i64, i32 }

@PENDING_NONE = common dso_local global i64 0, align 8
@PENDING_FREE = common dso_local global i64 0, align 8
@EINTR = common dso_local global i32 0, align 4
@DRR_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i64, i64, i64)* @dump_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_free(%struct.TYPE_7__* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.drr_free*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store %struct.drr_free* %15, %struct.drr_free** %10, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %16, %19
  br i1 %20, label %35, label %21

21:                                               ; preds = %4
  %22 = load i64, i64* %7, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %22, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load i64, i64* %8, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %28, %31
  br label %33

33:                                               ; preds = %27, %21
  %34 = phi i1 [ false, %21 ], [ %32, %27 ]
  br label %35

35:                                               ; preds = %33, %4
  %36 = phi i1 [ true, %4 ], [ %34, %33 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @ASSERT(i32 %37)
  %39 = load i64, i64* %9, align 8
  %40 = icmp ne i64 %39, -1
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* %9, align 8
  %44 = add nsw i64 %42, %43
  %45 = load i64, i64* %8, align 8
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i64 -1, i64* %9, align 8
  br label %48

48:                                               ; preds = %47, %41, %35
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @PENDING_NONE, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %71

54:                                               ; preds = %48
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @PENDING_FREE, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %54
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %62 = call i64 @dump_record(%struct.TYPE_7__* %61, i32* null, i32 0)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load i32, i32* @EINTR, align 4
  %66 = call i32 @SET_ERROR(i32 %65)
  store i32 %66, i32* %5, align 4
  br label %154

67:                                               ; preds = %60
  %68 = load i64, i64* @PENDING_NONE, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 2
  store i64 %68, i64* %70, align 8
  br label %71

71:                                               ; preds = %67, %54, %48
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @PENDING_FREE, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %115

77:                                               ; preds = %71
  %78 = load i64, i64* %9, align 8
  %79 = icmp ne i64 %78, -1
  %80 = zext i1 %79 to i32
  %81 = call i32 @ASSERT(i32 %80)
  %82 = load %struct.drr_free*, %struct.drr_free** %10, align 8
  %83 = getelementptr inbounds %struct.drr_free, %struct.drr_free* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %7, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %103

87:                                               ; preds = %77
  %88 = load %struct.drr_free*, %struct.drr_free** %10, align 8
  %89 = getelementptr inbounds %struct.drr_free, %struct.drr_free* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.drr_free*, %struct.drr_free** %10, align 8
  %92 = getelementptr inbounds %struct.drr_free, %struct.drr_free* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %90, %93
  %95 = load i64, i64* %8, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %87
  %98 = load i64, i64* %9, align 8
  %99 = load %struct.drr_free*, %struct.drr_free** %10, align 8
  %100 = getelementptr inbounds %struct.drr_free, %struct.drr_free* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %101, %98
  store i64 %102, i64* %100, align 8
  store i32 0, i32* %5, align 4
  br label %154

103:                                              ; preds = %87, %77
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %105 = call i64 @dump_record(%struct.TYPE_7__* %104, i32* null, i32 0)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %103
  %108 = load i32, i32* @EINTR, align 4
  %109 = call i32 @SET_ERROR(i32 %108)
  store i32 %109, i32* %5, align 4
  br label %154

110:                                              ; preds = %103
  %111 = load i64, i64* @PENDING_NONE, align 8
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 2
  store i64 %111, i64* %113, align 8
  br label %114

114:                                              ; preds = %110
  br label %115

115:                                              ; preds = %114, %71
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 4
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %117, align 8
  %119 = call i32 @bzero(%struct.TYPE_8__* %118, i32 4)
  %120 = load i32, i32* @DRR_FREE, align 4
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 4
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  store i32 %120, i32* %124, align 8
  %125 = load i64, i64* %7, align 8
  %126 = load %struct.drr_free*, %struct.drr_free** %10, align 8
  %127 = getelementptr inbounds %struct.drr_free, %struct.drr_free* %126, i32 0, i32 0
  store i64 %125, i64* %127, align 8
  %128 = load i64, i64* %8, align 8
  %129 = load %struct.drr_free*, %struct.drr_free** %10, align 8
  %130 = getelementptr inbounds %struct.drr_free, %struct.drr_free* %129, i32 0, i32 1
  store i64 %128, i64* %130, align 8
  %131 = load i64, i64* %9, align 8
  %132 = load %struct.drr_free*, %struct.drr_free** %10, align 8
  %133 = getelementptr inbounds %struct.drr_free, %struct.drr_free* %132, i32 0, i32 2
  store i64 %131, i64* %133, align 8
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.drr_free*, %struct.drr_free** %10, align 8
  %138 = getelementptr inbounds %struct.drr_free, %struct.drr_free* %137, i32 0, i32 3
  store i32 %136, i32* %138, align 8
  %139 = load i64, i64* %9, align 8
  %140 = icmp eq i64 %139, -1
  br i1 %140, label %141, label %149

141:                                              ; preds = %115
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %143 = call i64 @dump_record(%struct.TYPE_7__* %142, i32* null, i32 0)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %141
  %146 = load i32, i32* @EINTR, align 4
  %147 = call i32 @SET_ERROR(i32 %146)
  store i32 %147, i32* %5, align 4
  br label %154

148:                                              ; preds = %141
  br label %153

149:                                              ; preds = %115
  %150 = load i64, i64* @PENDING_FREE, align 8
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 2
  store i64 %150, i64* %152, align 8
  br label %153

153:                                              ; preds = %149, %148
  store i32 0, i32* %5, align 4
  br label %154

154:                                              ; preds = %153, %145, %107, %97, %64
  %155 = load i32, i32* %5, align 4
  ret i32 %155
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @dump_record(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @bzero(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
