; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_vnops.c_zfs_deleteextattr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_vnops.c_zfs_deleteextattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_deleteextattr_args = type { i32, i32, i32, i32, %struct.thread* }
%struct.thread = type { i32 }
%struct.nameidata = type { i32*, i32, i32* }
%struct.vattr = type { i32 }
%struct.TYPE_2__ = type { i32* }

@VWRITE = common dso_local global i32 0, align 4
@LOOKUP_XATTR = common dso_local global i32 0, align 4
@DELETE = common dso_local global i32 0, align 4
@NOFOLLOW = common dso_local global i32 0, align 4
@LOCKPARENT = common dso_local global i32 0, align 4
@LOCKLEAF = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@NDF_ONLY_PNBUF = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENOATTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_deleteextattr(%struct.vop_deleteextattr_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_deleteextattr_args*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct.nameidata, align 8
  %7 = alloca [255 x i8], align 16
  %8 = alloca %struct.vattr, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.vop_deleteextattr_args* %0, %struct.vop_deleteextattr_args** %3, align 8
  %13 = load %struct.vop_deleteextattr_args*, %struct.vop_deleteextattr_args** %3, align 8
  %14 = getelementptr inbounds %struct.vop_deleteextattr_args, %struct.vop_deleteextattr_args* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.TYPE_2__* @VTOZ(i32 %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %4, align 8
  %19 = load %struct.vop_deleteextattr_args*, %struct.vop_deleteextattr_args** %3, align 8
  %20 = getelementptr inbounds %struct.vop_deleteextattr_args, %struct.vop_deleteextattr_args* %19, i32 0, i32 4
  %21 = load %struct.thread*, %struct.thread** %20, align 8
  store %struct.thread* %21, %struct.thread** %5, align 8
  store i32* null, i32** %9, align 8
  %22 = load %struct.vop_deleteextattr_args*, %struct.vop_deleteextattr_args** %3, align 8
  %23 = getelementptr inbounds %struct.vop_deleteextattr_args, %struct.vop_deleteextattr_args* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.vop_deleteextattr_args*, %struct.vop_deleteextattr_args** %3, align 8
  %26 = getelementptr inbounds %struct.vop_deleteextattr_args, %struct.vop_deleteextattr_args* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.vop_deleteextattr_args*, %struct.vop_deleteextattr_args** %3, align 8
  %29 = getelementptr inbounds %struct.vop_deleteextattr_args, %struct.vop_deleteextattr_args* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.vop_deleteextattr_args*, %struct.vop_deleteextattr_args** %3, align 8
  %32 = getelementptr inbounds %struct.vop_deleteextattr_args, %struct.vop_deleteextattr_args* %31, i32 0, i32 4
  %33 = load %struct.thread*, %struct.thread** %32, align 8
  %34 = load i32, i32* @VWRITE, align 4
  %35 = call i32 @extattr_check_cred(i32 %24, i32 %27, i32 %30, %struct.thread* %33, i32 %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %1
  %39 = load i32, i32* %11, align 4
  store i32 %39, i32* %2, align 4
  br label %125

40:                                               ; preds = %1
  %41 = load %struct.vop_deleteextattr_args*, %struct.vop_deleteextattr_args** %3, align 8
  %42 = getelementptr inbounds %struct.vop_deleteextattr_args, %struct.vop_deleteextattr_args* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.vop_deleteextattr_args*, %struct.vop_deleteextattr_args** %3, align 8
  %45 = getelementptr inbounds %struct.vop_deleteextattr_args, %struct.vop_deleteextattr_args* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = getelementptr inbounds [255 x i8], [255 x i8]* %7, i64 0, i64 0
  %48 = call i32 @zfs_create_attrname(i32 %43, i32 %46, i8* %47, i32 255)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %40
  %52 = load i32, i32* %11, align 4
  store i32 %52, i32* %2, align 4
  br label %125

53:                                               ; preds = %40
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 @ZFS_ENTER(i32* %54)
  %56 = load %struct.vop_deleteextattr_args*, %struct.vop_deleteextattr_args** %3, align 8
  %57 = getelementptr inbounds %struct.vop_deleteextattr_args, %struct.vop_deleteextattr_args* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.vop_deleteextattr_args*, %struct.vop_deleteextattr_args** %3, align 8
  %60 = getelementptr inbounds %struct.vop_deleteextattr_args, %struct.vop_deleteextattr_args* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.thread*, %struct.thread** %5, align 8
  %63 = load i32, i32* @LOOKUP_XATTR, align 4
  %64 = call i32 @zfs_lookup(i32 %58, i32* null, i32** %9, i32* null, i32 0, i32 %61, %struct.thread* %62, i32 %63)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %53
  %68 = load i32*, i32** %4, align 8
  %69 = call i32 @ZFS_EXIT(i32* %68)
  %70 = load i32, i32* %11, align 4
  store i32 %70, i32* %2, align 4
  br label %125

71:                                               ; preds = %53
  %72 = load i32, i32* @DELETE, align 4
  %73 = load i32, i32* @NOFOLLOW, align 4
  %74 = load i32, i32* @LOCKPARENT, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @LOCKLEAF, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @UIO_SYSSPACE, align 4
  %79 = getelementptr inbounds [255 x i8], [255 x i8]* %7, i64 0, i64 0
  %80 = load i32*, i32** %9, align 8
  %81 = load %struct.thread*, %struct.thread** %5, align 8
  %82 = call i32 @NDINIT_ATVP(%struct.nameidata* %6, i32 %72, i32 %77, i32 %78, i8* %79, i32* %80, %struct.thread* %81)
  %83 = call i32 @namei(%struct.nameidata* %6)
  store i32 %83, i32* %11, align 4
  %84 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %6, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  store i32* %85, i32** %10, align 8
  %86 = load i32, i32* %11, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %100

88:                                               ; preds = %71
  %89 = load i32*, i32** %4, align 8
  %90 = call i32 @ZFS_EXIT(i32* %89)
  %91 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %92 = call i32 @NDFREE(%struct.nameidata* %6, i32 %91)
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* @ENOENT, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %88
  %97 = load i32, i32* @ENOATTR, align 4
  store i32 %97, i32* %11, align 4
  br label %98

98:                                               ; preds = %96, %88
  %99 = load i32, i32* %11, align 4
  store i32 %99, i32* %2, align 4
  br label %125

100:                                              ; preds = %71
  %101 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %6, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i32*, i32** %10, align 8
  %104 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %6, i32 0, i32 1
  %105 = call i32 @VOP_REMOVE(i32* %102, i32* %103, i32* %104)
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %107 = call i32 @NDFREE(%struct.nameidata* %6, i32 %106)
  %108 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %6, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = call i32 @vput(i32* %109)
  %111 = load i32*, i32** %10, align 8
  %112 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %6, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = icmp eq i32* %111, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %100
  %116 = load i32*, i32** %10, align 8
  %117 = call i32 @vrele(i32* %116)
  br label %121

118:                                              ; preds = %100
  %119 = load i32*, i32** %10, align 8
  %120 = call i32 @vput(i32* %119)
  br label %121

121:                                              ; preds = %118, %115
  %122 = load i32*, i32** %4, align 8
  %123 = call i32 @ZFS_EXIT(i32* %122)
  %124 = load i32, i32* %11, align 4
  store i32 %124, i32* %2, align 4
  br label %125

125:                                              ; preds = %121, %98, %67, %51, %38
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local %struct.TYPE_2__* @VTOZ(i32) #1

declare dso_local i32 @extattr_check_cred(i32, i32, i32, %struct.thread*, i32) #1

declare dso_local i32 @zfs_create_attrname(i32, i32, i8*, i32) #1

declare dso_local i32 @ZFS_ENTER(i32*) #1

declare dso_local i32 @zfs_lookup(i32, i32*, i32**, i32*, i32, i32, %struct.thread*, i32) #1

declare dso_local i32 @ZFS_EXIT(i32*) #1

declare dso_local i32 @NDINIT_ATVP(%struct.nameidata*, i32, i32, i32, i8*, i32*, %struct.thread*) #1

declare dso_local i32 @namei(%struct.nameidata*) #1

declare dso_local i32 @NDFREE(%struct.nameidata*, i32) #1

declare dso_local i32 @VOP_REMOVE(i32*, i32*, i32*) #1

declare dso_local i32 @vput(i32*) #1

declare dso_local i32 @vrele(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
