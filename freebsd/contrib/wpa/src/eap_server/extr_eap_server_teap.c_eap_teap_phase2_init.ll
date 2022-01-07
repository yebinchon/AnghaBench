; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_teap.c_eap_teap_phase2_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_teap.c_eap_teap_phase2_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_teap_data = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* (%struct.eap_sm*)*, i32 (%struct.eap_sm*, i32*)* }

@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*, %struct.eap_teap_data*, i32)* @eap_teap_phase2_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_teap_phase2_init(%struct.eap_sm* %0, %struct.eap_teap_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca %struct.eap_teap_data*, align 8
  %7 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store %struct.eap_teap_data* %1, %struct.eap_teap_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.eap_teap_data*, %struct.eap_teap_data** %6, align 8
  %9 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %32

12:                                               ; preds = %3
  %13 = load %struct.eap_teap_data*, %struct.eap_teap_data** %6, align 8
  %14 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = icmp ne %struct.TYPE_2__* %15, null
  br i1 %16, label %17, label %32

17:                                               ; preds = %12
  %18 = load %struct.eap_teap_data*, %struct.eap_teap_data** %6, align 8
  %19 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32 (%struct.eap_sm*, i32*)*, i32 (%struct.eap_sm*, i32*)** %21, align 8
  %23 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %24 = load %struct.eap_teap_data*, %struct.eap_teap_data** %6, align 8
  %25 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 %22(%struct.eap_sm* %23, i32* %26)
  %28 = load %struct.eap_teap_data*, %struct.eap_teap_data** %6, align 8
  %29 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %28, i32 0, i32 1
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %29, align 8
  %30 = load %struct.eap_teap_data*, %struct.eap_teap_data** %6, align 8
  %31 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %30, i32 0, i32 0
  store i32* null, i32** %31, align 8
  br label %32

32:                                               ; preds = %17, %12, %3
  %33 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call %struct.TYPE_2__* @eap_server_get_eap_method(i32 %33, i32 %34)
  %36 = load %struct.eap_teap_data*, %struct.eap_teap_data** %6, align 8
  %37 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %36, i32 0, i32 1
  store %struct.TYPE_2__* %35, %struct.TYPE_2__** %37, align 8
  %38 = load %struct.eap_teap_data*, %struct.eap_teap_data** %6, align 8
  %39 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = icmp ne %struct.TYPE_2__* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %32
  store i32 -1, i32* %4, align 4
  br label %63

43:                                               ; preds = %32
  %44 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %45 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %44, i32 0, i32 0
  store i32 1, i32* %45, align 4
  %46 = load %struct.eap_teap_data*, %struct.eap_teap_data** %6, align 8
  %47 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32* (%struct.eap_sm*)*, i32* (%struct.eap_sm*)** %49, align 8
  %51 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %52 = call i32* %50(%struct.eap_sm* %51)
  %53 = load %struct.eap_teap_data*, %struct.eap_teap_data** %6, align 8
  %54 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %53, i32 0, i32 0
  store i32* %52, i32** %54, align 8
  %55 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %56 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %55, i32 0, i32 0
  store i32 0, i32* %56, align 4
  %57 = load %struct.eap_teap_data*, %struct.eap_teap_data** %6, align 8
  %58 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 0, i32 -1
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %43, %42
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local %struct.TYPE_2__* @eap_server_get_eap_method(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
