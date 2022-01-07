; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/test/extr_http_client.c_http_find_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/test/extr_http_client.c_http_find_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.http_req = type { i32, i8** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.http_req*, i8*)* @http_find_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @http_find_header(%struct.http_req* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.http_req*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.http_req* %0, %struct.http_req** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i32 @strlen(i8* %8)
  store i32 %9, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %41, %2
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.http_req*, %struct.http_req** %4, align 8
  %13 = getelementptr inbounds %struct.http_req, %struct.http_req* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %44

16:                                               ; preds = %10
  %17 = load i8*, i8** %5, align 8
  %18 = load %struct.http_req*, %struct.http_req** %4, align 8
  %19 = getelementptr inbounds %struct.http_req, %struct.http_req* %18, i32 0, i32 1
  %20 = load i8**, i8*** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8*, i8** %20, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i64 @strncasecmp(i8* %17, i8* %24, i32 %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %16
  %29 = load %struct.http_req*, %struct.http_req** %4, align 8
  %30 = getelementptr inbounds %struct.http_req, %struct.http_req* %29, i32 0, i32 1
  %31 = load i8**, i8*** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8*, i8** %31, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  store i8* %39, i8** %3, align 8
  br label %45

40:                                               ; preds = %16
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %10

44:                                               ; preds = %10
  store i8* null, i8** %3, align 8
  br label %45

45:                                               ; preds = %44, %28
  %46 = load i8*, i8** %3, align 8
  ret i8* %46
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
