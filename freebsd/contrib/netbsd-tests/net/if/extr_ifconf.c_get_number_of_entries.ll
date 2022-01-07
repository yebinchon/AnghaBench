; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/net/if/extr_ifconf.c_get_number_of_entries.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/net/if/extr_ifconf.c_get_number_of_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifconf = type { i32, i32* }

@AF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@SIOCGIFCONF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"ioctl\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @get_number_of_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_number_of_entries() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.ifconf, align 8
  %4 = load i32, i32* @AF_INET, align 4
  %5 = load i32, i32* @SOCK_DGRAM, align 4
  %6 = call i32 @socket(i32 %4, i32 %5, i32 0)
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %12

9:                                                ; preds = %0
  %10 = load i32, i32* @EXIT_FAILURE, align 4
  %11 = call i32 @err(i32 %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %9, %0
  %13 = getelementptr inbounds %struct.ifconf, %struct.ifconf* %3, i32 0, i32 0
  store i32 0, i32* %13, align 8
  %14 = getelementptr inbounds %struct.ifconf, %struct.ifconf* %3, i32 0, i32 1
  store i32* null, i32** %14, align 8
  %15 = load i32, i32* %1, align 4
  %16 = load i32, i32* @SIOCGIFCONF, align 4
  %17 = call i32 @ioctl(i32 %15, i32 %16, %struct.ifconf* %3)
  store i32 %17, i32* %2, align 4
  %18 = load i32, i32* %2, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %23

20:                                               ; preds = %12
  %21 = load i32, i32* @EXIT_FAILURE, align 4
  %22 = call i32 @err(i32 %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %23

23:                                               ; preds = %20, %12
  %24 = load i32, i32* %1, align 4
  %25 = call i32 @close(i32 %24)
  %26 = getelementptr inbounds %struct.ifconf, %struct.ifconf* %3, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = udiv i64 %28, 4
  %30 = trunc i64 %29 to i32
  ret i32 %30
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @ioctl(i32, i32, %struct.ifconf*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
