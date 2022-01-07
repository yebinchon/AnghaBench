; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_channels.c_channel_connect_to_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_channels.c_channel_connect_to_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { %struct.ssh_channels* }
%struct.ssh_channels = type { %struct.permission_set }
%struct.permission_set = type { i64, i64, i64, %struct.permission*, %struct.permission* }
%struct.permission = type { i32 }

@PORT_STREAMLOCAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"Received request to connect to path %.100s, but the request was denied.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @channel_connect_to_path(%struct.ssh* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ssh*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ssh_channels*, align 8
  %11 = alloca %struct.permission_set*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.permission*, align 8
  store %struct.ssh* %0, %struct.ssh** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load %struct.ssh*, %struct.ssh** %6, align 8
  %17 = getelementptr inbounds %struct.ssh, %struct.ssh* %16, i32 0, i32 0
  %18 = load %struct.ssh_channels*, %struct.ssh_channels** %17, align 8
  store %struct.ssh_channels* %18, %struct.ssh_channels** %10, align 8
  %19 = load %struct.ssh_channels*, %struct.ssh_channels** %10, align 8
  %20 = getelementptr inbounds %struct.ssh_channels, %struct.ssh_channels* %19, i32 0, i32 0
  store %struct.permission_set* %20, %struct.permission_set** %11, align 8
  store i64 1, i64* %14, align 8
  %21 = load %struct.permission_set*, %struct.permission_set** %11, align 8
  %22 = getelementptr inbounds %struct.permission_set, %struct.permission_set* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %13, align 8
  %24 = load i64, i64* %13, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %50, label %26

26:                                               ; preds = %4
  store i64 0, i64* %12, align 8
  br label %27

27:                                               ; preds = %46, %26
  %28 = load i64, i64* %12, align 8
  %29 = load %struct.permission_set*, %struct.permission_set** %11, align 8
  %30 = getelementptr inbounds %struct.permission_set, %struct.permission_set* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ult i64 %28, %31
  br i1 %32, label %33, label %49

33:                                               ; preds = %27
  %34 = load %struct.permission_set*, %struct.permission_set** %11, align 8
  %35 = getelementptr inbounds %struct.permission_set, %struct.permission_set* %34, i32 0, i32 4
  %36 = load %struct.permission*, %struct.permission** %35, align 8
  %37 = load i64, i64* %12, align 8
  %38 = getelementptr inbounds %struct.permission, %struct.permission* %36, i64 %37
  store %struct.permission* %38, %struct.permission** %15, align 8
  %39 = load %struct.permission*, %struct.permission** %15, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = load i32, i32* @PORT_STREAMLOCAL, align 4
  %42 = call i64 @open_match(%struct.permission* %39, i8* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  store i64 1, i64* %13, align 8
  br label %49

45:                                               ; preds = %33
  br label %46

46:                                               ; preds = %45
  %47 = load i64, i64* %12, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %12, align 8
  br label %27

49:                                               ; preds = %44, %27
  br label %50

50:                                               ; preds = %49, %4
  %51 = load %struct.permission_set*, %struct.permission_set** %11, align 8
  %52 = getelementptr inbounds %struct.permission_set, %struct.permission_set* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ugt i64 %53, 0
  br i1 %54, label %55, label %79

55:                                               ; preds = %50
  store i64 0, i64* %14, align 8
  store i64 0, i64* %12, align 8
  br label %56

56:                                               ; preds = %75, %55
  %57 = load i64, i64* %12, align 8
  %58 = load %struct.permission_set*, %struct.permission_set** %11, align 8
  %59 = getelementptr inbounds %struct.permission_set, %struct.permission_set* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ult i64 %57, %60
  br i1 %61, label %62, label %78

62:                                               ; preds = %56
  %63 = load %struct.permission_set*, %struct.permission_set** %11, align 8
  %64 = getelementptr inbounds %struct.permission_set, %struct.permission_set* %63, i32 0, i32 3
  %65 = load %struct.permission*, %struct.permission** %64, align 8
  %66 = load i64, i64* %12, align 8
  %67 = getelementptr inbounds %struct.permission, %struct.permission* %65, i64 %66
  store %struct.permission* %67, %struct.permission** %15, align 8
  %68 = load %struct.permission*, %struct.permission** %15, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = load i32, i32* @PORT_STREAMLOCAL, align 4
  %71 = call i64 @open_match(%struct.permission* %68, i8* %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %62
  store i64 1, i64* %14, align 8
  br label %78

74:                                               ; preds = %62
  br label %75

75:                                               ; preds = %74
  %76 = load i64, i64* %12, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %12, align 8
  br label %56

78:                                               ; preds = %73, %56
  br label %79

79:                                               ; preds = %78, %50
  %80 = load i64, i64* %13, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i64, i64* %14, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %82, %79
  %86 = load i8*, i8** %7, align 8
  %87 = call i32 @logit(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i8* %86)
  store i32* null, i32** %5, align 8
  br label %95

88:                                               ; preds = %82
  %89 = load %struct.ssh*, %struct.ssh** %6, align 8
  %90 = load i8*, i8** %7, align 8
  %91 = load i32, i32* @PORT_STREAMLOCAL, align 4
  %92 = load i8*, i8** %8, align 8
  %93 = load i8*, i8** %9, align 8
  %94 = call i32* @connect_to(%struct.ssh* %89, i8* %90, i32 %91, i8* %92, i8* %93)
  store i32* %94, i32** %5, align 8
  br label %95

95:                                               ; preds = %88, %85
  %96 = load i32*, i32** %5, align 8
  ret i32* %96
}

declare dso_local i64 @open_match(%struct.permission*, i8*, i32) #1

declare dso_local i32 @logit(i8*, i8*) #1

declare dso_local i32* @connect_to(%struct.ssh*, i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
