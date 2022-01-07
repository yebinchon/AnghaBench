; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evdns.c_search_make_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evdns.c_search_make_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.search_state = type { %struct.search_domain* }
%struct.search_domain = type { i32, %struct.search_domain* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.search_state*, i32, i8*)* @search_make_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @search_make_new(%struct.search_state* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.search_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca %struct.search_domain*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.search_state* %0, %struct.search_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call i64 @strlen(i8* %14)
  store i64 %15, i64* %8, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = load i64, i64* %8, align 8
  %18 = sub i64 %17, 1
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 46
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 0, i32 1
  %25 = trunc i32 %24 to i8
  store i8 %25, i8* %9, align 1
  %26 = load %struct.search_state*, %struct.search_state** %5, align 8
  %27 = getelementptr inbounds %struct.search_state, %struct.search_state* %26, i32 0, i32 0
  %28 = load %struct.search_domain*, %struct.search_domain** %27, align 8
  store %struct.search_domain* %28, %struct.search_domain** %10, align 8
  br label %29

29:                                               ; preds = %90, %3
  %30 = load %struct.search_domain*, %struct.search_domain** %10, align 8
  %31 = icmp ne %struct.search_domain* %30, null
  br i1 %31, label %32, label %94

32:                                               ; preds = %29
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %6, align 4
  %35 = icmp ne i32 %33, 0
  br i1 %35, label %89, label %36

36:                                               ; preds = %32
  %37 = load %struct.search_domain*, %struct.search_domain** %10, align 8
  %38 = bitcast %struct.search_domain* %37 to i8*
  %39 = getelementptr inbounds i8, i8* %38, i64 16
  store i8* %39, i8** %11, align 8
  %40 = load %struct.search_domain*, %struct.search_domain** %10, align 8
  %41 = getelementptr inbounds %struct.search_domain, %struct.search_domain* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %12, align 4
  %43 = load i64, i64* %8, align 8
  %44 = load i8, i8* %9, align 1
  %45 = sext i8 %44 to i64
  %46 = add i64 %43, %45
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = add i64 %46, %48
  %50 = add i64 %49, 1
  %51 = call i64 @mm_malloc(i64 %50)
  %52 = inttoptr i64 %51 to i8*
  store i8* %52, i8** %13, align 8
  %53 = load i8*, i8** %13, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %36
  store i8* null, i8** %4, align 8
  br label %96

56:                                               ; preds = %36
  %57 = load i8*, i8** %13, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = load i64, i64* %8, align 8
  %60 = trunc i64 %59 to i32
  %61 = call i32 @memcpy(i8* %57, i8* %58, i32 %60)
  %62 = load i8, i8* %9, align 1
  %63 = icmp ne i8 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %56
  %65 = load i8*, i8** %13, align 8
  %66 = load i64, i64* %8, align 8
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  store i8 46, i8* %67, align 1
  br label %68

68:                                               ; preds = %64, %56
  %69 = load i8*, i8** %13, align 8
  %70 = load i64, i64* %8, align 8
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  %72 = load i8, i8* %9, align 1
  %73 = sext i8 %72 to i32
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %71, i64 %74
  %76 = load i8*, i8** %11, align 8
  %77 = load i32, i32* %12, align 4
  %78 = call i32 @memcpy(i8* %75, i8* %76, i32 %77)
  %79 = load i8*, i8** %13, align 8
  %80 = load i64, i64* %8, align 8
  %81 = load i8, i8* %9, align 1
  %82 = sext i8 %81 to i64
  %83 = add i64 %80, %82
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = add i64 %83, %85
  %87 = getelementptr inbounds i8, i8* %79, i64 %86
  store i8 0, i8* %87, align 1
  %88 = load i8*, i8** %13, align 8
  store i8* %88, i8** %4, align 8
  br label %96

89:                                               ; preds = %32
  br label %90

90:                                               ; preds = %89
  %91 = load %struct.search_domain*, %struct.search_domain** %10, align 8
  %92 = getelementptr inbounds %struct.search_domain, %struct.search_domain* %91, i32 0, i32 1
  %93 = load %struct.search_domain*, %struct.search_domain** %92, align 8
  store %struct.search_domain* %93, %struct.search_domain** %10, align 8
  br label %29

94:                                               ; preds = %29
  %95 = call i32 @EVUTIL_ASSERT(i32 0)
  store i8* null, i8** %4, align 8
  br label %96

96:                                               ; preds = %94, %68, %55
  %97 = load i8*, i8** %4, align 8
  ret i8* %97
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @mm_malloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
