; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb20.c_libusb20_tr_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb20.c_libusb20_tr_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb20_transfer = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32*, i32*, i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { {}* }

@LIBUSB20_ERROR_OTHER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libusb20_tr_close(%struct.libusb20_transfer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.libusb20_transfer*, align 8
  %4 = alloca i32, align 4
  store %struct.libusb20_transfer* %0, %struct.libusb20_transfer** %3, align 8
  %5 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %3, align 8
  %6 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %5, i32 0, i32 12
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @LIBUSB20_ERROR_OTHER, align 4
  store i32 %10, i32* %2, align 4
  br label %73

11:                                               ; preds = %1
  %12 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %3, align 8
  %13 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %12, i32 0, i32 17
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = bitcast {}** %17 to i32 (%struct.libusb20_transfer*)**
  %19 = load i32 (%struct.libusb20_transfer*)*, i32 (%struct.libusb20_transfer*)** %18, align 8
  %20 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %3, align 8
  %21 = call i32 %19(%struct.libusb20_transfer* %20)
  store i32 %21, i32* %4, align 4
  %22 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %3, align 8
  %23 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %22, i32 0, i32 16
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %11
  %27 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %3, align 8
  %28 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %27, i32 0, i32 16
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @free(i64 %29)
  br label %31

31:                                               ; preds = %26, %11
  %32 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %3, align 8
  %33 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %32, i32 0, i32 15
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %3, align 8
  %38 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %37, i32 0, i32 15
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @free(i64 %39)
  br label %41

41:                                               ; preds = %36, %31
  %42 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %3, align 8
  %43 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %42, i32 0, i32 14
  store i32* null, i32** %43, align 8
  %44 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %3, align 8
  %45 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %44, i32 0, i32 13
  store i32* null, i32** %45, align 8
  %46 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %3, align 8
  %47 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %46, i32 0, i32 12
  store i64 0, i64* %47, align 8
  %48 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %3, align 8
  %49 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %48, i32 0, i32 11
  store i64 0, i64* %49, align 8
  %50 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %3, align 8
  %51 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %50, i32 0, i32 10
  store i64 0, i64* %51, align 8
  %52 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %3, align 8
  %53 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %52, i32 0, i32 9
  store i64 0, i64* %53, align 8
  %54 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %3, align 8
  %55 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %54, i32 0, i32 8
  store i64 0, i64* %55, align 8
  %56 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %3, align 8
  %57 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %56, i32 0, i32 7
  store i64 0, i64* %57, align 8
  %58 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %3, align 8
  %59 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %58, i32 0, i32 6
  store i64 0, i64* %59, align 8
  %60 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %3, align 8
  %61 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %60, i32 0, i32 5
  store i64 0, i64* %61, align 8
  %62 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %3, align 8
  %63 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %62, i32 0, i32 4
  store i64 0, i64* %63, align 8
  %64 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %3, align 8
  %65 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %64, i32 0, i32 3
  store i64 0, i64* %65, align 8
  %66 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %3, align 8
  %67 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %66, i32 0, i32 2
  store i64 0, i64* %67, align 8
  %68 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %3, align 8
  %69 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %68, i32 0, i32 1
  store i64 0, i64* %69, align 8
  %70 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %3, align 8
  %71 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %70, i32 0, i32 0
  store i64 0, i64* %71, align 8
  %72 = load i32, i32* %4, align 4
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %41, %9
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
