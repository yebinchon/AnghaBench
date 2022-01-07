; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_raidz.c_raidz_parity_verify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_raidz.c_raidz_parity_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__, i32* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i32, i32, i32 }

@VDEV_RAIDZ_MAXPARITY = common dso_local global i32 0, align 4
@ZIO_CHECKSUM_GANG_HEADER = common dso_local global i32 0, align 4
@ZIO_CHECKSUM_NOPARITY = common dso_local global i32 0, align 4
@ECKSUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_12__*)* @raidz_parity_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raidz_parity_verify(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %14 = load i32, i32* @VDEV_RAIDZ_MAXPARITY, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %6, align 8
  %17 = alloca i8*, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  store i32 0, i32* %9, align 4
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %11, align 8
  %21 = load i32*, i32** %11, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  br label %39

28:                                               ; preds = %2
  %29 = load i32*, i32** %11, align 8
  %30 = call i64 @BP_IS_GANG(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @ZIO_CHECKSUM_GANG_HEADER, align 4
  br label %37

34:                                               ; preds = %28
  %35 = load i32*, i32** %11, align 8
  %36 = call i32 @BP_GET_CHECKSUM(i32* %35)
  br label %37

37:                                               ; preds = %34, %32
  %38 = phi i32 [ %33, %32 ], [ %36, %34 ]
  br label %39

39:                                               ; preds = %37, %23
  %40 = phi i32 [ %27, %23 ], [ %38, %37 ]
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* @ZIO_CHECKSUM_NOPARITY, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %159

46:                                               ; preds = %39
  store i32 0, i32* %8, align 4
  br label %47

47:                                               ; preds = %89, %46
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %92

53:                                               ; preds = %47
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i64 %58
  store %struct.TYPE_13__* %59, %struct.TYPE_13__** %10, align 8
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %53
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64, %53
  br label %89

70:                                               ; preds = %64
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i8* @zio_buf_alloc(i32 %73)
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8*, i8** %17, i64 %76
  store i8* %74, i8** %77, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8*, i8** %17, i64 %79
  %81 = load i8*, i8** %80, align 8
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @abd_copy_to_buf(i8* %81, i32 %84, i32 %87)
  br label %89

89:                                               ; preds = %70, %69
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %8, align 4
  br label %47

92:                                               ; preds = %47
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %94 = call i32 @vdev_raidz_generate_parity(%struct.TYPE_12__* %93)
  store i32 0, i32* %8, align 4
  br label %95

95:                                               ; preds = %154, %92
  %96 = load i32, i32* %8, align 4
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp slt i32 %96, %99
  br i1 %100, label %101, label %157

101:                                              ; preds = %95
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %103, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i64 %106
  store %struct.TYPE_13__* %107, %struct.TYPE_13__** %10, align 8
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %101
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %112, %101
  br label %154

118:                                              ; preds = %112
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %8, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8*, i8** %17, i64 %123
  %125 = load i8*, i8** %124, align 8
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = call i64 @abd_cmp_buf(i32 %121, i8* %125, i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %145

131:                                              ; preds = %118
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %134 = load i32, i32* %8, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8*, i8** %17, i64 %135
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 @raidz_checksum_error(%struct.TYPE_11__* %132, %struct.TYPE_13__* %133, i8* %137)
  %139 = load i32, i32* @ECKSUM, align 4
  %140 = call i64 @SET_ERROR(i32 %139)
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 0
  store i64 %140, i64* %142, align 8
  %143 = load i32, i32* %9, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %9, align 4
  br label %145

145:                                              ; preds = %131, %118
  %146 = load i32, i32* %8, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8*, i8** %17, i64 %147
  %149 = load i8*, i8** %148, align 8
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @zio_buf_free(i8* %149, i32 %152)
  br label %154

154:                                              ; preds = %145, %117
  %155 = load i32, i32* %8, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %8, align 4
  br label %95

157:                                              ; preds = %95
  %158 = load i32, i32* %9, align 4
  store i32 %158, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %159

159:                                              ; preds = %157, %44
  %160 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %160)
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @BP_IS_GANG(i32*) #2

declare dso_local i32 @BP_GET_CHECKSUM(i32*) #2

declare dso_local i8* @zio_buf_alloc(i32) #2

declare dso_local i32 @abd_copy_to_buf(i8*, i32, i32) #2

declare dso_local i32 @vdev_raidz_generate_parity(%struct.TYPE_12__*) #2

declare dso_local i64 @abd_cmp_buf(i32, i8*, i32) #2

declare dso_local i32 @raidz_checksum_error(%struct.TYPE_11__*, %struct.TYPE_13__*, i8*) #2

declare dso_local i64 @SET_ERROR(i32) #2

declare dso_local i32 @zio_buf_free(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
