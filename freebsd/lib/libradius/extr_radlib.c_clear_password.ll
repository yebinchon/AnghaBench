; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libradius/extr_radlib.c_clear_password.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libradius/extr_radlib.c_clear_password.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rad_handle = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rad_handle*)* @clear_password to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_password(%struct.rad_handle* %0) #0 {
  %2 = alloca %struct.rad_handle*, align 8
  store %struct.rad_handle* %0, %struct.rad_handle** %2, align 8
  %3 = load %struct.rad_handle*, %struct.rad_handle** %2, align 8
  %4 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %1
  %8 = load %struct.rad_handle*, %struct.rad_handle** %2, align 8
  %9 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.rad_handle*, %struct.rad_handle** %2, align 8
  %12 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @memset(i32 %10, i32 0, i64 %13)
  %15 = load %struct.rad_handle*, %struct.rad_handle** %2, align 8
  %16 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  br label %17

17:                                               ; preds = %7, %1
  %18 = load %struct.rad_handle*, %struct.rad_handle** %2, align 8
  %19 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %18, i32 0, i32 1
  store i64 0, i64* %19, align 8
  ret void
}

declare dso_local i32 @memset(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
