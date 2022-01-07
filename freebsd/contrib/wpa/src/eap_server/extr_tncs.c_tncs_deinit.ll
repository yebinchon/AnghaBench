; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_tncs.c_tncs_deinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_tncs.c_tncs_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.tncs_data* }
%struct.tncs_data = type { %struct.tncs_data*, %struct.tncs_data*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.tncs_data* }

@TNC_MAX_IMV_ID = common dso_local global i32 0, align 4
@tncs_global_data = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tncs_deinit(%struct.tncs_data* %0) #0 {
  %2 = alloca %struct.tncs_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.tncs_data*, align 8
  %5 = alloca %struct.tncs_data*, align 8
  store %struct.tncs_data* %0, %struct.tncs_data** %2, align 8
  %6 = load %struct.tncs_data*, %struct.tncs_data** %2, align 8
  %7 = icmp eq %struct.tncs_data* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %66

9:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %24, %9
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @TNC_MAX_IMV_ID, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %10
  %15 = load %struct.tncs_data*, %struct.tncs_data** %2, align 8
  %16 = getelementptr inbounds %struct.tncs_data, %struct.tncs_data* %15, i32 0, i32 2
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.tncs_data*, %struct.tncs_data** %21, align 8
  %23 = call i32 @os_free(%struct.tncs_data* %22)
  br label %24

24:                                               ; preds = %14
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %3, align 4
  br label %10

27:                                               ; preds = %10
  store %struct.tncs_data* null, %struct.tncs_data** %4, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tncs_global_data, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.tncs_data*, %struct.tncs_data** %29, align 8
  store %struct.tncs_data* %30, %struct.tncs_data** %5, align 8
  br label %31

31:                                               ; preds = %54, %27
  %32 = load %struct.tncs_data*, %struct.tncs_data** %5, align 8
  %33 = icmp ne %struct.tncs_data* %32, null
  br i1 %33, label %34, label %59

34:                                               ; preds = %31
  %35 = load %struct.tncs_data*, %struct.tncs_data** %5, align 8
  %36 = load %struct.tncs_data*, %struct.tncs_data** %2, align 8
  %37 = icmp eq %struct.tncs_data* %35, %36
  br i1 %37, label %38, label %54

38:                                               ; preds = %34
  %39 = load %struct.tncs_data*, %struct.tncs_data** %4, align 8
  %40 = icmp ne %struct.tncs_data* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load %struct.tncs_data*, %struct.tncs_data** %2, align 8
  %43 = getelementptr inbounds %struct.tncs_data, %struct.tncs_data* %42, i32 0, i32 1
  %44 = load %struct.tncs_data*, %struct.tncs_data** %43, align 8
  %45 = load %struct.tncs_data*, %struct.tncs_data** %4, align 8
  %46 = getelementptr inbounds %struct.tncs_data, %struct.tncs_data* %45, i32 0, i32 1
  store %struct.tncs_data* %44, %struct.tncs_data** %46, align 8
  br label %53

47:                                               ; preds = %38
  %48 = load %struct.tncs_data*, %struct.tncs_data** %2, align 8
  %49 = getelementptr inbounds %struct.tncs_data, %struct.tncs_data* %48, i32 0, i32 1
  %50 = load %struct.tncs_data*, %struct.tncs_data** %49, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tncs_global_data, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store %struct.tncs_data* %50, %struct.tncs_data** %52, align 8
  br label %53

53:                                               ; preds = %47, %41
  br label %59

54:                                               ; preds = %34
  %55 = load %struct.tncs_data*, %struct.tncs_data** %5, align 8
  store %struct.tncs_data* %55, %struct.tncs_data** %4, align 8
  %56 = load %struct.tncs_data*, %struct.tncs_data** %5, align 8
  %57 = getelementptr inbounds %struct.tncs_data, %struct.tncs_data* %56, i32 0, i32 1
  %58 = load %struct.tncs_data*, %struct.tncs_data** %57, align 8
  store %struct.tncs_data* %58, %struct.tncs_data** %5, align 8
  br label %31

59:                                               ; preds = %53, %31
  %60 = load %struct.tncs_data*, %struct.tncs_data** %2, align 8
  %61 = getelementptr inbounds %struct.tncs_data, %struct.tncs_data* %60, i32 0, i32 0
  %62 = load %struct.tncs_data*, %struct.tncs_data** %61, align 8
  %63 = call i32 @os_free(%struct.tncs_data* %62)
  %64 = load %struct.tncs_data*, %struct.tncs_data** %2, align 8
  %65 = call i32 @os_free(%struct.tncs_data* %64)
  br label %66

66:                                               ; preds = %59, %8
  ret void
}

declare dso_local i32 @os_free(%struct.tncs_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
