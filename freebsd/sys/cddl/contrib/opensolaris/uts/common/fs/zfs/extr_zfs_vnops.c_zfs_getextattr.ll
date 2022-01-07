; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_vnops.c_zfs_getextattr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_vnops.c_zfs_getextattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_getextattr_args = type { i64*, i32, i32*, i32, i32, i32, %struct.thread* }
%struct.thread = type { i32 }
%struct.nameidata = type { i32* }
%struct.vattr = type { i64 }
%struct.TYPE_2__ = type { i32* }

@VREAD = common dso_local global i32 0, align 4
@LOOKUP_XATTR = common dso_local global i32 0, align 4
@FREAD = common dso_local global i32 0, align 4
@LOOKUP = common dso_local global i32 0, align 4
@NOFOLLOW = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@NDF_ONLY_PNBUF = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENOATTR = common dso_local global i32 0, align 4
@IO_UNIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_getextattr_args*)* @zfs_getextattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_getextattr(%struct.vop_getextattr_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_getextattr_args*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct.nameidata, align 8
  %7 = alloca [255 x i8], align 16
  %8 = alloca %struct.vattr, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.vop_getextattr_args* %0, %struct.vop_getextattr_args** %3, align 8
  %13 = load %struct.vop_getextattr_args*, %struct.vop_getextattr_args** %3, align 8
  %14 = getelementptr inbounds %struct.vop_getextattr_args, %struct.vop_getextattr_args* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.TYPE_2__* @VTOZ(i32 %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %4, align 8
  %19 = load %struct.vop_getextattr_args*, %struct.vop_getextattr_args** %3, align 8
  %20 = getelementptr inbounds %struct.vop_getextattr_args, %struct.vop_getextattr_args* %19, i32 0, i32 6
  %21 = load %struct.thread*, %struct.thread** %20, align 8
  store %struct.thread* %21, %struct.thread** %5, align 8
  store i32* null, i32** %9, align 8
  %22 = load %struct.vop_getextattr_args*, %struct.vop_getextattr_args** %3, align 8
  %23 = getelementptr inbounds %struct.vop_getextattr_args, %struct.vop_getextattr_args* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.vop_getextattr_args*, %struct.vop_getextattr_args** %3, align 8
  %26 = getelementptr inbounds %struct.vop_getextattr_args, %struct.vop_getextattr_args* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.vop_getextattr_args*, %struct.vop_getextattr_args** %3, align 8
  %29 = getelementptr inbounds %struct.vop_getextattr_args, %struct.vop_getextattr_args* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.vop_getextattr_args*, %struct.vop_getextattr_args** %3, align 8
  %32 = getelementptr inbounds %struct.vop_getextattr_args, %struct.vop_getextattr_args* %31, i32 0, i32 6
  %33 = load %struct.thread*, %struct.thread** %32, align 8
  %34 = load i32, i32* @VREAD, align 4
  %35 = call i32 @extattr_check_cred(i32 %24, i32 %27, i32 %30, %struct.thread* %33, i32 %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %1
  %39 = load i32, i32* %11, align 4
  store i32 %39, i32* %2, align 4
  br label %149

40:                                               ; preds = %1
  %41 = load %struct.vop_getextattr_args*, %struct.vop_getextattr_args** %3, align 8
  %42 = getelementptr inbounds %struct.vop_getextattr_args, %struct.vop_getextattr_args* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.vop_getextattr_args*, %struct.vop_getextattr_args** %3, align 8
  %45 = getelementptr inbounds %struct.vop_getextattr_args, %struct.vop_getextattr_args* %44, i32 0, i32 4
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
  br label %149

53:                                               ; preds = %40
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 @ZFS_ENTER(i32* %54)
  %56 = load %struct.vop_getextattr_args*, %struct.vop_getextattr_args** %3, align 8
  %57 = getelementptr inbounds %struct.vop_getextattr_args, %struct.vop_getextattr_args* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.vop_getextattr_args*, %struct.vop_getextattr_args** %3, align 8
  %60 = getelementptr inbounds %struct.vop_getextattr_args, %struct.vop_getextattr_args* %59, i32 0, i32 1
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
  br label %149

71:                                               ; preds = %53
  %72 = load i32, i32* @FREAD, align 4
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* @LOOKUP, align 4
  %74 = load i32, i32* @NOFOLLOW, align 4
  %75 = load i32, i32* @UIO_SYSSPACE, align 4
  %76 = getelementptr inbounds [255 x i8], [255 x i8]* %7, i64 0, i64 0
  %77 = load i32*, i32** %9, align 8
  %78 = load %struct.thread*, %struct.thread** %5, align 8
  %79 = call i32 @NDINIT_ATVP(%struct.nameidata* %6, i32 %73, i32 %74, i32 %75, i8* %76, i32* %77, %struct.thread* %78)
  %80 = load %struct.vop_getextattr_args*, %struct.vop_getextattr_args** %3, align 8
  %81 = getelementptr inbounds %struct.vop_getextattr_args, %struct.vop_getextattr_args* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @vn_open_cred(%struct.nameidata* %6, i32* %12, i32 0, i32 0, i32 %82, i32* null)
  store i32 %83, i32* %11, align 4
  %84 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %6, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  store i32* %85, i32** %10, align 8
  %86 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %87 = call i32 @NDFREE(%struct.nameidata* %6, i32 %86)
  %88 = load i32, i32* %11, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %71
  %91 = load i32*, i32** %4, align 8
  %92 = call i32 @ZFS_EXIT(i32* %91)
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* @ENOENT, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %90
  %97 = load i32, i32* @ENOATTR, align 4
  store i32 %97, i32* %11, align 4
  br label %98

98:                                               ; preds = %96, %90
  %99 = load i32, i32* %11, align 4
  store i32 %99, i32* %2, align 4
  br label %149

100:                                              ; preds = %71
  %101 = load %struct.vop_getextattr_args*, %struct.vop_getextattr_args** %3, align 8
  %102 = getelementptr inbounds %struct.vop_getextattr_args, %struct.vop_getextattr_args* %101, i32 0, i32 0
  %103 = load i64*, i64** %102, align 8
  %104 = icmp ne i64* %103, null
  br i1 %104, label %105, label %120

105:                                              ; preds = %100
  %106 = load i32*, i32** %10, align 8
  %107 = load %struct.vop_getextattr_args*, %struct.vop_getextattr_args** %3, align 8
  %108 = getelementptr inbounds %struct.vop_getextattr_args, %struct.vop_getextattr_args* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @VOP_GETATTR(i32* %106, %struct.vattr* %8, i32 %109)
  store i32 %110, i32* %11, align 4
  %111 = load i32, i32* %11, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %105
  %114 = getelementptr inbounds %struct.vattr, %struct.vattr* %8, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.vop_getextattr_args*, %struct.vop_getextattr_args** %3, align 8
  %117 = getelementptr inbounds %struct.vop_getextattr_args, %struct.vop_getextattr_args* %116, i32 0, i32 0
  %118 = load i64*, i64** %117, align 8
  store i64 %115, i64* %118, align 8
  br label %119

119:                                              ; preds = %113, %105
  br label %136

120:                                              ; preds = %100
  %121 = load %struct.vop_getextattr_args*, %struct.vop_getextattr_args** %3, align 8
  %122 = getelementptr inbounds %struct.vop_getextattr_args, %struct.vop_getextattr_args* %121, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %125, label %135

125:                                              ; preds = %120
  %126 = load i32*, i32** %10, align 8
  %127 = load %struct.vop_getextattr_args*, %struct.vop_getextattr_args** %3, align 8
  %128 = getelementptr inbounds %struct.vop_getextattr_args, %struct.vop_getextattr_args* %127, i32 0, i32 2
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* @IO_UNIT, align 4
  %131 = load %struct.vop_getextattr_args*, %struct.vop_getextattr_args** %3, align 8
  %132 = getelementptr inbounds %struct.vop_getextattr_args, %struct.vop_getextattr_args* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @VOP_READ(i32* %126, i32* %129, i32 %130, i32 %133)
  store i32 %134, i32* %11, align 4
  br label %135

135:                                              ; preds = %125, %120
  br label %136

136:                                              ; preds = %135, %119
  %137 = load i32*, i32** %10, align 8
  %138 = call i32 @VOP_UNLOCK(i32* %137, i32 0)
  %139 = load i32*, i32** %10, align 8
  %140 = load i32, i32* %12, align 4
  %141 = load %struct.vop_getextattr_args*, %struct.vop_getextattr_args** %3, align 8
  %142 = getelementptr inbounds %struct.vop_getextattr_args, %struct.vop_getextattr_args* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.thread*, %struct.thread** %5, align 8
  %145 = call i32 @vn_close(i32* %139, i32 %140, i32 %143, %struct.thread* %144)
  %146 = load i32*, i32** %4, align 8
  %147 = call i32 @ZFS_EXIT(i32* %146)
  %148 = load i32, i32* %11, align 4
  store i32 %148, i32* %2, align 4
  br label %149

149:                                              ; preds = %136, %98, %67, %51, %38
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

declare dso_local %struct.TYPE_2__* @VTOZ(i32) #1

declare dso_local i32 @extattr_check_cred(i32, i32, i32, %struct.thread*, i32) #1

declare dso_local i32 @zfs_create_attrname(i32, i32, i8*, i32) #1

declare dso_local i32 @ZFS_ENTER(i32*) #1

declare dso_local i32 @zfs_lookup(i32, i32*, i32**, i32*, i32, i32, %struct.thread*, i32) #1

declare dso_local i32 @ZFS_EXIT(i32*) #1

declare dso_local i32 @NDINIT_ATVP(%struct.nameidata*, i32, i32, i32, i8*, i32*, %struct.thread*) #1

declare dso_local i32 @vn_open_cred(%struct.nameidata*, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @NDFREE(%struct.nameidata*, i32) #1

declare dso_local i32 @VOP_GETATTR(i32*, %struct.vattr*, i32) #1

declare dso_local i32 @VOP_READ(i32*, i32*, i32, i32) #1

declare dso_local i32 @VOP_UNLOCK(i32*, i32) #1

declare dso_local i32 @vn_close(i32*, i32, i32, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
