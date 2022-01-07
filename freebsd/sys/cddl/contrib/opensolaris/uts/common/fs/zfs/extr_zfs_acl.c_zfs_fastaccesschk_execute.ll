; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_acl.c_zfs_fastaccesschk_execute.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_acl.c_zfs_fastaccesschk_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i64, i32, i32, i32 }
%struct.TYPE_7__ = type { i64 }

@B_FALSE = common dso_local global i32 0, align 4
@ZFS_AV_QUARANTINED = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@ZFS_XATTR = common dso_local global i32 0, align 4
@VDIR = common dso_local global i64 0, align 8
@ZFS_NO_EXECS_DENIED = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@S_IXUSR = common dso_local global i32 0, align 4
@S_IXGRP = common dso_local global i32 0, align 4
@S_IXOTH = common dso_local global i32 0, align 4
@zfs__fastpath__execute__access__miss = common dso_local global i32 0, align 4
@ACE_EXECUTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_fastaccesschk_execute(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i32, i32* @B_FALSE, align 4
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* @B_FALSE, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = call i64 @crgetuid(i32* %13)
  store i64 %14, i64* %9, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @ZFS_AV_QUARANTINED, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EACCES, align 4
  %23 = call i32 @SET_ERROR(i32 %22)
  store i32 %23, i32* %3, align 4
  br label %158

24:                                               ; preds = %2
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @ZFS_XATTR, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %24
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %33 = call %struct.TYPE_7__* @ZTOV(%struct.TYPE_6__* %32)
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @VDIR, align 8
  %37 = icmp eq i64 %35, %36
  br label %38

38:                                               ; preds = %31, %24
  %39 = phi i1 [ false, %24 ], [ %37, %31 ]
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %141

44:                                               ; preds = %38
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 5
  %47 = call i32 @mutex_enter(i32* %46)
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @ZFS_NO_EXECS_DENIED, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %44
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 5
  %57 = call i32 @mutex_exit(i32* %56)
  store i32 0, i32* %3, align 4
  br label %158

58:                                               ; preds = %44
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @FUID_INDEX(i64 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %58
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @FUID_INDEX(i64 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %64, %58
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 5
  %73 = call i32 @mutex_exit(i32* %72)
  br label %141

74:                                               ; preds = %64
  %75 = load i64, i64* %9, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %75, %78
  br i1 %79, label %80, label %96

80:                                               ; preds = %74
  %81 = load i32, i32* @B_TRUE, align 4
  store i32 %81, i32* %6, align 4
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @S_IXUSR, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %80
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 5
  %91 = call i32 @mutex_exit(i32* %90)
  store i32 0, i32* %3, align 4
  br label %158

92:                                               ; preds = %80
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 5
  %95 = call i32 @mutex_exit(i32* %94)
  br label %141

96:                                               ; preds = %74
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load i32*, i32** %5, align 8
  %101 = call i64 @groupmember(i64 %99, i32* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %119

103:                                              ; preds = %96
  %104 = load i32, i32* @B_TRUE, align 4
  store i32 %104, i32* %7, align 4
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @S_IXGRP, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %103
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 5
  %114 = call i32 @mutex_exit(i32* %113)
  store i32 0, i32* %3, align 4
  br label %158

115:                                              ; preds = %103
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 5
  %118 = call i32 @mutex_exit(i32* %117)
  br label %141

119:                                              ; preds = %96
  %120 = load i32, i32* %6, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %137, label %122

122:                                              ; preds = %119
  %123 = load i32, i32* %7, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %137, label %125

125:                                              ; preds = %122
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @S_IXOTH, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %125
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 5
  %135 = call i32 @mutex_exit(i32* %134)
  store i32 0, i32* %3, align 4
  br label %158

136:                                              ; preds = %125
  br label %137

137:                                              ; preds = %136, %122, %119
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 5
  %140 = call i32 @mutex_exit(i32* %139)
  br label %141

141:                                              ; preds = %137, %115, %92, %70, %43
  %142 = load i32, i32* @zfs__fastpath__execute__access__miss, align 4
  %143 = call i32 @DTRACE_PROBE(i32 %142)
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @ZFS_ENTER(i32 %146)
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %149 = load i32, i32* @ACE_EXECUTE, align 4
  %150 = load i32, i32* @B_FALSE, align 4
  %151 = load i32*, i32** %5, align 8
  %152 = call i32 @zfs_zaccess(%struct.TYPE_6__* %148, i32 %149, i32 0, i32 %150, i32* %151)
  store i32 %152, i32* %10, align 4
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @ZFS_EXIT(i32 %155)
  %157 = load i32, i32* %10, align 4
  store i32 %157, i32* %3, align 4
  br label %158

158:                                              ; preds = %141, %132, %111, %88, %54, %21
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local i64 @crgetuid(i32*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local %struct.TYPE_7__* @ZTOV(%struct.TYPE_6__*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i64 @FUID_INDEX(i64) #1

declare dso_local i64 @groupmember(i64, i32*) #1

declare dso_local i32 @DTRACE_PROBE(i32) #1

declare dso_local i32 @ZFS_ENTER(i32) #1

declare dso_local i32 @zfs_zaccess(%struct.TYPE_6__*, i32, i32, i32, i32*) #1

declare dso_local i32 @ZFS_EXIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
