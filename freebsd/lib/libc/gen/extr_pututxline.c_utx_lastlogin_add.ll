; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_pututxline.c_utx_lastlogin_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_pututxline.c_utx_lastlogin_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.futx = type { i32 }

@_PATH_UTX_LASTLOGIN = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.futx*)* @utx_lastlogin_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @utx_lastlogin_add(%struct.futx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.futx*, align 8
  %4 = alloca %struct.futx, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.futx* %0, %struct.futx** %3, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* @_PATH_UTX_LASTLOGIN, align 4
  %9 = call i32* @futx_open(i32 %8)
  store i32* %9, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %53

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %26, %13
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @fread(%struct.futx* %4, i32 4, i32 1, i32* %15)
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %31

18:                                               ; preds = %14
  %19 = load %struct.futx*, %struct.futx** %3, align 8
  %20 = getelementptr inbounds %struct.futx, %struct.futx* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.futx, %struct.futx* %4, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @strncmp(i32 %21, i32 %23, i32 4)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %14

27:                                               ; preds = %18
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* @SEEK_CUR, align 4
  %30 = call i32 @fseeko(i32* %28, i32 -4, i32 %29)
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %27, %14
  %32 = load i32, i32* %7, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* @errno, align 4
  store i32 %35, i32* %6, align 4
  br label %44

36:                                               ; preds = %31
  %37 = load %struct.futx*, %struct.futx** %3, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @fwrite(%struct.futx* %37, i32 4, i32 1, i32* %38)
  %40 = icmp slt i32 %39, 1
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* @errno, align 4
  store i32 %42, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  br label %43

43:                                               ; preds = %41, %36
  br label %44

44:                                               ; preds = %43, %34
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @fclose(i32* %45)
  %47 = load i32, i32* %7, align 4
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* @errno, align 4
  br label %51

51:                                               ; preds = %49, %44
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %51, %12
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32* @futx_open(i32) #1

declare dso_local i32 @fread(%struct.futx*, i32, i32, i32*) #1

declare dso_local i64 @strncmp(i32, i32, i32) #1

declare dso_local i32 @fseeko(i32*, i32, i32) #1

declare dso_local i32 @fwrite(%struct.futx*, i32, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
