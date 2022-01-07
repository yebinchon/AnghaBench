; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_iflagg.c_setlaggflowidshift.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_iflagg.c_setlaggflowidshift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afswtch = type { i32 }
%struct.lagg_reqopts = type { i32, i32, i32 }

@LAGG_OPT_FLOWIDSHIFT = common dso_local global i32 0, align 4
@name = common dso_local global i32 0, align 4
@LAGG_OPT_FLOWIDSHIFT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Invalid flowid_shift option: %s\00", align 1
@SIOCSLAGGOPTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"SIOCSLAGGOPTS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, %struct.afswtch*)* @setlaggflowidshift to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setlaggflowidshift(i8* %0, i32 %1, i32 %2, %struct.afswtch* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.afswtch*, align 8
  %9 = alloca %struct.lagg_reqopts, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.afswtch* %3, %struct.afswtch** %8, align 8
  %10 = call i32 @bzero(%struct.lagg_reqopts* %9, i32 12)
  %11 = load i32, i32* @LAGG_OPT_FLOWIDSHIFT, align 4
  %12 = getelementptr inbounds %struct.lagg_reqopts, %struct.lagg_reqopts* %9, i32 0, i32 2
  store i32 %11, i32* %12, align 4
  %13 = getelementptr inbounds %struct.lagg_reqopts, %struct.lagg_reqopts* %9, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @name, align 4
  %16 = call i32 @strlcpy(i32 %14, i32 %15, i32 4)
  %17 = load i8*, i8** %5, align 8
  %18 = call i64 @strtol(i8* %17, i32* null, i32 10)
  %19 = trunc i64 %18 to i32
  %20 = getelementptr inbounds %struct.lagg_reqopts, %struct.lagg_reqopts* %9, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds %struct.lagg_reqopts, %struct.lagg_reqopts* %9, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @LAGG_OPT_FLOWIDSHIFT_MASK, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @errx(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %28)
  br label %30

30:                                               ; preds = %27, %4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @SIOCSLAGGOPTS, align 4
  %33 = call i64 @ioctl(i32 %31, i32 %32, %struct.lagg_reqopts* %9)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = call i32 @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %30
  ret void
}

declare dso_local i32 @bzero(%struct.lagg_reqopts*, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i64 @strtol(i8*, i32*, i32) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i64 @ioctl(i32, i32, %struct.lagg_reqopts*) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
