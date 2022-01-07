; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libpthread/extr_h_resolv.c_load.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libpthread/extr_h_resolv.c_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Cannot open `%s'\00", align 1
@WS = common dso_local global i32 0, align 4
@hosts = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = call i32* @fopen(i8* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %9, i32** %3, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i8*, i8** %2, align 8
  %13 = call i32 @err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %12)
  br label %14

14:                                               ; preds = %11, %1
  br label %15

15:                                               ; preds = %41, %14
  %16 = load i32*, i32** %3, align 8
  %17 = call i8* @fgetln(i32* %16, i64* %4)
  store i8* %17, i8** %5, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %46

19:                                               ; preds = %15
  %20 = load i8*, i8** %5, align 8
  %21 = load i64, i64* %4, align 8
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  %23 = load i8, i8* %22, align 1
  store i8 %23, i8* %6, align 1
  %24 = load i8*, i8** %5, align 8
  %25 = load i64, i64* %4, align 8
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  store i8 0, i8* %26, align 1
  %27 = load i8*, i8** %5, align 8
  %28 = load i32, i32* @WS, align 4
  %29 = call i8* @strtok(i8* %27, i32 %28)
  store i8* %29, i8** %7, align 8
  br label %30

30:                                               ; preds = %38, %19
  %31 = load i8*, i8** %7, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = load i32, i32* @hosts, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @strdup(i8* %35)
  %37 = call i32 @sl_add(i32 %34, i32 %36)
  br label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @WS, align 4
  %40 = call i8* @strtok(i8* null, i32 %39)
  store i8* %40, i8** %7, align 8
  br label %30

41:                                               ; preds = %30
  %42 = load i8, i8* %6, align 1
  %43 = load i8*, i8** %5, align 8
  %44 = load i64, i64* %4, align 8
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  store i8 %42, i8* %45, align 1
  br label %15

46:                                               ; preds = %15
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 @fclose(i32* %47)
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i8* @fgetln(i32*, i64*) #1

declare dso_local i8* @strtok(i8*, i32) #1

declare dso_local i32 @sl_add(i32, i32) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
