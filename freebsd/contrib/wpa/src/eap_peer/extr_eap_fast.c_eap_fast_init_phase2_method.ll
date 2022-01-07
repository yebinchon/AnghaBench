; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast.c_eap_fast_init_phase2_method.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast.c_eap_fast_init_phase2_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32, i32*, i32* }
%struct.eap_fast_data = type { i32*, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32* (%struct.eap_sm*)* }
%struct.TYPE_5__ = type { i32*, i32* }
%struct.TYPE_4__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*, %struct.eap_fast_data*)* @eap_fast_init_phase2_method to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_fast_init_phase2_method(%struct.eap_sm* %0, %struct.eap_fast_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.eap_sm*, align 8
  %5 = alloca %struct.eap_fast_data*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %4, align 8
  store %struct.eap_fast_data* %1, %struct.eap_fast_data** %5, align 8
  %6 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %7 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %11 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.TYPE_6__* @eap_peer_get_eap_method(i32 %9, i32 %13)
  %15 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %16 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %15, i32 0, i32 1
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %16, align 8
  %17 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %18 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = icmp eq %struct.TYPE_6__* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %66

22:                                               ; preds = %2
  %23 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %24 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %23, i32 0, i32 2
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = icmp ne %struct.TYPE_5__* %25, null
  br i1 %26, label %27, label %42

27:                                               ; preds = %22
  %28 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %29 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %28, i32 0, i32 2
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %34 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %33, i32 0, i32 2
  store i32* %32, i32** %34, align 8
  %35 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %36 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %35, i32 0, i32 2
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %41 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %40, i32 0, i32 1
  store i32* %39, i32** %41, align 8
  br label %42

42:                                               ; preds = %27, %22
  %43 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %44 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %46 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %45, i32 0, i32 1
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32* (%struct.eap_sm*)*, i32* (%struct.eap_sm*)** %48, align 8
  %50 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %51 = call i32* %49(%struct.eap_sm* %50)
  %52 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %53 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %52, i32 0, i32 0
  store i32* %51, i32** %53, align 8
  %54 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %55 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %54, i32 0, i32 0
  store i32 0, i32* %55, align 8
  %56 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %57 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %56, i32 0, i32 2
  store i32* null, i32** %57, align 8
  %58 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %59 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %58, i32 0, i32 1
  store i32* null, i32** %59, align 8
  %60 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %61 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = icmp eq i32* %62, null
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 -1, i32 0
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %42, %21
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.TYPE_6__* @eap_peer_get_eap_method(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
