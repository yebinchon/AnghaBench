; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_fast.c_eap_fast_phase2_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_fast.c_eap_fast_phase2_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32, i32*, i32* }
%struct.eap_fast_data = type { i32*, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32* (%struct.eap_sm*)*, i32 (%struct.eap_sm*, i32*)* }
%struct.TYPE_3__ = type { i32*, i32* }

@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*, %struct.eap_fast_data*, i32)* @eap_fast_phase2_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_fast_phase2_init(%struct.eap_sm* %0, %struct.eap_fast_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca %struct.eap_fast_data*, align 8
  %7 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store %struct.eap_fast_data* %1, %struct.eap_fast_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.eap_fast_data*, %struct.eap_fast_data** %6, align 8
  %9 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %32

12:                                               ; preds = %3
  %13 = load %struct.eap_fast_data*, %struct.eap_fast_data** %6, align 8
  %14 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %17, label %32

17:                                               ; preds = %12
  %18 = load %struct.eap_fast_data*, %struct.eap_fast_data** %6, align 8
  %19 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32 (%struct.eap_sm*, i32*)*, i32 (%struct.eap_sm*, i32*)** %21, align 8
  %23 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %24 = load %struct.eap_fast_data*, %struct.eap_fast_data** %6, align 8
  %25 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 %22(%struct.eap_sm* %23, i32* %26)
  %28 = load %struct.eap_fast_data*, %struct.eap_fast_data** %6, align 8
  %29 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %28, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %29, align 8
  %30 = load %struct.eap_fast_data*, %struct.eap_fast_data** %6, align 8
  %31 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %30, i32 0, i32 0
  store i32* null, i32** %31, align 8
  br label %32

32:                                               ; preds = %17, %12, %3
  %33 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call %struct.TYPE_4__* @eap_server_get_eap_method(i32 %33, i32 %34)
  %36 = load %struct.eap_fast_data*, %struct.eap_fast_data** %6, align 8
  %37 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %36, i32 0, i32 1
  store %struct.TYPE_4__* %35, %struct.TYPE_4__** %37, align 8
  %38 = load %struct.eap_fast_data*, %struct.eap_fast_data** %6, align 8
  %39 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = icmp ne %struct.TYPE_4__* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %32
  store i32 -1, i32* %4, align 4
  br label %87

43:                                               ; preds = %32
  %44 = load %struct.eap_fast_data*, %struct.eap_fast_data** %6, align 8
  %45 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %44, i32 0, i32 2
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = icmp ne %struct.TYPE_3__* %46, null
  br i1 %47, label %48, label %63

48:                                               ; preds = %43
  %49 = load %struct.eap_fast_data*, %struct.eap_fast_data** %6, align 8
  %50 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %49, i32 0, i32 2
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %55 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %54, i32 0, i32 2
  store i32* %53, i32** %55, align 8
  %56 = load %struct.eap_fast_data*, %struct.eap_fast_data** %6, align 8
  %57 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %56, i32 0, i32 2
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %62 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %61, i32 0, i32 1
  store i32* %60, i32** %62, align 8
  br label %63

63:                                               ; preds = %48, %43
  %64 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %65 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  %66 = load %struct.eap_fast_data*, %struct.eap_fast_data** %6, align 8
  %67 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %66, i32 0, i32 1
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32* (%struct.eap_sm*)*, i32* (%struct.eap_sm*)** %69, align 8
  %71 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %72 = call i32* %70(%struct.eap_sm* %71)
  %73 = load %struct.eap_fast_data*, %struct.eap_fast_data** %6, align 8
  %74 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %73, i32 0, i32 0
  store i32* %72, i32** %74, align 8
  %75 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %76 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %75, i32 0, i32 0
  store i32 0, i32* %76, align 8
  %77 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %78 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %77, i32 0, i32 2
  store i32* null, i32** %78, align 8
  %79 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %80 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %79, i32 0, i32 1
  store i32* null, i32** %80, align 8
  %81 = load %struct.eap_fast_data*, %struct.eap_fast_data** %6, align 8
  %82 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = icmp eq i32* %83, null
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i32 -1, i32 0
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %63, %42
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local %struct.TYPE_4__* @eap_server_get_eap_method(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
