; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/push/extr_push.c_write_state_flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/push/extr_push.c_write_state_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.write_state = type { i64, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"writev\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.write_state*)* @write_state_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_state_flush(%struct.write_state* %0) #0 {
  %2 = alloca %struct.write_state*, align 8
  store %struct.write_state* %0, %struct.write_state** %2, align 8
  %3 = load %struct.write_state*, %struct.write_state** %2, align 8
  %4 = getelementptr inbounds %struct.write_state, %struct.write_state* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %24

7:                                                ; preds = %1
  %8 = load %struct.write_state*, %struct.write_state** %2, align 8
  %9 = getelementptr inbounds %struct.write_state, %struct.write_state* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.write_state*, %struct.write_state** %2, align 8
  %12 = getelementptr inbounds %struct.write_state, %struct.write_state* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.write_state*, %struct.write_state** %2, align 8
  %15 = getelementptr inbounds %struct.write_state, %struct.write_state* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i64 @writev(i32 %10, i32 %13, i64 %16)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %7
  %20 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %7
  %22 = load %struct.write_state*, %struct.write_state** %2, align 8
  %23 = getelementptr inbounds %struct.write_state, %struct.write_state* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  br label %24

24:                                               ; preds = %21, %1
  ret void
}

declare dso_local i64 @writev(i32, i32, i64) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
