; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifconfig.c_print_vhid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifconfig.c_print_vhid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifaddrs = type { %struct.if_data* }
%struct.if_data = type { i64 }

@.str = private unnamed_addr constant [9 x i8] c" vhid %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_vhid(%struct.ifaddrs* %0, i8* %1) #0 {
  %3 = alloca %struct.ifaddrs*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.if_data*, align 8
  store %struct.ifaddrs* %0, %struct.ifaddrs** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.ifaddrs*, %struct.ifaddrs** %3, align 8
  %7 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %6, i32 0, i32 0
  %8 = load %struct.if_data*, %struct.if_data** %7, align 8
  %9 = icmp eq %struct.if_data* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %25

11:                                               ; preds = %2
  %12 = load %struct.ifaddrs*, %struct.ifaddrs** %3, align 8
  %13 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %12, i32 0, i32 0
  %14 = load %struct.if_data*, %struct.if_data** %13, align 8
  store %struct.if_data* %14, %struct.if_data** %5, align 8
  %15 = load %struct.if_data*, %struct.if_data** %5, align 8
  %16 = getelementptr inbounds %struct.if_data, %struct.if_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  br label %25

20:                                               ; preds = %11
  %21 = load %struct.if_data*, %struct.if_data** %5, align 8
  %22 = getelementptr inbounds %struct.if_data, %struct.if_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 %23)
  br label %25

25:                                               ; preds = %20, %19, %10
  ret void
}

declare dso_local i32 @printf(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
