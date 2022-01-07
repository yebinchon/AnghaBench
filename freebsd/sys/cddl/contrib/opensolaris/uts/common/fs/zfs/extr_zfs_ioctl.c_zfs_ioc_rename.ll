; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ioctl.c_zfs_ioc_rename.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ioctl.c_zfs_ioc_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i8* }

@B_TRUE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@EXDEV = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@DMU_OST_ZFS = common dso_local global i64 0, align 8
@recursive_unmount = common dso_local global i32 0, align 4
@DS_FIND_CHILDREN = common dso_local global i32 0, align 4
@DMU_OST_ZVOL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @zfs_ioc_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_ioc_rename(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = and i32 %13, 1
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* @B_TRUE, align 4
  store i32 %15, i32* %9, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 7
  store i8 0, i8* %19, align 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 7
  store i8 0, i8* %23, align 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = call i8* @strchr(i8* %26, i8 signext 35)
  store i8* %27, i8** %7, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %73

30:                                               ; preds = %1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  %33 = load i8*, i8** %32, align 8
  %34 = call i8* @strchr(i8* %33, i8 signext 35)
  store i8* %34, i8** %8, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i32, i32* @EINVAL, align 4
  %39 = call i32 @SET_ERROR(i32 %38)
  store i32 %39, i32* %2, align 4
  br label %194

40:                                               ; preds = %30
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32, i32* @ENOTSUP, align 4
  %45 = call i32 @SET_ERROR(i32 %44)
  store i32 %45, i32* %2, align 4
  br label %194

46:                                               ; preds = %40
  %47 = load i8*, i8** %7, align 8
  store i8 0, i8* %47, align 1
  %48 = load i8*, i8** %8, align 8
  store i8 0, i8* %48, align 1
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  %54 = load i8*, i8** %53, align 8
  %55 = call i64 @strcmp(i8* %51, i8* %54)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %46
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  %63 = load i8*, i8** %8, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 1
  %65 = call i32 @dsl_bookmark_rename(i8* %60, i8* %62, i8* %64)
  store i32 %65, i32* %10, align 4
  br label %69

66:                                               ; preds = %46
  %67 = load i32, i32* @EXDEV, align 4
  %68 = call i32 @SET_ERROR(i32 %67)
  store i32 %68, i32* %10, align 4
  br label %69

69:                                               ; preds = %66, %57
  %70 = load i8*, i8** %7, align 8
  store i8 35, i8* %70, align 1
  %71 = load i8*, i8** %8, align 8
  store i8 35, i8* %71, align 1
  %72 = load i32, i32* %10, align 4
  store i32 %72, i32* %2, align 4
  br label %194

73:                                               ; preds = %1
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = call i64 @dataset_namecheck(i8* %76, i32* null, i32* null)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %97, label %79

79:                                               ; preds = %73
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 2
  %82 = load i8*, i8** %81, align 8
  %83 = call i64 @dataset_namecheck(i8* %82, i32* null, i32* null)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %97, label %85

85:                                               ; preds = %79
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = call i8* @strchr(i8* %88, i8 signext 37)
  %90 = icmp ne i8* %89, null
  br i1 %90, label %97, label %91

91:                                               ; preds = %85
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 2
  %94 = load i8*, i8** %93, align 8
  %95 = call i8* @strchr(i8* %94, i8 signext 37)
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %91, %85, %79, %73
  %98 = load i32, i32* @EINVAL, align 4
  %99 = call i32 @SET_ERROR(i32 %98)
  store i32 %99, i32* %2, align 4
  br label %194

100:                                              ; preds = %91
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  %103 = load i8*, i8** %102, align 8
  %104 = load i32, i32* @FTAG, align 4
  %105 = call i32 @dmu_objset_hold(i8* %103, i32 %104, i32** %4)
  store i32 %105, i32* %10, align 4
  %106 = load i32, i32* %10, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %100
  %109 = load i32, i32* %10, align 4
  store i32 %109, i32* %2, align 4
  br label %194

110:                                              ; preds = %100
  %111 = load i32*, i32** %4, align 8
  %112 = call i64 @dmu_objset_type(i32* %111)
  store i64 %112, i64* %5, align 8
  %113 = load i32*, i32** %4, align 8
  %114 = load i32, i32* @FTAG, align 4
  %115 = call i32 @dmu_objset_rele(i32* %113, i32 %114)
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 1
  %118 = load i8*, i8** %117, align 8
  %119 = call i8* @strchr(i8* %118, i8 signext 64)
  store i8* %119, i8** %7, align 8
  %120 = load i8*, i8** %7, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %186

122:                                              ; preds = %110
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 2
  %125 = load i8*, i8** %124, align 8
  %126 = call i8* @strchr(i8* %125, i8 signext 64)
  store i8* %126, i8** %8, align 8
  %127 = load i8*, i8** %8, align 8
  %128 = icmp eq i8* %127, null
  br i1 %128, label %129, label %132

129:                                              ; preds = %122
  %130 = load i32, i32* @EINVAL, align 4
  %131 = call i32 @SET_ERROR(i32 %130)
  store i32 %131, i32* %2, align 4
  br label %194

132:                                              ; preds = %122
  %133 = load i8*, i8** %7, align 8
  store i8 0, i8* %133, align 1
  %134 = load i8*, i8** %8, align 8
  store i8 0, i8* %134, align 1
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 1
  %137 = load i8*, i8** %136, align 8
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 2
  %140 = load i8*, i8** %139, align 8
  %141 = call i64 @strcmp(i8* %137, i8* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %132
  %144 = load i32, i32* @EXDEV, align 4
  %145 = call i32 @SET_ERROR(i32 %144)
  store i32 %145, i32* %10, align 4
  br label %182

146:                                              ; preds = %132
  %147 = load i64, i64* %5, align 8
  %148 = load i64, i64* @DMU_OST_ZFS, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %168

150:                                              ; preds = %146
  %151 = load i32, i32* %9, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %168, label %153

153:                                              ; preds = %150
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 1
  %156 = load i8*, i8** %155, align 8
  %157 = load i32, i32* @recursive_unmount, align 4
  %158 = load i8*, i8** %7, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 1
  %160 = load i32, i32* %6, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %153
  %163 = load i32, i32* @DS_FIND_CHILDREN, align 4
  br label %165

164:                                              ; preds = %153
  br label %165

165:                                              ; preds = %164, %162
  %166 = phi i32 [ %163, %162 ], [ 0, %164 ]
  %167 = call i32 @dmu_objset_find(i8* %156, i32 %157, i8* %159, i32 %166)
  store i32 %167, i32* %10, align 4
  br label %168

168:                                              ; preds = %165, %150, %146
  %169 = load i32, i32* %10, align 4
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %181

171:                                              ; preds = %168
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 1
  %174 = load i8*, i8** %173, align 8
  %175 = load i8*, i8** %7, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 1
  %177 = load i8*, i8** %8, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 1
  %179 = load i32, i32* %6, align 4
  %180 = call i32 @dsl_dataset_rename_snapshot(i8* %174, i8* %176, i8* %178, i32 %179)
  store i32 %180, i32* %10, align 4
  br label %181

181:                                              ; preds = %171, %168
  br label %182

182:                                              ; preds = %181, %143
  %183 = load i8*, i8** %7, align 8
  store i8 64, i8* %183, align 1
  %184 = load i8*, i8** %8, align 8
  store i8 64, i8* %184, align 1
  %185 = load i32, i32* %10, align 4
  store i32 %185, i32* %2, align 4
  br label %194

186:                                              ; preds = %110
  %187 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 1
  %189 = load i8*, i8** %188, align 8
  %190 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 2
  %192 = load i8*, i8** %191, align 8
  %193 = call i32 @dsl_dir_rename(i8* %189, i8* %192)
  store i32 %193, i32* %2, align 4
  br label %194

194:                                              ; preds = %186, %182, %129, %108, %97, %69, %43, %37
  %195 = load i32, i32* %2, align 4
  ret i32 %195
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @dsl_bookmark_rename(i8*, i8*, i8*) #1

declare dso_local i64 @dataset_namecheck(i8*, i32*, i32*) #1

declare dso_local i32 @dmu_objset_hold(i8*, i32, i32**) #1

declare dso_local i64 @dmu_objset_type(i32*) #1

declare dso_local i32 @dmu_objset_rele(i32*, i32) #1

declare dso_local i32 @dmu_objset_find(i8*, i32, i8*, i32) #1

declare dso_local i32 @dsl_dataset_rename_snapshot(i8*, i8*, i8*, i32) #1

declare dso_local i32 @dsl_dir_rename(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
