; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast_pac.c_eap_fast_pac_get_a_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast_pac.c_eap_fast_pac_get_a_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_fast_pac = type { i32, i32, i32, i32*, i32*, i32* }

@PAC_TYPE_A_ID = common dso_local global i32 0, align 4
@PAC_TYPE_A_ID_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_fast_pac*)* @eap_fast_pac_get_a_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_fast_pac_get_a_id(%struct.eap_fast_pac* %0) #0 {
  %2 = alloca %struct.eap_fast_pac*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.eap_fast_pac* %0, %struct.eap_fast_pac** %2, align 8
  %7 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %2, align 8
  %8 = getelementptr inbounds %struct.eap_fast_pac, %struct.eap_fast_pac* %7, i32 0, i32 5
  %9 = load i32*, i32** %8, align 8
  store i32* %9, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %2, align 8
  %12 = getelementptr inbounds %struct.eap_fast_pac, %struct.eap_fast_pac* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %10, i64 %14
  store i32* %15, i32** %4, align 8
  br label %16

16:                                               ; preds = %91, %1
  %17 = load i32*, i32** %4, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = ptrtoint i32* %17 to i64
  %20 = ptrtoint i32* %18 to i64
  %21 = sub i64 %19, %20
  %22 = sdiv exact i64 %21, 4
  %23 = icmp sgt i64 %22, 4
  br i1 %23, label %24, label %96

24:                                               ; preds = %16
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @WPA_GET_BE16(i32* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32*, i32** %3, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  store i32* %28, i32** %3, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @WPA_GET_BE16(i32* %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32*, i32** %3, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  store i32* %32, i32** %3, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32*, i32** %4, align 8
  %35 = load i32*, i32** %3, align 8
  %36 = ptrtoint i32* %34 to i64
  %37 = ptrtoint i32* %35 to i64
  %38 = sub i64 %36, %37
  %39 = sdiv exact i64 %38, 4
  %40 = trunc i64 %39 to i32
  %41 = icmp ugt i32 %33, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %24
  br label %96

43:                                               ; preds = %24
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @PAC_TYPE_A_ID, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %67

47:                                               ; preds = %43
  %48 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %2, align 8
  %49 = getelementptr inbounds %struct.eap_fast_pac, %struct.eap_fast_pac* %48, i32 0, i32 4
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @os_free(i32* %50)
  %52 = load i32*, i32** %3, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i8* @os_memdup(i32* %52, i32 %53)
  %55 = bitcast i8* %54 to i32*
  %56 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %2, align 8
  %57 = getelementptr inbounds %struct.eap_fast_pac, %struct.eap_fast_pac* %56, i32 0, i32 4
  store i32* %55, i32** %57, align 8
  %58 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %2, align 8
  %59 = getelementptr inbounds %struct.eap_fast_pac, %struct.eap_fast_pac* %58, i32 0, i32 4
  %60 = load i32*, i32** %59, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %47
  br label %96

63:                                               ; preds = %47
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %2, align 8
  %66 = getelementptr inbounds %struct.eap_fast_pac, %struct.eap_fast_pac* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  br label %67

67:                                               ; preds = %63, %43
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @PAC_TYPE_A_ID_INFO, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %91

71:                                               ; preds = %67
  %72 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %2, align 8
  %73 = getelementptr inbounds %struct.eap_fast_pac, %struct.eap_fast_pac* %72, i32 0, i32 3
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @os_free(i32* %74)
  %76 = load i32*, i32** %3, align 8
  %77 = load i32, i32* %6, align 4
  %78 = call i8* @os_memdup(i32* %76, i32 %77)
  %79 = bitcast i8* %78 to i32*
  %80 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %2, align 8
  %81 = getelementptr inbounds %struct.eap_fast_pac, %struct.eap_fast_pac* %80, i32 0, i32 3
  store i32* %79, i32** %81, align 8
  %82 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %2, align 8
  %83 = getelementptr inbounds %struct.eap_fast_pac, %struct.eap_fast_pac* %82, i32 0, i32 3
  %84 = load i32*, i32** %83, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %86, label %87

86:                                               ; preds = %71
  br label %96

87:                                               ; preds = %71
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %2, align 8
  %90 = getelementptr inbounds %struct.eap_fast_pac, %struct.eap_fast_pac* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 8
  br label %91

91:                                               ; preds = %87, %67
  %92 = load i32, i32* %6, align 4
  %93 = load i32*, i32** %3, align 8
  %94 = zext i32 %92 to i64
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  store i32* %95, i32** %3, align 8
  br label %16

96:                                               ; preds = %86, %62, %42, %16
  ret void
}

declare dso_local i32 @WPA_GET_BE16(i32*) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i8* @os_memdup(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
