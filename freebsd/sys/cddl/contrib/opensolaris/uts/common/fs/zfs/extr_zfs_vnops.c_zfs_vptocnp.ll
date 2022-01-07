; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_vnops.c_zfs_vptocnp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_vnops.c_zfs_vptocnp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_vptocnp_args = type { i64*, i64, i32, i32*, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32, %struct.TYPE_22__*, %struct.TYPE_21__* }
%struct.TYPE_22__ = type { %struct.TYPE_25__* }
%struct.TYPE_21__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i64, %struct.TYPE_24__* }
%struct.TYPE_23__ = type { i64 }

@MAXNAMLEN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LK_SHARED = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@VI_DOOMED = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_vptocnp_args*)* @zfs_vptocnp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_vptocnp(%struct.vop_vptocnp_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_vptocnp_args*, align 8
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_23__*, align 8
  %14 = alloca i64, align 8
  store %struct.vop_vptocnp_args* %0, %struct.vop_vptocnp_args** %3, align 8
  %15 = load %struct.vop_vptocnp_args*, %struct.vop_vptocnp_args** %3, align 8
  %16 = getelementptr inbounds %struct.vop_vptocnp_args, %struct.vop_vptocnp_args* %15, i32 0, i32 4
  %17 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  store %struct.TYPE_25__* %17, %struct.TYPE_25__** %5, align 8
  %18 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  store %struct.TYPE_24__* %22, %struct.TYPE_24__** %6, align 8
  %23 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %24 = call %struct.TYPE_23__* @VTOZ(%struct.TYPE_25__* %23)
  store %struct.TYPE_23__* %24, %struct.TYPE_23__** %7, align 8
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %26 = call i32 @ZFS_ENTER(%struct.TYPE_24__* %25)
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %28 = call i32 @ZFS_VERIFY_ZP(%struct.TYPE_23__* %27)
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %31, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %1
  %37 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %38, align 8
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %41 = icmp eq %struct.TYPE_24__* %39, %40
  br i1 %41, label %42, label %94

42:                                               ; preds = %36, %1
  %43 = load i32, i32* @MAXNAMLEN, align 4
  %44 = add nsw i32 %43, 1
  %45 = zext i32 %44 to i64
  %46 = call i8* @llvm.stacksave()
  store i8* %46, i8** %11, align 8
  %47 = alloca i8, i64 %45, align 16
  store i64 %45, i64* %12, align 8
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %49 = call i32 @zfs_znode_parent_and_name(%struct.TYPE_23__* %48, %struct.TYPE_23__** %13, i8* %47)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %42
  %53 = call i64 @strlen(i8* %47)
  store i64 %53, i64* %14, align 8
  %54 = load %struct.vop_vptocnp_args*, %struct.vop_vptocnp_args** %3, align 8
  %55 = getelementptr inbounds %struct.vop_vptocnp_args, %struct.vop_vptocnp_args* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %14, align 8
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %52
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = call i32 @SET_ERROR(i32 %61)
  store i32 %62, i32* %10, align 4
  br label %63

63:                                               ; preds = %60, %52
  br label %64

64:                                               ; preds = %63, %42
  %65 = load i32, i32* %10, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %89

67:                                               ; preds = %64
  %68 = load i64, i64* %14, align 8
  %69 = load %struct.vop_vptocnp_args*, %struct.vop_vptocnp_args** %3, align 8
  %70 = getelementptr inbounds %struct.vop_vptocnp_args, %struct.vop_vptocnp_args* %69, i32 0, i32 0
  %71 = load i64*, i64** %70, align 8
  %72 = load i64, i64* %71, align 8
  %73 = sub i64 %72, %68
  store i64 %73, i64* %71, align 8
  %74 = load %struct.vop_vptocnp_args*, %struct.vop_vptocnp_args** %3, align 8
  %75 = getelementptr inbounds %struct.vop_vptocnp_args, %struct.vop_vptocnp_args* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.vop_vptocnp_args*, %struct.vop_vptocnp_args** %3, align 8
  %78 = getelementptr inbounds %struct.vop_vptocnp_args, %struct.vop_vptocnp_args* %77, i32 0, i32 0
  %79 = load i64*, i64** %78, align 8
  %80 = load i64, i64* %79, align 8
  %81 = add i64 %76, %80
  %82 = load i64, i64* %14, align 8
  %83 = call i32 @bcopy(i8* %47, i64 %81, i64 %82)
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %85 = call i32 @ZTOV(%struct.TYPE_23__* %84)
  %86 = load %struct.vop_vptocnp_args*, %struct.vop_vptocnp_args** %3, align 8
  %87 = getelementptr inbounds %struct.vop_vptocnp_args, %struct.vop_vptocnp_args* %86, i32 0, i32 3
  %88 = load i32*, i32** %87, align 8
  store i32 %85, i32* %88, align 4
  br label %89

89:                                               ; preds = %67, %64
  %90 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %91 = call i32 @ZFS_EXIT(%struct.TYPE_24__* %90)
  %92 = load i32, i32* %10, align 4
  store i32 %92, i32* %2, align 4
  %93 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %93)
  br label %148

94:                                               ; preds = %36
  %95 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %96 = call i32 @ZFS_EXIT(%struct.TYPE_24__* %95)
  %97 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_25__*, %struct.TYPE_25__** %100, align 8
  store %struct.TYPE_25__* %101, %struct.TYPE_25__** %4, align 8
  %102 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %103 = call i32 @vget_prep(%struct.TYPE_25__* %102)
  store i32 %103, i32* %8, align 4
  %104 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %105 = call i32 @VOP_ISLOCKED(%struct.TYPE_25__* %104)
  store i32 %105, i32* %9, align 4
  %106 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %107 = call i32 @VOP_UNLOCK(%struct.TYPE_25__* %106, i32 0)
  %108 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %109 = load i32, i32* @LK_SHARED, align 4
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @vget_finish(%struct.TYPE_25__* %108, i32 %109, i32 %110)
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %10, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %131

114:                                              ; preds = %94
  %115 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %116 = load %struct.vop_vptocnp_args*, %struct.vop_vptocnp_args** %3, align 8
  %117 = getelementptr inbounds %struct.vop_vptocnp_args, %struct.vop_vptocnp_args* %116, i32 0, i32 3
  %118 = load i32*, i32** %117, align 8
  %119 = load %struct.vop_vptocnp_args*, %struct.vop_vptocnp_args** %3, align 8
  %120 = getelementptr inbounds %struct.vop_vptocnp_args, %struct.vop_vptocnp_args* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.vop_vptocnp_args*, %struct.vop_vptocnp_args** %3, align 8
  %123 = getelementptr inbounds %struct.vop_vptocnp_args, %struct.vop_vptocnp_args* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.vop_vptocnp_args*, %struct.vop_vptocnp_args** %3, align 8
  %126 = getelementptr inbounds %struct.vop_vptocnp_args, %struct.vop_vptocnp_args* %125, i32 0, i32 0
  %127 = load i64*, i64** %126, align 8
  %128 = call i32 @VOP_VPTOCNP(%struct.TYPE_25__* %115, i32* %118, i32 %121, i64 %124, i64* %127)
  store i32 %128, i32* %10, align 4
  %129 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %130 = call i32 @vput(%struct.TYPE_25__* %129)
  br label %131

131:                                              ; preds = %114, %94
  %132 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* @LK_RETRY, align 4
  %135 = or i32 %133, %134
  %136 = call i32 @vn_lock(%struct.TYPE_25__* %132, i32 %135)
  %137 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @VI_DOOMED, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %131
  %144 = load i32, i32* @ENOENT, align 4
  %145 = call i32 @SET_ERROR(i32 %144)
  store i32 %145, i32* %10, align 4
  br label %146

146:                                              ; preds = %143, %131
  %147 = load i32, i32* %10, align 4
  store i32 %147, i32* %2, align 4
  br label %148

148:                                              ; preds = %146, %89
  %149 = load i32, i32* %2, align 4
  ret i32 %149
}

declare dso_local %struct.TYPE_23__* @VTOZ(%struct.TYPE_25__*) #1

declare dso_local i32 @ZFS_ENTER(%struct.TYPE_24__*) #1

declare dso_local i32 @ZFS_VERIFY_ZP(%struct.TYPE_23__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @zfs_znode_parent_and_name(%struct.TYPE_23__*, %struct.TYPE_23__**, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @bcopy(i8*, i64, i64) #1

declare dso_local i32 @ZTOV(%struct.TYPE_23__*) #1

declare dso_local i32 @ZFS_EXIT(%struct.TYPE_24__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @vget_prep(%struct.TYPE_25__*) #1

declare dso_local i32 @VOP_ISLOCKED(%struct.TYPE_25__*) #1

declare dso_local i32 @VOP_UNLOCK(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @vget_finish(%struct.TYPE_25__*, i32, i32) #1

declare dso_local i32 @VOP_VPTOCNP(%struct.TYPE_25__*, i32*, i32, i64, i64*) #1

declare dso_local i32 @vput(%struct.TYPE_25__*) #1

declare dso_local i32 @vn_lock(%struct.TYPE_25__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
