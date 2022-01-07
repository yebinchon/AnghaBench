; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/stdlib/extr_t_strtoi.c_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/stdlib/extr_t_strtoi.c_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test = type { i64, i8*, i64, i64, i64, i32, i32* }

@.str = private unnamed_addr constant [59 x i8] c"strtoi(%s, &end, %d, %jd, %jd, &rstatus) failed (rv = %jd)\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"strtoi(%s, &end, %d, %jd, %jd, &rstatus) failed (rstatus: %d ('%s'))\00", align 1
@.str.2 = private unnamed_addr constant [73 x i8] c"invalid end pointer ('%s') from strtoi(%s, &end, %d, %jd, %jd, &rstatus)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.test*, i64, i8*, i32)* @check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check(%struct.test* %0, i64 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.test*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.test* %0, %struct.test** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i64, i64* %6, align 8
  %10 = load %struct.test*, %struct.test** %5, align 8
  %11 = getelementptr inbounds %struct.test, %struct.test* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %9, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %4
  %15 = load %struct.test*, %struct.test** %5, align 8
  %16 = getelementptr inbounds %struct.test, %struct.test* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  %18 = load %struct.test*, %struct.test** %5, align 8
  %19 = getelementptr inbounds %struct.test, %struct.test* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.test*, %struct.test** %5, align 8
  %22 = getelementptr inbounds %struct.test, %struct.test* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.test*, %struct.test** %5, align 8
  %25 = getelementptr inbounds %struct.test, %struct.test* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = call i32 (i8*, i8*, i64, i64, i64, i64, ...) @atf_tc_fail_nonfatal(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i8* %17, i64 %20, i64 %23, i64 %26, i64 %27)
  br label %29

29:                                               ; preds = %14, %4
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.test*, %struct.test** %5, align 8
  %32 = getelementptr inbounds %struct.test, %struct.test* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %30, %33
  br i1 %34, label %35, label %53

35:                                               ; preds = %29
  %36 = load %struct.test*, %struct.test** %5, align 8
  %37 = getelementptr inbounds %struct.test, %struct.test* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.test*, %struct.test** %5, align 8
  %40 = getelementptr inbounds %struct.test, %struct.test* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.test*, %struct.test** %5, align 8
  %43 = getelementptr inbounds %struct.test, %struct.test* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.test*, %struct.test** %5, align 8
  %46 = getelementptr inbounds %struct.test, %struct.test* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @strerror(i32 %50)
  %52 = call i32 (i8*, i8*, i64, i64, i64, i64, ...) @atf_tc_fail_nonfatal(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i8* %38, i64 %41, i64 %44, i64 %47, i64 %49, i32 %51)
  br label %53

53:                                               ; preds = %35, %29
  %54 = load %struct.test*, %struct.test** %5, align 8
  %55 = getelementptr inbounds %struct.test, %struct.test* %54, i32 0, i32 6
  %56 = load i32*, i32** %55, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %65

58:                                               ; preds = %53
  %59 = load %struct.test*, %struct.test** %5, align 8
  %60 = getelementptr inbounds %struct.test, %struct.test* %59, i32 0, i32 6
  %61 = load i32*, i32** %60, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = call i64 @strcmp(i32* %61, i8* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %75, label %65

65:                                               ; preds = %58, %53
  %66 = load %struct.test*, %struct.test** %5, align 8
  %67 = getelementptr inbounds %struct.test, %struct.test* %66, i32 0, i32 6
  %68 = load i32*, i32** %67, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %91

70:                                               ; preds = %65
  %71 = load i8*, i8** %7, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %91

75:                                               ; preds = %70, %58
  %76 = load i8*, i8** %7, align 8
  %77 = load %struct.test*, %struct.test** %5, align 8
  %78 = getelementptr inbounds %struct.test, %struct.test* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = ptrtoint i8* %79 to i64
  %81 = load %struct.test*, %struct.test** %5, align 8
  %82 = getelementptr inbounds %struct.test, %struct.test* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.test*, %struct.test** %5, align 8
  %85 = getelementptr inbounds %struct.test, %struct.test* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.test*, %struct.test** %5, align 8
  %88 = getelementptr inbounds %struct.test, %struct.test* %87, i32 0, i32 4
  %89 = load i64, i64* %88, align 8
  %90 = call i32 (i8*, i8*, i64, i64, i64, i64, ...) @atf_tc_fail_nonfatal(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i8* %76, i64 %80, i64 %83, i64 %86, i64 %89)
  br label %91

91:                                               ; preds = %75, %70, %65
  ret void
}

declare dso_local i32 @atf_tc_fail_nonfatal(i8*, i8*, i64, i64, i64, i64, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @strcmp(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
