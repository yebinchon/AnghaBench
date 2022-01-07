; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libradius/extr_radlib.c_put_password_attr.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libradius/extr_radlib.c_put_password_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rad_handle = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [44 x i8] c"Multiple User-Password attributes specified\00", align 1
@PASSSIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rad_handle*, i32, i8*, i64)* @put_password_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @put_password_attr(%struct.rad_handle* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rad_handle*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.rad_handle* %0, %struct.rad_handle** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.rad_handle*, %struct.rad_handle** %6, align 8
  %13 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load %struct.rad_handle*, %struct.rad_handle** %6, align 8
  %18 = call i32 @generr(%struct.rad_handle* %17, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %74

19:                                               ; preds = %4
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* @PASSSIZE, align 8
  %22 = icmp ugt i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i64, i64* @PASSSIZE, align 8
  store i64 %24, i64* %9, align 8
  br label %25

25:                                               ; preds = %23, %19
  %26 = load i64, i64* %9, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  br label %33

29:                                               ; preds = %25
  %30 = load i64, i64* %9, align 8
  %31 = add i64 %30, 15
  %32 = and i64 %31, -16
  br label %33

33:                                               ; preds = %29, %28
  %34 = phi i64 [ 16, %28 ], [ %32, %29 ]
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* %9, align 8
  %39 = sub i64 %37, %38
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %11, align 4
  %41 = load %struct.rad_handle*, %struct.rad_handle** %6, align 8
  %42 = call i32 @clear_password(%struct.rad_handle* %41)
  %43 = load %struct.rad_handle*, %struct.rad_handle** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.rad_handle*, %struct.rad_handle** %6, align 8
  %46 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @put_raw_attr(%struct.rad_handle* %43, i32 %44, i64 %47, i32 %48)
  %50 = load %struct.rad_handle*, %struct.rad_handle** %6, align 8
  %51 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = sub nsw i64 %52, %54
  %56 = load %struct.rad_handle*, %struct.rad_handle** %6, align 8
  %57 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load %struct.rad_handle*, %struct.rad_handle** %6, align 8
  %59 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = load i64, i64* %9, align 8
  %63 = call i32 @memcpy(i64 %60, i8* %61, i64 %62)
  %64 = load i64, i64* %9, align 8
  %65 = load %struct.rad_handle*, %struct.rad_handle** %6, align 8
  %66 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %65, i32 0, i32 2
  store i64 %64, i64* %66, align 8
  %67 = load %struct.rad_handle*, %struct.rad_handle** %6, align 8
  %68 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %9, align 8
  %71 = add i64 %69, %70
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @memset(i64 %71, i32 0, i32 %72)
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %33, %16
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32 @generr(%struct.rad_handle*, i8*) #1

declare dso_local i32 @clear_password(%struct.rad_handle*) #1

declare dso_local i32 @put_raw_attr(%struct.rad_handle*, i32, i64, i32) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

declare dso_local i32 @memset(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
