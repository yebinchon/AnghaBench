; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/serf/auth/extr_auth.c_store_header_in_dict.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/serf/auth/extr_auth.c_store_header_in_dict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@APR_HASH_KEY_STRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @store_header_in_dict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_header_in_dict(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %8, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @strcasecmp(i8* %14, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %74

21:                                               ; preds = %3
  %22 = load i8*, i8** %7, align 8
  %23 = call i8* @strchr(i8* %22, i8 signext 32)
  store i8* %23, i8** %9, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %38

26:                                               ; preds = %21
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %7, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = ptrtoint i8* %31 to i64
  %34 = ptrtoint i8* %32 to i64
  %35 = sub i64 %33, %34
  %36 = trunc i64 %35 to i32
  %37 = call i8* @apr_pstrmemdup(i32 %29, i8* %30, i32 %36)
  store i8* %37, i8** %10, align 8
  br label %46

38:                                               ; preds = %21
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i8*, i8** %7, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 @strlen(i8* %43)
  %45 = call i8* @apr_pstrmemdup(i32 %41, i8* %42, i32 %44)
  store i8* %45, i8** %10, align 8
  br label %46

46:                                               ; preds = %38, %26
  %47 = load i8*, i8** %10, align 8
  store i8* %47, i8** %11, align 8
  br label %48

48:                                               ; preds = %59, %46
  %49 = load i8*, i8** %11, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %48
  %54 = load i8*, i8** %11, align 8
  %55 = load i8, i8* %54, align 1
  %56 = call i64 @apr_tolower(i8 signext %55)
  %57 = trunc i64 %56 to i8
  %58 = load i8*, i8** %11, align 8
  store i8 %57, i8* %58, align 1
  br label %59

59:                                               ; preds = %53
  %60 = load i8*, i8** %11, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %11, align 8
  br label %48

62:                                               ; preds = %48
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i8*, i8** %10, align 8
  %67 = load i32, i32* @APR_HASH_KEY_STRING, align 4
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i8*, i8** %7, align 8
  %72 = call i32 @apr_pstrdup(i32 %70, i8* %71)
  %73 = call i32 @apr_hash_set(i32 %65, i8* %66, i32 %67, i32 %72)
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %62, %20
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i64 @strcasecmp(i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @apr_pstrmemdup(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @apr_tolower(i8 signext) #1

declare dso_local i32 @apr_hash_set(i32, i8*, i32, i32) #1

declare dso_local i32 @apr_pstrdup(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
