; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_fwd.c_read_fwds_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_fwd.c_read_fwds_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delegpt = type { i32 }
%struct.config_stub = type { i32 }

@.str = private unnamed_addr constant [65 x i8] c"forward zone without a name (use name \22.\22 to forward everything)\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"cannot parse forward zone name %s\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.delegpt* (%struct.config_stub*)* @read_fwds_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.delegpt* @read_fwds_name(%struct.config_stub* %0) #0 {
  %2 = alloca %struct.delegpt*, align 8
  %3 = alloca %struct.config_stub*, align 8
  %4 = alloca %struct.delegpt*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store %struct.config_stub* %0, %struct.config_stub** %3, align 8
  %7 = load %struct.config_stub*, %struct.config_stub** %3, align 8
  %8 = getelementptr inbounds %struct.config_stub, %struct.config_stub* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  store %struct.delegpt* null, %struct.delegpt** %2, align 8
  br label %37

13:                                               ; preds = %1
  %14 = load %struct.config_stub*, %struct.config_stub** %3, align 8
  %15 = getelementptr inbounds %struct.config_stub, %struct.config_stub* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32* @sldns_str2wire_dname(i32 %16, i64* %6)
  store i32* %17, i32** %5, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %13
  %21 = load %struct.config_stub*, %struct.config_stub** %3, align 8
  %22 = getelementptr inbounds %struct.config_stub, %struct.config_stub* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  store %struct.delegpt* null, %struct.delegpt** %2, align 8
  br label %37

25:                                               ; preds = %13
  %26 = load i32*, i32** %5, align 8
  %27 = call %struct.delegpt* @delegpt_create_mlc(i32* %26)
  store %struct.delegpt* %27, %struct.delegpt** %4, align 8
  %28 = icmp ne %struct.delegpt* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @free(i32* %30)
  %32 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store %struct.delegpt* null, %struct.delegpt** %2, align 8
  br label %37

33:                                               ; preds = %25
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @free(i32* %34)
  %36 = load %struct.delegpt*, %struct.delegpt** %4, align 8
  store %struct.delegpt* %36, %struct.delegpt** %2, align 8
  br label %37

37:                                               ; preds = %33, %29, %20, %11
  %38 = load %struct.delegpt*, %struct.delegpt** %2, align 8
  ret %struct.delegpt* %38
}

declare dso_local i32 @log_err(i8*, ...) #1

declare dso_local i32* @sldns_str2wire_dname(i32, i64*) #1

declare dso_local %struct.delegpt* @delegpt_create_mlc(i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
