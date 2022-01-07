; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_filter.c_be_filter_process_input.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_filter.c_be_filter_process_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent_filtered = type { i32 (i32, i32, i32, i32, i32)*, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.bufferevent = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@BEV_NORMAL = common dso_local global i32 0, align 4
@EV_READ = common dso_local global i32 0, align 4
@BEV_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bufferevent_filtered*, i32, i32*)* @be_filter_process_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_filter_process_input(%struct.bufferevent_filtered* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bufferevent_filtered*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bufferevent*, align 8
  %10 = alloca i32, align 4
  store %struct.bufferevent_filtered* %0, %struct.bufferevent_filtered** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %5, align 8
  %12 = call %struct.bufferevent* @downcast(%struct.bufferevent_filtered* %11)
  store %struct.bufferevent* %12, %struct.bufferevent** %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @BEV_NORMAL, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %3
  %17 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %18 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @EV_READ, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  %24 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i64 @be_readbuf_full(%struct.bufferevent_filtered* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23, %16
  %29 = load i32, i32* @BEV_OK, align 4
  store i32 %29, i32* %4, align 4
  br label %112

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30, %3
  br label %32

32:                                               ; preds = %101, %31
  store i32 -1, i32* %10, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @BEV_NORMAL, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %52

36:                                               ; preds = %32
  %37 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %38 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %36
  %43 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %44 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %48 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @evbuffer_get_length(i32 %49)
  %51 = sub nsw i32 %46, %50
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %42, %36, %32
  %53 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %5, align 8
  %54 = getelementptr inbounds %struct.bufferevent_filtered, %struct.bufferevent_filtered* %53, i32 0, i32 0
  %55 = load i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)** %54, align 8
  %56 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %5, align 8
  %57 = getelementptr inbounds %struct.bufferevent_filtered, %struct.bufferevent_filtered* %56, i32 0, i32 2
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %62 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %5, align 8
  %67 = getelementptr inbounds %struct.bufferevent_filtered, %struct.bufferevent_filtered* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 %55(i32 %60, i32 %63, i32 %64, i32 %65, i32 %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @BEV_OK, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %52
  %74 = load i32*, i32** %7, align 8
  store i32 1, i32* %74, align 4
  br label %75

75:                                               ; preds = %73, %52
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @BEV_OK, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %101

80:                                               ; preds = %76
  %81 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %82 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @EV_READ, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %101

87:                                               ; preds = %80
  %88 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %5, align 8
  %89 = getelementptr inbounds %struct.bufferevent_filtered, %struct.bufferevent_filtered* %88, i32 0, i32 2
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @evbuffer_get_length(i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %87
  %96 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %5, align 8
  %97 = load i32, i32* %6, align 4
  %98 = call i64 @be_readbuf_full(%struct.bufferevent_filtered* %96, i32 %97)
  %99 = icmp ne i64 %98, 0
  %100 = xor i1 %99, true
  br label %101

101:                                              ; preds = %95, %87, %80, %76
  %102 = phi i1 [ false, %87 ], [ false, %80 ], [ false, %76 ], [ %100, %95 ]
  br i1 %102, label %32, label %103

103:                                              ; preds = %101
  %104 = load i32*, i32** %7, align 8
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %103
  %108 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %109 = call i32 @BEV_RESET_GENERIC_READ_TIMEOUT(%struct.bufferevent* %108)
  br label %110

110:                                              ; preds = %107, %103
  %111 = load i32, i32* %8, align 4
  store i32 %111, i32* %4, align 4
  br label %112

112:                                              ; preds = %110, %28
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local %struct.bufferevent* @downcast(%struct.bufferevent_filtered*) #1

declare dso_local i64 @be_readbuf_full(%struct.bufferevent_filtered*, i32) #1

declare dso_local i32 @evbuffer_get_length(i32) #1

declare dso_local i32 @BEV_RESET_GENERIC_READ_TIMEOUT(%struct.bufferevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
