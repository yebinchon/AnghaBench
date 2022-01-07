; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_openssl.c_bufferevent_openssl_new_impl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_openssl.c_bufferevent_openssl_new_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_base = type { i32 }
%struct.bufferevent = type { i32, i32, i32, i32 }
%struct.bufferevent_openssl = type { i32, i32, %struct.bufferevent_private, i64, i32*, i32, %struct.bufferevent* }
%struct.bufferevent_private = type { %struct.bufferevent }

@BEV_OPT_THREADSAFE = common dso_local global i32 0, align 4
@bufferevent_ops_openssl = common dso_local global i32 0, align 4
@SSL_MODE_ACCEPT_MOVING_WRITE_BUFFER = common dso_local global i32 0, align 4
@be_openssl_outbuf_cb = common dso_local global i32 0, align 4
@EV_READ = common dso_local global i32 0, align 4
@EV_WRITE = common dso_local global i32 0, align 4
@BEV_SUSPEND_FILT_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bufferevent* (%struct.event_base*, %struct.bufferevent*, i64, i32*, i32, i32)* @bufferevent_openssl_new_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bufferevent* @bufferevent_openssl_new_impl(%struct.event_base* %0, %struct.bufferevent* %1, i64 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.bufferevent*, align 8
  %8 = alloca %struct.event_base*, align 8
  %9 = alloca %struct.bufferevent*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.bufferevent_openssl*, align 8
  %15 = alloca %struct.bufferevent_private*, align 8
  %16 = alloca i32, align 4
  store %struct.event_base* %0, %struct.event_base** %8, align 8
  store %struct.bufferevent* %1, %struct.bufferevent** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store %struct.bufferevent_openssl* null, %struct.bufferevent_openssl** %14, align 8
  store %struct.bufferevent_private* null, %struct.bufferevent_private** %15, align 8
  %17 = load i32, i32* %13, align 4
  %18 = load i32, i32* @BEV_OPT_THREADSAFE, align 4
  %19 = xor i32 %18, -1
  %20 = and i32 %17, %19
  store i32 %20, i32* %16, align 4
  %21 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %22 = icmp ne %struct.bufferevent* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %6
  %24 = load i64, i64* %10, align 8
  %25 = icmp sge i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store %struct.bufferevent* null, %struct.bufferevent** %7, align 8
  br label %183

27:                                               ; preds = %23, %6
  %28 = call %struct.bufferevent_openssl* @mm_calloc(i32 1, i32 56)
  store %struct.bufferevent_openssl* %28, %struct.bufferevent_openssl** %14, align 8
  %29 = icmp ne %struct.bufferevent_openssl* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  br label %174

31:                                               ; preds = %27
  %32 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %14, align 8
  %33 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %32, i32 0, i32 2
  store %struct.bufferevent_private* %33, %struct.bufferevent_private** %15, align 8
  %34 = load %struct.bufferevent_private*, %struct.bufferevent_private** %15, align 8
  %35 = load %struct.event_base*, %struct.event_base** %8, align 8
  %36 = load i32, i32* %16, align 4
  %37 = call i64 @bufferevent_init_common_(%struct.bufferevent_private* %34, %struct.event_base* %35, i32* @bufferevent_ops_openssl, i32 %36)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %174

40:                                               ; preds = %31
  %41 = load i32*, i32** %11, align 8
  %42 = load i32, i32* @SSL_MODE_ACCEPT_MOVING_WRITE_BUFFER, align 4
  %43 = call i32 @SSL_set_mode(i32* %41, i32 %42)
  %44 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %45 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %14, align 8
  %46 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %45, i32 0, i32 6
  store %struct.bufferevent* %44, %struct.bufferevent** %46, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %14, align 8
  %49 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %48, i32 0, i32 4
  store i32* %47, i32** %49, align 8
  %50 = load %struct.bufferevent_private*, %struct.bufferevent_private** %15, align 8
  %51 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @be_openssl_outbuf_cb, align 4
  %55 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %14, align 8
  %56 = call i32 @evbuffer_add_cb(i32 %53, i32 %54, %struct.bufferevent_openssl* %55)
  %57 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %14, align 8
  %58 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %57, i32 0, i32 5
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* @BEV_OPT_THREADSAFE, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %40
  %64 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %14, align 8
  %65 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %65, i32 0, i32 0
  %67 = call i32 @bufferevent_enable_locking_(%struct.bufferevent* %66, i32* null)
  br label %68

68:                                               ; preds = %63, %40
  %69 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %70 = icmp ne %struct.bufferevent* %69, null
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %14, align 8
  %73 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %73, i32 0, i32 0
  %75 = call i32 @bufferevent_init_generic_timeout_cbs_(%struct.bufferevent* %74)
  %76 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %77 = call i32 @bufferevent_incref_(%struct.bufferevent* %76)
  br label %78

78:                                               ; preds = %71, %68
  %79 = load i32, i32* %12, align 4
  %80 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %14, align 8
  %81 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %14, align 8
  %83 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %82, i32 0, i32 1
  store i32 -1, i32* %83, align 4
  %84 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %14, align 8
  %85 = call i32 @init_bio_counts(%struct.bufferevent_openssl* %84)
  %86 = load i32, i32* %12, align 4
  switch i32 %86, label %116 [
    i32 130, label %87
    i32 129, label %98
    i32 128, label %109
  ]

87:                                               ; preds = %78
  %88 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %14, align 8
  %89 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %88, i32 0, i32 4
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @SSL_set_accept_state(i32* %90)
  %92 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %14, align 8
  %93 = load i64, i64* %10, align 8
  %94 = call i32 @set_handshake_callbacks(%struct.bufferevent_openssl* %92, i64 %93)
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %87
  br label %174

97:                                               ; preds = %87
  br label %117

98:                                               ; preds = %78
  %99 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %14, align 8
  %100 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %99, i32 0, i32 4
  %101 = load i32*, i32** %100, align 8
  %102 = call i32 @SSL_set_connect_state(i32* %101)
  %103 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %14, align 8
  %104 = load i64, i64* %10, align 8
  %105 = call i32 @set_handshake_callbacks(%struct.bufferevent_openssl* %103, i64 %104)
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %98
  br label %174

108:                                              ; preds = %98
  br label %117

109:                                              ; preds = %78
  %110 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %14, align 8
  %111 = load i64, i64* %10, align 8
  %112 = call i32 @set_open_callbacks(%struct.bufferevent_openssl* %110, i64 %111)
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %109
  br label %174

115:                                              ; preds = %109
  br label %117

116:                                              ; preds = %78
  br label %174

117:                                              ; preds = %115, %108, %97
  %118 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %119 = icmp ne %struct.bufferevent* %118, null
  br i1 %119, label %120, label %136

120:                                              ; preds = %117
  %121 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %122 = load i32, i32* @EV_READ, align 4
  %123 = call i32 @bufferevent_setwatermark(%struct.bufferevent* %121, i32 %122, i32 0, i32 0)
  %124 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %125 = load i32, i32* @EV_READ, align 4
  %126 = load i32, i32* @EV_WRITE, align 4
  %127 = or i32 %125, %126
  %128 = call i32 @bufferevent_enable(%struct.bufferevent* %124, i32 %127)
  %129 = load i32, i32* %12, align 4
  %130 = icmp eq i32 %129, 128
  br i1 %130, label %131, label %135

131:                                              ; preds = %120
  %132 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %133 = load i32, i32* @BEV_SUSPEND_FILT_READ, align 4
  %134 = call i32 @bufferevent_suspend_read_(%struct.bufferevent* %132, i32 %133)
  br label %135

135:                                              ; preds = %131, %120
  br label %170

136:                                              ; preds = %117
  %137 = load i32, i32* @EV_READ, align 4
  %138 = load i32, i32* @EV_WRITE, align 4
  %139 = or i32 %137, %138
  %140 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %14, align 8
  %141 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %142, i32 0, i32 0
  store i32 %139, i32* %143, align 8
  %144 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %14, align 8
  %145 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %144, i32 0, i32 3
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %169

148:                                              ; preds = %136
  %149 = load i32, i32* %12, align 4
  %150 = icmp ne i32 %149, 128
  br i1 %150, label %151, label %160

151:                                              ; preds = %148
  %152 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %14, align 8
  %153 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %154, i32 0, i32 2
  %156 = call i64 @event_add(i32* %155, i32* null)
  %157 = icmp slt i64 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %151
  br label %174

159:                                              ; preds = %151
  br label %160

160:                                              ; preds = %159, %148
  %161 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %14, align 8
  %162 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %163, i32 0, i32 1
  %165 = call i64 @event_add(i32* %164, i32* null)
  %166 = icmp slt i64 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %160
  br label %174

168:                                              ; preds = %160
  br label %169

169:                                              ; preds = %168, %136
  br label %170

170:                                              ; preds = %169, %135
  %171 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %14, align 8
  %172 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %172, i32 0, i32 0
  store %struct.bufferevent* %173, %struct.bufferevent** %7, align 8
  br label %183

174:                                              ; preds = %167, %158, %116, %114, %107, %96, %39, %30
  %175 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %14, align 8
  %176 = icmp ne %struct.bufferevent_openssl* %175, null
  br i1 %176, label %177, label %182

177:                                              ; preds = %174
  %178 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %14, align 8
  %179 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %179, i32 0, i32 0
  %181 = call i32 @bufferevent_free(%struct.bufferevent* %180)
  br label %182

182:                                              ; preds = %177, %174
  store %struct.bufferevent* null, %struct.bufferevent** %7, align 8
  br label %183

183:                                              ; preds = %182, %170, %26
  %184 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  ret %struct.bufferevent* %184
}

declare dso_local %struct.bufferevent_openssl* @mm_calloc(i32, i32) #1

declare dso_local i64 @bufferevent_init_common_(%struct.bufferevent_private*, %struct.event_base*, i32*, i32) #1

declare dso_local i32 @SSL_set_mode(i32*, i32) #1

declare dso_local i32 @evbuffer_add_cb(i32, i32, %struct.bufferevent_openssl*) #1

declare dso_local i32 @bufferevent_enable_locking_(%struct.bufferevent*, i32*) #1

declare dso_local i32 @bufferevent_init_generic_timeout_cbs_(%struct.bufferevent*) #1

declare dso_local i32 @bufferevent_incref_(%struct.bufferevent*) #1

declare dso_local i32 @init_bio_counts(%struct.bufferevent_openssl*) #1

declare dso_local i32 @SSL_set_accept_state(i32*) #1

declare dso_local i32 @set_handshake_callbacks(%struct.bufferevent_openssl*, i64) #1

declare dso_local i32 @SSL_set_connect_state(i32*) #1

declare dso_local i32 @set_open_callbacks(%struct.bufferevent_openssl*, i64) #1

declare dso_local i32 @bufferevent_setwatermark(%struct.bufferevent*, i32, i32, i32) #1

declare dso_local i32 @bufferevent_enable(%struct.bufferevent*, i32) #1

declare dso_local i32 @bufferevent_suspend_read_(%struct.bufferevent*, i32) #1

declare dso_local i64 @event_add(i32*, i32*) #1

declare dso_local i32 @bufferevent_free(%struct.bufferevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
