; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-usb-linux.c_have_binary_usbmon.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-usb-linux.c_have_binary_usbmon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utsname = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @have_binary_usbmon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @have_binary_usbmon() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.utsname, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i64 @uname(%struct.utsname* %2)
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %79

10:                                               ; preds = %0
  %11 = getelementptr inbounds %struct.utsname, %struct.utsname* %2, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %3, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @strtol(i8* %13, i8** %4, i32 10)
  store i32 %14, i32* %5, align 4
  %15 = load i8*, i8** %4, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = icmp ne i8* %15, %16
  br i1 %17, label %18, label %32

18:                                               ; preds = %10
  %19 = load i8*, i8** %4, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 46
  br i1 %22, label %23, label %32

23:                                               ; preds = %18
  %24 = load i32, i32* %5, align 4
  %25 = icmp sge i32 %24, 3
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 1, i32* %1, align 4
  br label %80

27:                                               ; preds = %23
  %28 = load i32, i32* %5, align 4
  %29 = icmp sle i32 %28, 1
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 0, i32* %1, align 4
  br label %80

31:                                               ; preds = %27
  br label %32

32:                                               ; preds = %31, %18, %10
  %33 = load i8*, i8** %4, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  store i8* %34, i8** %3, align 8
  %35 = load i8*, i8** %3, align 8
  %36 = call i32 @strtol(i8* %35, i8** %4, i32 10)
  store i32 %36, i32* %6, align 4
  %37 = load i8*, i8** %4, align 8
  %38 = load i8*, i8** %3, align 8
  %39 = icmp ne i8* %37, %38
  br i1 %39, label %40, label %78

40:                                               ; preds = %32
  %41 = load i8*, i8** %4, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 46
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load i8*, i8** %4, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %78

50:                                               ; preds = %45, %40
  %51 = load i32, i32* %6, align 4
  %52 = icmp slt i32 %51, 6
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 0, i32* %1, align 4
  br label %80

54:                                               ; preds = %50
  %55 = load i8*, i8** %4, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  store i8* %56, i8** %3, align 8
  %57 = load i8*, i8** %3, align 8
  %58 = call i32 @strtol(i8* %57, i8** %4, i32 10)
  store i32 %58, i32* %7, align 4
  %59 = load i8*, i8** %4, align 8
  %60 = load i8*, i8** %3, align 8
  %61 = icmp ne i8* %59, %60
  br i1 %61, label %62, label %77

62:                                               ; preds = %54
  %63 = load i8*, i8** %4, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 46
  br i1 %66, label %72, label %67

67:                                               ; preds = %62
  %68 = load i8*, i8** %4, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %67, %62
  %73 = load i32, i32* %7, align 4
  %74 = icmp sge i32 %73, 21
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store i32 1, i32* %1, align 4
  br label %80

76:                                               ; preds = %72
  br label %77

77:                                               ; preds = %76, %67, %54
  br label %78

78:                                               ; preds = %77, %45, %32
  br label %79

79:                                               ; preds = %78, %0
  store i32 0, i32* %1, align 4
  br label %80

80:                                               ; preds = %79, %75, %53, %30, %26
  %81 = load i32, i32* %1, align 4
  ret i32 %81
}

declare dso_local i64 @uname(%struct.utsname*) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
