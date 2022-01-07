; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent_filter.c_be_filter_process_output.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent_filter.c_be_filter_process_output.c"
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
  br label %177

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39, %3
  %41 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %42 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %5, align 8
  %45 = getelementptr inbounds %struct.bufferevent_filtered, %struct.bufferevent_filtered* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @EVBUFFER_CB_ENABLED, align 4
  %48 = call i32 @evbuffer_cb_clear_flags(i32 %43, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %157, %40
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %50

50:                                               ; preds = %124, %49
  store i32 -1, i32* %12, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @BEV_NORMAL, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %76

54:                                               ; preds = %50
  %55 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %5, align 8
  %56 = getelementptr inbounds %struct.bufferevent_filtered, %struct.bufferevent_filtered* %55, i32 0, i32 3
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %54
  %63 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %5, align 8
  %64 = getelementptr inbounds %struct.bufferevent_filtered, %struct.bufferevent_filtered* %63, i32 0, i32 3
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %5, align 8
  %70 = getelementptr inbounds %struct.bufferevent_filtered, %struct.bufferevent_filtered* %69, i32 0, i32 3
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @evbuffer_get_length(i32 %73)
  %75 = sub nsw i32 %68, %74
  store i32 %75, i32* %12, align 4
  br label %76

76:                                               ; preds = %62, %54, %50
  %77 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %5, align 8
  %78 = getelementptr inbounds %struct.bufferevent_filtered, %struct.bufferevent_filtered* %77, i32 0, i32 0
  %79 = load i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)** %78, align 8
  %80 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %5, align 8
  %81 = call %struct.bufferevent* @downcast(%struct.bufferevent_filtered* %80)
  %82 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %5, align 8
  %85 = getelementptr inbounds %struct.bufferevent_filtered, %struct.bufferevent_filtered* %84, i32 0, i32 3
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* %6, align 4
  %91 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %5, align 8
  %92 = getelementptr inbounds %struct.bufferevent_filtered, %struct.bufferevent_filtered* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = call i32 %79(i32 %83, i32 %88, i32 %89, i32 %90, i32 %93)
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* @BEV_OK, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %76
  %99 = load i32*, i32** %7, align 8
  store i32 1, i32* %99, align 4
  store i32 1, i32* %11, align 4
  br label %100

100:                                              ; preds = %98, %76
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* @BEV_OK, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %124

105:                                              ; preds = %101
  %106 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %107 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @EV_WRITE, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %124

112:                                              ; preds = %105
  %113 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %114 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @evbuffer_get_length(i32 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %112
  %119 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %5, align 8
  %120 = load i32, i32* %6, align 4
  %121 = call i64 @be_underlying_writebuf_full(%struct.bufferevent_filtered* %119, i32 %120)
  %122 = icmp ne i64 %121, 0
  %123 = xor i1 %122, true
  br label %124

124:                                              ; preds = %118, %112, %105, %101
  %125 = phi i1 [ false, %112 ], [ false, %105 ], [ false, %101 ], [ %123, %118 ]
  br i1 %125, label %50, label %126

126:                                              ; preds = %124
  %127 = load i32, i32* %11, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %156

129:                                              ; preds = %126
  %130 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %131 = load i32, i32* @EV_WRITE, align 4
  %132 = call i32 @bufferevent_trigger_nolock_(%struct.bufferevent* %130, i32 %131, i32 0)
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* @BEV_OK, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %155

136:                                              ; preds = %129
  %137 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %138 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @EV_WRITE, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %155

143:                                              ; preds = %136
  %144 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %145 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @evbuffer_get_length(i32 %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %143
  %150 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %5, align 8
  %151 = load i32, i32* %6, align 4
  %152 = call i64 @be_underlying_writebuf_full(%struct.bufferevent_filtered* %150, i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %155, label %154

154:                                              ; preds = %149
  store i32 1, i32* %10, align 4
  br label %155

155:                                              ; preds = %154, %149, %143, %136, %129
  br label %156

156:                                              ; preds = %155, %126
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %10, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %49, label %160

160:                                              ; preds = %157
  %161 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %162 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %5, align 8
  %165 = getelementptr inbounds %struct.bufferevent_filtered, %struct.bufferevent_filtered* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @EVBUFFER_CB_ENABLED, align 4
  %168 = call i32 @evbuffer_cb_set_flags(i32 %163, i32 %166, i32 %167)
  %169 = load i32*, i32** %7, align 8
  %170 = load i32, i32* %169, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %160
  %173 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %174 = call i32 @BEV_RESET_GENERIC_WRITE_TIMEOUT(%struct.bufferevent* %173)
  br label %175

175:                                              ; preds = %172, %160
  %176 = load i32, i32* %8, align 4
  store i32 %176, i32* %4, align 4
  br label %177

177:                                              ; preds = %175, %37
  %178 = load i32, i32* %4, align 4
  ret i32 %178
}

declare dso_local %struct.bufferevent* @downcast(%struct.bufferevent_filtered*) #1

declare dso_local i64 @be_underlying_writebuf_full(%struct.bufferevent_filtered*, i32) #1

declare dso_local i32 @evbuffer_get_length(i32) #1

declare dso_local i32 @evbuffer_cb_clear_flags(i32, i32, i32) #1

declare dso_local i32 @bufferevent_trigger_nolock_(%struct.bufferevent*, i32, i32) #1

declare dso_local i32 @evbuffer_cb_set_flags(i32, i32, i32) #1

declare dso_local i32 @BEV_RESET_GENERIC_WRITE_TIMEOUT(%struct.bufferevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
