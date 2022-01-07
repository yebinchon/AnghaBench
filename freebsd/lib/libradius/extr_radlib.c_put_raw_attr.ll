; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libradius/extr_radlib.c_put_raw_attr.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libradius/extr_radlib.c_put_raw_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rad_handle = type { i32, i32* }

@.str = private unnamed_addr constant [19 x i8] c"Attribute too long\00", align 1
@MSGSIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Maximum message length exceeded\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rad_handle*, i32, i8*, i64)* @put_raw_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @put_raw_attr(%struct.rad_handle* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rad_handle*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.rad_handle* %0, %struct.rad_handle** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load i64, i64* %9, align 8
  %11 = icmp ugt i64 %10, 253
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = load %struct.rad_handle*, %struct.rad_handle** %6, align 8
  %14 = call i32 @generr(%struct.rad_handle* %13, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %71

15:                                               ; preds = %4
  %16 = load %struct.rad_handle*, %struct.rad_handle** %6, align 8
  %17 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, 2
  %20 = sext i32 %19 to i64
  %21 = load i64, i64* %9, align 8
  %22 = add i64 %20, %21
  %23 = load i32, i32* @MSGSIZE, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp ugt i64 %22, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %15
  %27 = load %struct.rad_handle*, %struct.rad_handle** %6, align 8
  %28 = call i32 @generr(%struct.rad_handle* %27, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %71

29:                                               ; preds = %15
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.rad_handle*, %struct.rad_handle** %6, align 8
  %32 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.rad_handle*, %struct.rad_handle** %6, align 8
  %35 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 8
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i32, i32* %33, i64 %38
  store i32 %30, i32* %39, align 4
  %40 = load i64, i64* %9, align 8
  %41 = add i64 %40, 2
  %42 = trunc i64 %41 to i32
  %43 = load %struct.rad_handle*, %struct.rad_handle** %6, align 8
  %44 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.rad_handle*, %struct.rad_handle** %6, align 8
  %47 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 8
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i32, i32* %45, i64 %50
  store i32 %42, i32* %51, align 4
  %52 = load %struct.rad_handle*, %struct.rad_handle** %6, align 8
  %53 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.rad_handle*, %struct.rad_handle** %6, align 8
  %56 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %54, i64 %58
  %60 = bitcast i32* %59 to i64*
  %61 = load i8*, i8** %8, align 8
  %62 = load i64, i64* %9, align 8
  %63 = call i32 @memcpy(i64* %60, i8* %61, i64 %62)
  %64 = load i64, i64* %9, align 8
  %65 = load %struct.rad_handle*, %struct.rad_handle** %6, align 8
  %66 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = add i64 %68, %64
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %66, align 8
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %29, %26, %12
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @generr(%struct.rad_handle*, i8*) #1

declare dso_local i32 @memcpy(i64*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
