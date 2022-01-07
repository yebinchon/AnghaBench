; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libbe/extr_be.c_be_get_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libbe/extr_be.c_be_get_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libbe_deep_clone = type { i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@BE_ERR_BADPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@BE_ERR_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.libbe_deep_clone*, i8*, i8*, i32)* @be_get_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_get_path(%struct.libbe_deep_clone* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.libbe_deep_clone*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.libbe_deep_clone* %0, %struct.libbe_deep_clone** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = load %struct.libbe_deep_clone*, %struct.libbe_deep_clone** %6, align 8
  %14 = getelementptr inbounds %struct.libbe_deep_clone, %struct.libbe_deep_clone* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i8* @strstr(i8* %12, i8* %17)
  store i8* %18, i8** %10, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* @BE_ERR_BADPATH, align 4
  store i32 %22, i32* %5, align 4
  br label %54

23:                                               ; preds = %4
  %24 = load i8*, i8** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.libbe_deep_clone*, %struct.libbe_deep_clone** %6, align 8
  %27 = getelementptr inbounds %struct.libbe_deep_clone, %struct.libbe_deep_clone* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load %struct.libbe_deep_clone*, %struct.libbe_deep_clone** %6, align 8
  %32 = getelementptr inbounds %struct.libbe_deep_clone, %struct.libbe_deep_clone* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @snprintf(i8* %24, i32 %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %30, i8* %33)
  %35 = load %struct.libbe_deep_clone*, %struct.libbe_deep_clone** %6, align 8
  %36 = getelementptr inbounds %struct.libbe_deep_clone, %struct.libbe_deep_clone* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 @strlen(i8* %39)
  %41 = add nsw i64 %40, 1
  %42 = load i8*, i8** %10, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 %41
  store i8* %43, i8** %10, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = call i8* @strchr(i8* %44, i8 signext 47)
  store i8* %45, i8** %11, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %23
  %48 = load i8*, i8** %8, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @strlcat(i8* %48, i8* %49, i32 %50)
  br label %52

52:                                               ; preds = %47, %23
  %53 = load i32, i32* @BE_ERR_SUCCESS, align 4
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %52, %21
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlcat(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
