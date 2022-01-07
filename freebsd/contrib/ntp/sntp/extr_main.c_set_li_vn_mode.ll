; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/extr_main.c_set_li_vn_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/extr_main.c_set_li_vn_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pkt = type { i8 }

@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"set_li_vn_mode: leap > 3, using max. 3\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"set_li_vn_mode: version < 0 or > 7, using 4\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"set_li_vn_mode: mode > 7, using client mode 3\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_li_vn_mode(%struct.pkt* %0, i8 signext %1, i8 signext %2, i8 signext %3) #0 {
  %5 = alloca %struct.pkt*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store %struct.pkt* %0, %struct.pkt** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8 %2, i8* %7, align 1
  store i8 %3, i8* %8, align 1
  %9 = load i8, i8* %6, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp sgt i32 %10, 3
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = load i32, i32* @LOG_DEBUG, align 4
  %14 = call i32 @msyslog(i32 %13, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i8 3, i8* %6, align 1
  br label %15

15:                                               ; preds = %12, %4
  %16 = load i8, i8* %7, align 1
  %17 = zext i8 %16 to i32
  %18 = icmp sgt i32 %17, 7
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32, i32* @LOG_DEBUG, align 4
  %21 = call i32 @msyslog(i32 %20, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  store i8 4, i8* %7, align 1
  br label %22

22:                                               ; preds = %19, %15
  %23 = load i8, i8* %8, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp sgt i32 %24, 7
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* @LOG_DEBUG, align 4
  %28 = call i32 @msyslog(i32 %27, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  store i8 3, i8* %8, align 1
  br label %29

29:                                               ; preds = %26, %22
  %30 = load i8, i8* %6, align 1
  %31 = sext i8 %30 to i32
  %32 = shl i32 %31, 6
  %33 = trunc i32 %32 to i8
  %34 = load %struct.pkt*, %struct.pkt** %5, align 8
  %35 = getelementptr inbounds %struct.pkt, %struct.pkt* %34, i32 0, i32 0
  store i8 %33, i8* %35, align 1
  %36 = load i8, i8* %7, align 1
  %37 = sext i8 %36 to i32
  %38 = shl i32 %37, 3
  %39 = load %struct.pkt*, %struct.pkt** %5, align 8
  %40 = getelementptr inbounds %struct.pkt, %struct.pkt* %39, i32 0, i32 0
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = or i32 %42, %38
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %40, align 1
  %45 = load i8, i8* %8, align 1
  %46 = sext i8 %45 to i32
  %47 = load %struct.pkt*, %struct.pkt** %5, align 8
  %48 = getelementptr inbounds %struct.pkt, %struct.pkt* %47, i32 0, i32 0
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = or i32 %50, %46
  %52 = trunc i32 %51 to i8
  store i8 %52, i8* %48, align 1
  ret void
}

declare dso_local i32 @msyslog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
