; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_http_curl.c_post_init_client.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_http_curl.c_post_init_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.http_ctx = type { i8*, i8*, i8*, i8*, i8*, i8*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.http_ctx*, i8*, i8*, i8*, i8*, i8*, i8*)* @post_init_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @post_init_client(%struct.http_ctx* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.http_ctx*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.http_ctx* %0, %struct.http_ctx** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  %18 = load %struct.http_ctx*, %struct.http_ctx** %9, align 8
  %19 = getelementptr inbounds %struct.http_ctx, %struct.http_ctx* %18, i32 0, i32 0
  %20 = load i8*, i8** %10, align 8
  %21 = call i32 @clone_str(i8** %19, i8* %20)
  %22 = load %struct.http_ctx*, %struct.http_ctx** %9, align 8
  %23 = getelementptr inbounds %struct.http_ctx, %struct.http_ctx* %22, i32 0, i32 1
  %24 = load i8*, i8** %11, align 8
  %25 = call i32 @clone_str(i8** %23, i8* %24)
  %26 = load %struct.http_ctx*, %struct.http_ctx** %9, align 8
  %27 = getelementptr inbounds %struct.http_ctx, %struct.http_ctx* %26, i32 0, i32 2
  %28 = load i8*, i8** %12, align 8
  %29 = call i32 @clone_str(i8** %27, i8* %28)
  %30 = load %struct.http_ctx*, %struct.http_ctx** %9, align 8
  %31 = getelementptr inbounds %struct.http_ctx, %struct.http_ctx* %30, i32 0, i32 3
  %32 = load i8*, i8** %13, align 8
  %33 = call i32 @clone_str(i8** %31, i8* %32)
  %34 = load %struct.http_ctx*, %struct.http_ctx** %9, align 8
  %35 = getelementptr inbounds %struct.http_ctx, %struct.http_ctx* %34, i32 0, i32 4
  %36 = load i8*, i8** %14, align 8
  %37 = call i32 @clone_str(i8** %35, i8* %36)
  %38 = load %struct.http_ctx*, %struct.http_ctx** %9, align 8
  %39 = getelementptr inbounds %struct.http_ctx, %struct.http_ctx* %38, i32 0, i32 5
  %40 = load i8*, i8** %15, align 8
  %41 = call i32 @clone_str(i8** %39, i8* %40)
  store i32 0, i32* %17, align 4
  %42 = load %struct.http_ctx*, %struct.http_ctx** %9, align 8
  %43 = getelementptr inbounds %struct.http_ctx, %struct.http_ctx* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %16, align 8
  br label %45

45:                                               ; preds = %71, %7
  %46 = load i32, i32* %17, align 4
  %47 = icmp slt i32 %46, 3
  br i1 %47, label %48, label %56

48:                                               ; preds = %45
  %49 = load i8*, i8** %16, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load i8*, i8** %16, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 0
  br label %56

56:                                               ; preds = %51, %48, %45
  %57 = phi i1 [ false, %48 ], [ false, %45 ], [ %55, %51 ]
  br i1 %57, label %58, label %74

58:                                               ; preds = %56
  %59 = load i8*, i8** %16, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 47
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i32, i32* %17, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %17, align 4
  br label %66

66:                                               ; preds = %63, %58
  %67 = load i8*, i8** %16, align 8
  %68 = load i8, i8* %67, align 1
  %69 = call signext i8 @tolower(i8 signext %68)
  %70 = load i8*, i8** %16, align 8
  store i8 %69, i8* %70, align 1
  br label %71

71:                                               ; preds = %66
  %72 = load i8*, i8** %16, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %16, align 8
  br label %45

74:                                               ; preds = %56
  %75 = load %struct.http_ctx*, %struct.http_ctx** %9, align 8
  %76 = load %struct.http_ctx*, %struct.http_ctx** %9, align 8
  %77 = getelementptr inbounds %struct.http_ctx, %struct.http_ctx* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = load i8*, i8** %11, align 8
  %80 = load i8*, i8** %12, align 8
  %81 = load i8*, i8** %13, align 8
  %82 = load i8*, i8** %14, align 8
  %83 = load i8*, i8** %15, align 8
  %84 = call i32* @setup_curl_post(%struct.http_ctx* %75, i8* %78, i8* %79, i8* %80, i8* %81, i8* %82, i8* %83)
  %85 = load %struct.http_ctx*, %struct.http_ctx** %9, align 8
  %86 = getelementptr inbounds %struct.http_ctx, %struct.http_ctx* %85, i32 0, i32 6
  store i32* %84, i32** %86, align 8
  %87 = load %struct.http_ctx*, %struct.http_ctx** %9, align 8
  %88 = getelementptr inbounds %struct.http_ctx, %struct.http_ctx* %87, i32 0, i32 6
  %89 = load i32*, i32** %88, align 8
  %90 = icmp eq i32* %89, null
  br i1 %90, label %91, label %92

91:                                               ; preds = %74
  store i32 -1, i32* %8, align 4
  br label %93

92:                                               ; preds = %74
  store i32 0, i32* %8, align 4
  br label %93

93:                                               ; preds = %92, %91
  %94 = load i32, i32* %8, align 4
  ret i32 %94
}

declare dso_local i32 @clone_str(i8**, i8*) #1

declare dso_local signext i8 @tolower(i8 signext) #1

declare dso_local i32* @setup_curl_post(%struct.http_ctx*, i8*, i8*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
