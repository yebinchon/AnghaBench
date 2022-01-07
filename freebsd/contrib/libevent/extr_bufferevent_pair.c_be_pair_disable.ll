; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent_pair.c_be_pair_disable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent_pair.c_be_pair_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }

@EV_READ = common dso_local global i16 0, align 2
@EV_WRITE = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bufferevent*, i16)* @be_pair_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_pair_disable(%struct.bufferevent* %0, i16 signext %1) #0 {
  %3 = alloca %struct.bufferevent*, align 8
  %4 = alloca i16, align 2
  store %struct.bufferevent* %0, %struct.bufferevent** %3, align 8
  store i16 %1, i16* %4, align 2
  %5 = load i16, i16* %4, align 2
  %6 = sext i16 %5 to i32
  %7 = load i16, i16* @EV_READ, align 2
  %8 = sext i16 %7 to i32
  %9 = and i32 %6, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %13 = call i32 @BEV_DEL_GENERIC_READ_TIMEOUT(%struct.bufferevent* %12)
  br label %14

14:                                               ; preds = %11, %2
  %15 = load i16, i16* %4, align 2
  %16 = sext i16 %15 to i32
  %17 = load i16, i16* @EV_WRITE, align 2
  %18 = sext i16 %17 to i32
  %19 = and i32 %16, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %23 = call i32 @BEV_DEL_GENERIC_WRITE_TIMEOUT(%struct.bufferevent* %22)
  br label %24

24:                                               ; preds = %21, %14
  ret i32 0
}

declare dso_local i32 @BEV_DEL_GENERIC_READ_TIMEOUT(%struct.bufferevent*) #1

declare dso_local i32 @BEV_DEL_GENERIC_WRITE_TIMEOUT(%struct.bufferevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
