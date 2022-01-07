; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/hastd/extr_hooks.c_hook_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/hastd/extr_hooks.c_hook_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hookproc = type { i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [51 x i8] c"Unable to allocate %zu bytes of memory for a hook.\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"Exec path too long, correct configuration file.\00", align 1
@HOOKPROC_MAGIC_ALLOCATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hookproc* (i8*, i8**)* @hook_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hookproc* @hook_alloc(i8* %0, i8** %1) #0 {
  %3 = alloca %struct.hookproc*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.hookproc*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  %8 = call %struct.hookproc* @malloc(i32 24)
  store %struct.hookproc* %8, %struct.hookproc** %6, align 8
  %9 = load %struct.hookproc*, %struct.hookproc** %6, align 8
  %10 = icmp eq %struct.hookproc* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 (i8*, ...) @pjdlog_error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64 24)
  store %struct.hookproc* null, %struct.hookproc** %3, align 8
  br label %62

13:                                               ; preds = %2
  %14 = load %struct.hookproc*, %struct.hookproc** %6, align 8
  %15 = getelementptr inbounds %struct.hookproc, %struct.hookproc* %14, i32 0, i32 4
  store i64 0, i64* %15, align 8
  %16 = call i32 @time(i32* null)
  %17 = load %struct.hookproc*, %struct.hookproc** %6, align 8
  %18 = getelementptr inbounds %struct.hookproc, %struct.hookproc* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 8
  %19 = load %struct.hookproc*, %struct.hookproc** %6, align 8
  %20 = getelementptr inbounds %struct.hookproc, %struct.hookproc* %19, i32 0, i32 3
  store i32 %16, i32* %20, align 4
  %21 = load %struct.hookproc*, %struct.hookproc** %6, align 8
  %22 = getelementptr inbounds %struct.hookproc, %struct.hookproc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 @strlcpy(i32 %23, i8* %24, i32 4)
  store i32 1, i32* %7, align 4
  br label %26

26:                                               ; preds = %43, %13
  %27 = load i8**, i8*** %5, align 8
  %28 = load i32, i32* %7, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %27, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %46

33:                                               ; preds = %26
  %34 = load %struct.hookproc*, %struct.hookproc** %6, align 8
  %35 = getelementptr inbounds %struct.hookproc, %struct.hookproc* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i8**, i8*** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @snprlcat(i32 %36, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  br label %43

43:                                               ; preds = %33
  %44 = load i32, i32* %7, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %26

46:                                               ; preds = %26
  %47 = load %struct.hookproc*, %struct.hookproc** %6, align 8
  %48 = getelementptr inbounds %struct.hookproc, %struct.hookproc* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @strlen(i32 %49)
  %51 = sext i32 %50 to i64
  %52 = icmp uge i64 %51, 3
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = call i32 (i8*, ...) @pjdlog_error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %55 = load %struct.hookproc*, %struct.hookproc** %6, align 8
  %56 = call i32 @free(%struct.hookproc* %55)
  store %struct.hookproc* null, %struct.hookproc** %3, align 8
  br label %62

57:                                               ; preds = %46
  %58 = load i32, i32* @HOOKPROC_MAGIC_ALLOCATED, align 4
  %59 = load %struct.hookproc*, %struct.hookproc** %6, align 8
  %60 = getelementptr inbounds %struct.hookproc, %struct.hookproc* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.hookproc*, %struct.hookproc** %6, align 8
  store %struct.hookproc* %61, %struct.hookproc** %3, align 8
  br label %62

62:                                               ; preds = %57, %53, %11
  %63 = load %struct.hookproc*, %struct.hookproc** %3, align 8
  ret %struct.hookproc* %63
}

declare dso_local %struct.hookproc* @malloc(i32) #1

declare dso_local i32 @pjdlog_error(i8*, ...) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @snprlcat(i32, i32, i8*, i8*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @free(%struct.hookproc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
