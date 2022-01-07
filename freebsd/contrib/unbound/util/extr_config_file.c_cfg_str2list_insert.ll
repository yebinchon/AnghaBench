; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_config_file.c_cfg_str2list_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_config_file.c_cfg_str2list_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_str2list = type { i8*, i8*, %struct.config_str2list* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfg_str2list_insert(%struct.config_str2list** %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.config_str2list**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.config_str2list*, align 8
  store %struct.config_str2list** %0, %struct.config_str2list*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load i8*, i8** %7, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load %struct.config_str2list**, %struct.config_str2list*** %5, align 8
  %16 = icmp ne %struct.config_str2list** %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %14, %11, %3
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @free(i8* %18)
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @free(i8* %20)
  store i32 0, i32* %4, align 4
  br label %45

22:                                               ; preds = %14
  %23 = call i64 @calloc(i32 1, i32 24)
  %24 = inttoptr i64 %23 to %struct.config_str2list*
  store %struct.config_str2list* %24, %struct.config_str2list** %8, align 8
  %25 = load %struct.config_str2list*, %struct.config_str2list** %8, align 8
  %26 = icmp ne %struct.config_str2list* %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @free(i8* %28)
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @free(i8* %30)
  store i32 0, i32* %4, align 4
  br label %45

32:                                               ; preds = %22
  %33 = load i8*, i8** %6, align 8
  %34 = load %struct.config_str2list*, %struct.config_str2list** %8, align 8
  %35 = getelementptr inbounds %struct.config_str2list, %struct.config_str2list* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load %struct.config_str2list*, %struct.config_str2list** %8, align 8
  %38 = getelementptr inbounds %struct.config_str2list, %struct.config_str2list* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  %39 = load %struct.config_str2list**, %struct.config_str2list*** %5, align 8
  %40 = load %struct.config_str2list*, %struct.config_str2list** %39, align 8
  %41 = load %struct.config_str2list*, %struct.config_str2list** %8, align 8
  %42 = getelementptr inbounds %struct.config_str2list, %struct.config_str2list* %41, i32 0, i32 2
  store %struct.config_str2list* %40, %struct.config_str2list** %42, align 8
  %43 = load %struct.config_str2list*, %struct.config_str2list** %8, align 8
  %44 = load %struct.config_str2list**, %struct.config_str2list*** %5, align 8
  store %struct.config_str2list* %43, %struct.config_str2list** %44, align 8
  store i32 1, i32* %4, align 4
  br label %45

45:                                               ; preds = %32, %27, %17
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
