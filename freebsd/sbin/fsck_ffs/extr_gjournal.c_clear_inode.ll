; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_gjournal.c_clear_inode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_gjournal.c_clear_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.ufs2_dinode = type { i64, i32, i64*, i64*, i64* }

@fs = common dso_local global %struct.TYPE_5__* null, align 8
@FS_UFS2_MAGIC = common dso_local global i64 0, align 8
@UFS_NXADDR = common dso_local global i32 0, align 4
@UFS_NDADDR = common dso_local global i32 0, align 4
@SINGLE = common dso_local global i32 0, align 4
@TRIPLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ufs2_dinode*)* @clear_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_inode(%struct.ufs2_dinode* %0) #0 {
  %2 = alloca %struct.ufs2_dinode*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.ufs2_dinode* %0, %struct.ufs2_dinode** %2, align 8
  store i32 0, i32* %4, align 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fs, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @FS_UFS2_MAGIC, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %1
  %15 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %2, align 8
  %16 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fs, align 8
  %21 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %2, align 8
  %22 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @fragroundup(%struct.TYPE_5__* %20, i64 %23)
  %25 = call i32 @btodb(i32 %24)
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %19, %14, %1
  %27 = load i32, i32* %4, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %71

29:                                               ; preds = %26
  %30 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %2, align 8
  %31 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %7, align 8
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %2, align 8
  %35 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %36, %33
  store i32 %37, i32* %35, align 8
  %38 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %2, align 8
  %39 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %67, %29
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @UFS_NXADDR, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %70

44:                                               ; preds = %40
  %45 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %2, align 8
  %46 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %45, i32 0, i32 2
  %47 = load i64*, i64** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  br label %67

54:                                               ; preds = %44
  %55 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %2, align 8
  %56 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %55, i32 0, i32 2
  %57 = load i64*, i64** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fs, align 8
  %63 = load i64, i64* %7, align 8
  %64 = load i32, i32* %5, align 4
  %65 = call i64 @sblksize(%struct.TYPE_5__* %62, i64 %63, i32 %64)
  %66 = call i32 @blkfree(i64 %61, i64 %65)
  br label %67

67:                                               ; preds = %54, %53
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %5, align 4
  br label %40

70:                                               ; preds = %40
  br label %71

71:                                               ; preds = %70, %26
  store i32 0, i32* %6, align 4
  br label %72

72:                                               ; preds = %95, %71
  %73 = load i32, i32* %6, align 4
  %74 = icmp sle i32 %73, 2
  br i1 %74, label %75, label %98

75:                                               ; preds = %72
  %76 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %2, align 8
  %77 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %76, i32 0, i32 3
  %78 = load i64*, i64** %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %75
  br label %98

85:                                               ; preds = %75
  %86 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %2, align 8
  %87 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %86, i32 0, i32 3
  %88 = load i64*, i64** %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @freeindir(i64 %92, i32 %93)
  br label %95

95:                                               ; preds = %85
  %96 = load i32, i32* %6, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %6, align 4
  br label %72

98:                                               ; preds = %84, %72
  store i32 0, i32* %5, align 4
  br label %99

99:                                               ; preds = %122, %98
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* @UFS_NDADDR, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %125

103:                                              ; preds = %99
  %104 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %2, align 8
  %105 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %104, i32 0, i32 4
  %106 = load i64*, i64** %105, align 8
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i64, i64* %106, i64 %108
  %110 = load i64, i64* %109, align 8
  store i64 %110, i64* %3, align 8
  %111 = load i64, i64* %3, align 8
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %103
  br label %122

114:                                              ; preds = %103
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fs, align 8
  %116 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %2, align 8
  %117 = load i32, i32* %5, align 4
  %118 = call i64 @dblksize(%struct.TYPE_5__* %115, %struct.ufs2_dinode* %116, i32 %117)
  store i64 %118, i64* %8, align 8
  %119 = load i64, i64* %3, align 8
  %120 = load i64, i64* %8, align 8
  %121 = call i32 @blkfree(i64 %119, i64 %120)
  br label %122

122:                                              ; preds = %114, %113
  %123 = load i32, i32* %5, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %5, align 4
  br label %99

125:                                              ; preds = %99
  ret void
}

declare dso_local i32 @btodb(i32) #1

declare dso_local i32 @fragroundup(%struct.TYPE_5__*, i64) #1

declare dso_local i32 @blkfree(i64, i64) #1

declare dso_local i64 @sblksize(%struct.TYPE_5__*, i64, i32) #1

declare dso_local i32 @freeindir(i64, i32) #1

declare dso_local i64 @dblksize(%struct.TYPE_5__*, %struct.ufs2_dinode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
