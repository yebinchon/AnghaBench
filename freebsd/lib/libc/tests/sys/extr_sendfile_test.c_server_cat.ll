; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/tests/sys/extr_sendfile_test.c_server_cat.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/tests/sys/extr_sendfile_test.c_server_cat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"accept failed\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"received unexpected data: %zd != %zd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i64)* @server_cat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @server_cat(i8* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  %14 = add i64 %13, 10
  %15 = add i64 %14, 1
  store i64 %15, i64* %10, align 8
  %16 = load i64, i64* %10, align 8
  %17 = call i8* @calloc(i64 %16, i32 1)
  store i8* %17, i8** %7, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = call i32 @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %3
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @accept(i32 %23, i32* null, i32 0)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = call i32 @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %22
  %30 = load i8*, i8** %7, align 8
  store i8* %30, i8** %8, align 8
  store i64 0, i64* %11, align 8
  br label %31

31:                                               ; preds = %48, %29
  %32 = load i32, i32* %9, align 4
  %33 = load i8*, i8** %8, align 8
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* %11, align 8
  %36 = sub i64 %34, %35
  %37 = call i64 @recv(i32 %32, i8* %33, i64 %36, i32 0)
  store i64 %37, i64* %12, align 8
  %38 = load i64, i64* %12, align 8
  %39 = icmp ule i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  br label %52

41:                                               ; preds = %31
  %42 = load i64, i64* %12, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 %42
  store i8* %44, i8** %8, align 8
  %45 = load i64, i64* %12, align 8
  %46 = load i64, i64* %11, align 8
  %47 = add i64 %46, %45
  store i64 %47, i64* %11, align 8
  br label %48

48:                                               ; preds = %41
  %49 = load i64, i64* %11, align 8
  %50 = load i64, i64* %10, align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %31, label %52

52:                                               ; preds = %48, %40
  %53 = load i8*, i8** %4, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 @atf_utils_create_file(i8* %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %54)
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @close(i32 %56)
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @close(i32 %58)
  %60 = load i8*, i8** %7, align 8
  %61 = call i32 @free(i8* %60)
  %62 = load i64, i64* %11, align 8
  %63 = load i64, i64* %6, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %52
  %66 = load i64, i64* %11, align 8
  %67 = load i64, i64* %6, align 8
  %68 = call i32 @errx(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i64 %66, i64 %67)
  br label %69

69:                                               ; preds = %65, %52
  ret void
}

declare dso_local i8* @calloc(i64, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @accept(i32, i32*, i32) #1

declare dso_local i64 @recv(i32, i8*, i64, i32) #1

declare dso_local i32 @atf_utils_create_file(i8*, i8*, i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @errx(i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
