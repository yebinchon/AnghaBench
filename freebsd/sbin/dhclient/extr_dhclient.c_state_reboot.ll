; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_dhclient.c_state_reboot.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_dhclient.c_state_reboot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.interface_info = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32*, %struct.TYPE_4__*, i32, i32, i32, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i64 }

@S_REBOOTING = common dso_local global i32 0, align 4
@iaddr_broadcast = common dso_local global i32 0, align 4
@cur_time = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @state_reboot(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.interface_info*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.interface_info*
  store %struct.interface_info* %5, %struct.interface_info** %3, align 8
  %6 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %7 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %6, i32 0, i32 0
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 5
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = icmp ne %struct.TYPE_6__* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %14 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 5
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %12, %1
  %22 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %23 = call i32 @state_init(%struct.interface_info* %22)
  br label %69

24:                                               ; preds = %12
  %25 = load i32, i32* @S_REBOOTING, align 4
  %26 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %27 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 7
  store i32 %25, i32* %29, align 4
  %30 = call i32 (...) @arc4random()
  %31 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %32 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 6
  store i32 %30, i32* %34, align 8
  %35 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %36 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %37 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 5
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = call i32 @make_request(%struct.interface_info* %35, %struct.TYPE_6__* %40)
  %42 = load i32, i32* @iaddr_broadcast, align 4
  %43 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %44 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 4
  store i32 %42, i32* %46, align 8
  %47 = load i32, i32* @cur_time, align 4
  %48 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %49 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 3
  store i32 %47, i32* %51, align 4
  %52 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %53 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %52, i32 0, i32 0
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %60 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %59, i32 0, i32 0
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 2
  store i32 %58, i32* %62, align 8
  %63 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %64 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %63, i32 0, i32 0
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  store i32* null, i32** %66, align 8
  %67 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %68 = call i32 @send_request(%struct.interface_info* %67)
  br label %69

69:                                               ; preds = %24, %21
  ret void
}

declare dso_local i32 @state_init(%struct.interface_info*) #1

declare dso_local i32 @arc4random(...) #1

declare dso_local i32 @make_request(%struct.interface_info*, %struct.TYPE_6__*) #1

declare dso_local i32 @send_request(%struct.interface_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
