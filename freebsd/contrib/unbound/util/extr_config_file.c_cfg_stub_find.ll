; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_config_file.c_cfg_stub_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_config_file.c_cfg_stub_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_stub = type { %struct.config_stub*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.config_stub* @cfg_stub_find(%struct.config_stub*** %0, i8* %1) #0 {
  %3 = alloca %struct.config_stub*, align 8
  %4 = alloca %struct.config_stub***, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.config_stub*, align 8
  store %struct.config_stub*** %0, %struct.config_stub**** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.config_stub***, %struct.config_stub**** %4, align 8
  %8 = load %struct.config_stub**, %struct.config_stub*** %7, align 8
  %9 = load %struct.config_stub*, %struct.config_stub** %8, align 8
  store %struct.config_stub* %9, %struct.config_stub** %6, align 8
  br label %10

10:                                               ; preds = %22, %2
  %11 = load %struct.config_stub*, %struct.config_stub** %6, align 8
  %12 = icmp ne %struct.config_stub* %11, null
  br i1 %12, label %13, label %29

13:                                               ; preds = %10
  %14 = load %struct.config_stub*, %struct.config_stub** %6, align 8
  %15 = getelementptr inbounds %struct.config_stub, %struct.config_stub* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i64 @strcmp(i32 %16, i8* %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load %struct.config_stub*, %struct.config_stub** %6, align 8
  store %struct.config_stub* %21, %struct.config_stub** %3, align 8
  br label %30

22:                                               ; preds = %13
  %23 = load %struct.config_stub*, %struct.config_stub** %6, align 8
  %24 = getelementptr inbounds %struct.config_stub, %struct.config_stub* %23, i32 0, i32 0
  %25 = load %struct.config_stub***, %struct.config_stub**** %4, align 8
  store %struct.config_stub** %24, %struct.config_stub*** %25, align 8
  %26 = load %struct.config_stub*, %struct.config_stub** %6, align 8
  %27 = getelementptr inbounds %struct.config_stub, %struct.config_stub* %26, i32 0, i32 0
  %28 = load %struct.config_stub*, %struct.config_stub** %27, align 8
  store %struct.config_stub* %28, %struct.config_stub** %6, align 8
  br label %10

29:                                               ; preds = %10
  store %struct.config_stub* null, %struct.config_stub** %3, align 8
  br label %30

30:                                               ; preds = %29, %20
  %31 = load %struct.config_stub*, %struct.config_stub** %3, align 8
  ret %struct.config_stub* %31
}

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
