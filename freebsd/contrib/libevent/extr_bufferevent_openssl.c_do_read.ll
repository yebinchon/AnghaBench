; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent_openssl.c_do_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent_openssl.c_do_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent_openssl = type { i64, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.bufferevent }
%struct.bufferevent = type { %struct.evbuffer* }
%struct.evbuffer = type { i32 }
%struct.evbuffer_iovec = type { i32, i32 }

@OP_ERR = common dso_local global i32 0, align 4
@OP_MADE_PROGRESS = common dso_local global i32 0, align 4
@BEV_EVENT_READING = common dso_local global i32 0, align 4
@OP_BLOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bufferevent_openssl*, i32)* @do_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_read(%struct.bufferevent_openssl* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bufferevent_openssl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bufferevent*, align 8
  %7 = alloca %struct.evbuffer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [2 x %struct.evbuffer_iovec], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.bufferevent_openssl* %0, %struct.bufferevent_openssl** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %17 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  store %struct.bufferevent* %18, %struct.bufferevent** %6, align 8
  %19 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %20 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %19, i32 0, i32 0
  %21 = load %struct.evbuffer*, %struct.evbuffer** %20, align 8
  store %struct.evbuffer* %21, %struct.evbuffer** %7, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %14, align 4
  %22 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %23 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %174

28:                                               ; preds = %2
  %29 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %30 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %29, i32 0, i32 3
  %31 = call i32 @bufferevent_get_read_max_(%struct.TYPE_2__* %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* %12, align 4
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %35, %28
  %38 = load %struct.evbuffer*, %struct.evbuffer** %7, align 8
  %39 = load i32, i32* %5, align 4
  %40 = getelementptr inbounds [2 x %struct.evbuffer_iovec], [2 x %struct.evbuffer_iovec]* %13, i64 0, i64 0
  %41 = call i32 @evbuffer_reserve_space(%struct.evbuffer* %38, i32 %39, %struct.evbuffer_iovec* %40, i32 2)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* @OP_ERR, align 4
  store i32 %45, i32* %3, align 4
  br label %174

46:                                               ; preds = %37
  store i32 0, i32* %10, align 4
  br label %47

47:                                               ; preds = %153, %46
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %156

51:                                               ; preds = %47
  %52 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %53 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %156

58:                                               ; preds = %51
  %59 = call i32 (...) @ERR_clear_error()
  %60 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %61 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [2 x %struct.evbuffer_iovec], [2 x %struct.evbuffer_iovec]* %13, i64 0, i64 %64
  %66 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [2 x %struct.evbuffer_iovec], [2 x %struct.evbuffer_iovec]* %13, i64 0, i64 %69
  %71 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @SSL_read(i32 %62, i32 %67, i32 %72)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %103

76:                                               ; preds = %58
  %77 = load i32, i32* @OP_MADE_PROGRESS, align 4
  %78 = load i32, i32* %14, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %14, align 4
  %80 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %81 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %76
  %85 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %86 = call i64 @clear_rbow(%struct.bufferevent_openssl* %85)
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = load i32, i32* @OP_ERR, align 4
  %90 = load i32, i32* %14, align 4
  %91 = or i32 %89, %90
  store i32 %91, i32* %3, align 4
  br label %174

92:                                               ; preds = %84
  br label %93

93:                                               ; preds = %92, %76
  %94 = load i32, i32* %11, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [2 x %struct.evbuffer_iovec], [2 x %struct.evbuffer_iovec]* %13, i64 0, i64 %98
  %100 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %99, i32 0, i32 0
  store i32 %96, i32* %100, align 8
  %101 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %102 = call i32 @decrement_buckets(%struct.bufferevent_openssl* %101)
  br label %152

103:                                              ; preds = %58
  %104 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %105 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %8, align 4
  %108 = call i32 @SSL_get_error(i32 %106, i32 %107)
  store i32 %108, i32* %15, align 4
  %109 = load i32, i32* %15, align 4
  %110 = call i32 @print_err(i32 %109)
  %111 = load i32, i32* %15, align 4
  switch i32 %111, label %142 [
    i32 129, label %112
    i32 128, label %127
  ]

112:                                              ; preds = %103
  %113 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %114 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %112
  %118 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %119 = call i64 @clear_rbow(%struct.bufferevent_openssl* %118)
  %120 = icmp slt i64 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %117
  %122 = load i32, i32* @OP_ERR, align 4
  %123 = load i32, i32* %14, align 4
  %124 = or i32 %122, %123
  store i32 %124, i32* %3, align 4
  br label %174

125:                                              ; preds = %117
  br label %126

126:                                              ; preds = %125, %112
  br label %148

127:                                              ; preds = %103
  %128 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %129 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %141, label %132

132:                                              ; preds = %127
  %133 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %134 = call i32 @set_rbow(%struct.bufferevent_openssl* %133)
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %132
  %137 = load i32, i32* @OP_ERR, align 4
  %138 = load i32, i32* %14, align 4
  %139 = or i32 %137, %138
  store i32 %139, i32* %3, align 4
  br label %174

140:                                              ; preds = %132
  br label %141

141:                                              ; preds = %140, %127
  br label %148

142:                                              ; preds = %103
  %143 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %144 = load i32, i32* @BEV_EVENT_READING, align 4
  %145 = load i32, i32* %15, align 4
  %146 = load i32, i32* %8, align 4
  %147 = call i32 @conn_closed(%struct.bufferevent_openssl* %143, i32 %144, i32 %145, i32 %146)
  br label %148

148:                                              ; preds = %142, %141, %126
  %149 = load i32, i32* @OP_BLOCKED, align 4
  %150 = load i32, i32* %14, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %14, align 4
  br label %156

152:                                              ; preds = %93
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %10, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %10, align 4
  br label %47

156:                                              ; preds = %148, %57, %47
  %157 = load i32, i32* %11, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %172

159:                                              ; preds = %156
  %160 = load %struct.evbuffer*, %struct.evbuffer** %7, align 8
  %161 = getelementptr inbounds [2 x %struct.evbuffer_iovec], [2 x %struct.evbuffer_iovec]* %13, i64 0, i64 0
  %162 = load i32, i32* %11, align 4
  %163 = call i32 @evbuffer_commit_space(%struct.evbuffer* %160, %struct.evbuffer_iovec* %161, i32 %162)
  %164 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %165 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %159
  %169 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %170 = call i32 @BEV_RESET_GENERIC_READ_TIMEOUT(%struct.bufferevent* %169)
  br label %171

171:                                              ; preds = %168, %159
  br label %172

172:                                              ; preds = %171, %156
  %173 = load i32, i32* %14, align 4
  store i32 %173, i32* %3, align 4
  br label %174

174:                                              ; preds = %172, %136, %121, %88, %44, %27
  %175 = load i32, i32* %3, align 4
  ret i32 %175
}

declare dso_local i32 @bufferevent_get_read_max_(%struct.TYPE_2__*) #1

declare dso_local i32 @evbuffer_reserve_space(%struct.evbuffer*, i32, %struct.evbuffer_iovec*, i32) #1

declare dso_local i32 @ERR_clear_error(...) #1

declare dso_local i32 @SSL_read(i32, i32, i32) #1

declare dso_local i64 @clear_rbow(%struct.bufferevent_openssl*) #1

declare dso_local i32 @decrement_buckets(%struct.bufferevent_openssl*) #1

declare dso_local i32 @SSL_get_error(i32, i32) #1

declare dso_local i32 @print_err(i32) #1

declare dso_local i32 @set_rbow(%struct.bufferevent_openssl*) #1

declare dso_local i32 @conn_closed(%struct.bufferevent_openssl*, i32, i32, i32) #1

declare dso_local i32 @evbuffer_commit_space(%struct.evbuffer*, %struct.evbuffer_iovec*, i32) #1

declare dso_local i32 @BEV_RESET_GENERIC_READ_TIMEOUT(%struct.bufferevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
