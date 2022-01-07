; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_vnops.c_zfs_getpages.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_vnops.c_zfs_getpages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_19__ = type { i64, i32, i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32* }

@RL_READER = common dso_local global i32 0, align 4
@zfs_vm_pagerret_bad = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@zfs_vm_pagerret_error = common dso_local global i32 0, align 4
@v_vnodein = common dso_local global i32 0, align 4
@v_vnodepgsin = common dso_local global i32 0, align 4
@zfs_vm_pagerret_ok = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*, %struct.TYPE_21__**, i32, i32*, i32*)* @zfs_getpages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_getpages(%struct.vnode* %0, %struct.TYPE_21__** %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca %struct.TYPE_21__**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_19__*, align 8
  %13 = alloca %struct.TYPE_20__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_22__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %7, align 8
  store %struct.TYPE_21__** %1, %struct.TYPE_21__*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %24 = load %struct.vnode*, %struct.vnode** %7, align 8
  %25 = call %struct.TYPE_19__* @VTOZ(%struct.vnode* %24)
  store %struct.TYPE_19__* %25, %struct.TYPE_19__** %12, align 8
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 3
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %27, align 8
  store %struct.TYPE_20__* %28, %struct.TYPE_20__** %13, align 8
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 3
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %14, align 8
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %35 = call i32 @ZFS_ENTER(%struct.TYPE_20__* %34)
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %37 = call i32 @ZFS_VERIFY_ZP(%struct.TYPE_19__* %36)
  %38 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %38, i64 0
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @IDX_TO_OFF(i32 %42)
  store i32 %43, i32* %17, align 4
  %44 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %44, i64 %47
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  %53 = call i32 @IDX_TO_OFF(i32 %52)
  store i32 %53, i32* %18, align 4
  br label %54

54:                                               ; preds = %78, %5
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %20, align 8
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 2
  %60 = load i32, i32* %17, align 4
  %61 = load i64, i64* %20, align 8
  %62 = call i32 @rounddown(i32 %60, i64 %61)
  %63 = load i32, i32* %18, align 4
  %64 = load i64, i64* %20, align 8
  %65 = call i32 @roundup(i32 %63, i64 %64)
  %66 = load i32, i32* %17, align 4
  %67 = load i64, i64* %20, align 8
  %68 = call i32 @rounddown(i32 %66, i64 %67)
  %69 = sub nsw i32 %65, %68
  %70 = load i32, i32* @RL_READER, align 4
  %71 = call i32* @rangelock_enter(i32* %59, i32 %62, i32 %69, i32 %70)
  store i32* %71, i32** %15, align 8
  %72 = load i64, i64* %20, align 8
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %72, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %54
  br label %81

78:                                               ; preds = %54
  %79 = load i32*, i32** %15, align 8
  %80 = call i32 @rangelock_exit(i32* %79)
  br label %54

81:                                               ; preds = %77
  %82 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %82, i64 0
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %85, align 8
  store %struct.TYPE_22__* %86, %struct.TYPE_22__** %16, align 8
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %88 = call i32 @zfs_vmobject_wlock(%struct.TYPE_22__* %87)
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %19, align 4
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %95 = call i32 @zfs_vmobject_wunlock(%struct.TYPE_22__* %94)
  %96 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %8, align 8
  %97 = load i32, i32* %9, align 4
  %98 = sub nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %96, i64 %99
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @IDX_TO_OFF(i32 %103)
  %105 = load i32, i32* %19, align 4
  %106 = icmp sge i32 %104, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %81
  %108 = load i32*, i32** %15, align 8
  %109 = call i32 @rangelock_exit(i32* %108)
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %111 = call i32 @ZFS_EXIT(%struct.TYPE_20__* %110)
  %112 = load i32, i32* @zfs_vm_pagerret_bad, align 4
  store i32 %112, i32* %6, align 4
  br label %203

113:                                              ; preds = %81
  store i32 0, i32* %21, align 4
  %114 = load i32*, i32** %10, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %116, label %127

116:                                              ; preds = %113
  %117 = load i32, i32* %17, align 4
  %118 = load i32, i32* %17, align 4
  %119 = load i64, i64* %20, align 8
  %120 = call i32 @rounddown(i32 %118, i64 %119)
  %121 = sub nsw i32 %117, %120
  %122 = call i32 @OFF_TO_IDX(i32 %121)
  store i32 %122, i32* %21, align 4
  %123 = load i32*, i32** %10, align 8
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %21, align 4
  %126 = call i32 @MIN(i32 %124, i32 %125)
  store i32 %126, i32* %21, align 4
  br label %127

127:                                              ; preds = %116, %113
  store i32 0, i32* %22, align 4
  %128 = load i32*, i32** %11, align 8
  %129 = icmp ne i32* %128, null
  br i1 %129, label %130, label %154

130:                                              ; preds = %127
  %131 = load i32, i32* %18, align 4
  %132 = load i64, i64* %20, align 8
  %133 = call i32 @roundup(i32 %131, i64 %132)
  %134 = load i32, i32* %18, align 4
  %135 = sub nsw i32 %133, %134
  %136 = call i32 @OFF_TO_IDX(i32 %135)
  store i32 %136, i32* %22, align 4
  %137 = load i32, i32* %18, align 4
  %138 = load i32, i32* %22, align 4
  %139 = call i32 @IDX_TO_OFF(i32 %138)
  %140 = add nsw i32 %137, %139
  %141 = load i32, i32* %19, align 4
  %142 = icmp sge i32 %140, %141
  br i1 %142, label %143, label %149

143:                                              ; preds = %130
  %144 = load i32, i32* %19, align 4
  %145 = call i32 @round_page(i32 %144)
  %146 = load i32, i32* %18, align 4
  %147 = sub nsw i32 %145, %146
  %148 = call i32 @OFF_TO_IDX(i32 %147)
  store i32 %148, i32* %22, align 4
  br label %149

149:                                              ; preds = %143, %130
  %150 = load i32*, i32** %11, align 8
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %22, align 4
  %153 = call i32 @MIN(i32 %151, i32 %152)
  store i32 %153, i32* %22, align 4
  br label %154

154:                                              ; preds = %149, %127
  %155 = load i32*, i32** %14, align 8
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %8, align 8
  %160 = load i32, i32* %9, align 4
  %161 = load i32, i32* %18, align 4
  %162 = load i32, i32* %19, align 4
  %163 = call i32 @MIN(i32 %161, i32 %162)
  %164 = load i32, i32* %18, align 4
  %165 = load i32, i32* @PAGE_SIZE, align 4
  %166 = sub nsw i32 %164, %165
  %167 = sub nsw i32 %163, %166
  %168 = call i32 @dmu_read_pages(i32* %155, i32 %158, %struct.TYPE_21__** %159, i32 %160, i32* %21, i32* %22, i32 %167)
  store i32 %168, i32* %23, align 4
  %169 = load i32*, i32** %15, align 8
  %170 = call i32 @rangelock_exit(i32* %169)
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %172 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %173 = call i32 @ZFS_ACCESSTIME_STAMP(%struct.TYPE_20__* %171, %struct.TYPE_19__* %172)
  %174 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %175 = call i32 @ZFS_EXIT(%struct.TYPE_20__* %174)
  %176 = load i32, i32* %23, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %154
  %179 = load i32, i32* @zfs_vm_pagerret_error, align 4
  store i32 %179, i32* %6, align 4
  br label %203

180:                                              ; preds = %154
  %181 = load i32, i32* @v_vnodein, align 4
  %182 = call i32 @VM_CNT_INC(i32 %181)
  %183 = load i32, i32* @v_vnodepgsin, align 4
  %184 = load i32, i32* %9, align 4
  %185 = load i32, i32* %21, align 4
  %186 = add nsw i32 %184, %185
  %187 = load i32, i32* %22, align 4
  %188 = add nsw i32 %186, %187
  %189 = call i32 @VM_CNT_ADD(i32 %183, i32 %188)
  %190 = load i32*, i32** %10, align 8
  %191 = icmp ne i32* %190, null
  br i1 %191, label %192, label %195

192:                                              ; preds = %180
  %193 = load i32, i32* %21, align 4
  %194 = load i32*, i32** %10, align 8
  store i32 %193, i32* %194, align 4
  br label %195

195:                                              ; preds = %192, %180
  %196 = load i32*, i32** %11, align 8
  %197 = icmp ne i32* %196, null
  br i1 %197, label %198, label %201

198:                                              ; preds = %195
  %199 = load i32, i32* %22, align 4
  %200 = load i32*, i32** %11, align 8
  store i32 %199, i32* %200, align 4
  br label %201

201:                                              ; preds = %198, %195
  %202 = load i32, i32* @zfs_vm_pagerret_ok, align 4
  store i32 %202, i32* %6, align 4
  br label %203

203:                                              ; preds = %201, %178, %107
  %204 = load i32, i32* %6, align 4
  ret i32 %204
}

declare dso_local %struct.TYPE_19__* @VTOZ(%struct.vnode*) #1

declare dso_local i32 @ZFS_ENTER(%struct.TYPE_20__*) #1

declare dso_local i32 @ZFS_VERIFY_ZP(%struct.TYPE_19__*) #1

declare dso_local i32 @IDX_TO_OFF(i32) #1

declare dso_local i32* @rangelock_enter(i32*, i32, i32, i32) #1

declare dso_local i32 @rounddown(i32, i64) #1

declare dso_local i32 @roundup(i32, i64) #1

declare dso_local i32 @rangelock_exit(i32*) #1

declare dso_local i32 @zfs_vmobject_wlock(%struct.TYPE_22__*) #1

declare dso_local i32 @zfs_vmobject_wunlock(%struct.TYPE_22__*) #1

declare dso_local i32 @ZFS_EXIT(%struct.TYPE_20__*) #1

declare dso_local i32 @OFF_TO_IDX(i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @round_page(i32) #1

declare dso_local i32 @dmu_read_pages(i32*, i32, %struct.TYPE_21__**, i32, i32*, i32*, i32) #1

declare dso_local i32 @ZFS_ACCESSTIME_STAMP(%struct.TYPE_20__*, %struct.TYPE_19__*) #1

declare dso_local i32 @VM_CNT_INC(i32) #1

declare dso_local i32 @VM_CNT_ADD(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
