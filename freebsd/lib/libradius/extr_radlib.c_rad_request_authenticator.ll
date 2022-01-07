; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libradius/extr_radlib.c_rad_request_authenticator.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libradius/extr_radlib.c_rad_request_authenticator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rad_handle = type { i64 }

@LEN_AUTH = common dso_local global i64 0, align 8
@POS_AUTH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rad_request_authenticator(%struct.rad_handle* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rad_handle*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.rad_handle* %0, %struct.rad_handle** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @LEN_AUTH, align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %31

12:                                               ; preds = %3
  %13 = load i8*, i8** %6, align 8
  %14 = load %struct.rad_handle*, %struct.rad_handle** %5, align 8
  %15 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @POS_AUTH, align 8
  %18 = add nsw i64 %16, %17
  %19 = load i64, i64* @LEN_AUTH, align 8
  %20 = call i32 @memcpy(i8* %13, i64 %18, i64 %19)
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* @LEN_AUTH, align 8
  %23 = icmp ugt i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %12
  %25 = load i8*, i8** %6, align 8
  %26 = load i64, i64* @LEN_AUTH, align 8
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  store i8 0, i8* %27, align 1
  br label %28

28:                                               ; preds = %24, %12
  %29 = load i64, i64* @LEN_AUTH, align 8
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %28, %11
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @memcpy(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
