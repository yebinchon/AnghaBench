; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_client.c_radius_client_flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_client.c_radius_client_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius_client_data = type { %struct.radius_msg_list*, i32 }
%struct.radius_msg_list = type { i64, %struct.radius_msg_list* }

@RADIUS_AUTH = common dso_local global i64 0, align 8
@radius_client_timer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radius_client_flush(%struct.radius_client_data* %0, i32 %1) #0 {
  %3 = alloca %struct.radius_client_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.radius_msg_list*, align 8
  %6 = alloca %struct.radius_msg_list*, align 8
  %7 = alloca %struct.radius_msg_list*, align 8
  store %struct.radius_client_data* %0, %struct.radius_client_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.radius_client_data*, %struct.radius_client_data** %3, align 8
  %9 = icmp ne %struct.radius_client_data* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %68

11:                                               ; preds = %2
  store %struct.radius_msg_list* null, %struct.radius_msg_list** %6, align 8
  %12 = load %struct.radius_client_data*, %struct.radius_client_data** %3, align 8
  %13 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %12, i32 0, i32 0
  %14 = load %struct.radius_msg_list*, %struct.radius_msg_list** %13, align 8
  store %struct.radius_msg_list* %14, %struct.radius_msg_list** %5, align 8
  br label %15

15:                                               ; preds = %58, %11
  %16 = load %struct.radius_msg_list*, %struct.radius_msg_list** %5, align 8
  %17 = icmp ne %struct.radius_msg_list* %16, null
  br i1 %17, label %18, label %59

18:                                               ; preds = %15
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load %struct.radius_msg_list*, %struct.radius_msg_list** %5, align 8
  %23 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @RADIUS_AUTH, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %53

27:                                               ; preds = %21, %18
  %28 = load %struct.radius_msg_list*, %struct.radius_msg_list** %6, align 8
  %29 = icmp ne %struct.radius_msg_list* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load %struct.radius_msg_list*, %struct.radius_msg_list** %5, align 8
  %32 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %31, i32 0, i32 1
  %33 = load %struct.radius_msg_list*, %struct.radius_msg_list** %32, align 8
  %34 = load %struct.radius_msg_list*, %struct.radius_msg_list** %6, align 8
  %35 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %34, i32 0, i32 1
  store %struct.radius_msg_list* %33, %struct.radius_msg_list** %35, align 8
  br label %42

36:                                               ; preds = %27
  %37 = load %struct.radius_msg_list*, %struct.radius_msg_list** %5, align 8
  %38 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %37, i32 0, i32 1
  %39 = load %struct.radius_msg_list*, %struct.radius_msg_list** %38, align 8
  %40 = load %struct.radius_client_data*, %struct.radius_client_data** %3, align 8
  %41 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %40, i32 0, i32 0
  store %struct.radius_msg_list* %39, %struct.radius_msg_list** %41, align 8
  br label %42

42:                                               ; preds = %36, %30
  %43 = load %struct.radius_msg_list*, %struct.radius_msg_list** %5, align 8
  store %struct.radius_msg_list* %43, %struct.radius_msg_list** %7, align 8
  %44 = load %struct.radius_msg_list*, %struct.radius_msg_list** %5, align 8
  %45 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %44, i32 0, i32 1
  %46 = load %struct.radius_msg_list*, %struct.radius_msg_list** %45, align 8
  store %struct.radius_msg_list* %46, %struct.radius_msg_list** %5, align 8
  %47 = load %struct.radius_msg_list*, %struct.radius_msg_list** %7, align 8
  %48 = call i32 @radius_client_msg_free(%struct.radius_msg_list* %47)
  %49 = load %struct.radius_client_data*, %struct.radius_client_data** %3, align 8
  %50 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %50, align 8
  br label %58

53:                                               ; preds = %21
  %54 = load %struct.radius_msg_list*, %struct.radius_msg_list** %5, align 8
  store %struct.radius_msg_list* %54, %struct.radius_msg_list** %6, align 8
  %55 = load %struct.radius_msg_list*, %struct.radius_msg_list** %5, align 8
  %56 = getelementptr inbounds %struct.radius_msg_list, %struct.radius_msg_list* %55, i32 0, i32 1
  %57 = load %struct.radius_msg_list*, %struct.radius_msg_list** %56, align 8
  store %struct.radius_msg_list* %57, %struct.radius_msg_list** %5, align 8
  br label %58

58:                                               ; preds = %53, %42
  br label %15

59:                                               ; preds = %15
  %60 = load %struct.radius_client_data*, %struct.radius_client_data** %3, align 8
  %61 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %60, i32 0, i32 0
  %62 = load %struct.radius_msg_list*, %struct.radius_msg_list** %61, align 8
  %63 = icmp eq %struct.radius_msg_list* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load i32, i32* @radius_client_timer, align 4
  %66 = load %struct.radius_client_data*, %struct.radius_client_data** %3, align 8
  %67 = call i32 @eloop_cancel_timeout(i32 %65, %struct.radius_client_data* %66, i32* null)
  br label %68

68:                                               ; preds = %10, %64, %59
  ret void
}

declare dso_local i32 @radius_client_msg_free(%struct.radius_msg_list*) #1

declare dso_local i32 @eloop_cancel_timeout(i32, %struct.radius_client_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
