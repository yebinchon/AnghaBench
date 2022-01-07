; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent_ratelim.c_bufferevent_decrement_read_buckets_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent_ratelim.c_bufferevent_decrement_read_buckets_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent_private = type { i32, i32, %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_13__*, i32, %struct.TYPE_10__*, %struct.TYPE_9__ }
%struct.TYPE_13__ = type { i64, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64 }

@BEV_SUSPEND_BW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bufferevent_decrement_read_buckets_(%struct.bufferevent_private* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bufferevent_private*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.bufferevent_private* %0, %struct.bufferevent_private** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.bufferevent_private*, %struct.bufferevent_private** %4, align 8
  %8 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %7, i32 0, i32 2
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %10 = icmp ne %struct.TYPE_12__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %158

12:                                               ; preds = %2
  %13 = load %struct.bufferevent_private*, %struct.bufferevent_private** %4, align 8
  %14 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %13, i32 0, i32 2
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = icmp ne %struct.TYPE_10__* %17, null
  br i1 %18, label %19, label %81

19:                                               ; preds = %12
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.bufferevent_private*, %struct.bufferevent_private** %4, align 8
  %22 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %21, i32 0, i32 2
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %26, %20
  store i64 %27, i64* %25, align 8
  %28 = load %struct.bufferevent_private*, %struct.bufferevent_private** %4, align 8
  %29 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %28, i32 0, i32 2
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sle i64 %33, 0
  br i1 %34, label %35, label %54

35:                                               ; preds = %19
  %36 = load %struct.bufferevent_private*, %struct.bufferevent_private** %4, align 8
  %37 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %36, i32 0, i32 3
  %38 = load i32, i32* @BEV_SUSPEND_BW, align 4
  %39 = call i32 @bufferevent_suspend_read_(i32* %37, i32 %38)
  %40 = load %struct.bufferevent_private*, %struct.bufferevent_private** %4, align 8
  %41 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %40, i32 0, i32 2
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = load %struct.bufferevent_private*, %struct.bufferevent_private** %4, align 8
  %45 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %44, i32 0, i32 2
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = call i64 @event_add(i32* %43, i32* %49)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %35
  store i32 -1, i32* %6, align 4
  br label %53

53:                                               ; preds = %52, %35
  br label %80

54:                                               ; preds = %19
  %55 = load %struct.bufferevent_private*, %struct.bufferevent_private** %4, align 8
  %56 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @BEV_SUSPEND_BW, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %79

61:                                               ; preds = %54
  %62 = load %struct.bufferevent_private*, %struct.bufferevent_private** %4, align 8
  %63 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @BEV_SUSPEND_BW, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %61
  %69 = load %struct.bufferevent_private*, %struct.bufferevent_private** %4, align 8
  %70 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %69, i32 0, i32 2
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 1
  %73 = call i32 @event_del(i32* %72)
  br label %74

74:                                               ; preds = %68, %61
  %75 = load %struct.bufferevent_private*, %struct.bufferevent_private** %4, align 8
  %76 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %75, i32 0, i32 3
  %77 = load i32, i32* @BEV_SUSPEND_BW, align 4
  %78 = call i32 @bufferevent_unsuspend_read_(i32* %76, i32 %77)
  br label %79

79:                                               ; preds = %74, %54
  br label %80

80:                                               ; preds = %79, %53
  br label %81

81:                                               ; preds = %80, %12
  %82 = load %struct.bufferevent_private*, %struct.bufferevent_private** %4, align 8
  %83 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %82, i32 0, i32 2
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %85, align 8
  %87 = icmp ne %struct.TYPE_13__* %86, null
  br i1 %87, label %88, label %156

88:                                               ; preds = %81
  %89 = load %struct.bufferevent_private*, %struct.bufferevent_private** %4, align 8
  %90 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %89, i32 0, i32 2
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %92, align 8
  %94 = call i32 @LOCK_GROUP(%struct.TYPE_13__* %93)
  %95 = load i64, i64* %5, align 8
  %96 = load %struct.bufferevent_private*, %struct.bufferevent_private** %4, align 8
  %97 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %96, i32 0, i32 2
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = sub nsw i64 %103, %95
  store i64 %104, i64* %102, align 8
  %105 = load i64, i64* %5, align 8
  %106 = load %struct.bufferevent_private*, %struct.bufferevent_private** %4, align 8
  %107 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %106, i32 0, i32 2
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = add nsw i64 %113, %105
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %111, align 8
  %116 = load %struct.bufferevent_private*, %struct.bufferevent_private** %4, align 8
  %117 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %116, i32 0, i32 2
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp sle i64 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %88
  %126 = load %struct.bufferevent_private*, %struct.bufferevent_private** %4, align 8
  %127 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %126, i32 0, i32 2
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %129, align 8
  %131 = call i32 @bev_group_suspend_reading_(%struct.TYPE_13__* %130)
  br label %149

132:                                              ; preds = %88
  %133 = load %struct.bufferevent_private*, %struct.bufferevent_private** %4, align 8
  %134 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %133, i32 0, i32 2
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %132
  %142 = load %struct.bufferevent_private*, %struct.bufferevent_private** %4, align 8
  %143 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %142, i32 0, i32 2
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %145, align 8
  %147 = call i32 @bev_group_unsuspend_reading_(%struct.TYPE_13__* %146)
  br label %148

148:                                              ; preds = %141, %132
  br label %149

149:                                              ; preds = %148, %125
  %150 = load %struct.bufferevent_private*, %struct.bufferevent_private** %4, align 8
  %151 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %150, i32 0, i32 2
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %153, align 8
  %155 = call i32 @UNLOCK_GROUP(%struct.TYPE_13__* %154)
  br label %156

156:                                              ; preds = %149, %81
  %157 = load i32, i32* %6, align 4
  store i32 %157, i32* %3, align 4
  br label %158

158:                                              ; preds = %156, %11
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local i32 @bufferevent_suspend_read_(i32*, i32) #1

declare dso_local i64 @event_add(i32*, i32*) #1

declare dso_local i32 @event_del(i32*) #1

declare dso_local i32 @bufferevent_unsuspend_read_(i32*, i32) #1

declare dso_local i32 @LOCK_GROUP(%struct.TYPE_13__*) #1

declare dso_local i32 @bev_group_suspend_reading_(%struct.TYPE_13__*) #1

declare dso_local i32 @bev_group_unsuspend_reading_(%struct.TYPE_13__*) #1

declare dso_local i32 @UNLOCK_GROUP(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
