; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libgssapi/extr_gss_release_cred.c_gss_release_cred.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libgssapi/extr_gss_release_cred.c_gss_release_cred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._gss_cred = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (i64*, i32*)* }
%struct._gss_mechanism_cred = type { i32, %struct.TYPE_2__*, i32 }

@GSS_C_NO_CREDENTIAL = common dso_local global i64 0, align 8
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@gmc_link = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @gss_release_cred(i64* %0, i64* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct._gss_cred*, align 8
  %7 = alloca %struct._gss_mechanism_cred*, align 8
  store i64* %0, i64** %4, align 8
  store i64* %1, i64** %5, align 8
  %8 = load i64*, i64** %5, align 8
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct._gss_cred*
  store %struct._gss_cred* %10, %struct._gss_cred** %6, align 8
  %11 = load i64*, i64** %5, align 8
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @GSS_C_NO_CREDENTIAL, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i64, i64* @GSS_S_COMPLETE, align 8
  store i64 %16, i64* %3, align 8
  br label %50

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %23, %17
  %19 = load %struct._gss_cred*, %struct._gss_cred** %6, align 8
  %20 = getelementptr inbounds %struct._gss_cred, %struct._gss_cred* %19, i32 0, i32 2
  %21 = call %struct._gss_mechanism_cred* @SLIST_FIRST(i32* %20)
  %22 = icmp ne %struct._gss_mechanism_cred* %21, null
  br i1 %22, label %23, label %42

23:                                               ; preds = %18
  %24 = load %struct._gss_cred*, %struct._gss_cred** %6, align 8
  %25 = getelementptr inbounds %struct._gss_cred, %struct._gss_cred* %24, i32 0, i32 2
  %26 = call %struct._gss_mechanism_cred* @SLIST_FIRST(i32* %25)
  store %struct._gss_mechanism_cred* %26, %struct._gss_mechanism_cred** %7, align 8
  %27 = load %struct._gss_cred*, %struct._gss_cred** %6, align 8
  %28 = getelementptr inbounds %struct._gss_cred, %struct._gss_cred* %27, i32 0, i32 2
  %29 = load i32, i32* @gmc_link, align 4
  %30 = call i32 @SLIST_REMOVE_HEAD(i32* %28, i32 %29)
  %31 = load %struct._gss_mechanism_cred*, %struct._gss_mechanism_cred** %7, align 8
  %32 = getelementptr inbounds %struct._gss_mechanism_cred, %struct._gss_mechanism_cred* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32 (i64*, i32*)*, i32 (i64*, i32*)** %34, align 8
  %36 = load i64*, i64** %4, align 8
  %37 = load %struct._gss_mechanism_cred*, %struct._gss_mechanism_cred** %7, align 8
  %38 = getelementptr inbounds %struct._gss_mechanism_cred, %struct._gss_mechanism_cred* %37, i32 0, i32 0
  %39 = call i32 %35(i64* %36, i32* %38)
  %40 = load %struct._gss_mechanism_cred*, %struct._gss_mechanism_cred** %7, align 8
  %41 = call i32 @free(%struct._gss_mechanism_cred* %40)
  br label %18

42:                                               ; preds = %18
  %43 = load %struct._gss_cred*, %struct._gss_cred** %6, align 8
  %44 = bitcast %struct._gss_cred* %43 to %struct._gss_mechanism_cred*
  %45 = call i32 @free(%struct._gss_mechanism_cred* %44)
  %46 = load i64*, i64** %4, align 8
  store i64 0, i64* %46, align 8
  %47 = load i64, i64* @GSS_C_NO_CREDENTIAL, align 8
  %48 = load i64*, i64** %5, align 8
  store i64 %47, i64* %48, align 8
  %49 = load i64, i64* @GSS_S_COMPLETE, align 8
  store i64 %49, i64* %3, align 8
  br label %50

50:                                               ; preds = %42, %15
  %51 = load i64, i64* %3, align 8
  ret i64 %51
}

declare dso_local %struct._gss_mechanism_cred* @SLIST_FIRST(i32*) #1

declare dso_local i32 @SLIST_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @free(%struct._gss_mechanism_cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
