; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_hints.c_read_root_hints_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_hints.c_read_root_hints_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iter_hints = type { i32 }
%struct.config_file = type { i64*, %struct.config_strlist* }
%struct.config_strlist = type { i8*, %struct.config_strlist* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iter_hints*, %struct.config_file*)* @read_root_hints_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_root_hints_list(%struct.iter_hints* %0, %struct.config_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iter_hints*, align 8
  %5 = alloca %struct.config_file*, align 8
  %6 = alloca %struct.config_strlist*, align 8
  %7 = alloca i8*, align 8
  store %struct.iter_hints* %0, %struct.iter_hints** %4, align 8
  store %struct.config_file* %1, %struct.config_file** %5, align 8
  %8 = load %struct.config_file*, %struct.config_file** %5, align 8
  %9 = getelementptr inbounds %struct.config_file, %struct.config_file* %8, i32 0, i32 1
  %10 = load %struct.config_strlist*, %struct.config_strlist** %9, align 8
  store %struct.config_strlist* %10, %struct.config_strlist** %6, align 8
  br label %11

11:                                               ; preds = %75, %2
  %12 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %13 = icmp ne %struct.config_strlist* %12, null
  br i1 %13, label %14, label %79

14:                                               ; preds = %11
  %15 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %16 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @log_assert(i8* %17)
  %19 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %20 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %74

23:                                               ; preds = %14
  %24 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %25 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %74

31:                                               ; preds = %23
  %32 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %33 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %7, align 8
  %35 = load %struct.config_file*, %struct.config_file** %5, align 8
  %36 = getelementptr inbounds %struct.config_file, %struct.config_file* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = icmp ne i64* %37, null
  br i1 %38, label %39, label %67

39:                                               ; preds = %31
  %40 = load %struct.config_file*, %struct.config_file** %5, align 8
  %41 = getelementptr inbounds %struct.config_file, %struct.config_file* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %67

46:                                               ; preds = %39
  %47 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %48 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load %struct.config_file*, %struct.config_file** %5, align 8
  %51 = getelementptr inbounds %struct.config_file, %struct.config_file* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = load %struct.config_file*, %struct.config_file** %5, align 8
  %54 = getelementptr inbounds %struct.config_file, %struct.config_file* %53, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = call i32 @strlen(i64* %55)
  %57 = call i64 @strncmp(i8* %49, i64* %52, i32 %56)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %46
  %60 = load %struct.config_file*, %struct.config_file** %5, align 8
  %61 = getelementptr inbounds %struct.config_file, %struct.config_file* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = call i32 @strlen(i64* %62)
  %64 = load i8*, i8** %7, align 8
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  store i8* %66, i8** %7, align 8
  br label %67

67:                                               ; preds = %59, %46, %39, %31
  %68 = load %struct.iter_hints*, %struct.iter_hints** %4, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = call i32 @read_root_hints(%struct.iter_hints* %68, i8* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %67
  store i32 0, i32* %3, align 4
  br label %80

73:                                               ; preds = %67
  br label %74

74:                                               ; preds = %73, %23, %14
  br label %75

75:                                               ; preds = %74
  %76 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %77 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %76, i32 0, i32 1
  %78 = load %struct.config_strlist*, %struct.config_strlist** %77, align 8
  store %struct.config_strlist* %78, %struct.config_strlist** %6, align 8
  br label %11

79:                                               ; preds = %11
  store i32 1, i32* %3, align 4
  br label %80

80:                                               ; preds = %79, %72
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @log_assert(i8*) #1

declare dso_local i64 @strncmp(i8*, i64*, i32) #1

declare dso_local i32 @strlen(i64*) #1

declare dso_local i32 @read_root_hints(%struct.iter_hints*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
