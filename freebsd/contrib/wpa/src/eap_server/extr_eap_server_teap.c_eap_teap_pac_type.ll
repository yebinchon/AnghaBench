; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_teap.c_eap_teap_pac_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_teap.c_eap_teap_pac_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.teap_attr_pac_type = type { i32, i32, i32 }

@PAC_TYPE_PAC_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32)* @eap_teap_pac_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_teap_pac_type(i32* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.teap_attr_pac_type*, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i64, i64* %6, align 8
  %13 = icmp ne i64 %12, 12
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %3
  store i32 0, i32* %4, align 4
  br label %40

15:                                               ; preds = %11
  %16 = load i32*, i32** %5, align 8
  %17 = bitcast i32* %16 to %struct.teap_attr_pac_type*
  store %struct.teap_attr_pac_type* %17, %struct.teap_attr_pac_type** %8, align 8
  %18 = load %struct.teap_attr_pac_type*, %struct.teap_attr_pac_type** %8, align 8
  %19 = getelementptr inbounds %struct.teap_attr_pac_type, %struct.teap_attr_pac_type* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @be_to_host16(i32 %20)
  %22 = load i32, i32* @PAC_TYPE_PAC_TYPE, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %15
  %25 = load %struct.teap_attr_pac_type*, %struct.teap_attr_pac_type** %8, align 8
  %26 = getelementptr inbounds %struct.teap_attr_pac_type, %struct.teap_attr_pac_type* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @be_to_host16(i32 %27)
  %29 = icmp eq i32 %28, 2
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load %struct.teap_attr_pac_type*, %struct.teap_attr_pac_type** %8, align 8
  %32 = getelementptr inbounds %struct.teap_attr_pac_type, %struct.teap_attr_pac_type* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @be_to_host16(i32 %33)
  %35 = load i32, i32* %7, align 4
  %36 = icmp eq i32 %34, %35
  br label %37

37:                                               ; preds = %30, %24, %15
  %38 = phi i1 [ false, %24 ], [ false, %15 ], [ %36, %30 ]
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %37, %14
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @be_to_host16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
