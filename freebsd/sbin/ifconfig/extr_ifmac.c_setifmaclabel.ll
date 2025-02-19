; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifmac.c_setifmaclabel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifmac.c_setifmaclabel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afswtch = type { i32 }
%struct.ifreq = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8* }

@name = common dso_local global i32 0, align 4
@SIOCSIFMAC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"setifmac\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, %struct.afswtch*)* @setifmaclabel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setifmaclabel(i8* %0, i32 %1, i32 %2, %struct.afswtch* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.afswtch*, align 8
  %9 = alloca %struct.ifreq, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.afswtch* %3, %struct.afswtch** %8, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @mac_from_text(i64* %10, i8* %12)
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @perror(i8* %16)
  br label %37

18:                                               ; preds = %4
  %19 = call i32 @memset(%struct.ifreq* %9, i32 0, i32 16)
  %20 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %9, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @name, align 4
  %23 = call i32 @strlcpy(i32 %21, i32 %22, i32 4)
  %24 = load i64, i64* %10, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %9, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @SIOCSIFMAC, align 4
  %30 = call i32 @ioctl(i32 %28, i32 %29, %struct.ifreq* %9)
  store i32 %30, i32* %11, align 4
  %31 = load i64, i64* %10, align 8
  %32 = call i32 @mac_free(i64 %31)
  %33 = load i32, i32* %11, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %37

35:                                               ; preds = %18
  %36 = call i32 @perror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %15, %35, %18
  ret void
}

declare dso_local i32 @mac_from_text(i64*, i8*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @memset(%struct.ifreq*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.ifreq*) #1

declare dso_local i32 @mac_free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
