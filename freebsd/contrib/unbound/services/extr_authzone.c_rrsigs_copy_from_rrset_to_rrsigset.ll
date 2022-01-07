; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_rrsigs_copy_from_rrset_to_rrsigset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_rrsigs_copy_from_rrset_to_rrsigset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_rrset = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i64*, i32*, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.auth_rrset*, %struct.auth_rrset*)* @rrsigs_copy_from_rrset_to_rrsigset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rrsigs_copy_from_rrset_to_rrsigset(%struct.auth_rrset* %0, %struct.auth_rrset* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.auth_rrset*, align 8
  %5 = alloca %struct.auth_rrset*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.auth_rrset* %0, %struct.auth_rrset** %4, align 8
  store %struct.auth_rrset* %1, %struct.auth_rrset** %5, align 8
  %10 = load %struct.auth_rrset*, %struct.auth_rrset** %4, align 8
  %11 = getelementptr inbounds %struct.auth_rrset, %struct.auth_rrset* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %83

17:                                               ; preds = %2
  %18 = load %struct.auth_rrset*, %struct.auth_rrset** %4, align 8
  %19 = getelementptr inbounds %struct.auth_rrset, %struct.auth_rrset* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %6, align 8
  br label %23

23:                                               ; preds = %79, %17
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.auth_rrset*, %struct.auth_rrset** %4, align 8
  %26 = getelementptr inbounds %struct.auth_rrset, %struct.auth_rrset* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.auth_rrset*, %struct.auth_rrset** %4, align 8
  %31 = getelementptr inbounds %struct.auth_rrset, %struct.auth_rrset* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add i64 %29, %34
  %36 = icmp ult i64 %24, %35
  br i1 %36, label %37, label %82

37:                                               ; preds = %23
  %38 = load %struct.auth_rrset*, %struct.auth_rrset** %4, align 8
  %39 = getelementptr inbounds %struct.auth_rrset, %struct.auth_rrset* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 4
  %42 = load i32**, i32*** %41, align 8
  %43 = load i64, i64* %6, align 8
  %44 = getelementptr inbounds i32*, i32** %42, i64 %43
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %7, align 8
  %46 = load %struct.auth_rrset*, %struct.auth_rrset** %4, align 8
  %47 = getelementptr inbounds %struct.auth_rrset, %struct.auth_rrset* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  %50 = load i64*, i64** %49, align 8
  %51 = load i64, i64* %6, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %8, align 8
  %54 = load %struct.auth_rrset*, %struct.auth_rrset** %4, align 8
  %55 = getelementptr inbounds %struct.auth_rrset, %struct.auth_rrset* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 3
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* %6, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %9, align 4
  %62 = load %struct.auth_rrset*, %struct.auth_rrset** %5, align 8
  %63 = getelementptr inbounds %struct.auth_rrset, %struct.auth_rrset* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = load i64, i64* %8, align 8
  %67 = call i64 @rdata_duplicate(%struct.TYPE_2__* %64, i32* %65, i64 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %37
  br label %79

70:                                               ; preds = %37
  %71 = load %struct.auth_rrset*, %struct.auth_rrset** %5, align 8
  %72 = load i32, i32* %9, align 4
  %73 = load i32*, i32** %7, align 8
  %74 = load i64, i64* %8, align 8
  %75 = call i32 @rrset_add_rr(%struct.auth_rrset* %71, i32 %72, i32* %73, i64 %74, i32 0)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %70
  store i32 0, i32* %3, align 4
  br label %83

78:                                               ; preds = %70
  br label %79

79:                                               ; preds = %78, %69
  %80 = load i64, i64* %6, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %6, align 8
  br label %23

82:                                               ; preds = %23
  store i32 1, i32* %3, align 4
  br label %83

83:                                               ; preds = %82, %77, %16
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i64 @rdata_duplicate(%struct.TYPE_2__*, i32*, i64) #1

declare dso_local i32 @rrset_add_rr(%struct.auth_rrset*, i32, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
