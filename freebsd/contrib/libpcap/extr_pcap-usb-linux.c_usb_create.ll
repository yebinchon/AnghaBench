; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-usb-linux.c_usb_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-usb-linux.c_usb_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@USB_IFACE = common dso_local global i32 0, align 4
@usb_activate = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @usb_create(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i8* @strrchr(i8* %12, i8 signext 47)
  store i8* %13, i8** %8, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i8*, i8** %5, align 8
  store i8* %17, i8** %8, align 8
  br label %18

18:                                               ; preds = %16, %3
  %19 = load i8*, i8** %8, align 8
  %20 = load i32, i32* @USB_IFACE, align 4
  %21 = call i64 @strncmp(i8* %19, i32 %20, i32 3)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32*, i32** %7, align 8
  store i32 0, i32* %24, align 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %4, align 8
  br label %57

25:                                               ; preds = %18
  %26 = load i8*, i8** %8, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 3
  store i8* %27, i8** %8, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = call i64 @strtol(i8* %28, i8** %9, i32 10)
  store i64 %29, i64* %10, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = icmp eq i8* %30, %31
  br i1 %32, label %38, label %33

33:                                               ; preds = %25
  %34 = load i8*, i8** %9, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33, %25
  %39 = load i32*, i32** %7, align 8
  store i32 0, i32* %39, align 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %4, align 8
  br label %57

40:                                               ; preds = %33
  %41 = load i64, i64* %10, align 8
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32*, i32** %7, align 8
  store i32 0, i32* %44, align 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %4, align 8
  br label %57

45:                                               ; preds = %40
  %46 = load i32*, i32** %7, align 8
  store i32 1, i32* %46, align 4
  %47 = load i8*, i8** %6, align 8
  %48 = call %struct.TYPE_4__* @pcap_create_common(i8* %47, i32 4)
  store %struct.TYPE_4__* %48, %struct.TYPE_4__** %11, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %50 = icmp eq %struct.TYPE_4__* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %4, align 8
  br label %57

52:                                               ; preds = %45
  %53 = load i32, i32* @usb_activate, align 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  store %struct.TYPE_4__* %56, %struct.TYPE_4__** %4, align 8
  br label %57

57:                                               ; preds = %52, %51, %43, %38, %23
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  ret %struct.TYPE_4__* %58
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @strncmp(i8*, i32, i32) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local %struct.TYPE_4__* @pcap_create_common(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
