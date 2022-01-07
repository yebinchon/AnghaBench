; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_daemon_remote_open_ports.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_daemon_remote_open_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.listen_port = type { i32 }
%struct.config_file = type { i64, i64, i64, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { %struct.config_strlist* }
%struct.config_strlist = type { i8*, %struct.config_strlist* }

@.str = private unnamed_addr constant [4 x i8] c"::1\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.listen_port* @daemon_remote_open_ports(%struct.config_file* %0) #0 {
  %2 = alloca %struct.listen_port*, align 8
  %3 = alloca %struct.config_file*, align 8
  %4 = alloca %struct.listen_port*, align 8
  %5 = alloca %struct.config_strlist*, align 8
  store %struct.config_file* %0, %struct.config_file** %3, align 8
  store %struct.listen_port* null, %struct.listen_port** %4, align 8
  %6 = load %struct.config_file*, %struct.config_file** %3, align 8
  %7 = getelementptr inbounds %struct.config_file, %struct.config_file* %6, i32 0, i32 4
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.config_file*, %struct.config_file** %3, align 8
  %12 = getelementptr inbounds %struct.config_file, %struct.config_file* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br label %15

15:                                               ; preds = %10, %1
  %16 = phi i1 [ false, %1 ], [ %14, %10 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @log_assert(i32 %17)
  %19 = load %struct.config_file*, %struct.config_file** %3, align 8
  %20 = getelementptr inbounds %struct.config_file, %struct.config_file* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.config_strlist*, %struct.config_strlist** %21, align 8
  %23 = icmp ne %struct.config_strlist* %22, null
  br i1 %23, label %24, label %51

24:                                               ; preds = %15
  %25 = load %struct.config_file*, %struct.config_file** %3, align 8
  %26 = getelementptr inbounds %struct.config_file, %struct.config_file* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.config_strlist*, %struct.config_strlist** %27, align 8
  store %struct.config_strlist* %28, %struct.config_strlist** %5, align 8
  br label %29

29:                                               ; preds = %46, %24
  %30 = load %struct.config_strlist*, %struct.config_strlist** %5, align 8
  %31 = icmp ne %struct.config_strlist* %30, null
  br i1 %31, label %32, label %50

32:                                               ; preds = %29
  %33 = load %struct.config_strlist*, %struct.config_strlist** %5, align 8
  %34 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = load %struct.config_file*, %struct.config_file** %3, align 8
  %37 = getelementptr inbounds %struct.config_file, %struct.config_file* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.config_file*, %struct.config_file** %3, align 8
  %40 = call i32 @add_open(i8* %35, i64 %38, %struct.listen_port** %4, i32 1, %struct.config_file* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %32
  %43 = load %struct.listen_port*, %struct.listen_port** %4, align 8
  %44 = call i32 @listening_ports_free(%struct.listen_port* %43)
  store %struct.listen_port* null, %struct.listen_port** %2, align 8
  br label %84

45:                                               ; preds = %32
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.config_strlist*, %struct.config_strlist** %5, align 8
  %48 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %47, i32 0, i32 1
  %49 = load %struct.config_strlist*, %struct.config_strlist** %48, align 8
  store %struct.config_strlist* %49, %struct.config_strlist** %5, align 8
  br label %29

50:                                               ; preds = %29
  br label %82

51:                                               ; preds = %15
  %52 = load %struct.config_file*, %struct.config_file** %3, align 8
  %53 = getelementptr inbounds %struct.config_file, %struct.config_file* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %51
  %57 = load %struct.config_file*, %struct.config_file** %3, align 8
  %58 = getelementptr inbounds %struct.config_file, %struct.config_file* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.config_file*, %struct.config_file** %3, align 8
  %61 = call i32 @add_open(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %59, %struct.listen_port** %4, i32 0, %struct.config_file* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %56
  %64 = load %struct.listen_port*, %struct.listen_port** %4, align 8
  %65 = call i32 @listening_ports_free(%struct.listen_port* %64)
  store %struct.listen_port* null, %struct.listen_port** %2, align 8
  br label %84

66:                                               ; preds = %56, %51
  %67 = load %struct.config_file*, %struct.config_file** %3, align 8
  %68 = getelementptr inbounds %struct.config_file, %struct.config_file* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %66
  %72 = load %struct.config_file*, %struct.config_file** %3, align 8
  %73 = getelementptr inbounds %struct.config_file, %struct.config_file* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.config_file*, %struct.config_file** %3, align 8
  %76 = call i32 @add_open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %74, %struct.listen_port** %4, i32 1, %struct.config_file* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %71
  %79 = load %struct.listen_port*, %struct.listen_port** %4, align 8
  %80 = call i32 @listening_ports_free(%struct.listen_port* %79)
  store %struct.listen_port* null, %struct.listen_port** %2, align 8
  br label %84

81:                                               ; preds = %71, %66
  br label %82

82:                                               ; preds = %81, %50
  %83 = load %struct.listen_port*, %struct.listen_port** %4, align 8
  store %struct.listen_port* %83, %struct.listen_port** %2, align 8
  br label %84

84:                                               ; preds = %82, %78, %63, %42
  %85 = load %struct.listen_port*, %struct.listen_port** %2, align 8
  ret %struct.listen_port* %85
}

declare dso_local i32 @log_assert(i32) #1

declare dso_local i32 @add_open(i8*, i64, %struct.listen_port**, i32, %struct.config_file*) #1

declare dso_local i32 @listening_ports_free(%struct.listen_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
