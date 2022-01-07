; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ioctl.c_zfs_fill_zplprops_impl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ioctl.c_zfs_fill_zplprops_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@ZFS_PROP_UNDEFINED = common dso_local global i64 0, align 8
@DMU_OST_ZFS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ZFS_PROP_VERSION = common dso_local global i32 0, align 4
@ZFS_PROP_NORMALIZE = common dso_local global i32 0, align 4
@ZFS_PROP_UTF8ONLY = common dso_local global i32 0, align 4
@ZFS_PROP_CASE = common dso_local global i32 0, align 4
@ZPL_VERSION_INITIAL = common dso_local global i64 0, align 8
@ZPL_VERSION = common dso_local global i64 0, align 8
@ZPL_VERSION_FUID = common dso_local global i64 0, align 8
@ZPL_VERSION_SA = common dso_local global i64 0, align 8
@ZPL_VERSION_NORMALIZATION = common dso_local global i64 0, align 8
@ENOTSUP = common dso_local global i32 0, align 4
@ZFS_CASE_INSENSITIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i64, i32, i32, i32*, i32*, i32*)* @zfs_fill_zplprops_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_fill_zplprops_impl(%struct.TYPE_6__* %0, i64 %1, i32 %2, i32 %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %19 = load i64, i64* @ZFS_PROP_UNDEFINED, align 8
  store i64 %19, i64* %16, align 8
  %20 = load i64, i64* @ZFS_PROP_UNDEFINED, align 8
  store i64 %20, i64* %17, align 8
  %21 = load i64, i64* @ZFS_PROP_UNDEFINED, align 8
  store i64 %21, i64* %18, align 8
  %22 = load i32*, i32** %14, align 8
  %23 = icmp ne i32* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 @ASSERT(i32 %24)
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %27 = icmp ne %struct.TYPE_6__* %26, null
  br i1 %27, label %28, label %39

28:                                               ; preds = %7
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @DMU_OST_ZFS, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load i32, i32* @EINVAL, align 4
  %38 = call i32 @SET_ERROR(i32 %37)
  store i32 %38, i32* %8, align 4
  br label %191

39:                                               ; preds = %28, %7
  %40 = load i32*, i32** %13, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %71

42:                                               ; preds = %39
  %43 = load i32*, i32** %13, align 8
  %44 = load i32, i32* @ZFS_PROP_VERSION, align 4
  %45 = call i32 @zfs_prop_to_name(i32 %44)
  %46 = call i32 @nvlist_lookup_uint64(i32* %43, i32 %45, i64* %10)
  %47 = load i32*, i32** %13, align 8
  %48 = load i32, i32* @ZFS_PROP_NORMALIZE, align 4
  %49 = call i32 @zfs_prop_to_name(i32 %48)
  %50 = call i32 @nvlist_lookup_uint64(i32* %47, i32 %49, i64* %17)
  %51 = load i32*, i32** %13, align 8
  %52 = load i32, i32* @ZFS_PROP_NORMALIZE, align 4
  %53 = call i32 @zfs_prop_to_name(i32 %52)
  %54 = call i32 @nvlist_remove_all(i32* %51, i32 %53)
  %55 = load i32*, i32** %13, align 8
  %56 = load i32, i32* @ZFS_PROP_UTF8ONLY, align 4
  %57 = call i32 @zfs_prop_to_name(i32 %56)
  %58 = call i32 @nvlist_lookup_uint64(i32* %55, i32 %57, i64* %18)
  %59 = load i32*, i32** %13, align 8
  %60 = load i32, i32* @ZFS_PROP_UTF8ONLY, align 4
  %61 = call i32 @zfs_prop_to_name(i32 %60)
  %62 = call i32 @nvlist_remove_all(i32* %59, i32 %61)
  %63 = load i32*, i32** %13, align 8
  %64 = load i32, i32* @ZFS_PROP_CASE, align 4
  %65 = call i32 @zfs_prop_to_name(i32 %64)
  %66 = call i32 @nvlist_lookup_uint64(i32* %63, i32 %65, i64* %16)
  %67 = load i32*, i32** %13, align 8
  %68 = load i32, i32* @ZFS_PROP_CASE, align 4
  %69 = call i32 @zfs_prop_to_name(i32 %68)
  %70 = call i32 @nvlist_remove_all(i32* %67, i32 %69)
  br label %71

71:                                               ; preds = %42, %39
  %72 = load i64, i64* %10, align 8
  %73 = load i64, i64* @ZPL_VERSION_INITIAL, align 8
  %74 = icmp slt i64 %72, %73
  br i1 %74, label %109, label %75

75:                                               ; preds = %71
  %76 = load i64, i64* %10, align 8
  %77 = load i64, i64* @ZPL_VERSION, align 8
  %78 = icmp sgt i64 %76, %77
  br i1 %78, label %109, label %79

79:                                               ; preds = %75
  %80 = load i64, i64* %10, align 8
  %81 = load i64, i64* @ZPL_VERSION_FUID, align 8
  %82 = icmp sge i64 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load i32, i32* %11, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %109

86:                                               ; preds = %83, %79
  %87 = load i64, i64* %10, align 8
  %88 = load i64, i64* @ZPL_VERSION_SA, align 8
  %89 = icmp sge i64 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = load i32, i32* %12, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %109

93:                                               ; preds = %90, %86
  %94 = load i64, i64* %10, align 8
  %95 = load i64, i64* @ZPL_VERSION_NORMALIZATION, align 8
  %96 = icmp slt i64 %94, %95
  br i1 %96, label %97, label %112

97:                                               ; preds = %93
  %98 = load i64, i64* %17, align 8
  %99 = load i64, i64* @ZFS_PROP_UNDEFINED, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %109, label %101

101:                                              ; preds = %97
  %102 = load i64, i64* %18, align 8
  %103 = load i64, i64* @ZFS_PROP_UNDEFINED, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %109, label %105

105:                                              ; preds = %101
  %106 = load i64, i64* %16, align 8
  %107 = load i64, i64* @ZFS_PROP_UNDEFINED, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %105, %101, %97, %90, %83, %75, %71
  %110 = load i32, i32* @ENOTSUP, align 4
  %111 = call i32 @SET_ERROR(i32 %110)
  store i32 %111, i32* %8, align 4
  br label %191

112:                                              ; preds = %105, %93
  %113 = load i32*, i32** %14, align 8
  %114 = load i32, i32* @ZFS_PROP_VERSION, align 4
  %115 = call i32 @zfs_prop_to_name(i32 %114)
  %116 = load i64, i64* %10, align 8
  %117 = call i64 @nvlist_add_uint64(i32* %113, i32 %115, i64 %116)
  %118 = icmp eq i64 %117, 0
  %119 = zext i1 %118 to i32
  %120 = call i32 @VERIFY(i32 %119)
  %121 = load i64, i64* %17, align 8
  %122 = load i64, i64* @ZFS_PROP_UNDEFINED, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %131

124:                                              ; preds = %112
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %126 = load i32, i32* @ZFS_PROP_NORMALIZE, align 4
  %127 = call i64 @zfs_get_zplprop(%struct.TYPE_6__* %125, i32 %126, i64* %17)
  %128 = icmp eq i64 %127, 0
  %129 = zext i1 %128 to i32
  %130 = call i32 @VERIFY(i32 %129)
  br label %131

131:                                              ; preds = %124, %112
  %132 = load i32*, i32** %14, align 8
  %133 = load i32, i32* @ZFS_PROP_NORMALIZE, align 4
  %134 = call i32 @zfs_prop_to_name(i32 %133)
  %135 = load i64, i64* %17, align 8
  %136 = call i64 @nvlist_add_uint64(i32* %132, i32 %134, i64 %135)
  %137 = icmp eq i64 %136, 0
  %138 = zext i1 %137 to i32
  %139 = call i32 @VERIFY(i32 %138)
  %140 = load i64, i64* %17, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %131
  store i64 1, i64* %18, align 8
  br label %143

143:                                              ; preds = %142, %131
  %144 = load i64, i64* %18, align 8
  %145 = load i64, i64* @ZFS_PROP_UNDEFINED, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %154

147:                                              ; preds = %143
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %149 = load i32, i32* @ZFS_PROP_UTF8ONLY, align 4
  %150 = call i64 @zfs_get_zplprop(%struct.TYPE_6__* %148, i32 %149, i64* %18)
  %151 = icmp eq i64 %150, 0
  %152 = zext i1 %151 to i32
  %153 = call i32 @VERIFY(i32 %152)
  br label %154

154:                                              ; preds = %147, %143
  %155 = load i32*, i32** %14, align 8
  %156 = load i32, i32* @ZFS_PROP_UTF8ONLY, align 4
  %157 = call i32 @zfs_prop_to_name(i32 %156)
  %158 = load i64, i64* %18, align 8
  %159 = call i64 @nvlist_add_uint64(i32* %155, i32 %157, i64 %158)
  %160 = icmp eq i64 %159, 0
  %161 = zext i1 %160 to i32
  %162 = call i32 @VERIFY(i32 %161)
  %163 = load i64, i64* %16, align 8
  %164 = load i64, i64* @ZFS_PROP_UNDEFINED, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %173

166:                                              ; preds = %154
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %168 = load i32, i32* @ZFS_PROP_CASE, align 4
  %169 = call i64 @zfs_get_zplprop(%struct.TYPE_6__* %167, i32 %168, i64* %16)
  %170 = icmp eq i64 %169, 0
  %171 = zext i1 %170 to i32
  %172 = call i32 @VERIFY(i32 %171)
  br label %173

173:                                              ; preds = %166, %154
  %174 = load i32*, i32** %14, align 8
  %175 = load i32, i32* @ZFS_PROP_CASE, align 4
  %176 = call i32 @zfs_prop_to_name(i32 %175)
  %177 = load i64, i64* %16, align 8
  %178 = call i64 @nvlist_add_uint64(i32* %174, i32 %176, i64 %177)
  %179 = icmp eq i64 %178, 0
  %180 = zext i1 %179 to i32
  %181 = call i32 @VERIFY(i32 %180)
  %182 = load i32*, i32** %15, align 8
  %183 = icmp ne i32* %182, null
  br i1 %183, label %184, label %190

184:                                              ; preds = %173
  %185 = load i64, i64* %16, align 8
  %186 = load i64, i64* @ZFS_CASE_INSENSITIVE, align 8
  %187 = icmp eq i64 %185, %186
  %188 = zext i1 %187 to i32
  %189 = load i32*, i32** %15, align 8
  store i32 %188, i32* %189, align 4
  br label %190

190:                                              ; preds = %184, %173
  store i32 0, i32* %8, align 4
  br label %191

191:                                              ; preds = %190, %109, %36
  %192 = load i32, i32* %8, align 4
  ret i32 %192
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @nvlist_lookup_uint64(i32*, i32, i64*) #1

declare dso_local i32 @zfs_prop_to_name(i32) #1

declare dso_local i32 @nvlist_remove_all(i32*, i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @nvlist_add_uint64(i32*, i32, i64) #1

declare dso_local i64 @zfs_get_zplprop(%struct.TYPE_6__*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
