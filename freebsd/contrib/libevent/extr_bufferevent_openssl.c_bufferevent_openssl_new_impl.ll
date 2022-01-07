; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent_openssl.c_bufferevent_openssl_new_impl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent_openssl.c_bufferevent_openssl_new_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_base = type { i32 }
%struct.bufferevent = type { i32 }
%struct.bufferevent_openssl = type { i32, i32, %struct.bufferevent_private, i32, i32*, %struct.bufferevent* }
%struct.bufferevent_private = type { %struct.bufferevent }

@BEV_OPT_THREADSAFE = common dso_local global i32 0, align 4
@bufferevent_ops_openssl = common dso_local global i32 0, align 4
@SSL_MODE_ACCEPT_MOVING_WRITE_BUFFER = common dso_local global i32 0, align 4
@be_openssl_outbuf_cb = common dso_local global i32 0, align 4
@EV_READ = common dso_local global i32 0, align 4
@EV_WRITE = common dso_local global i32 0, align 4
@BUFFEREVENT_SSL_OPEN = common dso_local global i32 0, align 4
@BEV_SUSPEND_FILT_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bufferevent* (%struct.event_base*, %struct.bufferevent*, i32, i32*, i32, i32)* @bufferevent_openssl_new_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bufferevent* @bufferevent_openssl_new_impl(%struct.event_base* %0, %struct.bufferevent* %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.bufferevent*, align 8
  %8 = alloca %struct.event_base*, align 8
  %9 = alloca %struct.bufferevent*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.bufferevent_openssl*, align 8
  %15 = alloca %struct.bufferevent_private*, align 8
  %16 = alloca i32, align 4
  store %struct.event_base* %0, %struct.event_base** %8, align 8
  store %struct.bufferevent* %1, %struct.bufferevent** %9, align 8
  store i32 %2, i32* %10, align 4
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
  %24 = load i32, i32* %10, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store %struct.bufferevent* null, %struct.bufferevent** %7, align 8
  br label %128

27:                                               ; preds = %23, %6
  %28 = call %struct.bufferevent_openssl* @mm_calloc(i32 1, i32 32)
  store %struct.bufferevent_openssl* %28, %struct.bufferevent_openssl** %14, align 8
  %29 = icmp ne %struct.bufferevent_openssl* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  br label %119

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
  br label %119

40:                                               ; preds = %31
  %41 = load i32*, i32** %11, align 8
  %42 = load i32, i32* @SSL_MODE_ACCEPT_MOVING_WRITE_BUFFER, align 4
  %43 = call i32 @SSL_set_mode(i32* %41, i32 %42)
  %44 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %45 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %14, align 8
  %46 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %45, i32 0, i32 5
  store %struct.bufferevent* %44, %struct.bufferevent** %46, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %14, align 8
  %49 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %48, i32 0, i32 4
  store i32* %47, i32** %49, align 8
  %50 = load %struct.bufferevent_private*, %struct.bufferevent_private** %15, align 8
  %51 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @be_openssl_outbuf_cb, align 4
  %55 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %14, align 8
  %56 = call i32 @evbuffer_add_cb(i32 %53, i32 %54, %struct.bufferevent_openssl* %55)
  %57 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %14, align 8
  %58 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 4
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
  %86 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %14, align 8
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @be_openssl_auto_fd(%struct.bufferevent_openssl* %86, i32 %87)
  store i32 %88, i32* %10, align 4
  %89 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %14, align 8
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* %10, align 4
  %92 = call i64 @be_openssl_set_fd(%struct.bufferevent_openssl* %89, i32 %90, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %78
  br label %119

95:                                               ; preds = %78
  %96 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %97 = icmp ne %struct.bufferevent* %96, null
  br i1 %97, label %98, label %115

98:                                               ; preds = %95
  %99 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %100 = load i32, i32* @EV_READ, align 4
  %101 = call i32 @bufferevent_setwatermark(%struct.bufferevent* %99, i32 %100, i32 0, i32 0)
  %102 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %103 = load i32, i32* @EV_READ, align 4
  %104 = load i32, i32* @EV_WRITE, align 4
  %105 = or i32 %103, %104
  %106 = call i32 @bufferevent_enable(%struct.bufferevent* %102, i32 %105)
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* @BUFFEREVENT_SSL_OPEN, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %98
  %111 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %112 = load i32, i32* @BEV_SUSPEND_FILT_READ, align 4
  %113 = call i32 @bufferevent_suspend_read_(%struct.bufferevent* %111, i32 %112)
  br label %114

114:                                              ; preds = %110, %98
  br label %115

115:                                              ; preds = %114, %95
  %116 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %14, align 8
  %117 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %117, i32 0, i32 0
  store %struct.bufferevent* %118, %struct.bufferevent** %7, align 8
  br label %128

119:                                              ; preds = %94, %39, %30
  %120 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %14, align 8
  %121 = icmp ne %struct.bufferevent_openssl* %120, null
  br i1 %121, label %122, label %127

122:                                              ; preds = %119
  %123 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %14, align 8
  %124 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %124, i32 0, i32 0
  %126 = call i32 @bufferevent_free(%struct.bufferevent* %125)
  br label %127

127:                                              ; preds = %122, %119
  store %struct.bufferevent* null, %struct.bufferevent** %7, align 8
  br label %128

128:                                              ; preds = %127, %115, %26
  %129 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  ret %struct.bufferevent* %129
}

declare dso_local %struct.bufferevent_openssl* @mm_calloc(i32, i32) #1

declare dso_local i64 @bufferevent_init_common_(%struct.bufferevent_private*, %struct.event_base*, i32*, i32) #1

declare dso_local i32 @SSL_set_mode(i32*, i32) #1

declare dso_local i32 @evbuffer_add_cb(i32, i32, %struct.bufferevent_openssl*) #1

declare dso_local i32 @bufferevent_enable_locking_(%struct.bufferevent*, i32*) #1

declare dso_local i32 @bufferevent_init_generic_timeout_cbs_(%struct.bufferevent*) #1

declare dso_local i32 @bufferevent_incref_(%struct.bufferevent*) #1

declare dso_local i32 @init_bio_counts(%struct.bufferevent_openssl*) #1

declare dso_local i32 @be_openssl_auto_fd(%struct.bufferevent_openssl*, i32) #1

declare dso_local i64 @be_openssl_set_fd(%struct.bufferevent_openssl*, i32, i32) #1

declare dso_local i32 @bufferevent_setwatermark(%struct.bufferevent*, i32, i32, i32) #1

declare dso_local i32 @bufferevent_enable(%struct.bufferevent*, i32) #1

declare dso_local i32 @bufferevent_suspend_read_(%struct.bufferevent*, i32) #1

declare dso_local i32 @bufferevent_free(%struct.bufferevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
