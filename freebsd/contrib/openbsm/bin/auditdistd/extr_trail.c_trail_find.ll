; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_trail.c_trail_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_trail.c_trail_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trail = type { i64, i32, i32 }
%struct.dirent = type { i32 }

@TRAIL_MAGIC = common dso_local global i64 0, align 8
@HALF_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trail*)* @trail_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trail_find(%struct.trail* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.trail*, align 8
  %4 = alloca %struct.dirent*, align 8
  store %struct.trail* %0, %struct.trail** %3, align 8
  %5 = load %struct.trail*, %struct.trail** %3, align 8
  %6 = getelementptr inbounds %struct.trail, %struct.trail* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @TRAIL_MAGIC, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @PJDLOG_ASSERT(i32 %10)
  %12 = load %struct.trail*, %struct.trail** %3, align 8
  %13 = getelementptr inbounds %struct.trail, %struct.trail* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @trail_is_not_terminated(i32 %14)
  %16 = call i32 @PJDLOG_ASSERT(i32 %15)
  %17 = load %struct.trail*, %struct.trail** %3, align 8
  %18 = getelementptr inbounds %struct.trail, %struct.trail* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @rewinddir(i32 %19)
  br label %21

21:                                               ; preds = %39, %1
  %22 = load %struct.trail*, %struct.trail** %3, align 8
  %23 = getelementptr inbounds %struct.trail, %struct.trail* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.dirent* @readdir(i32 %24)
  store %struct.dirent* %25, %struct.dirent** %4, align 8
  %26 = icmp ne %struct.dirent* %25, null
  br i1 %26, label %27, label %40

27:                                               ; preds = %21
  %28 = load %struct.dirent*, %struct.dirent** %4, align 8
  %29 = getelementptr inbounds %struct.dirent, %struct.dirent* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.trail*, %struct.trail** %3, align 8
  %32 = getelementptr inbounds %struct.trail, %struct.trail* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i64, i64* @HALF_LEN, align 8
  %35 = add nsw i64 %34, 1
  %36 = call i64 @strncmp(i32 %30, i32 %33, i64 %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %27
  br label %40

39:                                               ; preds = %27
  br label %21

40:                                               ; preds = %38, %21
  %41 = load %struct.dirent*, %struct.dirent** %4, align 8
  %42 = icmp eq %struct.dirent* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %56

44:                                               ; preds = %40
  %45 = load %struct.trail*, %struct.trail** %3, align 8
  %46 = getelementptr inbounds %struct.trail, %struct.trail* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.dirent*, %struct.dirent** %4, align 8
  %49 = getelementptr inbounds %struct.dirent, %struct.dirent* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @strlcpy(i32 %47, i32 %50, i32 4)
  %52 = sext i32 %51 to i64
  %53 = icmp ult i64 %52, 4
  %54 = zext i1 %53 to i32
  %55 = call i32 @PJDLOG_VERIFY(i32 %54)
  store i32 1, i32* %2, align 4
  br label %56

56:                                               ; preds = %44, %43
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i32 @trail_is_not_terminated(i32) #1

declare dso_local i32 @rewinddir(i32) #1

declare dso_local %struct.dirent* @readdir(i32) #1

declare dso_local i64 @strncmp(i32, i32, i64) #1

declare dso_local i32 @PJDLOG_VERIFY(i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
