; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_vnops.c_zfs_fid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_vnops.c_zfs_fid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i32, i8**, i8** }
%struct.TYPE_15__ = type { i64*, i8** }

@LONG_FID_LEN = common dso_local global i32 0, align 4
@SHORT_FID_LEN = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_16__*, i32*)* @zfs_fid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_fid(i32* %0, %struct.TYPE_16__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_15__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store i32* %2, i32** %7, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = call %struct.TYPE_12__* @VTOZ(i32* %19)
  store %struct.TYPE_12__* %20, %struct.TYPE_12__** %8, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  store %struct.TYPE_13__* %23, %struct.TYPE_13__** %9, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %12, align 4
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %28 = call i32 @ZFS_ENTER(%struct.TYPE_13__* %27)
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %30 = call i32 @ZFS_VERIFY_ZP(%struct.TYPE_12__* %29)
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %35 = call i32 @SA_ZPL_GEN(%struct.TYPE_13__* %34)
  %36 = call i32 @sa_lookup(i32 %33, i32 %35, i32* %11, i32 4)
  store i32 %36, i32* %16, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %3
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %40 = call i32 @ZFS_EXIT(%struct.TYPE_13__* %39)
  %41 = load i32, i32* %16, align 4
  store i32 %41, i32* %4, align 4
  br label %158

42:                                               ; preds = %3
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %10, align 4
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %45, align 8
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %48 = icmp ne %struct.TYPE_13__* %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* @LONG_FID_LEN, align 4
  br label %53

51:                                               ; preds = %42
  %52 = load i32, i32* @SHORT_FID_LEN, align 4
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i32 [ %50, %49 ], [ %52, %51 ]
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %59 = bitcast %struct.TYPE_16__* %58 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %59, %struct.TYPE_14__** %13, align 8
  %60 = load i32, i32* %14, align 4
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  store i32 0, i32* %15, align 4
  br label %63

63:                                               ; preds = %80, %53
  %64 = load i32, i32* %15, align 4
  %65 = sext i32 %64 to i64
  %66 = icmp ult i64 %65, 8
  br i1 %66, label %67, label %83

67:                                               ; preds = %63
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %15, align 4
  %70 = mul nsw i32 8, %69
  %71 = ashr i32 %68, %70
  %72 = sext i32 %71 to i64
  %73 = inttoptr i64 %72 to i8*
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 2
  %76 = load i8**, i8*** %75, align 8
  %77 = load i32, i32* %15, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8*, i8** %76, i64 %78
  store i8* %73, i8** %79, align 8
  br label %80

80:                                               ; preds = %67
  %81 = load i32, i32* %15, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %15, align 4
  br label %63

83:                                               ; preds = %63
  %84 = load i32, i32* %10, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  store i32 1, i32* %10, align 4
  br label %87

87:                                               ; preds = %86, %83
  store i32 0, i32* %15, align 4
  br label %88

88:                                               ; preds = %105, %87
  %89 = load i32, i32* %15, align 4
  %90 = sext i32 %89 to i64
  %91 = icmp ult i64 %90, 8
  br i1 %91, label %92, label %108

92:                                               ; preds = %88
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %15, align 4
  %95 = mul nsw i32 8, %94
  %96 = ashr i32 %93, %95
  %97 = sext i32 %96 to i64
  %98 = inttoptr i64 %97 to i8*
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 1
  %101 = load i8**, i8*** %100, align 8
  %102 = load i32, i32* %15, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8*, i8** %101, i64 %103
  store i8* %98, i8** %104, align 8
  br label %105

105:                                              ; preds = %92
  %106 = load i32, i32* %15, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %15, align 4
  br label %88

108:                                              ; preds = %88
  %109 = load i32, i32* %14, align 4
  %110 = load i32, i32* @LONG_FID_LEN, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %155

112:                                              ; preds = %108
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @dmu_objset_id(i32 %115)
  store i32 %116, i32* %17, align 4
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %118 = bitcast %struct.TYPE_16__* %117 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %118, %struct.TYPE_15__** %18, align 8
  store i32 0, i32* %15, align 4
  br label %119

119:                                              ; preds = %136, %112
  %120 = load i32, i32* %15, align 4
  %121 = sext i32 %120 to i64
  %122 = icmp ult i64 %121, 8
  br i1 %122, label %123, label %139

123:                                              ; preds = %119
  %124 = load i32, i32* %17, align 4
  %125 = load i32, i32* %15, align 4
  %126 = mul nsw i32 8, %125
  %127 = ashr i32 %124, %126
  %128 = sext i32 %127 to i64
  %129 = inttoptr i64 %128 to i8*
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 1
  %132 = load i8**, i8*** %131, align 8
  %133 = load i32, i32* %15, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8*, i8** %132, i64 %134
  store i8* %129, i8** %135, align 8
  br label %136

136:                                              ; preds = %123
  %137 = load i32, i32* %15, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %15, align 4
  br label %119

139:                                              ; preds = %119
  store i32 0, i32* %15, align 4
  br label %140

140:                                              ; preds = %151, %139
  %141 = load i32, i32* %15, align 4
  %142 = sext i32 %141 to i64
  %143 = icmp ult i64 %142, 8
  br i1 %143, label %144, label %154

144:                                              ; preds = %140
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 0
  %147 = load i64*, i64** %146, align 8
  %148 = load i32, i32* %15, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i64, i64* %147, i64 %149
  store i64 0, i64* %150, align 8
  br label %151

151:                                              ; preds = %144
  %152 = load i32, i32* %15, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %15, align 4
  br label %140

154:                                              ; preds = %140
  br label %155

155:                                              ; preds = %154, %108
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %157 = call i32 @ZFS_EXIT(%struct.TYPE_13__* %156)
  store i32 0, i32* %4, align 4
  br label %158

158:                                              ; preds = %155, %38
  %159 = load i32, i32* %4, align 4
  ret i32 %159
}

declare dso_local %struct.TYPE_12__* @VTOZ(i32*) #1

declare dso_local i32 @ZFS_ENTER(%struct.TYPE_13__*) #1

declare dso_local i32 @ZFS_VERIFY_ZP(%struct.TYPE_12__*) #1

declare dso_local i32 @sa_lookup(i32, i32, i32*, i32) #1

declare dso_local i32 @SA_ZPL_GEN(%struct.TYPE_13__*) #1

declare dso_local i32 @ZFS_EXIT(%struct.TYPE_13__*) #1

declare dso_local i32 @dmu_objset_id(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
