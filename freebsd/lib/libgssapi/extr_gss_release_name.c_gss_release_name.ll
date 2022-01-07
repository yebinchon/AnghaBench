; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libgssapi/extr_gss_release_name.c_gss_release_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libgssapi/extr_gss_release_name.c_gss_release_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._gss_name = type { i32, i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 (i64*, i32*)* }
%struct.TYPE_3__ = type { %struct._gss_name* }
%struct._gss_mechanism_name = type { i32, i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__ }

@gmn_link = common dso_local global i32 0, align 4
@GSS_C_NO_NAME = common dso_local global i64 0, align 8
@GSS_S_COMPLETE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @gss_release_name(i64* %0, i64* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct._gss_name*, align 8
  %6 = alloca %struct._gss_mechanism_name*, align 8
  store i64* %0, i64** %3, align 8
  store i64* %1, i64** %4, align 8
  %7 = load i64*, i64** %4, align 8
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct._gss_name*
  store %struct._gss_name* %9, %struct._gss_name** %5, align 8
  %10 = load i64*, i64** %3, align 8
  store i64 0, i64* %10, align 8
  %11 = load %struct._gss_name*, %struct._gss_name** %5, align 8
  %12 = icmp ne %struct._gss_name* %11, null
  br i1 %12, label %13, label %61

13:                                               ; preds = %2
  %14 = load %struct._gss_name*, %struct._gss_name** %5, align 8
  %15 = getelementptr inbounds %struct._gss_name, %struct._gss_name* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct._gss_name*, %struct._gss_name** %16, align 8
  %18 = icmp ne %struct._gss_name* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %13
  %20 = load %struct._gss_name*, %struct._gss_name** %5, align 8
  %21 = getelementptr inbounds %struct._gss_name, %struct._gss_name* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct._gss_name*, %struct._gss_name** %22, align 8
  %24 = call i32 @free(%struct._gss_name* %23)
  br label %25

25:                                               ; preds = %19, %13
  br label %26

26:                                               ; preds = %31, %25
  %27 = load %struct._gss_name*, %struct._gss_name** %5, align 8
  %28 = getelementptr inbounds %struct._gss_name, %struct._gss_name* %27, i32 0, i32 3
  %29 = call %struct._gss_name* @SLIST_FIRST(i32* %28)
  %30 = icmp ne %struct._gss_name* %29, null
  br i1 %30, label %31, label %52

31:                                               ; preds = %26
  %32 = load %struct._gss_name*, %struct._gss_name** %5, align 8
  %33 = getelementptr inbounds %struct._gss_name, %struct._gss_name* %32, i32 0, i32 3
  %34 = call %struct._gss_name* @SLIST_FIRST(i32* %33)
  %35 = bitcast %struct._gss_name* %34 to %struct._gss_mechanism_name*
  store %struct._gss_mechanism_name* %35, %struct._gss_mechanism_name** %6, align 8
  %36 = load %struct._gss_name*, %struct._gss_name** %5, align 8
  %37 = getelementptr inbounds %struct._gss_name, %struct._gss_name* %36, i32 0, i32 3
  %38 = load i32, i32* @gmn_link, align 4
  %39 = call i32 @SLIST_REMOVE_HEAD(i32* %37, i32 %38)
  %40 = load %struct._gss_mechanism_name*, %struct._gss_mechanism_name** %6, align 8
  %41 = getelementptr inbounds %struct._gss_mechanism_name, %struct._gss_mechanism_name* %40, i32 0, i32 2
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32 (i64*, i32*)*, i32 (i64*, i32*)** %43, align 8
  %45 = load i64*, i64** %3, align 8
  %46 = load %struct._gss_mechanism_name*, %struct._gss_mechanism_name** %6, align 8
  %47 = getelementptr inbounds %struct._gss_mechanism_name, %struct._gss_mechanism_name* %46, i32 0, i32 1
  %48 = call i32 %44(i64* %45, i32* %47)
  %49 = load %struct._gss_mechanism_name*, %struct._gss_mechanism_name** %6, align 8
  %50 = bitcast %struct._gss_mechanism_name* %49 to %struct._gss_name*
  %51 = call i32 @free(%struct._gss_name* %50)
  br label %26

52:                                               ; preds = %26
  %53 = load i64*, i64** %3, align 8
  %54 = load %struct._gss_name*, %struct._gss_name** %5, align 8
  %55 = getelementptr inbounds %struct._gss_name, %struct._gss_name* %54, i32 0, i32 0
  %56 = call i32 @gss_release_buffer(i64* %53, i32* %55)
  %57 = load %struct._gss_name*, %struct._gss_name** %5, align 8
  %58 = call i32 @free(%struct._gss_name* %57)
  %59 = load i64, i64* @GSS_C_NO_NAME, align 8
  %60 = load i64*, i64** %4, align 8
  store i64 %59, i64* %60, align 8
  br label %61

61:                                               ; preds = %52, %2
  %62 = load i64, i64* @GSS_S_COMPLETE, align 8
  ret i64 %62
}

declare dso_local i32 @free(%struct._gss_name*) #1

declare dso_local %struct._gss_name* @SLIST_FIRST(i32*) #1

declare dso_local i32 @SLIST_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @gss_release_buffer(i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
