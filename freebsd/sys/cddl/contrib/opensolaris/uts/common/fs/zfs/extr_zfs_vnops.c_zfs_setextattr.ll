; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_vnops.c_zfs_setextattr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_vnops.c_zfs_setextattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_setextattr_args = type { i32, i32, i32, i32, i32, %struct.thread* }
%struct.thread = type { i32 }
%struct.nameidata = type { i32* }
%struct.vattr = type { i64 }
%struct.TYPE_2__ = type { i32* }

@VWRITE = common dso_local global i32 0, align 4
@LOOKUP_XATTR = common dso_local global i32 0, align 4
@CREATE_XATTR_DIR = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@LOOKUP = common dso_local global i32 0, align 4
@NOFOLLOW = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@NDF_ONLY_PNBUF = common dso_local global i32 0, align 4
@IO_UNIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_setextattr_args*)* @zfs_setextattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_setextattr(%struct.vop_setextattr_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_setextattr_args*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct.nameidata, align 8
  %7 = alloca [255 x i8], align 16
  %8 = alloca %struct.vattr, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.vop_setextattr_args* %0, %struct.vop_setextattr_args** %3, align 8
  %13 = load %struct.vop_setextattr_args*, %struct.vop_setextattr_args** %3, align 8
  %14 = getelementptr inbounds %struct.vop_setextattr_args, %struct.vop_setextattr_args* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.TYPE_2__* @VTOZ(i32 %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %4, align 8
  %19 = load %struct.vop_setextattr_args*, %struct.vop_setextattr_args** %3, align 8
  %20 = getelementptr inbounds %struct.vop_setextattr_args, %struct.vop_setextattr_args* %19, i32 0, i32 5
  %21 = load %struct.thread*, %struct.thread** %20, align 8
  store %struct.thread* %21, %struct.thread** %5, align 8
  store i32* null, i32** %9, align 8
  %22 = load %struct.vop_setextattr_args*, %struct.vop_setextattr_args** %3, align 8
  %23 = getelementptr inbounds %struct.vop_setextattr_args, %struct.vop_setextattr_args* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.vop_setextattr_args*, %struct.vop_setextattr_args** %3, align 8
  %26 = getelementptr inbounds %struct.vop_setextattr_args, %struct.vop_setextattr_args* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.vop_setextattr_args*, %struct.vop_setextattr_args** %3, align 8
  %29 = getelementptr inbounds %struct.vop_setextattr_args, %struct.vop_setextattr_args* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.vop_setextattr_args*, %struct.vop_setextattr_args** %3, align 8
  %32 = getelementptr inbounds %struct.vop_setextattr_args, %struct.vop_setextattr_args* %31, i32 0, i32 5
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
  br label %132

40:                                               ; preds = %1
  %41 = load %struct.vop_setextattr_args*, %struct.vop_setextattr_args** %3, align 8
  %42 = getelementptr inbounds %struct.vop_setextattr_args, %struct.vop_setextattr_args* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.vop_setextattr_args*, %struct.vop_setextattr_args** %3, align 8
  %45 = getelementptr inbounds %struct.vop_setextattr_args, %struct.vop_setextattr_args* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds [255 x i8], [255 x i8]* %7, i64 0, i64 0
  %48 = call i32 @zfs_create_attrname(i32 %43, i32 %46, i8* %47, i32 255)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %40
  %52 = load i32, i32* %11, align 4
  store i32 %52, i32* %2, align 4
  br label %132

53:                                               ; preds = %40
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 @ZFS_ENTER(i32* %54)
  %56 = load %struct.vop_setextattr_args*, %struct.vop_setextattr_args** %3, align 8
  %57 = getelementptr inbounds %struct.vop_setextattr_args, %struct.vop_setextattr_args* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.vop_setextattr_args*, %struct.vop_setextattr_args** %3, align 8
  %60 = getelementptr inbounds %struct.vop_setextattr_args, %struct.vop_setextattr_args* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.thread*, %struct.thread** %5, align 8
  %63 = load i32, i32* @LOOKUP_XATTR, align 4
  %64 = load i32, i32* @CREATE_XATTR_DIR, align 4
  %65 = or i32 %63, %64
  %66 = call i32 @zfs_lookup(i32 %58, i32* null, i32** %9, i32* null, i32 0, i32 %61, %struct.thread* %62, i32 %65)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %53
  %70 = load i32*, i32** %4, align 8
  %71 = call i32 @ZFS_EXIT(i32* %70)
  %72 = load i32, i32* %11, align 4
  store i32 %72, i32* %2, align 4
  br label %132

73:                                               ; preds = %53
  %74 = load i32, i32* @O_WRONLY, align 4
  %75 = load i32, i32* @O_CREAT, align 4
  %76 = or i32 %74, %75
  %77 = call i32 @FFLAGS(i32 %76)
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* @LOOKUP, align 4
  %79 = load i32, i32* @NOFOLLOW, align 4
  %80 = load i32, i32* @UIO_SYSSPACE, align 4
  %81 = getelementptr inbounds [255 x i8], [255 x i8]* %7, i64 0, i64 0
  %82 = load i32*, i32** %9, align 8
  %83 = load %struct.thread*, %struct.thread** %5, align 8
  %84 = call i32 @NDINIT_ATVP(%struct.nameidata* %6, i32 %78, i32 %79, i32 %80, i8* %81, i32* %82, %struct.thread* %83)
  %85 = load %struct.vop_setextattr_args*, %struct.vop_setextattr_args** %3, align 8
  %86 = getelementptr inbounds %struct.vop_setextattr_args, %struct.vop_setextattr_args* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @vn_open_cred(%struct.nameidata* %6, i32* %12, i32 384, i32 0, i32 %87, i32* null)
  store i32 %88, i32* %11, align 4
  %89 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %6, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  store i32* %90, i32** %10, align 8
  %91 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %92 = call i32 @NDFREE(%struct.nameidata* %6, i32 %91)
  %93 = load i32, i32* %11, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %73
  %96 = load i32*, i32** %4, align 8
  %97 = call i32 @ZFS_EXIT(i32* %96)
  %98 = load i32, i32* %11, align 4
  store i32 %98, i32* %2, align 4
  br label %132

99:                                               ; preds = %73
  %100 = call i32 @VATTR_NULL(%struct.vattr* %8)
  %101 = getelementptr inbounds %struct.vattr, %struct.vattr* %8, i32 0, i32 0
  store i64 0, i64* %101, align 8
  %102 = load i32*, i32** %10, align 8
  %103 = load %struct.vop_setextattr_args*, %struct.vop_setextattr_args** %3, align 8
  %104 = getelementptr inbounds %struct.vop_setextattr_args, %struct.vop_setextattr_args* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @VOP_SETATTR(i32* %102, %struct.vattr* %8, i32 %105)
  store i32 %106, i32* %11, align 4
  %107 = load i32, i32* %11, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %119

109:                                              ; preds = %99
  %110 = load i32*, i32** %10, align 8
  %111 = load %struct.vop_setextattr_args*, %struct.vop_setextattr_args** %3, align 8
  %112 = getelementptr inbounds %struct.vop_setextattr_args, %struct.vop_setextattr_args* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @IO_UNIT, align 4
  %115 = load %struct.vop_setextattr_args*, %struct.vop_setextattr_args** %3, align 8
  %116 = getelementptr inbounds %struct.vop_setextattr_args, %struct.vop_setextattr_args* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @VOP_WRITE(i32* %110, i32 %113, i32 %114, i32 %117)
  br label %119

119:                                              ; preds = %109, %99
  %120 = load i32*, i32** %10, align 8
  %121 = call i32 @VOP_UNLOCK(i32* %120, i32 0)
  %122 = load i32*, i32** %10, align 8
  %123 = load i32, i32* %12, align 4
  %124 = load %struct.vop_setextattr_args*, %struct.vop_setextattr_args** %3, align 8
  %125 = getelementptr inbounds %struct.vop_setextattr_args, %struct.vop_setextattr_args* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.thread*, %struct.thread** %5, align 8
  %128 = call i32 @vn_close(i32* %122, i32 %123, i32 %126, %struct.thread* %127)
  %129 = load i32*, i32** %4, align 8
  %130 = call i32 @ZFS_EXIT(i32* %129)
  %131 = load i32, i32* %11, align 4
  store i32 %131, i32* %2, align 4
  br label %132

132:                                              ; preds = %119, %95, %69, %51, %38
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local %struct.TYPE_2__* @VTOZ(i32) #1

declare dso_local i32 @extattr_check_cred(i32, i32, i32, %struct.thread*, i32) #1

declare dso_local i32 @zfs_create_attrname(i32, i32, i8*, i32) #1

declare dso_local i32 @ZFS_ENTER(i32*) #1

declare dso_local i32 @zfs_lookup(i32, i32*, i32**, i32*, i32, i32, %struct.thread*, i32) #1

declare dso_local i32 @ZFS_EXIT(i32*) #1

declare dso_local i32 @FFLAGS(i32) #1

declare dso_local i32 @NDINIT_ATVP(%struct.nameidata*, i32, i32, i32, i8*, i32*, %struct.thread*) #1

declare dso_local i32 @vn_open_cred(%struct.nameidata*, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @NDFREE(%struct.nameidata*, i32) #1

declare dso_local i32 @VATTR_NULL(%struct.vattr*) #1

declare dso_local i32 @VOP_SETATTR(i32*, %struct.vattr*, i32) #1

declare dso_local i32 @VOP_WRITE(i32*, i32, i32, i32) #1

declare dso_local i32 @VOP_UNLOCK(i32*, i32) #1

declare dso_local i32 @vn_close(i32*, i32, i32, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
