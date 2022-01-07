; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu.c_dmu_read_impl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu.c_dmu_read_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_8__ = type { i64, i64, i64 }

@DMU_MAX_ACCESS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i64, i64, i8*, i32)* @dmu_read_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmu_read_impl(%struct.TYPE_7__* %0, i64 %1, i64 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %13, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %53

24:                                               ; preds = %5
  %25 = load i64, i64* %7, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %39

31:                                               ; preds = %24
  %32 = load i64, i64* %8, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %7, align 8
  %37 = sub nsw i64 %35, %36
  %38 = call i64 @MIN(i64 %32, i64 %37)
  br label %39

39:                                               ; preds = %31, %30
  %40 = phi i64 [ 0, %30 ], [ %38, %31 ]
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %14, align 4
  %42 = load i8*, i8** %9, align 8
  %43 = load i32, i32* %14, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load i64, i64* %8, align 8
  %47 = load i32, i32* %14, align 4
  %48 = sext i32 %47 to i64
  %49 = sub nsw i64 %46, %48
  %50 = call i32 @bzero(i8* %45, i64 %49)
  %51 = load i32, i32* %14, align 4
  %52 = sext i32 %51 to i64
  store i64 %52, i64* %8, align 8
  br label %53

53:                                               ; preds = %39, %5
  br label %54

54:                                               ; preds = %128, %53
  %55 = load i64, i64* %8, align 8
  %56 = icmp sgt i64 %55, 0
  br i1 %56, label %57, label %133

57:                                               ; preds = %54
  %58 = load i64, i64* %8, align 8
  %59 = load i32, i32* @DMU_MAX_ACCESS, align 4
  %60 = sdiv i32 %59, 2
  %61 = sext i32 %60 to i64
  %62 = call i64 @MIN(i64 %58, i64 %61)
  store i64 %62, i64* %15, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %64 = load i64, i64* %7, align 8
  %65 = load i64, i64* %15, align 8
  %66 = load i32, i32* @TRUE, align 4
  %67 = load i32, i32* @FTAG, align 4
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @dmu_buf_hold_array_by_dnode(%struct.TYPE_7__* %63, i64 %64, i64 %65, i32 %66, i32 %67, i32* %12, %struct.TYPE_8__*** %11, i32 %68)
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %13, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %57
  br label %133

73:                                               ; preds = %57
  store i32 0, i32* %16, align 4
  br label %74

74:                                               ; preds = %125, %73
  %75 = load i32, i32* %16, align 4
  %76 = load i32, i32* %12, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %128

78:                                               ; preds = %74
  %79 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %11, align 8
  %80 = load i32, i32* %16, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %79, i64 %81
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  store %struct.TYPE_8__* %83, %struct.TYPE_8__** %19, align 8
  %84 = load i64, i64* %8, align 8
  %85 = icmp sgt i64 %84, 0
  %86 = zext i1 %85 to i32
  %87 = call i32 @ASSERT(i32 %86)
  %88 = load i64, i64* %7, align 8
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = sub nsw i64 %88, %91
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %18, align 4
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i32, i32* %18, align 4
  %98 = sext i32 %97 to i64
  %99 = sub nsw i64 %96, %98
  %100 = load i64, i64* %8, align 8
  %101 = call i64 @MIN(i64 %99, i64 %100)
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %17, align 4
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = inttoptr i64 %105 to i8*
  %107 = load i32, i32* %18, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %106, i64 %108
  %110 = load i8*, i8** %9, align 8
  %111 = load i32, i32* %17, align 4
  %112 = call i32 @bcopy(i8* %109, i8* %110, i32 %111)
  %113 = load i32, i32* %17, align 4
  %114 = sext i32 %113 to i64
  %115 = load i64, i64* %7, align 8
  %116 = add nsw i64 %115, %114
  store i64 %116, i64* %7, align 8
  %117 = load i32, i32* %17, align 4
  %118 = sext i32 %117 to i64
  %119 = load i64, i64* %8, align 8
  %120 = sub nsw i64 %119, %118
  store i64 %120, i64* %8, align 8
  %121 = load i8*, i8** %9, align 8
  %122 = load i32, i32* %17, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %121, i64 %123
  store i8* %124, i8** %9, align 8
  br label %125

125:                                              ; preds = %78
  %126 = load i32, i32* %16, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %16, align 4
  br label %74

128:                                              ; preds = %74
  %129 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %11, align 8
  %130 = load i32, i32* %12, align 4
  %131 = load i32, i32* @FTAG, align 4
  %132 = call i32 @dmu_buf_rele_array(%struct.TYPE_8__** %129, i32 %130, i32 %131)
  br label %54

133:                                              ; preds = %72, %54
  %134 = load i32, i32* %13, align 4
  ret i32 %134
}

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i32 @bzero(i8*, i64) #1

declare dso_local i32 @dmu_buf_hold_array_by_dnode(%struct.TYPE_7__*, i64, i64, i32, i32, i32*, %struct.TYPE_8__***, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @bcopy(i8*, i8*, i32) #1

declare dso_local i32 @dmu_buf_rele_array(%struct.TYPE_8__**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
