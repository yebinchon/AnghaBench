; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_filter.c_be_filter_process_output.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_filter.c_be_filter_process_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent_filtered = type { i32 (i32, i32, i32, i32, i32)*, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.bufferevent = type { i32, i32 }

@BEV_OK = common dso_local global i32 0, align 4
@BEV_NORMAL = common dso_local global i32 0, align 4
@EV_WRITE = common dso_local global i32 0, align 4
@EVBUFFER_CB_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bufferevent_filtered*, i32, i32*)* @be_filter_process_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_filter_process_output(%struct.bufferevent_filtered* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bufferevent_filtered*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bufferevent*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.bufferevent_filtered* %0, %struct.bufferevent_filtered** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %13 = load i32, i32* @BEV_OK, align 4
  store i32 %13, i32* %8, align 4
  %14 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %5, align 8
  %15 = call %struct.bufferevent* @downcast(%struct.bufferevent_filtered* %14)
  store %struct.bufferevent* %15, %struct.bufferevent** %9, align 8
  store i32 0, i32* %10, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @BEV_NORMAL, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %40

19:                                               ; preds = %3
  %20 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %21 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @EV_WRITE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %19
  %27 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i64 @be_underlying_writebuf_full(%struct.bufferevent_filtered* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %26
  %32 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %33 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @evbuffer_get_length(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %31, %26, %19
  %38 = load i32, i32* @BEV_OK, align 4
  store i32 %38, i32* %4, align 4
  br label %176

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39, %3
  %41 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %42 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %5, align 8
  %45 = getelementptr inbounds %struct.bufferevent_filtered, %struct.bufferevent_filtered* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @evbuffer_cb_set_flags(i32 %43, i32 %46, i32 0)
  br label %48

48:                                               ; preds = %156, %40
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %49

49:                                               ; preds = %123, %48
  store i32 -1, i32* %12, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @BEV_NORMAL, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %75

53:                                               ; preds = %49
  %54 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %5, align 8
  %55 = getelementptr inbounds %struct.bufferevent_filtered, %struct.bufferevent_filtered* %54, i32 0, i32 3
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %75

61:                                               ; preds = %53
  %62 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %5, align 8
  %63 = getelementptr inbounds %struct.bufferevent_filtered, %struct.bufferevent_filtered* %62, i32 0, i32 3
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %5, align 8
  %69 = getelementptr inbounds %struct.bufferevent_filtered, %struct.bufferevent_filtered* %68, i32 0, i32 3
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @evbuffer_get_length(i32 %72)
  %74 = sub nsw i32 %67, %73
  store i32 %74, i32* %12, align 4
  br label %75

75:                                               ; preds = %61, %53, %49
  %76 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %5, align 8
  %77 = getelementptr inbounds %struct.bufferevent_filtered, %struct.bufferevent_filtered* %76, i32 0, i32 0
  %78 = load i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)** %77, align 8
  %79 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %5, align 8
  %80 = call %struct.bufferevent* @downcast(%struct.bufferevent_filtered* %79)
  %81 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %5, align 8
  %84 = getelementptr inbounds %struct.bufferevent_filtered, %struct.bufferevent_filtered* %83, i32 0, i32 3
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %6, align 4
  %90 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %5, align 8
  %91 = getelementptr inbounds %struct.bufferevent_filtered, %struct.bufferevent_filtered* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i32 %78(i32 %82, i32 %87, i32 %88, i32 %89, i32 %92)
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* @BEV_OK, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %75
  %98 = load i32*, i32** %7, align 8
  store i32 1, i32* %98, align 4
  store i32 1, i32* %11, align 4
  br label %99

99:                                               ; preds = %97, %75
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* @BEV_OK, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %123

104:                                              ; preds = %100
  %105 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %106 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @EV_WRITE, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %123

111:                                              ; preds = %104
  %112 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %113 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @evbuffer_get_length(i32 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %111
  %118 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %5, align 8
  %119 = load i32, i32* %6, align 4
  %120 = call i64 @be_underlying_writebuf_full(%struct.bufferevent_filtered* %118, i32 %119)
  %121 = icmp ne i64 %120, 0
  %122 = xor i1 %121, true
  br label %123

123:                                              ; preds = %117, %111, %104, %100
  %124 = phi i1 [ false, %111 ], [ false, %104 ], [ false, %100 ], [ %122, %117 ]
  br i1 %124, label %49, label %125

125:                                              ; preds = %123
  %126 = load i32, i32* %11, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %155

128:                                              ; preds = %125
  %129 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %130 = load i32, i32* @EV_WRITE, align 4
  %131 = call i32 @bufferevent_trigger_nolock_(%struct.bufferevent* %129, i32 %130, i32 0)
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* @BEV_OK, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %154

135:                                              ; preds = %128
  %136 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %137 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @EV_WRITE, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %154

142:                                              ; preds = %135
  %143 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %144 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @evbuffer_get_length(i32 %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %142
  %149 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %5, align 8
  %150 = load i32, i32* %6, align 4
  %151 = call i64 @be_underlying_writebuf_full(%struct.bufferevent_filtered* %149, i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %154, label %153

153:                                              ; preds = %148
  store i32 1, i32* %10, align 4
  br label %154

154:                                              ; preds = %153, %148, %142, %135, %128
  br label %155

155:                                              ; preds = %154, %125
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %10, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %48, label %159

159:                                              ; preds = %156
  %160 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %161 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %5, align 8
  %164 = getelementptr inbounds %struct.bufferevent_filtered, %struct.bufferevent_filtered* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @EVBUFFER_CB_ENABLED, align 4
  %167 = call i32 @evbuffer_cb_set_flags(i32 %162, i32 %165, i32 %166)
  %168 = load i32*, i32** %7, align 8
  %169 = load i32, i32* %168, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %159
  %172 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %173 = call i32 @BEV_RESET_GENERIC_WRITE_TIMEOUT(%struct.bufferevent* %172)
  br label %174

174:                                              ; preds = %171, %159
  %175 = load i32, i32* %8, align 4
  store i32 %175, i32* %4, align 4
  br label %176

176:                                              ; preds = %174, %37
  %177 = load i32, i32* %4, align 4
  ret i32 %177
}

declare dso_local %struct.bufferevent* @downcast(%struct.bufferevent_filtered*) #1

declare dso_local i64 @be_underlying_writebuf_full(%struct.bufferevent_filtered*, i32) #1

declare dso_local i32 @evbuffer_get_length(i32) #1

declare dso_local i32 @evbuffer_cb_set_flags(i32, i32, i32) #1

declare dso_local i32 @bufferevent_trigger_nolock_(%struct.bufferevent*, i32, i32) #1

declare dso_local i32 @BEV_RESET_GENERIC_WRITE_TIMEOUT(%struct.bufferevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
