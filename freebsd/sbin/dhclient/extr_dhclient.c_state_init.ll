; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_dhclient.c_state_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_dhclient.c_state_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.interface_info = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32, i32, i32, i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@state = common dso_local global i32 0, align 4
@S_INIT = common dso_local global i32 0, align 4
@iaddr_broadcast = common dso_local global i32 0, align 4
@S_SELECTING = common dso_local global i32 0, align 4
@cur_time = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @state_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.interface_info*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.interface_info*
  store %struct.interface_info* %5, %struct.interface_info** %3, align 8
  %6 = load i32, i32* @state, align 4
  %7 = load i32, i32* @S_INIT, align 4
  %8 = call i32 @ASSERT_STATE(i32 %6, i32 %7)
  %9 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %10 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %11 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 7
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @make_discover(%struct.interface_info* %9, i32 %14)
  %16 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %17 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 5
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %23 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 6
  store i32 %21, i32* %25, align 4
  %26 = load i32, i32* @iaddr_broadcast, align 4
  %27 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %28 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 4
  store i32 %26, i32* %30, align 4
  %31 = load i32, i32* @S_SELECTING, align 4
  %32 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %33 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 3
  store i32 %31, i32* %35, align 8
  %36 = load i32, i32* @cur_time, align 4
  %37 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %38 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  store i32 %36, i32* %40, align 4
  %41 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %42 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %49 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  store i32 %47, i32* %51, align 8
  %52 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %53 = call i32 @send_discover(%struct.interface_info* %52)
  ret void
}

declare dso_local i32 @ASSERT_STATE(i32, i32) #1

declare dso_local i32 @make_discover(%struct.interface_info*, i32) #1

declare dso_local i32 @send_discover(%struct.interface_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
