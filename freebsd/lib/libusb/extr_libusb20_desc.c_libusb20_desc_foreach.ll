; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb20_desc.c_libusb20_desc_foreach.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb20_desc.c_libusb20_desc_foreach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb20_me_struct = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @libusb20_desc_foreach(%struct.libusb20_me_struct* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.libusb20_me_struct*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.libusb20_me_struct* %0, %struct.libusb20_me_struct** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.libusb20_me_struct*, %struct.libusb20_me_struct** %4, align 8
  %10 = icmp eq %struct.libusb20_me_struct* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %65

12:                                               ; preds = %2
  %13 = load %struct.libusb20_me_struct*, %struct.libusb20_me_struct** %4, align 8
  %14 = getelementptr inbounds %struct.libusb20_me_struct, %struct.libusb20_me_struct* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i32*
  store i32* %16, i32** %6, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load %struct.libusb20_me_struct*, %struct.libusb20_me_struct** %4, align 8
  %19 = getelementptr inbounds %struct.libusb20_me_struct, %struct.libusb20_me_struct* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32* @LIBUSB20_ADD_BYTES(i32* %17, i32 %20)
  store i32* %21, i32** %7, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %12
  %25 = load i32*, i32** %6, align 8
  store i32* %25, i32** %5, align 8
  br label %33

26:                                               ; preds = %12
  %27 = load i32*, i32** %5, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %27, i64 %31
  store i32* %32, i32** %5, align 8
  br label %33

33:                                               ; preds = %26, %24
  %34 = load i32*, i32** %5, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = icmp ult i32* %34, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i32*, i32** %5, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = icmp uge i32* %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37, %33
  store i32* null, i32** %3, align 8
  br label %65

42:                                               ; preds = %37
  %43 = load i32*, i32** %5, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %43, i64 %47
  store i32* %48, i32** %8, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = icmp ult i32* %49, %50
  br i1 %51, label %56, label %52

52:                                               ; preds = %42
  %53 = load i32*, i32** %8, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = icmp ugt i32* %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52, %42
  store i32* null, i32** %3, align 8
  br label %65

57:                                               ; preds = %52
  %58 = load i32*, i32** %5, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %60, 3
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  store i32* null, i32** %3, align 8
  br label %65

63:                                               ; preds = %57
  %64 = load i32*, i32** %5, align 8
  store i32* %64, i32** %3, align 8
  br label %65

65:                                               ; preds = %63, %62, %56, %41, %11
  %66 = load i32*, i32** %3, align 8
  ret i32* %66
}

declare dso_local i32* @LIBUSB20_ADD_BYTES(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
