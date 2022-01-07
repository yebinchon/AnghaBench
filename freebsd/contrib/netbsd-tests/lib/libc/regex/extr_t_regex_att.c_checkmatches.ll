; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/regex/extr_t_regex_att.c_checkmatches.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/regex/extr_t_regex_att.c_checkmatches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"(?,?)\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"(%lld,%lld)\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"String too long %s cur=%d, max=%zu\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c" at line %zu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, %struct.TYPE_3__*, i64)* @checkmatches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @checkmatches(i8* %0, i64 %1, %struct.TYPE_3__* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  br label %103

17:                                               ; preds = %4
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @strlen(i8* %18)
  %20 = add nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call i8* @strdup(i8* %22)
  store i8* %23, i8** %9, align 8
  %24 = icmp ne i8* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @ATF_REQUIRE(i32 %25)
  store i64 0, i64* %12, align 8
  br label %27

27:                                               ; preds = %93, %17
  %28 = load i64, i64* %12, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %96

31:                                               ; preds = %27
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %33 = load i64, i64* %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %54

38:                                               ; preds = %31
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %40 = load i64, i64* %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %54

45:                                               ; preds = %38
  %46 = load i8*, i8** %9, align 8
  %47 = load i64, i64* %11, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  %49 = ptrtoint i8* %48 to i32
  %50 = load i64, i64* %10, align 8
  %51 = load i64, i64* %11, align 8
  %52 = sub i64 %50, %51
  %53 = call i32 (i32, i64, i8*, ...) @snprintf(i32 %49, i64 %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %53, i32* %13, align 4
  br label %75

54:                                               ; preds = %38, %31
  %55 = load i8*, i8** %9, align 8
  %56 = load i64, i64* %11, align 8
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  %58 = ptrtoint i8* %57 to i32
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* %11, align 8
  %61 = sub i64 %59, %60
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %63 = load i64, i64* %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %69 = load i64, i64* %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = call i32 (i32, i64, i8*, ...) @snprintf(i32 %58, i64 %61, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %67, i64 %73)
  store i32 %74, i32* %13, align 4
  br label %75

75:                                               ; preds = %54, %45
  %76 = load i32, i32* %13, align 4
  %77 = sext i32 %76 to i64
  %78 = load i64, i64* %10, align 8
  %79 = load i64, i64* %11, align 8
  %80 = sub i64 %78, %79
  %81 = icmp ult i64 %77, %80
  %82 = zext i1 %81 to i32
  %83 = load i8*, i8** %9, align 8
  %84 = load i32, i32* %13, align 4
  %85 = load i64, i64* %10, align 8
  %86 = load i64, i64* %11, align 8
  %87 = sub i64 %85, %86
  %88 = call i32 @ATF_REQUIRE_MSG(i32 %82, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %83, i32 %84, i64 %87)
  %89 = load i32, i32* %13, align 4
  %90 = sext i32 %89 to i64
  %91 = load i64, i64* %11, align 8
  %92 = add i64 %91, %90
  store i64 %92, i64* %11, align 8
  br label %93

93:                                               ; preds = %75
  %94 = load i64, i64* %12, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %12, align 8
  br label %27

96:                                               ; preds = %27
  %97 = load i8*, i8** %9, align 8
  %98 = load i8*, i8** %5, align 8
  %99 = load i64, i64* %8, align 8
  %100 = call i32 @ATF_CHECK_STREQ_MSG(i8* %97, i8* %98, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i64 %99)
  %101 = load i8*, i8** %9, align 8
  %102 = call i32 @free(i8* %101)
  br label %103

103:                                              ; preds = %96, %16
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ATF_REQUIRE(i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @snprintf(i32, i64, i8*, ...) #1

declare dso_local i32 @ATF_REQUIRE_MSG(i32, i8*, i8*, i32, i64) #1

declare dso_local i32 @ATF_CHECK_STREQ_MSG(i8*, i8*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
