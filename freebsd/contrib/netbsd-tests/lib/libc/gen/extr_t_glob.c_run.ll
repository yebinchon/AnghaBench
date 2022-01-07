; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/gen/extr_t_glob.c_run.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/gen/extr_t_glob.c_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32*, i32, i32, i32, i32, i32 }

@gl_opendir = common dso_local global i32 0, align 4
@gl_readdir = common dso_local global i32 0, align 4
@gl_closedir = common dso_local global i32 0, align 4
@gl_stat = common dso_local global i32 0, align 4
@gl_lstat = common dso_local global i32 0, align 4
@GLOB_ALTDIRFUNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8**, i64)* @run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run(i8* %0, i32 %1, i8** %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_5__, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = call i32 @memset(%struct.TYPE_5__* %9, i32 0, i32 40)
  %12 = load i32, i32* @gl_opendir, align 4
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 6
  store i32 %12, i32* %13, align 8
  %14 = load i32, i32* @gl_readdir, align 4
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 5
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @gl_closedir, align 4
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 4
  store i32 %16, i32* %17, align 8
  %18 = load i32, i32* @gl_stat, align 4
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 3
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @gl_lstat, align 4
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  store i32 %20, i32* %21, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = load i32, i32* @GLOB_ALTDIRFUNC, align 4
  %24 = load i32, i32* %6, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @glob(i8* %22, i32 %25, i32* null, %struct.TYPE_5__* %9)
  %27 = call i32 @RZ(i32 %26)
  store i64 0, i64* %10, align 8
  br label %28

28:                                               ; preds = %42, %4
  %29 = load i64, i64* %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ult i64 %29, %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* %10, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to i8*
  %41 = call i32 @DPRINTF(i8* %40)
  br label %42

42:                                               ; preds = %33
  %43 = load i64, i64* %10, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %10, align 8
  br label %28

45:                                               ; preds = %28
  %46 = load i64, i64* %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %46, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @ATF_CHECK(i32 %50)
  store i64 0, i64* %10, align 8
  br label %52

52:                                               ; preds = %68, %45
  %53 = load i64, i64* %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ult i64 %53, %55
  br i1 %56, label %57, label %71

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* %10, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i8**, i8*** %7, align 8
  %64 = load i64, i64* %10, align 8
  %65 = getelementptr inbounds i8*, i8** %63, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @ATF_CHECK_STREQ(i32 %62, i8* %66)
  br label %68

68:                                               ; preds = %57
  %69 = load i64, i64* %10, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %10, align 8
  br label %52

71:                                               ; preds = %52
  %72 = call i32 @globfree(%struct.TYPE_5__* %9)
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @RZ(i32) #1

declare dso_local i32 @glob(i8*, i32, i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @ATF_CHECK(i32) #1

declare dso_local i32 @ATF_CHECK_STREQ(i32, i8*) #1

declare dso_local i32 @globfree(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
