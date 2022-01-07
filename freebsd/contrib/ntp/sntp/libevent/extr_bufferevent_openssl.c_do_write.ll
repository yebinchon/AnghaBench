; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_openssl.c_do_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_openssl.c_do_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent_openssl = type { i32, i64, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.bufferevent }
%struct.bufferevent = type { %struct.evbuffer* }
%struct.evbuffer = type { i32 }
%struct.evbuffer_iovec = type { i64, i32 }

@OP_ERR = common dso_local global i32 0, align 4
@OP_MADE_PROGRESS = common dso_local global i32 0, align 4
@BEV_EVENT_WRITING = common dso_local global i32 0, align 4
@OP_BLOCKED = common dso_local global i32 0, align 4
@EV_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bufferevent_openssl*, i32)* @do_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_write(%struct.bufferevent_openssl* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bufferevent_openssl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bufferevent*, align 8
  %11 = alloca %struct.evbuffer*, align 8
  %12 = alloca [8 x %struct.evbuffer_iovec], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.bufferevent_openssl* %0, %struct.bufferevent_openssl** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %9, align 4
  %15 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %16 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  store %struct.bufferevent* %17, %struct.bufferevent** %10, align 8
  %18 = load %struct.bufferevent*, %struct.bufferevent** %10, align 8
  %19 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %18, i32 0, i32 0
  %20 = load %struct.evbuffer*, %struct.evbuffer** %19, align 8
  store %struct.evbuffer* %20, %struct.evbuffer** %11, align 8
  store i32 0, i32* %13, align 4
  %21 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %22 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %27 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %5, align 4
  br label %33

29:                                               ; preds = %2
  %30 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %31 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %30, i32 0, i32 4
  %32 = call i32 @bufferevent_get_write_max_(%struct.TYPE_2__* %31)
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %29, %25
  %34 = load %struct.evbuffer*, %struct.evbuffer** %11, align 8
  %35 = load i32, i32* %5, align 4
  %36 = getelementptr inbounds [8 x %struct.evbuffer_iovec], [8 x %struct.evbuffer_iovec]* %12, i64 0, i64 0
  %37 = call i32 @evbuffer_peek(%struct.evbuffer* %34, i32 %35, i32* null, %struct.evbuffer_iovec* %36, i32 8)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load i32, i32* @OP_ERR, align 4
  %42 = load i32, i32* %13, align 4
  %43 = or i32 %41, %42
  store i32 %43, i32* %3, align 4
  br label %201

44:                                               ; preds = %33
  %45 = load i32, i32* %8, align 4
  %46 = icmp sgt i32 %45, 8
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 8, i32* %8, align 4
  br label %48

48:                                               ; preds = %47, %44
  store i32 0, i32* %6, align 4
  br label %49

49:                                               ; preds = %178, %48
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %181

53:                                               ; preds = %49
  %54 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %55 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %181

60:                                               ; preds = %53
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [8 x %struct.evbuffer_iovec], [8 x %struct.evbuffer_iovec]* %12, i64 0, i64 %62
  %64 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 16
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %178

68:                                               ; preds = %60
  %69 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %70 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [8 x %struct.evbuffer_iovec], [8 x %struct.evbuffer_iovec]* %12, i64 0, i64 %73
  %75 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [8 x %struct.evbuffer_iovec], [8 x %struct.evbuffer_iovec]* %12, i64 0, i64 %78
  %80 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 16
  %82 = call i32 @SSL_write(i32 %71, i32 %76, i64 %81)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %110

85:                                               ; preds = %68
  %86 = load i32, i32* @OP_MADE_PROGRESS, align 4
  %87 = load i32, i32* %13, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %13, align 4
  %89 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %90 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %85
  %94 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %95 = call i64 @clear_wbor(%struct.bufferevent_openssl* %94)
  %96 = icmp slt i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %93
  %98 = load i32, i32* @OP_ERR, align 4
  %99 = load i32, i32* %13, align 4
  %100 = or i32 %98, %99
  store i32 %100, i32* %3, align 4
  br label %201

101:                                              ; preds = %93
  br label %102

102:                                              ; preds = %101, %85
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* %9, align 4
  %105 = add nsw i32 %104, %103
  store i32 %105, i32* %9, align 4
  %106 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %107 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %106, i32 0, i32 0
  store i32 -1, i32* %107, align 8
  %108 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %109 = call i32 @decrement_buckets(%struct.bufferevent_openssl* %108)
  br label %177

110:                                              ; preds = %68
  %111 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %112 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %7, align 4
  %115 = call i32 @SSL_get_error(i32 %113, i32 %114)
  store i32 %115, i32* %14, align 4
  %116 = load i32, i32* %14, align 4
  %117 = call i32 @print_err(i32 %116)
  %118 = load i32, i32* %14, align 4
  switch i32 %118, label %165 [
    i32 128, label %119
    i32 129, label %142
  ]

119:                                              ; preds = %110
  %120 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %121 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %119
  %125 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %126 = call i64 @clear_wbor(%struct.bufferevent_openssl* %125)
  %127 = icmp slt i64 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %124
  %129 = load i32, i32* @OP_ERR, align 4
  %130 = load i32, i32* %13, align 4
  %131 = or i32 %129, %130
  store i32 %131, i32* %3, align 4
  br label %201

132:                                              ; preds = %124
  br label %133

133:                                              ; preds = %132, %119
  %134 = load i32, i32* %6, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [8 x %struct.evbuffer_iovec], [8 x %struct.evbuffer_iovec]* %12, i64 0, i64 %135
  %137 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 16
  %139 = trunc i64 %138 to i32
  %140 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %141 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 8
  br label %173

142:                                              ; preds = %110
  %143 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %144 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %156, label %147

147:                                              ; preds = %142
  %148 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %149 = call i32 @set_wbor(%struct.bufferevent_openssl* %148)
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %147
  %152 = load i32, i32* @OP_ERR, align 4
  %153 = load i32, i32* %13, align 4
  %154 = or i32 %152, %153
  store i32 %154, i32* %3, align 4
  br label %201

155:                                              ; preds = %147
  br label %156

156:                                              ; preds = %155, %142
  %157 = load i32, i32* %6, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [8 x %struct.evbuffer_iovec], [8 x %struct.evbuffer_iovec]* %12, i64 0, i64 %158
  %160 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 16
  %162 = trunc i64 %161 to i32
  %163 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %164 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %163, i32 0, i32 0
  store i32 %162, i32* %164, align 8
  br label %173

165:                                              ; preds = %110
  %166 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %167 = load i32, i32* @BEV_EVENT_WRITING, align 4
  %168 = load i32, i32* %14, align 4
  %169 = load i32, i32* %7, align 4
  %170 = call i32 @conn_closed(%struct.bufferevent_openssl* %166, i32 %167, i32 %168, i32 %169)
  %171 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %172 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %171, i32 0, i32 0
  store i32 -1, i32* %172, align 8
  br label %173

173:                                              ; preds = %165, %156, %133
  %174 = load i32, i32* @OP_BLOCKED, align 4
  %175 = load i32, i32* %13, align 4
  %176 = or i32 %175, %174
  store i32 %176, i32* %13, align 4
  br label %181

177:                                              ; preds = %102
  br label %178

178:                                              ; preds = %177, %67
  %179 = load i32, i32* %6, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %6, align 4
  br label %49

181:                                              ; preds = %173, %59, %49
  %182 = load i32, i32* %9, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %199

184:                                              ; preds = %181
  %185 = load %struct.evbuffer*, %struct.evbuffer** %11, align 8
  %186 = load i32, i32* %9, align 4
  %187 = call i32 @evbuffer_drain(%struct.evbuffer* %185, i32 %186)
  %188 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %189 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %184
  %193 = load %struct.bufferevent*, %struct.bufferevent** %10, align 8
  %194 = call i32 @BEV_RESET_GENERIC_WRITE_TIMEOUT(%struct.bufferevent* %193)
  br label %195

195:                                              ; preds = %192, %184
  %196 = load %struct.bufferevent*, %struct.bufferevent** %10, align 8
  %197 = load i32, i32* @EV_WRITE, align 4
  %198 = call i32 @bufferevent_trigger_nolock_(%struct.bufferevent* %196, i32 %197, i32 0)
  br label %199

199:                                              ; preds = %195, %181
  %200 = load i32, i32* %13, align 4
  store i32 %200, i32* %3, align 4
  br label %201

201:                                              ; preds = %199, %151, %128, %97, %40
  %202 = load i32, i32* %3, align 4
  ret i32 %202
}

declare dso_local i32 @bufferevent_get_write_max_(%struct.TYPE_2__*) #1

declare dso_local i32 @evbuffer_peek(%struct.evbuffer*, i32, i32*, %struct.evbuffer_iovec*, i32) #1

declare dso_local i32 @SSL_write(i32, i32, i64) #1

declare dso_local i64 @clear_wbor(%struct.bufferevent_openssl*) #1

declare dso_local i32 @decrement_buckets(%struct.bufferevent_openssl*) #1

declare dso_local i32 @SSL_get_error(i32, i32) #1

declare dso_local i32 @print_err(i32) #1

declare dso_local i32 @set_wbor(%struct.bufferevent_openssl*) #1

declare dso_local i32 @conn_closed(%struct.bufferevent_openssl*, i32, i32, i32) #1

declare dso_local i32 @evbuffer_drain(%struct.evbuffer*, i32) #1

declare dso_local i32 @BEV_RESET_GENERIC_WRITE_TIMEOUT(%struct.bufferevent*) #1

declare dso_local i32 @bufferevent_trigger_nolock_(%struct.bufferevent*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
