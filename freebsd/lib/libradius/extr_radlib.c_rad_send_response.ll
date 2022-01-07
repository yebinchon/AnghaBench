; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libradius/extr_radlib.c_rad_send_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libradius/extr_radlib.c_rad_send_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rad_handle = type { i64, i32*, i32, i64*, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }

@RADIUS_SERVER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"denied function call\00", align 1
@POS_LENGTH = common dso_local global i64 0, align 8
@POS_CODE = common dso_local global i64 0, align 8
@RAD_ACCESS_REQUEST = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"sendto: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"sendto: short write\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rad_send_response(%struct.rad_handle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rad_handle*, align 8
  %4 = alloca i32, align 4
  store %struct.rad_handle* %0, %struct.rad_handle** %3, align 8
  %5 = load %struct.rad_handle*, %struct.rad_handle** %3, align 8
  %6 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @RADIUS_SERVER, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.rad_handle*, %struct.rad_handle** %3, align 8
  %12 = call i32 (%struct.rad_handle*, i8*, ...) @generr(%struct.rad_handle* %11, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %83

13:                                               ; preds = %1
  %14 = load %struct.rad_handle*, %struct.rad_handle** %3, align 8
  %15 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = ashr i32 %16, 8
  %18 = load %struct.rad_handle*, %struct.rad_handle** %3, align 8
  %19 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* @POS_LENGTH, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  store i32 %17, i32* %22, align 4
  %23 = load %struct.rad_handle*, %struct.rad_handle** %3, align 8
  %24 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.rad_handle*, %struct.rad_handle** %3, align 8
  %27 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* @POS_LENGTH, align 8
  %30 = add i64 %29, 1
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32 %25, i32* %31, align 4
  %32 = load %struct.rad_handle*, %struct.rad_handle** %3, align 8
  %33 = load %struct.rad_handle*, %struct.rad_handle** %3, align 8
  %34 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %33, i32 0, i32 3
  %35 = load i64*, i64** %34, align 8
  %36 = load i64, i64* @POS_CODE, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @RAD_ACCESS_REQUEST, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 1, i32 0
  %43 = call i32 @insert_message_authenticator(%struct.rad_handle* %32, i32 %42)
  %44 = load %struct.rad_handle*, %struct.rad_handle** %3, align 8
  %45 = call i32 @insert_request_authenticator(%struct.rad_handle* %44, i32 1)
  %46 = load %struct.rad_handle*, %struct.rad_handle** %3, align 8
  %47 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.rad_handle*, %struct.rad_handle** %3, align 8
  %50 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.rad_handle*, %struct.rad_handle** %3, align 8
  %53 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.rad_handle*, %struct.rad_handle** %3, align 8
  %56 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %55, i32 0, i32 5
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load %struct.rad_handle*, %struct.rad_handle** %3, align 8
  %59 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = bitcast i32* %62 to %struct.sockaddr*
  %64 = call i32 @sendto(i32 %48, i32* %51, i32 %54, i32 0, %struct.sockaddr* %63, i32 4)
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = load %struct.rad_handle*, %struct.rad_handle** %3, align 8
  %67 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %65, %68
  br i1 %69, label %70, label %82

70:                                               ; preds = %13
  %71 = load i32, i32* %4, align 4
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %73, label %78

73:                                               ; preds = %70
  %74 = load %struct.rad_handle*, %struct.rad_handle** %3, align 8
  %75 = load i32, i32* @errno, align 4
  %76 = call i32 @strerror(i32 %75)
  %77 = call i32 (%struct.rad_handle*, i8*, ...) @generr(%struct.rad_handle* %74, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  br label %81

78:                                               ; preds = %70
  %79 = load %struct.rad_handle*, %struct.rad_handle** %3, align 8
  %80 = call i32 (%struct.rad_handle*, i8*, ...) @generr(%struct.rad_handle* %79, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %81

81:                                               ; preds = %78, %73
  store i32 -1, i32* %2, align 4
  br label %83

82:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %82, %81, %10
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @generr(%struct.rad_handle*, i8*, ...) #1

declare dso_local i32 @insert_message_authenticator(%struct.rad_handle*, i32) #1

declare dso_local i32 @insert_request_authenticator(%struct.rad_handle*, i32) #1

declare dso_local i32 @sendto(i32, i32*, i32, i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
