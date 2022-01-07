; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_config_file.c_cfg_strlist_append.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_config_file.c_cfg_strlist_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_strlist_head = type { %struct.config_strlist*, %struct.config_strlist* }
%struct.config_strlist = type { i8*, %struct.config_strlist* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfg_strlist_append(%struct.config_strlist_head* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.config_strlist_head*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.config_strlist*, align 8
  store %struct.config_strlist_head* %0, %struct.config_strlist_head** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.config_strlist_head*, %struct.config_strlist_head** %4, align 8
  %11 = icmp ne %struct.config_strlist_head* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %9, %2
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @free(i8* %13)
  store i32 0, i32* %3, align 4
  br label %47

15:                                               ; preds = %9
  %16 = call i64 @calloc(i32 1, i32 16)
  %17 = inttoptr i64 %16 to %struct.config_strlist*
  store %struct.config_strlist* %17, %struct.config_strlist** %6, align 8
  %18 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %19 = icmp ne %struct.config_strlist* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @free(i8* %21)
  store i32 0, i32* %3, align 4
  br label %47

23:                                               ; preds = %15
  %24 = load i8*, i8** %5, align 8
  %25 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %26 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  %27 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %28 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %27, i32 0, i32 1
  store %struct.config_strlist* null, %struct.config_strlist** %28, align 8
  %29 = load %struct.config_strlist_head*, %struct.config_strlist_head** %4, align 8
  %30 = getelementptr inbounds %struct.config_strlist_head, %struct.config_strlist_head* %29, i32 0, i32 0
  %31 = load %struct.config_strlist*, %struct.config_strlist** %30, align 8
  %32 = icmp ne %struct.config_strlist* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %23
  %34 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %35 = load %struct.config_strlist_head*, %struct.config_strlist_head** %4, align 8
  %36 = getelementptr inbounds %struct.config_strlist_head, %struct.config_strlist_head* %35, i32 0, i32 0
  %37 = load %struct.config_strlist*, %struct.config_strlist** %36, align 8
  %38 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %37, i32 0, i32 1
  store %struct.config_strlist* %34, %struct.config_strlist** %38, align 8
  br label %43

39:                                               ; preds = %23
  %40 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %41 = load %struct.config_strlist_head*, %struct.config_strlist_head** %4, align 8
  %42 = getelementptr inbounds %struct.config_strlist_head, %struct.config_strlist_head* %41, i32 0, i32 1
  store %struct.config_strlist* %40, %struct.config_strlist** %42, align 8
  br label %43

43:                                               ; preds = %39, %33
  %44 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %45 = load %struct.config_strlist_head*, %struct.config_strlist_head** %4, align 8
  %46 = getelementptr inbounds %struct.config_strlist_head, %struct.config_strlist_head* %45, i32 0, i32 0
  store %struct.config_strlist* %44, %struct.config_strlist** %46, align 8
  store i32 1, i32* %3, align 4
  br label %47

47:                                               ; preds = %43, %20, %12
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
