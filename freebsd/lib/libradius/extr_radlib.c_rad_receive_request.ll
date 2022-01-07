; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libradius/extr_radlib.c_rad_receive_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libradius/extr_radlib.c_rad_receive_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rad_handle = type { i64, i32, i32, i32*, i32, i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.sockaddr_in = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.sockaddr = type { i32 }

@RADIUS_SERVER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"denied function call\00", align 1
@MSGSIZE = common dso_local global i32 0, align 4
@MSG_WAITALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"recvfrom: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@POS_LENGTH = common dso_local global i64 0, align 8
@POS_ATTRS = common dso_local global i32 0, align 4
@POS_CODE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rad_receive_request(%struct.rad_handle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rad_handle*, align 8
  %4 = alloca %struct.sockaddr_in, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rad_handle* %0, %struct.rad_handle** %3, align 8
  %7 = load %struct.rad_handle*, %struct.rad_handle** %3, align 8
  %8 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @RADIUS_SERVER, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.rad_handle*, %struct.rad_handle** %3, align 8
  %14 = call i32 (%struct.rad_handle*, i8*, ...) @generr(%struct.rad_handle* %13, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %117

15:                                               ; preds = %1
  %16 = load %struct.rad_handle*, %struct.rad_handle** %3, align 8
  %17 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %16, i32 0, i32 1
  store i32 -1, i32* %17, align 8
  store i32 16, i32* %5, align 4
  %18 = load %struct.rad_handle*, %struct.rad_handle** %3, align 8
  %19 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %18, i32 0, i32 7
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.rad_handle*, %struct.rad_handle** %3, align 8
  %22 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* @MSGSIZE, align 4
  %25 = load i32, i32* @MSG_WAITALL, align 4
  %26 = bitcast %struct.sockaddr_in* %4 to %struct.sockaddr*
  %27 = call i32 @recvfrom(i32 %20, i32* %23, i32 %24, i32 %25, %struct.sockaddr* %26, i32* %5)
  %28 = load %struct.rad_handle*, %struct.rad_handle** %3, align 8
  %29 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load %struct.rad_handle*, %struct.rad_handle** %3, align 8
  %31 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %39

34:                                               ; preds = %15
  %35 = load %struct.rad_handle*, %struct.rad_handle** %3, align 8
  %36 = load i32, i32* @errno, align 4
  %37 = call i32 @strerror(i32 %36)
  %38 = call i32 (%struct.rad_handle*, i8*, ...) @generr(%struct.rad_handle* %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  store i32 -1, i32* %2, align 4
  br label %117

39:                                               ; preds = %15
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %76, %39
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.rad_handle*, %struct.rad_handle** %3, align 8
  %43 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %79

46:                                               ; preds = %40
  %47 = load %struct.rad_handle*, %struct.rad_handle** %3, align 8
  %48 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %47, i32 0, i32 6
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %56, %59
  br i1 %60, label %61, label %75

61:                                               ; preds = %46
  %62 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.rad_handle*, %struct.rad_handle** %3, align 8
  %65 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %64, i32 0, i32 6
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  store i32 %63, i32* %71, align 8
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.rad_handle*, %struct.rad_handle** %3, align 8
  %74 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 8
  br label %79

75:                                               ; preds = %46
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %6, align 4
  br label %40

79:                                               ; preds = %61, %40
  %80 = load %struct.rad_handle*, %struct.rad_handle** %3, align 8
  %81 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = icmp eq i32 %82, -1
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  store i32 -2, i32* %2, align 4
  br label %117

85:                                               ; preds = %79
  %86 = load %struct.rad_handle*, %struct.rad_handle** %3, align 8
  %87 = call i64 @is_valid_request(%struct.rad_handle* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %116

89:                                               ; preds = %85
  %90 = load %struct.rad_handle*, %struct.rad_handle** %3, align 8
  %91 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %90, i32 0, i32 3
  %92 = load i32*, i32** %91, align 8
  %93 = load i64, i64* @POS_LENGTH, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = shl i32 %95, 8
  %97 = load %struct.rad_handle*, %struct.rad_handle** %3, align 8
  %98 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %97, i32 0, i32 3
  %99 = load i32*, i32** %98, align 8
  %100 = load i64, i64* @POS_LENGTH, align 8
  %101 = add i64 %100, 1
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %96, %103
  %105 = load %struct.rad_handle*, %struct.rad_handle** %3, align 8
  %106 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* @POS_ATTRS, align 4
  %108 = load %struct.rad_handle*, %struct.rad_handle** %3, align 8
  %109 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %108, i32 0, i32 5
  store i32 %107, i32* %109, align 4
  %110 = load %struct.rad_handle*, %struct.rad_handle** %3, align 8
  %111 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %110, i32 0, i32 3
  %112 = load i32*, i32** %111, align 8
  %113 = load i64, i64* @POS_CODE, align 8
  %114 = getelementptr inbounds i32, i32* %112, i64 %113
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %2, align 4
  br label %117

116:                                              ; preds = %85
  store i32 -3, i32* %2, align 4
  br label %117

117:                                              ; preds = %116, %89, %84, %34, %12
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local i32 @generr(%struct.rad_handle*, i8*, ...) #1

declare dso_local i32 @recvfrom(i32, i32*, i32, i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @is_valid_request(%struct.rad_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
