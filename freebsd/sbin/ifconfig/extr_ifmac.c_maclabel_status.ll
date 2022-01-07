; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifmac.c_maclabel_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifmac.c_maclabel_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifreq = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8* }

@name = common dso_local global i32 0, align 4
@SIOCGIFMAC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"\09maclabel %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @maclabel_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @maclabel_status(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ifreq, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %6 = call i32 @memset(%struct.ifreq* %3, i32 0, i32 16)
  %7 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %3, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @name, align 4
  %10 = call i32 @strlcpy(i32 %8, i32 %9, i32 4)
  %11 = call i32 @mac_prepare_ifnet_label(i64* %4)
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %42

14:                                               ; preds = %1
  %15 = load i64, i64* %4, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %3, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i8* %16, i8** %18, align 8
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @SIOCGIFMAC, align 4
  %21 = call i32 @ioctl(i32 %19, i32 %20, %struct.ifreq* %3)
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  br label %39

24:                                               ; preds = %14
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @mac_to_text(i64 %25, i8** %5)
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %39

29:                                               ; preds = %24
  %30 = load i8*, i8** %5, align 8
  %31 = call i64 @strlen(i8* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %34)
  br label %36

36:                                               ; preds = %33, %29
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @free(i8* %37)
  br label %39

39:                                               ; preds = %36, %28, %23
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @mac_free(i64 %40)
  br label %42

42:                                               ; preds = %39, %13
  ret void
}

declare dso_local i32 @memset(%struct.ifreq*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @mac_prepare_ifnet_label(i64*) #1

declare dso_local i32 @ioctl(i32, i32, %struct.ifreq*) #1

declare dso_local i32 @mac_to_text(i64, i8**) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @mac_free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
