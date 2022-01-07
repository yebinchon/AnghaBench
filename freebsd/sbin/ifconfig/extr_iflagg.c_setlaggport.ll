; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_iflagg.c_setlaggport.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_iflagg.c_setlaggport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afswtch = type { i32 }
%struct.lagg_reqport = type { i32, i32 }

@name = common dso_local global i8* null, align 8
@SIOCSLAGGPORT = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"%s %s: SIOCSLAGGPORT: %s\00", align 1
@exit_code = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, %struct.afswtch*)* @setlaggport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setlaggport(i8* %0, i32 %1, i32 %2, %struct.afswtch* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.afswtch*, align 8
  %9 = alloca %struct.lagg_reqport, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.afswtch* %3, %struct.afswtch** %8, align 8
  %10 = call i32 @bzero(%struct.lagg_reqport* %9, i32 8)
  %11 = getelementptr inbounds %struct.lagg_reqport, %struct.lagg_reqport* %9, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i8*, i8** @name, align 8
  %14 = call i32 @strlcpy(i32 %12, i8* %13, i32 4)
  %15 = getelementptr inbounds %struct.lagg_reqport, %struct.lagg_reqport* %9, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @strlcpy(i32 %16, i8* %17, i32 4)
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @SIOCSLAGGPORT, align 4
  %21 = call i64 @ioctl(i32 %19, i32 %20, %struct.lagg_reqport* %9)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %4
  %24 = load i64, i64* @errno, align 8
  %25 = load i64, i64* @EEXIST, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load i8*, i8** @name, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = load i64, i64* @errno, align 8
  %31 = call i32 @strerror(i64 %30)
  %32 = call i32 @warnx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %28, i8* %29, i32 %31)
  store i32 1, i32* @exit_code, align 4
  br label %33

33:                                               ; preds = %27, %23, %4
  ret void
}

declare dso_local i32 @bzero(%struct.lagg_reqport*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.lagg_reqport*) #1

declare dso_local i32 @warnx(i8*, i8*, i8*, i32) #1

declare dso_local i32 @strerror(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
