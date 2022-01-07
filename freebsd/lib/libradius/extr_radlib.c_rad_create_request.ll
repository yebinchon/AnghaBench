; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libradius/extr_radlib.c_rad_create_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libradius/extr_radlib.c_rad_create_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rad_handle = type { i64, i64, i32*, i32, i32, i64, i32 }

@RADIUS_SERVER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"denied function call\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"No RADIUS servers specified\00", align 1
@POS_CODE = common dso_local global i64 0, align 8
@POS_IDENT = common dso_local global i64 0, align 8
@RAD_ACCESS_REQUEST = common dso_local global i32 0, align 4
@LEN_AUTH = common dso_local global i32 0, align 4
@POS_AUTH = common dso_local global i32 0, align 4
@POS_ATTRS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rad_create_request(%struct.rad_handle* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rad_handle*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.rad_handle* %0, %struct.rad_handle** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.rad_handle*, %struct.rad_handle** %4, align 8
  %9 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @RADIUS_SERVER, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.rad_handle*, %struct.rad_handle** %4, align 8
  %15 = call i32 @generr(%struct.rad_handle* %14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %97

16:                                               ; preds = %2
  %17 = load %struct.rad_handle*, %struct.rad_handle** %4, align 8
  %18 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load %struct.rad_handle*, %struct.rad_handle** %4, align 8
  %23 = call i32 @generr(%struct.rad_handle* %22, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %97

24:                                               ; preds = %16
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.rad_handle*, %struct.rad_handle** %4, align 8
  %27 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* @POS_CODE, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  store i32 %25, i32* %30, align 4
  %31 = load %struct.rad_handle*, %struct.rad_handle** %4, align 8
  %32 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 8
  %35 = load %struct.rad_handle*, %struct.rad_handle** %4, align 8
  %36 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @POS_IDENT, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  store i32 %34, i32* %39, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @RAD_ACCESS_REQUEST, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %78

43:                                               ; preds = %24
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %74, %43
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @LEN_AUTH, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %77

48:                                               ; preds = %44
  %49 = call i64 (...) @random()
  store i64 %49, i64* %7, align 8
  %50 = load i64, i64* %7, align 8
  %51 = inttoptr i64 %50 to i8*
  %52 = ptrtoint i8* %51 to i32
  %53 = load %struct.rad_handle*, %struct.rad_handle** %4, align 8
  %54 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* @POS_AUTH, align 4
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %56, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %55, i64 %59
  store i32 %52, i32* %60, align 4
  %61 = load i64, i64* %7, align 8
  %62 = ashr i64 %61, 8
  %63 = inttoptr i64 %62 to i8*
  %64 = ptrtoint i8* %63 to i32
  %65 = load %struct.rad_handle*, %struct.rad_handle** %4, align 8
  %66 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* @POS_AUTH, align 4
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %68, %69
  %71 = add nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %67, i64 %72
  store i32 %64, i32* %73, align 4
  br label %74

74:                                               ; preds = %48
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 2
  store i32 %76, i32* %6, align 4
  br label %44

77:                                               ; preds = %44
  br label %87

78:                                               ; preds = %24
  %79 = load %struct.rad_handle*, %struct.rad_handle** %4, align 8
  %80 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* @POS_AUTH, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* @LEN_AUTH, align 4
  %86 = call i32 @memset(i32* %84, i32 0, i32 %85)
  br label %87

87:                                               ; preds = %78, %77
  %88 = load i32, i32* @POS_ATTRS, align 4
  %89 = load %struct.rad_handle*, %struct.rad_handle** %4, align 8
  %90 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %89, i32 0, i32 6
  store i32 %88, i32* %90, align 8
  %91 = load %struct.rad_handle*, %struct.rad_handle** %4, align 8
  %92 = call i32 @clear_password(%struct.rad_handle* %91)
  %93 = load %struct.rad_handle*, %struct.rad_handle** %4, align 8
  %94 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %93, i32 0, i32 5
  store i64 0, i64* %94, align 8
  %95 = load %struct.rad_handle*, %struct.rad_handle** %4, align 8
  %96 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %95, i32 0, i32 4
  store i32 1, i32* %96, align 4
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %87, %21, %13
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @generr(%struct.rad_handle*, i8*) #1

declare dso_local i64 @random(...) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @clear_password(%struct.rad_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
