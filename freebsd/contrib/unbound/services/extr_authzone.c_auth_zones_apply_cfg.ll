; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_zones_apply_cfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_zones_apply_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_zones = type { i32 }
%struct.config_file = type { %struct.config_auth* }
%struct.config_auth = type { i64*, %struct.config_auth* }

@.str = private unnamed_addr constant [34 x i8] c"auth-zone without a name, skipped\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"cannot config auth zone %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @auth_zones_apply_cfg(%struct.auth_zones* %0, %struct.config_file* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.auth_zones*, align 8
  %6 = alloca %struct.config_file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.config_auth*, align 8
  store %struct.auth_zones* %0, %struct.auth_zones** %5, align 8
  store %struct.config_file* %1, %struct.config_file** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.auth_zones*, %struct.auth_zones** %5, align 8
  %10 = call i32 @az_setall_deleted(%struct.auth_zones* %9)
  %11 = load %struct.config_file*, %struct.config_file** %6, align 8
  %12 = getelementptr inbounds %struct.config_file, %struct.config_file* %11, i32 0, i32 0
  %13 = load %struct.config_auth*, %struct.config_auth** %12, align 8
  store %struct.config_auth* %13, %struct.config_auth** %8, align 8
  br label %14

14:                                               ; preds = %42, %3
  %15 = load %struct.config_auth*, %struct.config_auth** %8, align 8
  %16 = icmp ne %struct.config_auth* %15, null
  br i1 %16, label %17, label %46

17:                                               ; preds = %14
  %18 = load %struct.config_auth*, %struct.config_auth** %8, align 8
  %19 = getelementptr inbounds %struct.config_auth, %struct.config_auth* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = icmp ne i64* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load %struct.config_auth*, %struct.config_auth** %8, align 8
  %24 = getelementptr inbounds %struct.config_auth, %struct.config_auth* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22, %17
  %30 = call i32 @log_warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %42

31:                                               ; preds = %22
  %32 = load %struct.auth_zones*, %struct.auth_zones** %5, align 8
  %33 = load %struct.config_auth*, %struct.config_auth** %8, align 8
  %34 = call i32 @auth_zones_cfg(%struct.auth_zones* %32, %struct.config_auth* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load %struct.config_auth*, %struct.config_auth** %8, align 8
  %38 = getelementptr inbounds %struct.config_auth, %struct.config_auth* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = call i32 @log_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64* %39)
  store i32 0, i32* %4, align 4
  br label %64

41:                                               ; preds = %31
  br label %42

42:                                               ; preds = %41, %29
  %43 = load %struct.config_auth*, %struct.config_auth** %8, align 8
  %44 = getelementptr inbounds %struct.config_auth, %struct.config_auth* %43, i32 0, i32 1
  %45 = load %struct.config_auth*, %struct.config_auth** %44, align 8
  store %struct.config_auth* %45, %struct.config_auth** %8, align 8
  br label %14

46:                                               ; preds = %14
  %47 = load %struct.auth_zones*, %struct.auth_zones** %5, align 8
  %48 = call i32 @az_delete_deleted_zones(%struct.auth_zones* %47)
  %49 = load %struct.auth_zones*, %struct.auth_zones** %5, align 8
  %50 = load %struct.config_file*, %struct.config_file** %6, align 8
  %51 = call i32 @auth_zones_read_zones(%struct.auth_zones* %49, %struct.config_file* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %46
  store i32 0, i32* %4, align 4
  br label %64

54:                                               ; preds = %46
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load %struct.auth_zones*, %struct.auth_zones** %5, align 8
  %59 = call i32 @auth_zones_setup_zones(%struct.auth_zones* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %57
  store i32 0, i32* %4, align 4
  br label %64

62:                                               ; preds = %57
  br label %63

63:                                               ; preds = %62, %54
  store i32 1, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %61, %53, %36
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @az_setall_deleted(%struct.auth_zones*) #1

declare dso_local i32 @log_warn(i8*) #1

declare dso_local i32 @auth_zones_cfg(%struct.auth_zones*, %struct.config_auth*) #1

declare dso_local i32 @log_err(i8*, i64*) #1

declare dso_local i32 @az_delete_deleted_zones(%struct.auth_zones*) #1

declare dso_local i32 @auth_zones_read_zones(%struct.auth_zones*, %struct.config_file*) #1

declare dso_local i32 @auth_zones_setup_zones(%struct.auth_zones*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
