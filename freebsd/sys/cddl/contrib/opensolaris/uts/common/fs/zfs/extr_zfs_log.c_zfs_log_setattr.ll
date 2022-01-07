; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_log.c_zfs_log_setattr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_log.c_zfs_log_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i32, i64 }
%struct.TYPE_17__ = type { i32, i32, i32, i64, i64, i64, i64 }
%struct.TYPE_15__ = type { i8*, i8*, i64 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i32 }
%struct.TYPE_16__ = type { i32 }

@AT_XVATTR = common dso_local global i32 0, align 4
@AT_UID = common dso_local global i32 0, align 4
@AT_GID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfs_log_setattr(i32* %0, i32* %1, i32 %2, %struct.TYPE_14__* %3, %struct.TYPE_17__* %4, i32 %5, %struct.TYPE_15__* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca %struct.TYPE_19__*, align 8
  %16 = alloca %struct.TYPE_18__*, align 8
  %17 = alloca %struct.TYPE_16__*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %11, align 8
  store %struct.TYPE_17__* %4, %struct.TYPE_17__** %12, align 8
  store i32 %5, i32* %13, align 4
  store %struct.TYPE_15__* %6, %struct.TYPE_15__** %14, align 8
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %21 = bitcast %struct.TYPE_17__* %20 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %21, %struct.TYPE_16__** %17, align 8
  store i64 56, i64* %18, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = call i64 @zil_replaying(i32* %22, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %7
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26, %7
  br label %184

32:                                               ; preds = %26
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @AT_XVATTR, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %32
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ZIL_XVAT_SIZE(i32 %42)
  %44 = sext i32 %43 to i64
  %45 = add i64 56, %44
  store i64 %45, i64* %18, align 8
  br label %46

46:                                               ; preds = %39, %32
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %48 = icmp ne %struct.TYPE_15__* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %18, align 8
  %54 = add i64 %53, %52
  store i64 %54, i64* %18, align 8
  br label %55

55:                                               ; preds = %49, %46
  %56 = load i32, i32* %10, align 4
  %57 = load i64, i64* %18, align 8
  %58 = call %struct.TYPE_19__* @zil_itx_create(i32 %56, i64 %57)
  store %struct.TYPE_19__* %58, %struct.TYPE_19__** %15, align 8
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 1
  %61 = bitcast i32* %60 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %61, %struct.TYPE_18__** %16, align 8
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 7
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* %13, align 4
  %68 = sext i32 %67 to i64
  %69 = inttoptr i64 %68 to i8*
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 6
  store i8* %69, i8** %71, align 8
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 6
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to i8*
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 5
  store i8* %75, i8** %77, align 8
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* @AT_UID, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %94

82:                                               ; preds = %55
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 5
  %85 = load i64, i64* %84, align 8
  %86 = call i64 @IS_EPHEMERAL(i64 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %82
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 4
  store i8* %91, i8** %93, align 8
  br label %101

94:                                               ; preds = %82, %55
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 5
  %97 = load i64, i64* %96, align 8
  %98 = inttoptr i64 %97 to i8*
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 4
  store i8* %98, i8** %100, align 8
  br label %101

101:                                              ; preds = %94, %88
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* @AT_GID, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %118

106:                                              ; preds = %101
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 4
  %109 = load i64, i64* %108, align 8
  %110 = call i64 @IS_EPHEMERAL(i64 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %106
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 3
  store i8* %115, i8** %117, align 8
  br label %125

118:                                              ; preds = %106, %101
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 4
  %121 = load i64, i64* %120, align 8
  %122 = inttoptr i64 %121 to i8*
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 3
  store i8* %122, i8** %124, align 8
  br label %125

125:                                              ; preds = %118, %112
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = inttoptr i64 %128 to i8*
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 2
  store i8* %129, i8** %131, align 8
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 2
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @ZFS_TIME_ENCODE(i32* %133, i32 %136)
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @ZFS_TIME_ENCODE(i32* %139, i32 %142)
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i64 1
  %146 = bitcast %struct.TYPE_18__* %145 to i8*
  store i8* %146, i8** %19, align 8
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @AT_XVATTR, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %165

153:                                              ; preds = %125
  %154 = load i8*, i8** %19, align 8
  %155 = bitcast i8* %154 to i32*
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %157 = call i32 @zfs_log_xvattr(i32* %155, %struct.TYPE_16__* %156)
  %158 = load i8*, i8** %19, align 8
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @ZIL_XVAT_SIZE(i32 %161)
  %163 = sext i32 %162 to i64
  %164 = getelementptr i8, i8* %158, i64 %163
  store i8* %164, i8** %19, align 8
  br label %165

165:                                              ; preds = %153, %125
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %167 = icmp ne %struct.TYPE_15__* %166, null
  br i1 %167, label %168, label %172

168:                                              ; preds = %165
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %170 = load i8*, i8** %19, align 8
  %171 = call i32 @zfs_log_fuid_domains(%struct.TYPE_15__* %169, i8* %170)
  br label %172

172:                                              ; preds = %168, %165
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  %177 = zext i1 %176 to i32
  %178 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %179 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %178, i32 0, i32 0
  store i32 %177, i32* %179, align 4
  %180 = load i32*, i32** %8, align 8
  %181 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %182 = load i32*, i32** %9, align 8
  %183 = call i32 @zil_itx_assign(i32* %180, %struct.TYPE_19__* %181, i32* %182)
  br label %184

184:                                              ; preds = %172, %31
  ret void
}

declare dso_local i64 @zil_replaying(i32*, i32*) #1

declare dso_local i32 @ZIL_XVAT_SIZE(i32) #1

declare dso_local %struct.TYPE_19__* @zil_itx_create(i32, i64) #1

declare dso_local i64 @IS_EPHEMERAL(i64) #1

declare dso_local i32 @ZFS_TIME_ENCODE(i32*, i32) #1

declare dso_local i32 @zfs_log_xvattr(i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @zfs_log_fuid_domains(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @zil_itx_assign(i32*, %struct.TYPE_19__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
