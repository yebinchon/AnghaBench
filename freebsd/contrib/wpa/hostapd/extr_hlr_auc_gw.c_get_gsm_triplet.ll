; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_hlr_auc_gw.c_get_gsm_triplet.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_hlr_auc_gw.c_get_gsm_triplet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsm_triplet = type { %struct.gsm_triplet*, i32 }

@gsm_db_pos = common dso_local global %struct.gsm_triplet* null, align 8
@gsm_db = common dso_local global %struct.gsm_triplet* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gsm_triplet* (i8*)* @get_gsm_triplet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gsm_triplet* @get_gsm_triplet(i8* %0) #0 {
  %2 = alloca %struct.gsm_triplet*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.gsm_triplet*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load %struct.gsm_triplet*, %struct.gsm_triplet** @gsm_db_pos, align 8
  store %struct.gsm_triplet* %5, %struct.gsm_triplet** %4, align 8
  br label %6

6:                                                ; preds = %21, %1
  %7 = load %struct.gsm_triplet*, %struct.gsm_triplet** %4, align 8
  %8 = icmp ne %struct.gsm_triplet* %7, null
  br i1 %8, label %9, label %25

9:                                                ; preds = %6
  %10 = load %struct.gsm_triplet*, %struct.gsm_triplet** %4, align 8
  %11 = getelementptr inbounds %struct.gsm_triplet, %struct.gsm_triplet* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = call i64 @strcmp(i32 %12, i8* %13)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %9
  %17 = load %struct.gsm_triplet*, %struct.gsm_triplet** %4, align 8
  %18 = getelementptr inbounds %struct.gsm_triplet, %struct.gsm_triplet* %17, i32 0, i32 0
  %19 = load %struct.gsm_triplet*, %struct.gsm_triplet** %18, align 8
  store %struct.gsm_triplet* %19, %struct.gsm_triplet** @gsm_db_pos, align 8
  %20 = load %struct.gsm_triplet*, %struct.gsm_triplet** %4, align 8
  store %struct.gsm_triplet* %20, %struct.gsm_triplet** %2, align 8
  br label %53

21:                                               ; preds = %9
  %22 = load %struct.gsm_triplet*, %struct.gsm_triplet** %4, align 8
  %23 = getelementptr inbounds %struct.gsm_triplet, %struct.gsm_triplet* %22, i32 0, i32 0
  %24 = load %struct.gsm_triplet*, %struct.gsm_triplet** %23, align 8
  store %struct.gsm_triplet* %24, %struct.gsm_triplet** %4, align 8
  br label %6

25:                                               ; preds = %6
  %26 = load %struct.gsm_triplet*, %struct.gsm_triplet** @gsm_db, align 8
  store %struct.gsm_triplet* %26, %struct.gsm_triplet** %4, align 8
  br label %27

27:                                               ; preds = %48, %25
  %28 = load %struct.gsm_triplet*, %struct.gsm_triplet** %4, align 8
  %29 = icmp ne %struct.gsm_triplet* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load %struct.gsm_triplet*, %struct.gsm_triplet** %4, align 8
  %32 = load %struct.gsm_triplet*, %struct.gsm_triplet** @gsm_db_pos, align 8
  %33 = icmp ne %struct.gsm_triplet* %31, %32
  br label %34

34:                                               ; preds = %30, %27
  %35 = phi i1 [ false, %27 ], [ %33, %30 ]
  br i1 %35, label %36, label %52

36:                                               ; preds = %34
  %37 = load %struct.gsm_triplet*, %struct.gsm_triplet** %4, align 8
  %38 = getelementptr inbounds %struct.gsm_triplet, %struct.gsm_triplet* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i8*, i8** %3, align 8
  %41 = call i64 @strcmp(i32 %39, i8* %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %36
  %44 = load %struct.gsm_triplet*, %struct.gsm_triplet** %4, align 8
  %45 = getelementptr inbounds %struct.gsm_triplet, %struct.gsm_triplet* %44, i32 0, i32 0
  %46 = load %struct.gsm_triplet*, %struct.gsm_triplet** %45, align 8
  store %struct.gsm_triplet* %46, %struct.gsm_triplet** @gsm_db_pos, align 8
  %47 = load %struct.gsm_triplet*, %struct.gsm_triplet** %4, align 8
  store %struct.gsm_triplet* %47, %struct.gsm_triplet** %2, align 8
  br label %53

48:                                               ; preds = %36
  %49 = load %struct.gsm_triplet*, %struct.gsm_triplet** %4, align 8
  %50 = getelementptr inbounds %struct.gsm_triplet, %struct.gsm_triplet* %49, i32 0, i32 0
  %51 = load %struct.gsm_triplet*, %struct.gsm_triplet** %50, align 8
  store %struct.gsm_triplet* %51, %struct.gsm_triplet** %4, align 8
  br label %27

52:                                               ; preds = %34
  store %struct.gsm_triplet* null, %struct.gsm_triplet** %2, align 8
  br label %53

53:                                               ; preds = %52, %43, %16
  %54 = load %struct.gsm_triplet*, %struct.gsm_triplet** %2, align 8
  ret %struct.gsm_triplet* %54
}

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
