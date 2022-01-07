; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/extr_main.c_libevent_version_ok.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/extr_main.c_libevent_version_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LIBEVENT_VERSION_NUMBER = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Incompatible libevent versions: have %s, built with %s\0A\00", align 1
@LIBEVENT_VERSION = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libevent_version_ok() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @LIBEVENT_VERSION_NUMBER, align 4
  %5 = and i32 %4, -65536
  store i32 %5, i32* %2, align 4
  %6 = call i32 (...) @event_get_version_number()
  %7 = and i32 %6, -65536
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %0
  %12 = load i32, i32* @stderr, align 4
  %13 = call i8* (...) @event_get_version()
  %14 = load i8*, i8** @LIBEVENT_VERSION, align 8
  %15 = call i32 @fprintf(i32 %12, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i8* %13, i8* %14)
  store i32 0, i32* %1, align 4
  br label %17

16:                                               ; preds = %0
  store i32 1, i32* %1, align 4
  br label %17

17:                                               ; preds = %16, %11
  %18 = load i32, i32* %1, align 4
  ret i32 %18
}

declare dso_local i32 @event_get_version_number(...) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i8* @event_get_version(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
