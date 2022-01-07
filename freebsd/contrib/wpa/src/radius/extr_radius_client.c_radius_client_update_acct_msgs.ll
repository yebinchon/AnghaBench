; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_client.c_radius_client_update_acct_msgs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_client.c_radius_client_update_acct_msgs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius_client_data = type { %struct.radius_msg_list* }
%struct.radius_msg_list = type { i64, i64, i32, i32*, %struct.radius_msg_list* }

@RADIUS_ACCT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radius_client_data*, i32*, i64)* @radius_client_update_acct_msgs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radius_client_update_acct_msgs(%struct.radius_client_data* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.radius_client_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.radius_msg_list*, align 8
  store %struct.radius_client_data* %0, %struct.radius_client_data** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.radius_client_data*, %struct.radius_client_data** %4, align 8
  %9 = icmp ne %struct.radius_client_data* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  br label %42

11:                                               ; preds = %3
  %12 = load %struct.radius_client_data*, %struct.radius_client_data** %4, align 8
  %13 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %12, i32 0, i32 0
  %14 = load %struct.radius_msg_list*, %struct.radius_msg_list** %13, align 8
  store %struct.radius_msg_list* %14, %struct.radius_msg_list** %7, align 8
  br label %15

15:                                               ; preds = %38, %11
  %16 = load %struct.radius_msg_list*, %struct.radius_msg_list** %7, align 8
  %17 = icmp ne %struct.radius_msg_list* %16, null
  br i1 %17, label %18, label %42

18:                                               ; preds = %15
  %19 = load %struct.radius_msg_list*, %struct.radius_msg_list** %7, align 8
  %20 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @RADIUS_ACCT, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %18
  %25 = load i32*, i32** %5, align 8
  %26 = load %struct.radius_msg_list*, %struct.radius_msg_list** %7, align 8
  %27 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %26, i32 0, i32 3
  store i32* %25, i32** %27, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load %struct.radius_msg_list*, %struct.radius_msg_list** %7, align 8
  %30 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %29, i32 0, i32 1
  store i64 %28, i64* %30, align 8
  %31 = load %struct.radius_msg_list*, %struct.radius_msg_list** %7, align 8
  %32 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @radius_msg_finish_acct(i32 %33, i32* %34, i64 %35)
  br label %37

37:                                               ; preds = %24, %18
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.radius_msg_list*, %struct.radius_msg_list** %7, align 8
  %40 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %39, i32 0, i32 4
  %41 = load %struct.radius_msg_list*, %struct.radius_msg_list** %40, align 8
  store %struct.radius_msg_list* %41, %struct.radius_msg_list** %7, align 8
  br label %15

42:                                               ; preds = %10, %15
  ret void
}

declare dso_local i32 @radius_msg_finish_acct(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
