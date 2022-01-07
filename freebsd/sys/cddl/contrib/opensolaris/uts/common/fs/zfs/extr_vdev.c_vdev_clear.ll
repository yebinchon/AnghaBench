; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev.c_vdev_clear.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev.c_vdev_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_21__, %struct.TYPE_20__, %struct.TYPE_23__* }
%struct.TYPE_21__ = type { i32, %struct.TYPE_23__** }
%struct.TYPE_20__ = type { i32, %struct.TYPE_23__** }
%struct.TYPE_23__ = type { i32, i64, i64, i8*, %struct.TYPE_22__*, i32*, %struct.TYPE_23__*, i8*, i8*, i8*, %struct.TYPE_23__**, %struct.TYPE_19__ }
%struct.TYPE_22__ = type { %struct.TYPE_23__**, i32* }
%struct.TYPE_19__ = type { i64, i64, i64 }

@SCL_STATE_ALL = common dso_local global i64 0, align 8
@RW_WRITER = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i8* null, align 8
@B_FALSE = common dso_local global i8* null, align 8
@SPA_ASYNC_RESILVER = common dso_local global i32 0, align 4
@ESC_ZFS_VDEV_CLEAR = common dso_local global i32 0, align 4
@vdev_spare_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vdev_clear(%struct.TYPE_24__* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %3, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %4, align 8
  %9 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %9, i32 0, i32 2
  %11 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  store %struct.TYPE_23__* %11, %struct.TYPE_23__** %5, align 8
  %12 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %13 = load i64, i64* @SCL_STATE_ALL, align 8
  %14 = load i32, i32* @RW_WRITER, align 4
  %15 = call i64 @spa_config_held(%struct.TYPE_24__* %12, i64 %13, i32 %14)
  %16 = load i64, i64* @SCL_STATE_ALL, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @ASSERT(i32 %18)
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %21 = icmp eq %struct.TYPE_23__* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  store %struct.TYPE_23__* %23, %struct.TYPE_23__** %4, align 8
  br label %24

24:                                               ; preds = %22, %2
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %25, i32 0, i32 11
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 2
  store i64 0, i64* %27, align 8
  %28 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %28, i32 0, i32 11
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %31, i32 0, i32 11
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %49, %24
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %34
  %41 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 10
  %44 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %44, i64 %46
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %47, align 8
  call void @vdev_clear(%struct.TYPE_24__* %41, %struct.TYPE_23__* %48)
  br label %49

49:                                               ; preds = %40
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %34

52:                                               ; preds = %34
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %55 = icmp eq %struct.TYPE_23__* %53, %54
  br i1 %55, label %56, label %99

56:                                               ; preds = %52
  store i32 0, i32* %7, align 4
  br label %57

57:                                               ; preds = %74, %56
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %58, %62
  br i1 %63, label %64, label %77

64:                                               ; preds = %57
  %65 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %66 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %69, i64 %71
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %72, align 8
  call void @vdev_clear(%struct.TYPE_24__* %65, %struct.TYPE_23__* %73)
  br label %74

74:                                               ; preds = %64
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %7, align 4
  br label %57

77:                                               ; preds = %57
  store i32 0, i32* %8, align 4
  br label %78

78:                                               ; preds = %95, %77
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp slt i32 %79, %83
  br i1 %84, label %85, label %98

85:                                               ; preds = %78
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %87 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %89, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %90, i64 %92
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %93, align 8
  call void @vdev_clear(%struct.TYPE_24__* %86, %struct.TYPE_23__* %94)
  br label %95

95:                                               ; preds = %85
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %8, align 4
  br label %78

98:                                               ; preds = %78
  br label %99

99:                                               ; preds = %98, %52
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %101 = call i32 @vdev_is_concrete(%struct.TYPE_23__* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %99
  br label %213

104:                                              ; preds = %99
  %105 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %122, label %109

109:                                              ; preds = %104
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %122, label %114

114:                                              ; preds = %109
  %115 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %116 = call i32 @vdev_readable(%struct.TYPE_23__* %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %114
  %119 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %120 = call i64 @vdev_writeable(%struct.TYPE_23__* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %183, label %122

122:                                              ; preds = %118, %114, %109, %104
  %123 = load i8*, i8** @B_TRUE, align 8
  %124 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %124, i32 0, i32 7
  store i8* %123, i8** %125, align 8
  %126 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %126, i32 0, i32 2
  store i64 0, i64* %127, align 8
  %128 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %128, i32 0, i32 1
  store i64 0, i64* %129, align 8
  %130 = load i8*, i8** @B_FALSE, align 8
  %131 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %131, i32 0, i32 9
  store i8* %130, i8** %132, align 8
  %133 = load i8*, i8** @B_FALSE, align 8
  %134 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %134, i32 0, i32 8
  store i8* %133, i8** %135, align 8
  %136 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %137 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %138 = icmp eq %struct.TYPE_23__* %136, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %122
  %140 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  br label %145

141:                                              ; preds = %122
  %142 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %142, i32 0, i32 6
  %144 = load %struct.TYPE_23__*, %struct.TYPE_23__** %143, align 8
  br label %145

145:                                              ; preds = %141, %139
  %146 = phi %struct.TYPE_23__* [ %140, %139 ], [ %144, %141 ]
  %147 = call i32 @vdev_reopen(%struct.TYPE_23__* %146)
  %148 = load i8*, i8** @B_FALSE, align 8
  %149 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %149, i32 0, i32 7
  store i8* %148, i8** %150, align 8
  %151 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %152 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %153 = icmp ne %struct.TYPE_23__* %151, %152
  br i1 %153, label %154, label %165

154:                                              ; preds = %145
  %155 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %155, i32 0, i32 6
  %157 = load %struct.TYPE_23__*, %struct.TYPE_23__** %156, align 8
  %158 = call i64 @vdev_writeable(%struct.TYPE_23__* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %154
  %161 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %161, i32 0, i32 6
  %163 = load %struct.TYPE_23__*, %struct.TYPE_23__** %162, align 8
  %164 = call i32 @vdev_state_dirty(%struct.TYPE_23__* %163)
  br label %165

165:                                              ; preds = %160, %154, %145
  %166 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %166, i32 0, i32 5
  %168 = load i32*, i32** %167, align 8
  %169 = icmp eq i32* %168, null
  br i1 %169, label %170, label %178

170:                                              ; preds = %165
  %171 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %172 = call i32 @vdev_is_dead(%struct.TYPE_23__* %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %178, label %174

174:                                              ; preds = %170
  %175 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %176 = load i32, i32* @SPA_ASYNC_RESILVER, align 4
  %177 = call i32 @spa_async_request(%struct.TYPE_24__* %175, i32 %176)
  br label %178

178:                                              ; preds = %174, %170, %165
  %179 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %180 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %181 = load i32, i32* @ESC_ZFS_VDEV_CLEAR, align 4
  %182 = call i32 @spa_event_notify(%struct.TYPE_24__* %179, %struct.TYPE_23__* %180, i32* null, i32 %181)
  br label %183

183:                                              ; preds = %178, %118
  %184 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %185 = call i32 @vdev_is_dead(%struct.TYPE_23__* %184)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %213, label %187

187:                                              ; preds = %183
  %188 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %188, i32 0, i32 4
  %190 = load %struct.TYPE_22__*, %struct.TYPE_22__** %189, align 8
  %191 = icmp ne %struct.TYPE_22__* %190, null
  br i1 %191, label %192, label %213

192:                                              ; preds = %187
  %193 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %193, i32 0, i32 4
  %195 = load %struct.TYPE_22__*, %struct.TYPE_22__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %195, i32 0, i32 1
  %197 = load i32*, i32** %196, align 8
  %198 = icmp eq i32* %197, @vdev_spare_ops
  br i1 %198, label %199, label %213

199:                                              ; preds = %192
  %200 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %200, i32 0, i32 4
  %202 = load %struct.TYPE_22__*, %struct.TYPE_22__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %202, i32 0, i32 0
  %204 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %204, i64 0
  %206 = load %struct.TYPE_23__*, %struct.TYPE_23__** %205, align 8
  %207 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %208 = icmp eq %struct.TYPE_23__* %206, %207
  br i1 %208, label %209, label %213

209:                                              ; preds = %199
  %210 = load i8*, i8** @B_TRUE, align 8
  %211 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %211, i32 0, i32 3
  store i8* %210, i8** %212, align 8
  br label %213

213:                                              ; preds = %103, %209, %199, %192, %187, %183
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @spa_config_held(%struct.TYPE_24__*, i64, i32) #1

declare dso_local i32 @vdev_is_concrete(%struct.TYPE_23__*) #1

declare dso_local i32 @vdev_readable(%struct.TYPE_23__*) #1

declare dso_local i64 @vdev_writeable(%struct.TYPE_23__*) #1

declare dso_local i32 @vdev_reopen(%struct.TYPE_23__*) #1

declare dso_local i32 @vdev_state_dirty(%struct.TYPE_23__*) #1

declare dso_local i32 @vdev_is_dead(%struct.TYPE_23__*) #1

declare dso_local i32 @spa_async_request(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @spa_event_notify(%struct.TYPE_24__*, %struct.TYPE_23__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
