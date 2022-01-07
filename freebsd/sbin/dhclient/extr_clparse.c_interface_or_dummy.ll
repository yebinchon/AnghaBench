; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_clparse.c_interface_or_dummy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_clparse.c_interface_or_dummy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.interface_info = type { %struct.interface_info*, i32 }

@ifi = common dso_local global %struct.interface_info* null, align 8
@dummy_interfaces = common dso_local global %struct.interface_info* null, align 8
@.str = private unnamed_addr constant [43 x i8] c"Insufficient memory to record interface %s\00", align 1
@IFNAMSIZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.interface_info* @interface_or_dummy(i8* %0) #0 {
  %2 = alloca %struct.interface_info*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.interface_info*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load %struct.interface_info*, %struct.interface_info** @ifi, align 8
  %6 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i32 @strcmp(i32 %7, i8* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = load %struct.interface_info*, %struct.interface_info** @ifi, align 8
  store %struct.interface_info* %12, %struct.interface_info** %2, align 8
  br label %53

13:                                               ; preds = %1
  %14 = load %struct.interface_info*, %struct.interface_info** @dummy_interfaces, align 8
  store %struct.interface_info* %14, %struct.interface_info** %4, align 8
  br label %15

15:                                               ; preds = %28, %13
  %16 = load %struct.interface_info*, %struct.interface_info** %4, align 8
  %17 = icmp ne %struct.interface_info* %16, null
  br i1 %17, label %18, label %32

18:                                               ; preds = %15
  %19 = load %struct.interface_info*, %struct.interface_info** %4, align 8
  %20 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @strcmp(i32 %21, i8* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %18
  %26 = load %struct.interface_info*, %struct.interface_info** %4, align 8
  store %struct.interface_info* %26, %struct.interface_info** %2, align 8
  br label %53

27:                                               ; preds = %18
  br label %28

28:                                               ; preds = %27
  %29 = load %struct.interface_info*, %struct.interface_info** %4, align 8
  %30 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %29, i32 0, i32 0
  %31 = load %struct.interface_info*, %struct.interface_info** %30, align 8
  store %struct.interface_info* %31, %struct.interface_info** %4, align 8
  br label %15

32:                                               ; preds = %15
  %33 = call %struct.interface_info* @malloc(i32 16)
  store %struct.interface_info* %33, %struct.interface_info** %4, align 8
  %34 = load %struct.interface_info*, %struct.interface_info** %4, align 8
  %35 = icmp ne %struct.interface_info* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = load i8*, i8** %3, align 8
  %38 = call i32 @error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %37)
  br label %39

39:                                               ; preds = %36, %32
  %40 = load %struct.interface_info*, %struct.interface_info** %4, align 8
  %41 = call i32 @memset(%struct.interface_info* %40, i32 0, i32 16)
  %42 = load %struct.interface_info*, %struct.interface_info** %4, align 8
  %43 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i8*, i8** %3, align 8
  %46 = load i32, i32* @IFNAMSIZ, align 4
  %47 = call i32 @strlcpy(i32 %44, i8* %45, i32 %46)
  %48 = load %struct.interface_info*, %struct.interface_info** @dummy_interfaces, align 8
  %49 = load %struct.interface_info*, %struct.interface_info** %4, align 8
  %50 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %49, i32 0, i32 0
  store %struct.interface_info* %48, %struct.interface_info** %50, align 8
  %51 = load %struct.interface_info*, %struct.interface_info** %4, align 8
  store %struct.interface_info* %51, %struct.interface_info** @dummy_interfaces, align 8
  %52 = load %struct.interface_info*, %struct.interface_info** %4, align 8
  store %struct.interface_info* %52, %struct.interface_info** %2, align 8
  br label %53

53:                                               ; preds = %39, %25, %11
  %54 = load %struct.interface_info*, %struct.interface_info** %2, align 8
  ret %struct.interface_info* %54
}

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local %struct.interface_info* @malloc(i32) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i32 @memset(%struct.interface_info*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
