; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-anchor.c_read_if_pending_keys.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-anchor.c_read_if_pending_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@verb = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"[ ADDPEND ]\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"RFC5011-state has ADDPEND keys\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @read_if_pending_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_if_pending_keys(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [8192 x i8], align 16
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i32* @fopen(i8* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %7, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @verb, align 4
  %12 = icmp sge i32 %11, 2
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = load i8*, i8** %3, align 8
  %15 = load i32, i32* @errno, align 4
  %16 = call i8* @strerror(i32 %15)
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %14, i8* %16)
  br label %18

18:                                               ; preds = %13, %10
  store i32 0, i32* %2, align 4
  br label %47

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %43, %30, %19
  %21 = getelementptr inbounds [8192 x i8], [8192 x i8]* %5, i64 0, i64 0
  %22 = load i32*, i32** %4, align 8
  %23 = call i64 @fgets(i8* %21, i32 8192, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %44

25:                                               ; preds = %20
  %26 = getelementptr inbounds [8192 x i8], [8192 x i8]* %5, i64 0, i64 0
  %27 = load i8, i8* %26, align 16
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 59
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %20

31:                                               ; preds = %25
  %32 = getelementptr inbounds [8192 x i8], [8192 x i8]* %5, i64 0, i64 0
  %33 = call i64 @strstr(i8* %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @fclose(i32* %36)
  %38 = load i32, i32* @verb, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %35
  store i32 1, i32* %2, align 4
  br label %47

43:                                               ; preds = %31
  br label %20

44:                                               ; preds = %20
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @fclose(i32* %45)
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %44, %42, %18
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
