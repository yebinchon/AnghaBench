; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_pair.c_be_pair_transfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_pair.c_be_pair_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@EV_READ = common dso_local global i32 0, align 4
@EV_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bufferevent*, %struct.bufferevent*, i32)* @be_pair_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_pair_transfer(%struct.bufferevent* %0, %struct.bufferevent* %1, i32 %2) #0 {
  %4 = alloca %struct.bufferevent*, align 8
  %5 = alloca %struct.bufferevent*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.bufferevent* %0, %struct.bufferevent** %4, align 8
  store %struct.bufferevent* %1, %struct.bufferevent** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %10 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @evbuffer_unfreeze(i32 %11, i32 1)
  %13 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %14 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @evbuffer_unfreeze(i32 %15, i32 0)
  %17 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %18 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %65

22:                                               ; preds = %3
  %23 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %24 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @evbuffer_get_length(i32 %25)
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %29 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ult i64 %27, %31
  br i1 %32, label %33, label %48

33:                                               ; preds = %22
  %34 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %35 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %7, align 8
  %39 = sub i64 %37, %38
  store i64 %39, i64* %8, align 8
  %40 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %41 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %44 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i64, i64* %8, align 8
  %47 = call i32 @evbuffer_remove_buffer(i32 %42, i32 %45, i64 %46)
  br label %64

48:                                               ; preds = %22
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  br label %102

52:                                               ; preds = %48
  %53 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %54 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @evbuffer_get_length(i32 %55)
  store i64 %56, i64* %8, align 8
  %57 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %58 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %61 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @evbuffer_add_buffer(i32 %59, i32 %62)
  br label %64

64:                                               ; preds = %52, %33
  br label %77

65:                                               ; preds = %3
  %66 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %67 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @evbuffer_get_length(i32 %68)
  store i64 %69, i64* %8, align 8
  %70 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %71 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %74 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @evbuffer_add_buffer(i32 %72, i32 %75)
  br label %77

77:                                               ; preds = %65, %64
  %78 = load i64, i64* %8, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %95

80:                                               ; preds = %77
  %81 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %82 = call i32 @BEV_RESET_GENERIC_READ_TIMEOUT(%struct.bufferevent* %81)
  %83 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %84 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @evbuffer_get_length(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %80
  %89 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %90 = call i32 @BEV_RESET_GENERIC_WRITE_TIMEOUT(%struct.bufferevent* %89)
  br label %94

91:                                               ; preds = %80
  %92 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %93 = call i32 @BEV_DEL_GENERIC_WRITE_TIMEOUT(%struct.bufferevent* %92)
  br label %94

94:                                               ; preds = %91, %88
  br label %95

95:                                               ; preds = %94, %77
  %96 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %97 = load i32, i32* @EV_READ, align 4
  %98 = call i32 @bufferevent_trigger_nolock_(%struct.bufferevent* %96, i32 %97, i32 0)
  %99 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %100 = load i32, i32* @EV_WRITE, align 4
  %101 = call i32 @bufferevent_trigger_nolock_(%struct.bufferevent* %99, i32 %100, i32 0)
  br label %102

102:                                              ; preds = %95, %51
  %103 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %104 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @evbuffer_freeze(i32 %105, i32 1)
  %107 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %108 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @evbuffer_freeze(i32 %109, i32 0)
  ret void
}

declare dso_local i32 @evbuffer_unfreeze(i32, i32) #1

declare dso_local i64 @evbuffer_get_length(i32) #1

declare dso_local i32 @evbuffer_remove_buffer(i32, i32, i64) #1

declare dso_local i32 @evbuffer_add_buffer(i32, i32) #1

declare dso_local i32 @BEV_RESET_GENERIC_READ_TIMEOUT(%struct.bufferevent*) #1

declare dso_local i32 @BEV_RESET_GENERIC_WRITE_TIMEOUT(%struct.bufferevent*) #1

declare dso_local i32 @BEV_DEL_GENERIC_WRITE_TIMEOUT(%struct.bufferevent*) #1

declare dso_local i32 @bufferevent_trigger_nolock_(%struct.bufferevent*, i32, i32) #1

declare dso_local i32 @evbuffer_freeze(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
