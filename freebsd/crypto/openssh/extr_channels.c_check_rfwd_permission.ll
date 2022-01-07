; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_channels.c_check_rfwd_permission.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_channels.c_check_rfwd_permission.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { %struct.ssh_channels* }
%struct.ssh_channels = type { %struct.permission_set }
%struct.permission_set = type { i64, i64, i64, %struct.permission*, %struct.permission* }
%struct.permission = type { i32 }
%struct.Forward = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ssh*, %struct.Forward*)* @check_rfwd_permission to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_rfwd_permission(%struct.ssh* %0, %struct.Forward* %1) #0 {
  %3 = alloca %struct.ssh*, align 8
  %4 = alloca %struct.Forward*, align 8
  %5 = alloca %struct.ssh_channels*, align 8
  %6 = alloca %struct.permission_set*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.permission*, align 8
  store %struct.ssh* %0, %struct.ssh** %3, align 8
  store %struct.Forward* %1, %struct.Forward** %4, align 8
  %11 = load %struct.ssh*, %struct.ssh** %3, align 8
  %12 = getelementptr inbounds %struct.ssh, %struct.ssh* %11, i32 0, i32 0
  %13 = load %struct.ssh_channels*, %struct.ssh_channels** %12, align 8
  store %struct.ssh_channels* %13, %struct.ssh_channels** %5, align 8
  %14 = load %struct.ssh_channels*, %struct.ssh_channels** %5, align 8
  %15 = getelementptr inbounds %struct.ssh_channels, %struct.ssh_channels* %14, i32 0, i32 0
  store %struct.permission_set* %15, %struct.permission_set** %6, align 8
  store i64 1, i64* %9, align 8
  %16 = load %struct.permission_set*, %struct.permission_set** %6, align 8
  %17 = getelementptr inbounds %struct.permission_set, %struct.permission_set* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %44, label %21

21:                                               ; preds = %2
  store i64 0, i64* %7, align 8
  br label %22

22:                                               ; preds = %40, %21
  %23 = load i64, i64* %7, align 8
  %24 = load %struct.permission_set*, %struct.permission_set** %6, align 8
  %25 = getelementptr inbounds %struct.permission_set, %struct.permission_set* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ult i64 %23, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %22
  %29 = load %struct.permission_set*, %struct.permission_set** %6, align 8
  %30 = getelementptr inbounds %struct.permission_set, %struct.permission_set* %29, i32 0, i32 4
  %31 = load %struct.permission*, %struct.permission** %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds %struct.permission, %struct.permission* %31, i64 %32
  store %struct.permission* %33, %struct.permission** %10, align 8
  %34 = load %struct.permission*, %struct.permission** %10, align 8
  %35 = load %struct.Forward*, %struct.Forward** %4, align 8
  %36 = call i64 @remote_open_match(%struct.permission* %34, %struct.Forward* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  store i64 1, i64* %8, align 8
  br label %43

39:                                               ; preds = %28
  br label %40

40:                                               ; preds = %39
  %41 = load i64, i64* %7, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %7, align 8
  br label %22

43:                                               ; preds = %38, %22
  br label %44

44:                                               ; preds = %43, %2
  %45 = load %struct.permission_set*, %struct.permission_set** %6, align 8
  %46 = getelementptr inbounds %struct.permission_set, %struct.permission_set* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ugt i64 %47, 0
  br i1 %48, label %49, label %72

49:                                               ; preds = %44
  store i64 0, i64* %9, align 8
  store i64 0, i64* %7, align 8
  br label %50

50:                                               ; preds = %68, %49
  %51 = load i64, i64* %7, align 8
  %52 = load %struct.permission_set*, %struct.permission_set** %6, align 8
  %53 = getelementptr inbounds %struct.permission_set, %struct.permission_set* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ult i64 %51, %54
  br i1 %55, label %56, label %71

56:                                               ; preds = %50
  %57 = load %struct.permission_set*, %struct.permission_set** %6, align 8
  %58 = getelementptr inbounds %struct.permission_set, %struct.permission_set* %57, i32 0, i32 3
  %59 = load %struct.permission*, %struct.permission** %58, align 8
  %60 = load i64, i64* %7, align 8
  %61 = getelementptr inbounds %struct.permission, %struct.permission* %59, i64 %60
  store %struct.permission* %61, %struct.permission** %10, align 8
  %62 = load %struct.permission*, %struct.permission** %10, align 8
  %63 = load %struct.Forward*, %struct.Forward** %4, align 8
  %64 = call i64 @remote_open_match(%struct.permission* %62, %struct.Forward* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %56
  store i64 1, i64* %9, align 8
  br label %71

67:                                               ; preds = %56
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %7, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %7, align 8
  br label %50

71:                                               ; preds = %66, %50
  br label %72

72:                                               ; preds = %71, %44
  %73 = load i64, i64* %8, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i64, i64* %9, align 8
  %77 = icmp ne i64 %76, 0
  br label %78

78:                                               ; preds = %75, %72
  %79 = phi i1 [ false, %72 ], [ %77, %75 ]
  %80 = zext i1 %79 to i32
  ret i32 %80
}

declare dso_local i64 @remote_open_match(%struct.permission*, %struct.Forward*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
