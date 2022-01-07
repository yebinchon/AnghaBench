; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_openssl.c_do_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_openssl.c_do_read.c"
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
  br label %173

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
  br label %173

46:                                               ; preds = %37
  store i32 0, i32* %10, align 4
  br label %47

47:                                               ; preds = %152, %46
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %155

51:                                               ; preds = %47
  %52 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %53 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %155

58:                                               ; preds = %51
  %59 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %60 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [2 x %struct.evbuffer_iovec], [2 x %struct.evbuffer_iovec]* %13, i64 0, i64 %63
  %65 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [2 x %struct.evbuffer_iovec], [2 x %struct.evbuffer_iovec]* %13, i64 0, i64 %68
  %70 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @SSL_read(i32 %61, i32 %66, i32 %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %102

75:                                               ; preds = %58
  %76 = load i32, i32* @OP_MADE_PROGRESS, align 4
  %77 = load i32, i32* %14, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %14, align 4
  %79 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %80 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %75
  %84 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %85 = call i64 @clear_rbow(%struct.bufferevent_openssl* %84)
  %86 = icmp slt i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %83
  %88 = load i32, i32* @OP_ERR, align 4
  %89 = load i32, i32* %14, align 4
  %90 = or i32 %88, %89
  store i32 %90, i32* %3, align 4
  br label %173

91:                                               ; preds = %83
  br label %92

92:                                               ; preds = %91, %75
  %93 = load i32, i32* %11, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [2 x %struct.evbuffer_iovec], [2 x %struct.evbuffer_iovec]* %13, i64 0, i64 %97
  %99 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %98, i32 0, i32 0
  store i32 %95, i32* %99, align 8
  %100 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %101 = call i32 @decrement_buckets(%struct.bufferevent_openssl* %100)
  br label %151

102:                                              ; preds = %58
  %103 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %104 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @SSL_get_error(i32 %105, i32 %106)
  store i32 %107, i32* %15, align 4
  %108 = load i32, i32* %15, align 4
  %109 = call i32 @print_err(i32 %108)
  %110 = load i32, i32* %15, align 4
  switch i32 %110, label %141 [
    i32 129, label %111
    i32 128, label %126
  ]

111:                                              ; preds = %102
  %112 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %113 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %111
  %117 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %118 = call i64 @clear_rbow(%struct.bufferevent_openssl* %117)
  %119 = icmp slt i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %116
  %121 = load i32, i32* @OP_ERR, align 4
  %122 = load i32, i32* %14, align 4
  %123 = or i32 %121, %122
  store i32 %123, i32* %3, align 4
  br label %173

124:                                              ; preds = %116
  br label %125

125:                                              ; preds = %124, %111
  br label %147

126:                                              ; preds = %102
  %127 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %128 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %140, label %131

131:                                              ; preds = %126
  %132 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %133 = call i32 @set_rbow(%struct.bufferevent_openssl* %132)
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %131
  %136 = load i32, i32* @OP_ERR, align 4
  %137 = load i32, i32* %14, align 4
  %138 = or i32 %136, %137
  store i32 %138, i32* %3, align 4
  br label %173

139:                                              ; preds = %131
  br label %140

140:                                              ; preds = %139, %126
  br label %147

141:                                              ; preds = %102
  %142 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %143 = load i32, i32* @BEV_EVENT_READING, align 4
  %144 = load i32, i32* %15, align 4
  %145 = load i32, i32* %8, align 4
  %146 = call i32 @conn_closed(%struct.bufferevent_openssl* %142, i32 %143, i32 %144, i32 %145)
  br label %147

147:                                              ; preds = %141, %140, %125
  %148 = load i32, i32* @OP_BLOCKED, align 4
  %149 = load i32, i32* %14, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %14, align 4
  br label %155

151:                                              ; preds = %92
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %10, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %10, align 4
  br label %47

155:                                              ; preds = %147, %57, %47
  %156 = load i32, i32* %11, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %171

158:                                              ; preds = %155
  %159 = load %struct.evbuffer*, %struct.evbuffer** %7, align 8
  %160 = getelementptr inbounds [2 x %struct.evbuffer_iovec], [2 x %struct.evbuffer_iovec]* %13, i64 0, i64 0
  %161 = load i32, i32* %11, align 4
  %162 = call i32 @evbuffer_commit_space(%struct.evbuffer* %159, %struct.evbuffer_iovec* %160, i32 %161)
  %163 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %164 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %158
  %168 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %169 = call i32 @BEV_RESET_GENERIC_READ_TIMEOUT(%struct.bufferevent* %168)
  br label %170

170:                                              ; preds = %167, %158
  br label %171

171:                                              ; preds = %170, %155
  %172 = load i32, i32* %14, align 4
  store i32 %172, i32* %3, align 4
  br label %173

173:                                              ; preds = %171, %135, %120, %87, %44, %27
  %174 = load i32, i32* %3, align 4
  ret i32 %174
}

declare dso_local i32 @bufferevent_get_read_max_(%struct.TYPE_2__*) #1

declare dso_local i32 @evbuffer_reserve_space(%struct.evbuffer*, i32, %struct.evbuffer_iovec*, i32) #1

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
