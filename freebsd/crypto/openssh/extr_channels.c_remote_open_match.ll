; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_channels.c_remote_open_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_channels.c_remote_open_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.permission = type { i64, i32* }
%struct.Forward = type { i64, i32*, i32* }

@FWD_PERMIT_ANY_PORT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.permission*, %struct.Forward*)* @remote_open_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remote_open_match(%struct.permission* %0, %struct.Forward* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.permission*, align 8
  %5 = alloca %struct.Forward*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.permission* %0, %struct.permission** %4, align 8
  store %struct.Forward* %1, %struct.Forward** %5, align 8
  %8 = load %struct.Forward*, %struct.Forward** %5, align 8
  %9 = getelementptr inbounds %struct.Forward, %struct.Forward* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %54

13:                                               ; preds = %2
  %14 = load %struct.Forward*, %struct.Forward** %5, align 8
  %15 = getelementptr inbounds %struct.Forward, %struct.Forward* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = load %struct.permission*, %struct.permission** %4, align 8
  %20 = getelementptr inbounds %struct.permission, %struct.permission* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %18, %13
  store i32 0, i32* %3, align 4
  br label %54

24:                                               ; preds = %18
  %25 = load %struct.permission*, %struct.permission** %4, align 8
  %26 = getelementptr inbounds %struct.permission, %struct.permission* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @FWD_PERMIT_ANY_PORT, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %24
  %31 = load %struct.permission*, %struct.permission** %4, align 8
  %32 = getelementptr inbounds %struct.permission, %struct.permission* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.Forward*, %struct.Forward** %5, align 8
  %35 = getelementptr inbounds %struct.Forward, %struct.Forward* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %54

39:                                               ; preds = %30, %24
  %40 = load %struct.Forward*, %struct.Forward** %5, align 8
  %41 = getelementptr inbounds %struct.Forward, %struct.Forward* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = call i8* @xstrdup(i32* %42)
  store i8* %43, i8** %7, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 @lowercase(i8* %44)
  %46 = load i8*, i8** %7, align 8
  %47 = load %struct.permission*, %struct.permission** %4, align 8
  %48 = getelementptr inbounds %struct.permission, %struct.permission* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @match_pattern(i8* %46, i32* %49)
  store i32 %50, i32* %6, align 4
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @free(i8* %51)
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %39, %38, %23, %12
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i8* @xstrdup(i32*) #1

declare dso_local i32 @lowercase(i8*) #1

declare dso_local i32 @match_pattern(i8*, i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
