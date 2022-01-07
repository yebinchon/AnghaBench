; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_acl.c_zfs_vsec_2_aclp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_acl.c_zfs_vsec_2_aclp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i64 }
%struct.TYPE_17__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i32 }

@MAX_ACL_ENTRIES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ZFS_ACL_VERSION_INITIAL = common dso_local global i64 0, align 8
@VSA_ACE_ACLFLAGS = common dso_local global i32 0, align 4
@ACL_PROTECTED = common dso_local global i32 0, align 4
@ZFS_ACL_PROTECTED = common dso_local global i32 0, align 4
@ACL_DEFAULTED = common dso_local global i32 0, align 4
@ZFS_ACL_DEFAULTED = common dso_local global i32 0, align 4
@ACL_AUTO_INHERIT = common dso_local global i32 0, align 4
@ZFS_ACL_AUTO_INHERIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_vsec_2_aclp(%struct.TYPE_16__* %0, i32 %1, %struct.TYPE_19__* %2, i32* %3, i32** %4, %struct.TYPE_17__** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32**, align 8
  %13 = alloca %struct.TYPE_17__**, align 8
  %14 = alloca %struct.TYPE_17__*, align 8
  %15 = alloca %struct.TYPE_18__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32** %4, i32*** %12, align 8
  store %struct.TYPE_17__** %5, %struct.TYPE_17__*** %13, align 8
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %16, align 4
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @MAX_ACL_ENTRIES, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %31, label %26

26:                                               ; preds = %6
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sle i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26, %6
  %32 = load i32, i32* @EINVAL, align 4
  %33 = call i32 @SET_ERROR(i32 %32)
  store i32 %33, i32* %7, align 4
  br label %163

34:                                               ; preds = %26
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @zfs_acl_version(i32 %37)
  %39 = call %struct.TYPE_17__* @zfs_acl_alloc(i32 %38)
  store %struct.TYPE_17__* %39, %struct.TYPE_17__** %14, align 8
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 2
  store i32 0, i32* %41, align 4
  %42 = load i32, i32* %16, align 4
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 4
  %45 = trunc i64 %44 to i32
  %46 = call %struct.TYPE_18__* @zfs_acl_node_alloc(i32 %45)
  store %struct.TYPE_18__* %46, %struct.TYPE_18__** %15, align 8
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @ZFS_ACL_VERSION_INITIAL, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %74

52:                                               ; preds = %34
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to i32*
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %16, align 4
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 1
  %65 = call i32 @zfs_copy_ace_2_oldace(i32 %53, %struct.TYPE_17__* %54, i32* %58, i32 %61, i32 %62, i32* %64)
  store i32 %65, i32* %17, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %52
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %69 = call i32 @zfs_acl_free(%struct.TYPE_17__* %68)
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %71 = call i32 @zfs_acl_node_free(%struct.TYPE_18__* %70)
  %72 = load i32, i32* %17, align 4
  store i32 %72, i32* %7, align 4
  br label %163

73:                                               ; preds = %52
  br label %98

74:                                               ; preds = %34
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %16, align 4
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 1
  %87 = load i32**, i32*** %12, align 8
  %88 = load i32*, i32** %11, align 8
  %89 = call i32 @zfs_copy_ace_2_fuid(%struct.TYPE_16__* %75, i32 %76, %struct.TYPE_17__* %77, i64 %80, i32 %83, i32 %84, i32* %86, i32** %87, i32* %88)
  store i32 %89, i32* %17, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %74
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %93 = call i32 @zfs_acl_free(%struct.TYPE_17__* %92)
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %95 = call i32 @zfs_acl_node_free(%struct.TYPE_18__* %94)
  %96 = load i32, i32* %17, align 4
  store i32 %96, i32* %7, align 4
  br label %163

97:                                               ; preds = %74
  br label %98

98:                                               ; preds = %97, %73
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 4
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* %16, align 4
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* %16, align 4
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 8
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 3
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %113 = call i32 @list_insert_head(i32* %111, %struct.TYPE_18__* %112)
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @VSA_ACE_ACLFLAGS, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %160

120:                                              ; preds = %98
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @ACL_PROTECTED, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %120
  %128 = load i32, i32* @ZFS_ACL_PROTECTED, align 4
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %131, %128
  store i32 %132, i32* %130, align 4
  br label %133

133:                                              ; preds = %127, %120
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @ACL_DEFAULTED, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %133
  %141 = load i32, i32* @ZFS_ACL_DEFAULTED, align 4
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = or i32 %144, %141
  store i32 %145, i32* %143, align 4
  br label %146

146:                                              ; preds = %140, %133
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @ACL_AUTO_INHERIT, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %146
  %154 = load i32, i32* @ZFS_ACL_AUTO_INHERIT, align 4
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = or i32 %157, %154
  store i32 %158, i32* %156, align 4
  br label %159

159:                                              ; preds = %153, %146
  br label %160

160:                                              ; preds = %159, %98
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %162 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %13, align 8
  store %struct.TYPE_17__* %161, %struct.TYPE_17__** %162, align 8
  store i32 0, i32* %7, align 4
  br label %163

163:                                              ; preds = %160, %91, %67, %31
  %164 = load i32, i32* %7, align 4
  ret i32 %164
}

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local %struct.TYPE_17__* @zfs_acl_alloc(i32) #1

declare dso_local i32 @zfs_acl_version(i32) #1

declare dso_local %struct.TYPE_18__* @zfs_acl_node_alloc(i32) #1

declare dso_local i32 @zfs_copy_ace_2_oldace(i32, %struct.TYPE_17__*, i32*, i32, i32, i32*) #1

declare dso_local i32 @zfs_acl_free(%struct.TYPE_17__*) #1

declare dso_local i32 @zfs_acl_node_free(%struct.TYPE_18__*) #1

declare dso_local i32 @zfs_copy_ace_2_fuid(%struct.TYPE_16__*, i32, %struct.TYPE_17__*, i64, i32, i32, i32*, i32**, i32*) #1

declare dso_local i32 @list_insert_head(i32*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
