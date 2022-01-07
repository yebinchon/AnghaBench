; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sftp-server.c_handle_log_exit.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sftp-server.c_handle_log_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@num_handles = common dso_local global i64 0, align 8
@handles = common dso_local global %struct.TYPE_2__* null, align 8
@HANDLE_UNUSED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"forced\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @handle_log_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_log_exit() #0 {
  %1 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  br label %2

2:                                                ; preds = %18, %0
  %3 = load i64, i64* %1, align 8
  %4 = load i64, i64* @num_handles, align 8
  %5 = icmp ult i64 %3, %4
  br i1 %5, label %6, label %21

6:                                                ; preds = %2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @handles, align 8
  %8 = load i64, i64* %1, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @HANDLE_UNUSED, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %6
  %15 = load i64, i64* %1, align 8
  %16 = call i32 @handle_log_close(i64 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %14, %6
  br label %18

18:                                               ; preds = %17
  %19 = load i64, i64* %1, align 8
  %20 = add i64 %19, 1
  store i64 %20, i64* %1, align 8
  br label %2

21:                                               ; preds = %2
  ret void
}

declare dso_local i32 @handle_log_close(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
