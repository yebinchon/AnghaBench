; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libradius/extr_radlib.c_rad_create_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libradius/extr_radlib.c_rad_create_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rad_handle = type { i64, i32*, i32*, i32, i64, i32 }

@RADIUS_SERVER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"denied function call\00", align 1
@POS_CODE = common dso_local global i64 0, align 8
@POS_IDENT = common dso_local global i64 0, align 8
@POS_AUTH = common dso_local global i64 0, align 8
@LEN_AUTH = common dso_local global i32 0, align 4
@POS_ATTRS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rad_create_response(%struct.rad_handle* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rad_handle*, align 8
  %5 = alloca i32, align 4
  store %struct.rad_handle* %0, %struct.rad_handle** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.rad_handle*, %struct.rad_handle** %4, align 8
  %7 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @RADIUS_SERVER, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.rad_handle*, %struct.rad_handle** %4, align 8
  %13 = call i32 @generr(%struct.rad_handle* %12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %48

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.rad_handle*, %struct.rad_handle** %4, align 8
  %17 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* @POS_CODE, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  store i32 %15, i32* %20, align 4
  %21 = load %struct.rad_handle*, %struct.rad_handle** %4, align 8
  %22 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* @POS_IDENT, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.rad_handle*, %struct.rad_handle** %4, align 8
  %28 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* @POS_IDENT, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  store i32 %26, i32* %31, align 4
  %32 = load %struct.rad_handle*, %struct.rad_handle** %4, align 8
  %33 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* @POS_AUTH, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* @LEN_AUTH, align 4
  %38 = call i32 @memset(i32* %36, i32 0, i32 %37)
  %39 = load i32, i32* @POS_ATTRS, align 4
  %40 = load %struct.rad_handle*, %struct.rad_handle** %4, align 8
  %41 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %40, i32 0, i32 5
  store i32 %39, i32* %41, align 8
  %42 = load %struct.rad_handle*, %struct.rad_handle** %4, align 8
  %43 = call i32 @clear_password(%struct.rad_handle* %42)
  %44 = load %struct.rad_handle*, %struct.rad_handle** %4, align 8
  %45 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %44, i32 0, i32 4
  store i64 0, i64* %45, align 8
  %46 = load %struct.rad_handle*, %struct.rad_handle** %4, align 8
  %47 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %46, i32 0, i32 3
  store i32 1, i32* %47, align 8
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %14, %11
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @generr(%struct.rad_handle*, i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @clear_password(%struct.rad_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
