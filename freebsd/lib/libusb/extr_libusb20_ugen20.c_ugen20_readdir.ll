; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb20_ugen20.c_ugen20_readdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb20_ugen20.c_ugen20_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ugen20_urd_state = type { i64*, i64*, i64*, i64, i8*, i8*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@USB_READ_DIR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ugen20_urd_state*)* @ugen20_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ugen20_readdir(%struct.ugen20_urd_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ugen20_urd_state*, align 8
  store %struct.ugen20_urd_state* %0, %struct.ugen20_urd_state** %3, align 8
  br label %4

4:                                                ; preds = %61, %1
  %5 = load %struct.ugen20_urd_state*, %struct.ugen20_urd_state** %3, align 8
  %6 = getelementptr inbounds %struct.ugen20_urd_state, %struct.ugen20_urd_state* %5, i32 0, i32 0
  %7 = load i64*, i64** %6, align 8
  %8 = icmp eq i64* %7, null
  br i1 %8, label %9, label %49

9:                                                ; preds = %4
  %10 = load %struct.ugen20_urd_state*, %struct.ugen20_urd_state** %3, align 8
  %11 = getelementptr inbounds %struct.ugen20_urd_state, %struct.ugen20_urd_state* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.ugen20_urd_state*, %struct.ugen20_urd_state** %3, align 8
  %14 = getelementptr inbounds %struct.ugen20_urd_state, %struct.ugen20_urd_state* %13, i32 0, i32 6
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %17, %12
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %15, align 8
  %20 = load %struct.ugen20_urd_state*, %struct.ugen20_urd_state** %3, align 8
  %21 = getelementptr inbounds %struct.ugen20_urd_state, %struct.ugen20_urd_state* %20, i32 0, i32 1
  %22 = load i64*, i64** %21, align 8
  %23 = call i32 @libusb20_pass_ptr(i64* %22)
  %24 = load %struct.ugen20_urd_state*, %struct.ugen20_urd_state** %3, align 8
  %25 = getelementptr inbounds %struct.ugen20_urd_state, %struct.ugen20_urd_state* %24, i32 0, i32 6
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store i32 %23, i32* %26, align 4
  %27 = load %struct.ugen20_urd_state*, %struct.ugen20_urd_state** %3, align 8
  %28 = getelementptr inbounds %struct.ugen20_urd_state, %struct.ugen20_urd_state* %27, i32 0, i32 6
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 8, i32* %29, align 8
  %30 = load %struct.ugen20_urd_state*, %struct.ugen20_urd_state** %3, align 8
  %31 = getelementptr inbounds %struct.ugen20_urd_state, %struct.ugen20_urd_state* %30, i32 0, i32 3
  store i64 0, i64* %31, align 8
  %32 = load %struct.ugen20_urd_state*, %struct.ugen20_urd_state** %3, align 8
  %33 = getelementptr inbounds %struct.ugen20_urd_state, %struct.ugen20_urd_state* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @USB_READ_DIR, align 4
  %36 = call i32 @IOUSB(i32 %35)
  %37 = load %struct.ugen20_urd_state*, %struct.ugen20_urd_state** %3, align 8
  %38 = getelementptr inbounds %struct.ugen20_urd_state, %struct.ugen20_urd_state* %37, i32 0, i32 6
  %39 = call i64 @ioctl(i32 %34, i32 %36, %struct.TYPE_2__* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %9
  %42 = load i32, i32* @EINVAL, align 4
  store i32 %42, i32* %2, align 4
  br label %119

43:                                               ; preds = %9
  %44 = load %struct.ugen20_urd_state*, %struct.ugen20_urd_state** %3, align 8
  %45 = getelementptr inbounds %struct.ugen20_urd_state, %struct.ugen20_urd_state* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = load %struct.ugen20_urd_state*, %struct.ugen20_urd_state** %3, align 8
  %48 = getelementptr inbounds %struct.ugen20_urd_state, %struct.ugen20_urd_state* %47, i32 0, i32 0
  store i64* %46, i64** %48, align 8
  br label %49

49:                                               ; preds = %43, %4
  %50 = load %struct.ugen20_urd_state*, %struct.ugen20_urd_state** %3, align 8
  %51 = getelementptr inbounds %struct.ugen20_urd_state, %struct.ugen20_urd_state* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %49
  %57 = load %struct.ugen20_urd_state*, %struct.ugen20_urd_state** %3, align 8
  %58 = getelementptr inbounds %struct.ugen20_urd_state, %struct.ugen20_urd_state* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load %struct.ugen20_urd_state*, %struct.ugen20_urd_state** %3, align 8
  %63 = getelementptr inbounds %struct.ugen20_urd_state, %struct.ugen20_urd_state* %62, i32 0, i32 0
  store i64* null, i64** %63, align 8
  br label %4

64:                                               ; preds = %56
  %65 = load i32, i32* @ENXIO, align 4
  store i32 %65, i32* %2, align 4
  br label %119

66:                                               ; preds = %49
  %67 = load %struct.ugen20_urd_state*, %struct.ugen20_urd_state** %3, align 8
  %68 = getelementptr inbounds %struct.ugen20_urd_state, %struct.ugen20_urd_state* %67, i32 0, i32 0
  %69 = load i64*, i64** %68, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 1
  %71 = bitcast i64* %70 to i8*
  %72 = load %struct.ugen20_urd_state*, %struct.ugen20_urd_state** %3, align 8
  %73 = getelementptr inbounds %struct.ugen20_urd_state, %struct.ugen20_urd_state* %72, i32 0, i32 4
  store i8* %71, i8** %73, align 8
  %74 = load %struct.ugen20_urd_state*, %struct.ugen20_urd_state** %3, align 8
  %75 = getelementptr inbounds %struct.ugen20_urd_state, %struct.ugen20_urd_state* %74, i32 0, i32 4
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.ugen20_urd_state*, %struct.ugen20_urd_state** %3, align 8
  %78 = getelementptr inbounds %struct.ugen20_urd_state, %struct.ugen20_urd_state* %77, i32 0, i32 4
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @strlen(i8* %79)
  %81 = sext i32 %80 to i64
  %82 = getelementptr i8, i8* %76, i64 %81
  %83 = getelementptr i8, i8* %82, i64 1
  %84 = load %struct.ugen20_urd_state*, %struct.ugen20_urd_state** %3, align 8
  %85 = getelementptr inbounds %struct.ugen20_urd_state, %struct.ugen20_urd_state* %84, i32 0, i32 5
  store i8* %83, i8** %85, align 8
  %86 = load %struct.ugen20_urd_state*, %struct.ugen20_urd_state** %3, align 8
  %87 = getelementptr inbounds %struct.ugen20_urd_state, %struct.ugen20_urd_state* %86, i32 0, i32 0
  %88 = load i64*, i64** %87, align 8
  %89 = load %struct.ugen20_urd_state*, %struct.ugen20_urd_state** %3, align 8
  %90 = getelementptr inbounds %struct.ugen20_urd_state, %struct.ugen20_urd_state* %89, i32 0, i32 0
  %91 = load i64*, i64** %90, align 8
  %92 = getelementptr inbounds i64, i64* %91, i64 0
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds i64, i64* %88, i64 %93
  %95 = load %struct.ugen20_urd_state*, %struct.ugen20_urd_state** %3, align 8
  %96 = getelementptr inbounds %struct.ugen20_urd_state, %struct.ugen20_urd_state* %95, i32 0, i32 0
  store i64* %94, i64** %96, align 8
  %97 = load %struct.ugen20_urd_state*, %struct.ugen20_urd_state** %3, align 8
  %98 = getelementptr inbounds %struct.ugen20_urd_state, %struct.ugen20_urd_state* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %99, 1
  store i64 %100, i64* %98, align 8
  %101 = load %struct.ugen20_urd_state*, %struct.ugen20_urd_state** %3, align 8
  %102 = getelementptr inbounds %struct.ugen20_urd_state, %struct.ugen20_urd_state* %101, i32 0, i32 0
  %103 = load i64*, i64** %102, align 8
  %104 = load %struct.ugen20_urd_state*, %struct.ugen20_urd_state** %3, align 8
  %105 = getelementptr inbounds %struct.ugen20_urd_state, %struct.ugen20_urd_state* %104, i32 0, i32 1
  %106 = load i64*, i64** %105, align 8
  %107 = icmp ult i64* %103, %106
  br i1 %107, label %116, label %108

108:                                              ; preds = %66
  %109 = load %struct.ugen20_urd_state*, %struct.ugen20_urd_state** %3, align 8
  %110 = getelementptr inbounds %struct.ugen20_urd_state, %struct.ugen20_urd_state* %109, i32 0, i32 0
  %111 = load i64*, i64** %110, align 8
  %112 = load %struct.ugen20_urd_state*, %struct.ugen20_urd_state** %3, align 8
  %113 = getelementptr inbounds %struct.ugen20_urd_state, %struct.ugen20_urd_state* %112, i32 0, i32 2
  %114 = load i64*, i64** %113, align 8
  %115 = icmp ugt i64* %111, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %108, %66
  %117 = load i32, i32* @EINVAL, align 4
  store i32 %117, i32* %2, align 4
  br label %119

118:                                              ; preds = %108
  store i32 0, i32* %2, align 4
  br label %119

119:                                              ; preds = %118, %116, %64, %41
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i32 @libusb20_pass_ptr(i64*) #1

declare dso_local i64 @ioctl(i32, i32, %struct.TYPE_2__*) #1

declare dso_local i32 @IOUSB(i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
