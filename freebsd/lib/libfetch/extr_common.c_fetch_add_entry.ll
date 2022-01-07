; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libfetch/extr_common.c_fetch_add_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libfetch/extr_common.c_fetch_add_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.url_ent = type { i64*, i32 }
%struct.url_stat = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fetch_add_entry(%struct.url_ent** %0, i32* %1, i32* %2, i8* %3, %struct.url_stat* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.url_ent**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.url_stat*, align 8
  %12 = alloca %struct.url_ent*, align 8
  store %struct.url_ent** %0, %struct.url_ent*** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.url_stat* %4, %struct.url_stat** %11, align 8
  %13 = load %struct.url_ent**, %struct.url_ent*** %7, align 8
  %14 = load %struct.url_ent*, %struct.url_ent** %13, align 8
  %15 = icmp eq %struct.url_ent* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %5
  %17 = load i32*, i32** %8, align 8
  store i32 0, i32* %17, align 4
  %18 = load i32*, i32** %9, align 8
  store i32 0, i32* %18, align 4
  br label %19

19:                                               ; preds = %16, %5
  %20 = load i32*, i32** %9, align 8
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %23, 1
  %25 = icmp sge i32 %21, %24
  br i1 %25, label %26, label %47

26:                                               ; preds = %19
  %27 = load %struct.url_ent**, %struct.url_ent*** %7, align 8
  %28 = load %struct.url_ent*, %struct.url_ent** %27, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* %29, align 4
  %31 = mul nsw i32 %30, 2
  %32 = add nsw i32 %31, 1
  %33 = call %struct.url_ent* @reallocarray(%struct.url_ent* %28, i32 %32, i32 16)
  store %struct.url_ent* %33, %struct.url_ent** %12, align 8
  %34 = load %struct.url_ent*, %struct.url_ent** %12, align 8
  %35 = icmp eq %struct.url_ent* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %26
  %37 = load i32, i32* @ENOMEM, align 4
  store i32 %37, i32* @errno, align 4
  %38 = call i32 (...) @fetch_syserr()
  store i32 -1, i32* %6, align 4
  br label %72

39:                                               ; preds = %26
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 %41, 2
  %43 = add nsw i32 %42, 1
  %44 = load i32*, i32** %8, align 8
  store i32 %43, i32* %44, align 4
  %45 = load %struct.url_ent*, %struct.url_ent** %12, align 8
  %46 = load %struct.url_ent**, %struct.url_ent*** %7, align 8
  store %struct.url_ent* %45, %struct.url_ent** %46, align 8
  br label %47

47:                                               ; preds = %39, %19
  %48 = load %struct.url_ent**, %struct.url_ent*** %7, align 8
  %49 = load %struct.url_ent*, %struct.url_ent** %48, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.url_ent, %struct.url_ent* %49, i64 %52
  store %struct.url_ent* %53, %struct.url_ent** %12, align 8
  %54 = load %struct.url_ent*, %struct.url_ent** %12, align 8
  %55 = getelementptr inbounds %struct.url_ent, %struct.url_ent* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = load i32, i32* @PATH_MAX, align 4
  %58 = load i8*, i8** %10, align 8
  %59 = call i32 @snprintf(i64* %56, i32 %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %58)
  %60 = load %struct.url_ent*, %struct.url_ent** %12, align 8
  %61 = getelementptr inbounds %struct.url_ent, %struct.url_ent* %60, i32 0, i32 1
  %62 = load %struct.url_stat*, %struct.url_stat** %11, align 8
  %63 = call i32 @memcpy(i32* %61, %struct.url_stat* %62, i32 4)
  %64 = load i32*, i32** %9, align 8
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  %67 = load %struct.url_ent*, %struct.url_ent** %12, align 8
  %68 = getelementptr inbounds %struct.url_ent, %struct.url_ent* %67, i32 1
  store %struct.url_ent* %68, %struct.url_ent** %12, align 8
  %69 = getelementptr inbounds %struct.url_ent, %struct.url_ent* %68, i32 0, i32 0
  %70 = load i64*, i64** %69, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 0
  store i64 0, i64* %71, align 8
  store i32 0, i32* %6, align 4
  br label %72

72:                                               ; preds = %47, %36
  %73 = load i32, i32* %6, align 4
  ret i32 %73
}

declare dso_local %struct.url_ent* @reallocarray(%struct.url_ent*, i32, i32) #1

declare dso_local i32 @fetch_syserr(...) #1

declare dso_local i32 @snprintf(i64*, i32, i8*, i8*) #1

declare dso_local i32 @memcpy(i32*, %struct.url_stat*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
