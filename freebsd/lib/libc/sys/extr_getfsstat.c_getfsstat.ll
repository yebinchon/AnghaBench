; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/sys/extr_getfsstat.c_getfsstat.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/sys/extr_getfsstat.c_getfsstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statfs = type { i32 }
%struct.freebsd11_statfs = type { i32 }

@INO64_FIRST = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@SYS_freebsd11_getfsstat = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getfsstat(%struct.statfs* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.statfs*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.freebsd11_statfs*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.statfs* %0, %struct.statfs** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.freebsd11_statfs* null, %struct.freebsd11_statfs** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = call i64 (...) @__getosreldate()
  %13 = load i64, i64* @INO64_FIRST, align 8
  %14 = icmp sge i64 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load %struct.statfs*, %struct.statfs** %5, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @__sys_getfsstat(%struct.statfs* %16, i64 %17, i32 %18)
  store i32 %19, i32* %4, align 4
  br label %69

20:                                               ; preds = %3
  %21 = load %struct.statfs*, %struct.statfs** %5, align 8
  %22 = icmp ne %struct.statfs* %21, null
  br i1 %22, label %23, label %35

23:                                               ; preds = %20
  %24 = load i64, i64* %6, align 8
  %25 = udiv i64 %24, 4
  %26 = mul i64 4, %25
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call %struct.freebsd11_statfs* @malloc(i32 %28)
  store %struct.freebsd11_statfs* %29, %struct.freebsd11_statfs** %8, align 8
  %30 = load %struct.freebsd11_statfs*, %struct.freebsd11_statfs** %8, align 8
  %31 = icmp eq %struct.freebsd11_statfs* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = load i32, i32* @ENOMEM, align 4
  store i32 %33, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %69

34:                                               ; preds = %23
  br label %35

35:                                               ; preds = %34, %20
  %36 = load i32, i32* @SYS_freebsd11_getfsstat, align 4
  %37 = load %struct.freebsd11_statfs*, %struct.freebsd11_statfs** %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @syscall(i32 %36, %struct.freebsd11_statfs* %37, i32 %38, i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, -1
  br i1 %42, label %43, label %65

43:                                               ; preds = %35
  %44 = load %struct.statfs*, %struct.statfs** %5, align 8
  %45 = icmp ne %struct.statfs* %44, null
  br i1 %45, label %46, label %65

46:                                               ; preds = %43
  store i32 0, i32* %11, align 4
  br label %47

47:                                               ; preds = %61, %46
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %47
  %52 = load %struct.freebsd11_statfs*, %struct.freebsd11_statfs** %8, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.freebsd11_statfs, %struct.freebsd11_statfs* %52, i64 %54
  %56 = load %struct.statfs*, %struct.statfs** %5, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.statfs, %struct.statfs* %56, i64 %58
  %60 = call i32 @__statfs11_to_statfs(%struct.freebsd11_statfs* %55, %struct.statfs* %59)
  br label %61

61:                                               ; preds = %51
  %62 = load i32, i32* %11, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %11, align 4
  br label %47

64:                                               ; preds = %47
  br label %65

65:                                               ; preds = %64, %43, %35
  %66 = load %struct.freebsd11_statfs*, %struct.freebsd11_statfs** %8, align 8
  %67 = call i32 @free(%struct.freebsd11_statfs* %66)
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %65, %32, %15
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i64 @__getosreldate(...) #1

declare dso_local i32 @__sys_getfsstat(%struct.statfs*, i64, i32) #1

declare dso_local %struct.freebsd11_statfs* @malloc(i32) #1

declare dso_local i32 @syscall(i32, %struct.freebsd11_statfs*, i32, i32) #1

declare dso_local i32 @__statfs11_to_statfs(%struct.freebsd11_statfs*, %struct.statfs*) #1

declare dso_local i32 @free(%struct.freebsd11_statfs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
