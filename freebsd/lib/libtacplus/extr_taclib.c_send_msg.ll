; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libtacplus/extr_taclib.c_send_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libtacplus/extr_taclib.c_send_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tac_handle = type { i32, i64, i64, %struct.TYPE_2__*, i64, %struct.tac_msg }
%struct.TYPE_2__ = type { i64 }
%struct.tac_msg = type { i32, i32, i32 }
%struct.timeval = type { i64 }

@.str = private unnamed_addr constant [40 x i8] c"Attempt to send message out of sequence\00", align 1
@TAC_SINGLE_CONNECT = common dso_local global i32 0, align 4
@HDRSIZE = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"Network write error: %s\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"select: %s\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Network write timed out\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tac_handle*)* @send_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_msg(%struct.tac_handle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tac_handle*, align 8
  %4 = alloca %struct.timeval, align 8
  %5 = alloca %struct.tac_msg*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.timeval, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tac_handle* %0, %struct.tac_handle** %3, align 8
  %12 = load %struct.tac_handle*, %struct.tac_handle** %3, align 8
  %13 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = and i32 %14, 1
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.tac_handle*, %struct.tac_handle** %3, align 8
  %19 = call i32 (%struct.tac_handle*, i8*, ...) @generr(%struct.tac_handle* %18, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %148

20:                                               ; preds = %1
  %21 = load %struct.tac_handle*, %struct.tac_handle** %3, align 8
  %22 = call i32 @establish_connection(%struct.tac_handle* %21)
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 -1, i32* %2, align 4
  br label %148

25:                                               ; preds = %20
  %26 = load %struct.tac_handle*, %struct.tac_handle** %3, align 8
  %27 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %26, i32 0, i32 5
  store %struct.tac_msg* %27, %struct.tac_msg** %5, align 8
  %28 = load %struct.tac_handle*, %struct.tac_handle** %3, align 8
  %29 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 8
  %32 = load %struct.tac_msg*, %struct.tac_msg** %5, align 8
  %33 = getelementptr inbounds %struct.tac_msg, %struct.tac_msg* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.tac_msg*, %struct.tac_msg** %5, align 8
  %35 = getelementptr inbounds %struct.tac_msg, %struct.tac_msg* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %41

38:                                               ; preds = %25
  %39 = load %struct.tac_msg*, %struct.tac_msg** %5, align 8
  %40 = call i32 @gen_session_id(%struct.tac_msg* %39)
  br label %41

41:                                               ; preds = %38, %25
  %42 = load %struct.tac_handle*, %struct.tac_handle** %3, align 8
  %43 = load %struct.tac_msg*, %struct.tac_msg** %5, align 8
  %44 = call i32 @crypt_msg(%struct.tac_handle* %42, %struct.tac_msg* %43)
  %45 = load %struct.tac_handle*, %struct.tac_handle** %3, align 8
  %46 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %41
  %50 = load i32, i32* @TAC_SINGLE_CONNECT, align 4
  %51 = load %struct.tac_msg*, %struct.tac_msg** %5, align 8
  %52 = getelementptr inbounds %struct.tac_msg, %struct.tac_msg* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  br label %62

55:                                               ; preds = %41
  %56 = load i32, i32* @TAC_SINGLE_CONNECT, align 4
  %57 = xor i32 %56, -1
  %58 = load %struct.tac_msg*, %struct.tac_msg** %5, align 8
  %59 = getelementptr inbounds %struct.tac_msg, %struct.tac_msg* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, %57
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %55, %49
  %63 = call i32 @gettimeofday(%struct.timeval* %4, i32* null)
  %64 = load %struct.tac_handle*, %struct.tac_handle** %3, align 8
  %65 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %64, i32 0, i32 3
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load %struct.tac_handle*, %struct.tac_handle** %3, align 8
  %68 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %74, %72
  store i64 %75, i64* %73, align 8
  %76 = load i32, i32* @HDRSIZE, align 4
  %77 = load %struct.tac_msg*, %struct.tac_msg** %5, align 8
  %78 = getelementptr inbounds %struct.tac_msg, %struct.tac_msg* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @ntohl(i32 %79)
  %81 = add nsw i32 %76, %80
  store i32 %81, i32* %7, align 4
  %82 = load %struct.tac_msg*, %struct.tac_msg** %5, align 8
  %83 = bitcast %struct.tac_msg* %82 to i8*
  store i8* %83, i8** %6, align 8
  br label %84

84:                                               ; preds = %146, %62
  %85 = load i32, i32* %7, align 4
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %147

87:                                               ; preds = %84
  %88 = load %struct.tac_handle*, %struct.tac_handle** %3, align 8
  %89 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load i8*, i8** %6, align 8
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @write(i64 %90, i8* %91, i32 %92)
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp eq i32 %94, -1
  br i1 %95, label %96, label %138

96:                                               ; preds = %87
  %97 = load i64, i64* @errno, align 8
  %98 = load i64, i64* @EAGAIN, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %96
  %101 = load %struct.tac_handle*, %struct.tac_handle** %3, align 8
  %102 = load i64, i64* @errno, align 8
  %103 = call i32 @strerror(i64 %102)
  %104 = call i32 (%struct.tac_handle*, i8*, ...) @generr(%struct.tac_handle* %101, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %103)
  store i32 -1, i32* %2, align 4
  br label %148

105:                                              ; preds = %96
  %106 = call i32 @gettimeofday(%struct.timeval* %9, i32* null)
  %107 = call i32 @timersub(%struct.timeval* %4, %struct.timeval* %9, %struct.timeval* %9)
  %108 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp sge i64 %109, 0
  br i1 %110, label %111, label %130

111:                                              ; preds = %105
  %112 = call i32 @FD_ZERO(i32* %11)
  %113 = load %struct.tac_handle*, %struct.tac_handle** %3, align 8
  %114 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @FD_SET(i64 %115, i32* %11)
  %117 = load %struct.tac_handle*, %struct.tac_handle** %3, align 8
  %118 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %119, 1
  %121 = call i32 @select(i64 %120, i32* null, i32* %11, i32* null, %struct.timeval* %9)
  store i32 %121, i32* %10, align 4
  %122 = load i32, i32* %10, align 4
  %123 = icmp eq i32 %122, -1
  br i1 %123, label %124, label %129

124:                                              ; preds = %111
  %125 = load %struct.tac_handle*, %struct.tac_handle** %3, align 8
  %126 = load i64, i64* @errno, align 8
  %127 = call i32 @strerror(i64 %126)
  %128 = call i32 (%struct.tac_handle*, i8*, ...) @generr(%struct.tac_handle* %125, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %127)
  store i32 -1, i32* %2, align 4
  br label %148

129:                                              ; preds = %111
  br label %131

130:                                              ; preds = %105
  store i32 0, i32* %10, align 4
  br label %131

131:                                              ; preds = %130, %129
  %132 = load i32, i32* %10, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  %135 = load %struct.tac_handle*, %struct.tac_handle** %3, align 8
  %136 = call i32 (%struct.tac_handle*, i8*, ...) @generr(%struct.tac_handle* %135, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %148

137:                                              ; preds = %131
  br label %146

138:                                              ; preds = %87
  %139 = load i32, i32* %8, align 4
  %140 = load i8*, i8** %6, align 8
  %141 = sext i32 %139 to i64
  %142 = getelementptr inbounds i8, i8* %140, i64 %141
  store i8* %142, i8** %6, align 8
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* %7, align 4
  %145 = sub nsw i32 %144, %143
  store i32 %145, i32* %7, align 4
  br label %146

146:                                              ; preds = %138, %137
  br label %84

147:                                              ; preds = %84
  store i32 0, i32* %2, align 4
  br label %148

148:                                              ; preds = %147, %134, %124, %100, %24, %17
  %149 = load i32, i32* %2, align 4
  ret i32 %149
}

declare dso_local i32 @generr(%struct.tac_handle*, i8*, ...) #1

declare dso_local i32 @establish_connection(%struct.tac_handle*) #1

declare dso_local i32 @gen_session_id(%struct.tac_msg*) #1

declare dso_local i32 @crypt_msg(%struct.tac_handle*, %struct.tac_msg*) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @write(i64, i8*, i32) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i32 @timersub(%struct.timeval*, %struct.timeval*, %struct.timeval*) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i64, i32*) #1

declare dso_local i32 @select(i64, i32*, i32*, i32*, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
