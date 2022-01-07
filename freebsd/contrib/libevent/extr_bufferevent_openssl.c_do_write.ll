; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent_openssl.c_do_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent_openssl.c_do_write.c"
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
@BEV_OPT_DEFER_CALLBACKS = common dso_local global i32 0, align 4
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
  br label %203

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

49:                                               ; preds = %179, %48
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %182

53:                                               ; preds = %49
  %54 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %55 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %182

60:                                               ; preds = %53
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [8 x %struct.evbuffer_iovec], [8 x %struct.evbuffer_iovec]* %12, i64 0, i64 %62
  %64 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 16
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %179

68:                                               ; preds = %60
  %69 = call i32 (...) @ERR_clear_error()
  %70 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %71 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [8 x %struct.evbuffer_iovec], [8 x %struct.evbuffer_iovec]* %12, i64 0, i64 %74
  %76 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [8 x %struct.evbuffer_iovec], [8 x %struct.evbuffer_iovec]* %12, i64 0, i64 %79
  %81 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 16
  %83 = call i32 @SSL_write(i32 %72, i32 %77, i64 %82)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %111

86:                                               ; preds = %68
  %87 = load i32, i32* @OP_MADE_PROGRESS, align 4
  %88 = load i32, i32* %13, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %13, align 4
  %90 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %91 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %86
  %95 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %96 = call i64 @clear_wbor(%struct.bufferevent_openssl* %95)
  %97 = icmp slt i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %94
  %99 = load i32, i32* @OP_ERR, align 4
  %100 = load i32, i32* %13, align 4
  %101 = or i32 %99, %100
  store i32 %101, i32* %3, align 4
  br label %203

102:                                              ; preds = %94
  br label %103

103:                                              ; preds = %102, %86
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* %9, align 4
  %106 = add nsw i32 %105, %104
  store i32 %106, i32* %9, align 4
  %107 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %108 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %107, i32 0, i32 0
  store i32 -1, i32* %108, align 8
  %109 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %110 = call i32 @decrement_buckets(%struct.bufferevent_openssl* %109)
  br label %178

111:                                              ; preds = %68
  %112 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %113 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @SSL_get_error(i32 %114, i32 %115)
  store i32 %116, i32* %14, align 4
  %117 = load i32, i32* %14, align 4
  %118 = call i32 @print_err(i32 %117)
  %119 = load i32, i32* %14, align 4
  switch i32 %119, label %166 [
    i32 128, label %120
    i32 129, label %143
  ]

120:                                              ; preds = %111
  %121 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %122 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %120
  %126 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %127 = call i64 @clear_wbor(%struct.bufferevent_openssl* %126)
  %128 = icmp slt i64 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %125
  %130 = load i32, i32* @OP_ERR, align 4
  %131 = load i32, i32* %13, align 4
  %132 = or i32 %130, %131
  store i32 %132, i32* %3, align 4
  br label %203

133:                                              ; preds = %125
  br label %134

134:                                              ; preds = %133, %120
  %135 = load i32, i32* %6, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [8 x %struct.evbuffer_iovec], [8 x %struct.evbuffer_iovec]* %12, i64 0, i64 %136
  %138 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 16
  %140 = trunc i64 %139 to i32
  %141 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %142 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 8
  br label %174

143:                                              ; preds = %111
  %144 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %145 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %157, label %148

148:                                              ; preds = %143
  %149 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %150 = call i32 @set_wbor(%struct.bufferevent_openssl* %149)
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %148
  %153 = load i32, i32* @OP_ERR, align 4
  %154 = load i32, i32* %13, align 4
  %155 = or i32 %153, %154
  store i32 %155, i32* %3, align 4
  br label %203

156:                                              ; preds = %148
  br label %157

157:                                              ; preds = %156, %143
  %158 = load i32, i32* %6, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [8 x %struct.evbuffer_iovec], [8 x %struct.evbuffer_iovec]* %12, i64 0, i64 %159
  %161 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 16
  %163 = trunc i64 %162 to i32
  %164 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %165 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %164, i32 0, i32 0
  store i32 %163, i32* %165, align 8
  br label %174

166:                                              ; preds = %111
  %167 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %168 = load i32, i32* @BEV_EVENT_WRITING, align 4
  %169 = load i32, i32* %14, align 4
  %170 = load i32, i32* %7, align 4
  %171 = call i32 @conn_closed(%struct.bufferevent_openssl* %167, i32 %168, i32 %169, i32 %170)
  %172 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %173 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %172, i32 0, i32 0
  store i32 -1, i32* %173, align 8
  br label %174

174:                                              ; preds = %166, %157, %134
  %175 = load i32, i32* @OP_BLOCKED, align 4
  %176 = load i32, i32* %13, align 4
  %177 = or i32 %176, %175
  store i32 %177, i32* %13, align 4
  br label %182

178:                                              ; preds = %103
  br label %179

179:                                              ; preds = %178, %67
  %180 = load i32, i32* %6, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %6, align 4
  br label %49

182:                                              ; preds = %174, %59, %49
  %183 = load i32, i32* %9, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %201

185:                                              ; preds = %182
  %186 = load %struct.evbuffer*, %struct.evbuffer** %11, align 8
  %187 = load i32, i32* %9, align 4
  %188 = call i32 @evbuffer_drain(%struct.evbuffer* %186, i32 %187)
  %189 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %190 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %185
  %194 = load %struct.bufferevent*, %struct.bufferevent** %10, align 8
  %195 = call i32 @BEV_RESET_GENERIC_WRITE_TIMEOUT(%struct.bufferevent* %194)
  br label %196

196:                                              ; preds = %193, %185
  %197 = load %struct.bufferevent*, %struct.bufferevent** %10, align 8
  %198 = load i32, i32* @EV_WRITE, align 4
  %199 = load i32, i32* @BEV_OPT_DEFER_CALLBACKS, align 4
  %200 = call i32 @bufferevent_trigger_nolock_(%struct.bufferevent* %197, i32 %198, i32 %199)
  br label %201

201:                                              ; preds = %196, %182
  %202 = load i32, i32* %13, align 4
  store i32 %202, i32* %3, align 4
  br label %203

203:                                              ; preds = %201, %152, %129, %98, %40
  %204 = load i32, i32* %3, align 4
  ret i32 %204
}

declare dso_local i32 @bufferevent_get_write_max_(%struct.TYPE_2__*) #1

declare dso_local i32 @evbuffer_peek(%struct.evbuffer*, i32, i32*, %struct.evbuffer_iovec*, i32) #1

declare dso_local i32 @ERR_clear_error(...) #1

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
