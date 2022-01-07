; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_hints.c_read_stubs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_hints.c_read_stubs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iter_hints = type { i32 }
%struct.config_file = type { %struct.config_stub* }
%struct.config_stub = type { i32, i64, i32, i32, %struct.config_stub* }
%struct.delegpt = type { i8*, i32, i8* }

@VERB_QUERY = common dso_local global i32 0, align 4
@LDNS_RR_CLASS_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iter_hints*, %struct.config_file*)* @read_stubs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_stubs(%struct.iter_hints* %0, %struct.config_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iter_hints*, align 8
  %5 = alloca %struct.config_file*, align 8
  %6 = alloca %struct.config_stub*, align 8
  %7 = alloca %struct.delegpt*, align 8
  store %struct.iter_hints* %0, %struct.iter_hints** %4, align 8
  store %struct.config_file* %1, %struct.config_file** %5, align 8
  %8 = load %struct.config_file*, %struct.config_file** %5, align 8
  %9 = getelementptr inbounds %struct.config_file, %struct.config_file* %8, i32 0, i32 0
  %10 = load %struct.config_stub*, %struct.config_stub** %9, align 8
  store %struct.config_stub* %10, %struct.config_stub** %6, align 8
  br label %11

11:                                               ; preds = %70, %2
  %12 = load %struct.config_stub*, %struct.config_stub** %6, align 8
  %13 = icmp ne %struct.config_stub* %12, null
  br i1 %13, label %14, label %74

14:                                               ; preds = %11
  %15 = load %struct.config_stub*, %struct.config_stub** %6, align 8
  %16 = call %struct.delegpt* @read_stubs_name(%struct.config_stub* %15)
  store %struct.delegpt* %16, %struct.delegpt** %7, align 8
  %17 = icmp ne %struct.delegpt* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %75

19:                                               ; preds = %14
  %20 = load %struct.config_stub*, %struct.config_stub** %6, align 8
  %21 = load %struct.delegpt*, %struct.delegpt** %7, align 8
  %22 = call i32 @read_stubs_host(%struct.config_stub* %20, %struct.delegpt* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.config_stub*, %struct.config_stub** %6, align 8
  %26 = load %struct.delegpt*, %struct.delegpt** %7, align 8
  %27 = call i32 @read_stubs_addr(%struct.config_stub* %25, %struct.delegpt* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24, %19
  %30 = load %struct.delegpt*, %struct.delegpt** %7, align 8
  %31 = call i32 @delegpt_free_mlc(%struct.delegpt* %30)
  store i32 0, i32* %3, align 4
  br label %75

32:                                               ; preds = %24
  %33 = load %struct.config_stub*, %struct.config_stub** %6, align 8
  %34 = getelementptr inbounds %struct.config_stub, %struct.config_stub* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to i8*
  %41 = load %struct.delegpt*, %struct.delegpt** %7, align 8
  %42 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %41, i32 0, i32 2
  store i8* %40, i8** %42, align 8
  %43 = load %struct.config_stub*, %struct.config_stub** %6, align 8
  %44 = getelementptr inbounds %struct.config_stub, %struct.config_stub* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.delegpt*, %struct.delegpt** %7, align 8
  %47 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  %48 = load %struct.config_stub*, %struct.config_stub** %6, align 8
  %49 = getelementptr inbounds %struct.config_stub, %struct.config_stub* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to i8*
  %52 = load %struct.delegpt*, %struct.delegpt** %7, align 8
  %53 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %52, i32 0, i32 0
  store i8* %51, i8** %53, align 8
  %54 = load i32, i32* @VERB_QUERY, align 4
  %55 = load %struct.delegpt*, %struct.delegpt** %7, align 8
  %56 = call i32 @delegpt_log(i32 %54, %struct.delegpt* %55)
  %57 = load %struct.iter_hints*, %struct.iter_hints** %4, align 8
  %58 = load i32, i32* @LDNS_RR_CLASS_IN, align 4
  %59 = load %struct.delegpt*, %struct.delegpt** %7, align 8
  %60 = load %struct.config_stub*, %struct.config_stub** %6, align 8
  %61 = getelementptr inbounds %struct.config_stub, %struct.config_stub* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = call i32 @hints_insert(%struct.iter_hints* %57, i32 %58, %struct.delegpt* %59, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %75

69:                                               ; preds = %32
  br label %70

70:                                               ; preds = %69
  %71 = load %struct.config_stub*, %struct.config_stub** %6, align 8
  %72 = getelementptr inbounds %struct.config_stub, %struct.config_stub* %71, i32 0, i32 4
  %73 = load %struct.config_stub*, %struct.config_stub** %72, align 8
  store %struct.config_stub* %73, %struct.config_stub** %6, align 8
  br label %11

74:                                               ; preds = %11
  store i32 1, i32* %3, align 4
  br label %75

75:                                               ; preds = %74, %68, %29, %18
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %struct.delegpt* @read_stubs_name(%struct.config_stub*) #1

declare dso_local i32 @read_stubs_host(%struct.config_stub*, %struct.delegpt*) #1

declare dso_local i32 @read_stubs_addr(%struct.config_stub*, %struct.delegpt*) #1

declare dso_local i32 @delegpt_free_mlc(%struct.delegpt*) #1

declare dso_local i32 @delegpt_log(i32, %struct.delegpt*) #1

declare dso_local i32 @hints_insert(%struct.iter_hints*, i32, %struct.delegpt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
