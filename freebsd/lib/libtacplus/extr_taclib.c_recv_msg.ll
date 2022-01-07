; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libtacplus/extr_taclib.c_recv_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libtacplus/extr_taclib.c_recv_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tac_handle = type { i64, i64, i64, %struct.TYPE_5__, %struct.TYPE_4__*, %struct.tac_msg }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.tac_msg = type { i64, i64, i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { %struct.tac_msg* }
%struct.timeval = type { i32 }

@HDRSIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"Invalid session ID in received message\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"Invalid type in received message (got %u, expected %u)\00", align 1
@BODYSIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"Received message too large (%u > %u)\00", align 1
@.str.3 = private unnamed_addr constant [66 x i8] c"Invalid sequence number in received message (got %u, expected %u)\00", align 1
@TAC_SINGLE_CONNECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tac_handle*)* @recv_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recv_msg(%struct.tac_handle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tac_handle*, align 8
  %4 = alloca %struct.timeval, align 4
  %5 = alloca %struct.tac_msg*, align 8
  %6 = alloca i64, align 8
  store %struct.tac_handle* %0, %struct.tac_handle** %3, align 8
  %7 = load %struct.tac_handle*, %struct.tac_handle** %3, align 8
  %8 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %7, i32 0, i32 5
  store %struct.tac_msg* %8, %struct.tac_msg** %5, align 8
  %9 = call i32 @gettimeofday(%struct.timeval* %4, i32* null)
  %10 = load %struct.tac_handle*, %struct.tac_handle** %3, align 8
  %11 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %10, i32 0, i32 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = load %struct.tac_handle*, %struct.tac_handle** %3, align 8
  %14 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %21, %18
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %19, align 4
  %24 = load %struct.tac_handle*, %struct.tac_handle** %3, align 8
  %25 = load %struct.tac_msg*, %struct.tac_msg** %5, align 8
  %26 = load i64, i64* @HDRSIZE, align 8
  %27 = call i32 @read_timed(%struct.tac_handle* %24, %struct.tac_msg* %25, i64 %26, %struct.timeval* %4)
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %30

29:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %117

30:                                               ; preds = %1
  %31 = load %struct.tac_msg*, %struct.tac_msg** %5, align 8
  %32 = getelementptr inbounds %struct.tac_msg, %struct.tac_msg* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.tac_handle*, %struct.tac_handle** %3, align 8
  %35 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @memcmp(i32 %33, i32 %37, i32 4)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %30
  %41 = load %struct.tac_handle*, %struct.tac_handle** %3, align 8
  %42 = call i32 (%struct.tac_handle*, i8*, ...) @generr(%struct.tac_handle* %41, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %117

43:                                               ; preds = %30
  %44 = load %struct.tac_msg*, %struct.tac_msg** %5, align 8
  %45 = getelementptr inbounds %struct.tac_msg, %struct.tac_msg* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.tac_handle*, %struct.tac_handle** %3, align 8
  %48 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %46, %50
  br i1 %51, label %52, label %62

52:                                               ; preds = %43
  %53 = load %struct.tac_handle*, %struct.tac_handle** %3, align 8
  %54 = load %struct.tac_msg*, %struct.tac_msg** %5, align 8
  %55 = getelementptr inbounds %struct.tac_msg, %struct.tac_msg* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.tac_handle*, %struct.tac_handle** %3, align 8
  %58 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 (%struct.tac_handle*, i8*, ...) @generr(%struct.tac_handle* %53, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i64 %56, i64 %60)
  store i32 -1, i32* %2, align 4
  br label %117

62:                                               ; preds = %43
  %63 = load %struct.tac_msg*, %struct.tac_msg** %5, align 8
  %64 = getelementptr inbounds %struct.tac_msg, %struct.tac_msg* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @ntohl(i32 %65)
  store i64 %66, i64* %6, align 8
  %67 = load i64, i64* %6, align 8
  %68 = load i64, i64* @BODYSIZE, align 8
  %69 = icmp sgt i64 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %62
  %71 = load %struct.tac_handle*, %struct.tac_handle** %3, align 8
  %72 = load i64, i64* %6, align 8
  %73 = load i64, i64* @BODYSIZE, align 8
  %74 = call i32 (%struct.tac_handle*, i8*, ...) @generr(%struct.tac_handle* %71, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i64 %72, i64 %73)
  store i32 -1, i32* %2, align 4
  br label %117

75:                                               ; preds = %62
  %76 = load %struct.tac_msg*, %struct.tac_msg** %5, align 8
  %77 = getelementptr inbounds %struct.tac_msg, %struct.tac_msg* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.tac_handle*, %struct.tac_handle** %3, align 8
  %80 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %81, 1
  store i64 %82, i64* %80, align 8
  %83 = icmp ne i64 %78, %82
  br i1 %83, label %84, label %93

84:                                               ; preds = %75
  %85 = load %struct.tac_handle*, %struct.tac_handle** %3, align 8
  %86 = load %struct.tac_msg*, %struct.tac_msg** %5, align 8
  %87 = getelementptr inbounds %struct.tac_msg, %struct.tac_msg* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.tac_handle*, %struct.tac_handle** %3, align 8
  %90 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = call i32 (%struct.tac_handle*, i8*, ...) @generr(%struct.tac_handle* %85, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i64 0, i64 0), i64 %88, i64 %91)
  store i32 -1, i32* %2, align 4
  br label %117

93:                                               ; preds = %75
  %94 = load %struct.tac_handle*, %struct.tac_handle** %3, align 8
  %95 = load %struct.tac_msg*, %struct.tac_msg** %5, align 8
  %96 = getelementptr inbounds %struct.tac_msg, %struct.tac_msg* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load %struct.tac_msg*, %struct.tac_msg** %97, align 8
  %99 = load i64, i64* %6, align 8
  %100 = call i32 @read_timed(%struct.tac_handle* %94, %struct.tac_msg* %98, i64 %99, %struct.timeval* %4)
  %101 = icmp eq i32 %100, -1
  br i1 %101, label %102, label %103

102:                                              ; preds = %93
  store i32 -1, i32* %2, align 4
  br label %117

103:                                              ; preds = %93
  %104 = load %struct.tac_handle*, %struct.tac_handle** %3, align 8
  %105 = load %struct.tac_msg*, %struct.tac_msg** %5, align 8
  %106 = call i32 @crypt_msg(%struct.tac_handle* %104, %struct.tac_msg* %105)
  %107 = load %struct.tac_msg*, %struct.tac_msg** %5, align 8
  %108 = getelementptr inbounds %struct.tac_msg, %struct.tac_msg* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @TAC_SINGLE_CONNECT, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %103
  %114 = load %struct.tac_handle*, %struct.tac_handle** %3, align 8
  %115 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %114, i32 0, i32 2
  store i64 0, i64* %115, align 8
  br label %116

116:                                              ; preds = %113, %103
  store i32 0, i32* %2, align 4
  br label %117

117:                                              ; preds = %116, %102, %84, %70, %52, %40, %29
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @read_timed(%struct.tac_handle*, %struct.tac_msg*, i64, %struct.timeval*) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @generr(%struct.tac_handle*, i8*, ...) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @crypt_msg(%struct.tac_handle*, %struct.tac_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
