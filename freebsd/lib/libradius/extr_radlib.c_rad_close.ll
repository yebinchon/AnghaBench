; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libradius/extr_radlib.c_rad_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libradius/extr_radlib.c_rad_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rad_handle = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.rad_handle* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rad_close(%struct.rad_handle* %0) #0 {
  %2 = alloca %struct.rad_handle*, align 8
  %3 = alloca i32, align 4
  store %struct.rad_handle* %0, %struct.rad_handle** %2, align 8
  %4 = load %struct.rad_handle*, %struct.rad_handle** %2, align 8
  %5 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, -1
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.rad_handle*, %struct.rad_handle** %2, align 8
  %10 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @close(i32 %11)
  br label %13

13:                                               ; preds = %8, %1
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %48, %13
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.rad_handle*, %struct.rad_handle** %2, align 8
  %17 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %51

20:                                               ; preds = %14
  %21 = load %struct.rad_handle*, %struct.rad_handle** %2, align 8
  %22 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.rad_handle*, %struct.rad_handle** %27, align 8
  %29 = load %struct.rad_handle*, %struct.rad_handle** %2, align 8
  %30 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %29, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load %struct.rad_handle*, %struct.rad_handle** %35, align 8
  %37 = call i32 @strlen(%struct.rad_handle* %36)
  %38 = call i32 @memset(%struct.rad_handle* %28, i32 0, i32 %37)
  %39 = load %struct.rad_handle*, %struct.rad_handle** %2, align 8
  %40 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load %struct.rad_handle*, %struct.rad_handle** %45, align 8
  %47 = call i32 @free(%struct.rad_handle* %46)
  br label %48

48:                                               ; preds = %20
  %49 = load i32, i32* %3, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %3, align 4
  br label %14

51:                                               ; preds = %14
  %52 = load %struct.rad_handle*, %struct.rad_handle** %2, align 8
  %53 = call i32 @clear_password(%struct.rad_handle* %52)
  %54 = load %struct.rad_handle*, %struct.rad_handle** %2, align 8
  %55 = call i32 @free(%struct.rad_handle* %54)
  ret void
}

declare dso_local i32 @close(i32) #1

declare dso_local i32 @memset(%struct.rad_handle*, i32, i32) #1

declare dso_local i32 @strlen(%struct.rad_handle*) #1

declare dso_local i32 @free(%struct.rad_handle*) #1

declare dso_local i32 @clear_password(%struct.rad_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
