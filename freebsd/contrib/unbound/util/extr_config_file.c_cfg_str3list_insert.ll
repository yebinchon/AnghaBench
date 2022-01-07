; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_config_file.c_cfg_str3list_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_config_file.c_cfg_str3list_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_str3list = type { i8*, i8*, i8*, %struct.config_str3list* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfg_str3list_insert(%struct.config_str3list** %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.config_str3list**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.config_str3list*, align 8
  store %struct.config_str3list** %0, %struct.config_str3list*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %4
  %14 = load i8*, i8** %8, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = load i8*, i8** %9, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load %struct.config_str3list**, %struct.config_str3list*** %6, align 8
  %21 = icmp ne %struct.config_str3list** %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19, %16, %13, %4
  store i32 0, i32* %5, align 4
  br label %45

23:                                               ; preds = %19
  %24 = call i64 @calloc(i32 1, i32 32)
  %25 = inttoptr i64 %24 to %struct.config_str3list*
  store %struct.config_str3list* %25, %struct.config_str3list** %10, align 8
  %26 = load %struct.config_str3list*, %struct.config_str3list** %10, align 8
  %27 = icmp ne %struct.config_str3list* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %45

29:                                               ; preds = %23
  %30 = load i8*, i8** %7, align 8
  %31 = load %struct.config_str3list*, %struct.config_str3list** %10, align 8
  %32 = getelementptr inbounds %struct.config_str3list, %struct.config_str3list* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = load %struct.config_str3list*, %struct.config_str3list** %10, align 8
  %35 = getelementptr inbounds %struct.config_str3list, %struct.config_str3list* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = load %struct.config_str3list*, %struct.config_str3list** %10, align 8
  %38 = getelementptr inbounds %struct.config_str3list, %struct.config_str3list* %37, i32 0, i32 2
  store i8* %36, i8** %38, align 8
  %39 = load %struct.config_str3list**, %struct.config_str3list*** %6, align 8
  %40 = load %struct.config_str3list*, %struct.config_str3list** %39, align 8
  %41 = load %struct.config_str3list*, %struct.config_str3list** %10, align 8
  %42 = getelementptr inbounds %struct.config_str3list, %struct.config_str3list* %41, i32 0, i32 3
  store %struct.config_str3list* %40, %struct.config_str3list** %42, align 8
  %43 = load %struct.config_str3list*, %struct.config_str3list** %10, align 8
  %44 = load %struct.config_str3list**, %struct.config_str3list*** %6, align 8
  store %struct.config_str3list* %43, %struct.config_str3list** %44, align 8
  store i32 1, i32* %5, align 4
  br label %45

45:                                               ; preds = %29, %28, %22
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i64 @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
